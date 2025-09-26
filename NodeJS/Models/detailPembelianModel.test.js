const detailPembelian = require('./detailPembelianModel');
const db = require('../Database/db');

jest.mock('../Database/db');

describe('Detail Pembelian Model (Callback)', () => {

  beforeEach(() => {
    db.query.mockClear();
  });

  test('should fetch all purchase details', (done) => {
    const mockDetails = [
      { idDetailPembelian: 'DP-0001', idPembelian: 'P-001' },
      { idDetailPembelian: 'DP-0002', idPembelian: 'P-001' },
    ];
    
    db.query.mockImplementation((sql, callback) => {
      callback(null, mockDetails);
    });

    detailPembelian.getAllDetailPembelian((err, details) => {
      expect(err).toBeNull();
      expect(details).toHaveLength(2);
      
      done();
    });
  });

  test('should fetch a single purchase detail by its ID', (done) => {
    const mockDetail = [{ idDetailPembelian: 'DP-0003', idPembelian: 'P-002' }];
    const targetId = 'DP-0003';

    db.query.mockImplementation((sql, params, callback) => {
      if (params[0] === targetId) {
        callback(null, mockDetail);
      }
    });

    detailPembelian.getDetailPembelianById(targetId, (err, result) => {
      expect(err).toBeNull();
      expect(result[0].idDetailPembelian).toBe(targetId);

      done(); 
    });
  });
});