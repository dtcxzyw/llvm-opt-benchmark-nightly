inline.NumInlined: 608
inline.NumDeleted: 302
begin_hunk_0_@_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !753, !noalias !750
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !753, !noalias !750
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #28, !noalias !752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !756
  store i8 -1, ptr %i.a, align 1, !noalias !756
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #28, !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !756
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !766, !noalias !750
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !766, !noalias !750
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !766, !noalias !750 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !766, !noalias !750
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !766, !noalias !750, !noundef !3
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !766, !noalias !750, !noundef !3
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !750
  %i.cb = shl i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !746, !noalias !752, !noundef !3
  %i.ce = and i64 %i.cd, 63
  %i.cf = lshr i64 %i.cb, %i.ce                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !746, !noalias !752, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.cg, align 8, !alias.scope !746, !noalias !752, !noundef !3
  %i.ch = icmp ult i64 %i.cf, %.val14.i
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cf ; 9 uses
  %i.cj = cmpxchg weak ptr %i.ci, i64 0, i64 -4 acquire monotonic, align 8, !noalias !752
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !87

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.l, %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.b ], [ %i.eb, %bb.l ], [ %i.eb, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %1) #25
          to label %.body unwind label %bb.m, !noalias !743

bb.b:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b, !noalias !752

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c, %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc16.i unwind label %bb.k, !noalias !752

.noexc16.i:                                       ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !771, !noalias !776, !nonnull !3, !noundef !3 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val7.i.i = load i64, ptr %i.cn, align 8, !alias.scope !771, !noalias !776, !noundef !3 ; 3 uses
  %i.co = lshr i64 %i.ca, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !778, !noalias !779 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !778, !noalias !779, !nonnull !3
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.noexc16.i
  %.pn.i.i.i = phi i64 [ %i.ca, %.noexc16.i ], [ %i.ds, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc16.i ], [ %.sroa.4.1.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %.noexc16.i ], [ %.sroa.01.1.i.i.i, %bb.h ]
  %i.cs = phi i64 [ 0, %.noexc16.i ], [ %i.dr, %bb.h ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.ct, align 1, !noalias !780 ; 3 uses
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.cr
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.cz, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i ], [ %i.cv, %bb.d ] ; 3 uses
  %i.cw = add i16 %.sroa.05.0.i22.i.i, -1
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = and i16 %i.cw, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.da = add i64 %.sroa.0.017.i.i.i, %i.cy
  %i.db = and i64 %i.da, %.val7.i.i
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.dc ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -88
  %.val3.i.i.i = load i64, ptr %i.de, align 8, !noalias !783, !noundef !3
  %i.df = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.df, label %bb.e, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %i.dd, i64 -96
  %.val2.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !783, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !783
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.f

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.g, %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ %i.dq, %bb.g ], [ undef, %bb.f ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %i.dl = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = add i64 %.sroa.0.017.i.i.i, %i.do
  %i.dq = and i64 %i.dp, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dr = add i64 %i.cs, 16                       ; 2 uses
  %i.ds = add i64 %i.dr, %.sroa.0.017.i.i.i
  br label %bb.d

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.du = load i8, ptr %i.dt, align 1, !noalias !786, !noundef !3
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dw = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !787
  %i.dx = icmp slt <16 x i8> %i.dw, zeroinitializer
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i17.i.i.i = icmp ne i16 %i.dy, 0
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dy, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  call void @llvm.assume(i1 %.not.i17.i.i.i)
  br label %bb.n

bb.k:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = cmpxchg ptr %i.ci, i64 -4, i64 0 release monotonic, align 8, !noalias !752
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ec, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.m, !noalias !752

.thread:                                          ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !752, !noalias !746
  %.sroa.8.8..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.8.8.copyload15 = load ptr, ptr %.sroa.8.8..sroa_idx14, align 8, !alias.scope !752, !noalias !746
  %i.ed = ptrtoint ptr %i.ci to i64
  %i.ee = ptrtoint ptr %i.dd to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !743
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ea, %bb.j ], [ %.sroa.4.1.i.i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload12 = load i64, ptr %1, align 8, !alias.scope !752, !noalias !746 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !alias.scope !752, !noalias !746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload12, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload12, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.ca, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.3.0.i.ph.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eg = load ptr, ptr %i.g, align 16, !nonnull !3, !noundef !3
  %i.eh = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4, !noundef !3
  call void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eh)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ei = cmpxchg ptr %.val, i64 -4, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i.i9 = extractvalue { i64, i1 } %i.ei, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.w, !prof !87

bb.p:                                             ; preds = %.thread, %bb.n
  %.sroa.8.027 = phi ptr [ %.sroa.8.8.copyload15, %.thread ], [ %i.ci, %bb.n ]
  %.sroa.9.026 = phi i64 [ %i.ed, %.thread ], [ %i.ca, %bb.n ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %i.ee, %.thread ], [ %.sroa.3.0.i.ph.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.8.027, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.sroa.9.026, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %.sroa.11.025, ptr %.sroa.11.8..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.11.025 to ptr      ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.cast, i64 -16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !3, !noundef !3
  %i.el = getelementptr inbounds i8, ptr %.cast, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !3, !align !4, !noundef !3
  %i.en = load <2 x ptr>, ptr %i.g, align 16
  store <2 x ptr> %i.en, ptr %i.ej, align 8
  %i.eo = inttoptr i64 %.sroa.9.026 to ptr        ; 2 uses
  %i.ep = cmpxchg ptr %i.eo, i64 -4, i64 0 release monotonic, align 8, !noalias !790
  %.sroa.18.0.in.i.i.i.i.i5 = extractvalue { i64, i1 } %i.ep, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6, label %bb.q, !prof !87

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6 unwind label %bb.r, !noalias !790

bb.r:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6: ; preds = %bb.q, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.3.0 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.em, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.ek, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.eu = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ev = insertvalue { ptr, ptr } %i.eu, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ev

bb.w:                                             ; preds = %bb.o
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.s, %.body, %bb.x
  %eh.lpad-body19 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.x ], [ %i.eq, %bb.r ], [ %i.er, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body19

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.ew = load ptr, ptr %i.g, align 16, !alias.scope !799, !nonnull !3, !noundef !3
  %i.ex = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !799
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp ult i64 %1, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %1 ; 4 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = icmp ugt i64 %i.f, -9
  br i1 %i.g, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !554

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %bb.a
  %i.h = add nuw i64 %i.f, 4
  %i.i = cmpxchg weak ptr %i.e, i64 %i.f, i64 %i.h acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.b, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !555

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %bb.a, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [112 x i8], align 8               ; 6 uses
  %i.f = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  store ptr %2, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !807
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val11.i = load ptr, ptr %i.j, align 8, !alias.scope !805, !noalias !808, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.k, align 8, !alias.scope !805, !noalias !808, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !807
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load <2 x i64>, ptr %i.i, align 8, !alias.scope !803, !noalias !809 ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.b, align 16, !alias.scope !810, !noalias !807
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !810, !noalias !807
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !810, !noalias !807
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !810, !noalias !807
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #28, !noalias !809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !813
  store i8 -1, ptr %i.a, align 1, !noalias !813
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #28, !noalias !822
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !813
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !823, !noalias !807
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !823, !noalias !807
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !823, !noalias !807 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !823, !noalias !807
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !823, !noalias !807, !noundef !3
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !823, !noalias !807, !noundef !3
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !807
  %i.cb = shl i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !803, !noalias !809, !noundef !3
  %i.ce = and i64 %i.cd, 63
  %i.cf = lshr i64 %i.cb, %i.ce                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !803, !noalias !809, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.cg, align 8, !alias.scope !803, !noalias !809, !noundef !3
  %i.ch = icmp ult i64 %i.cf, %.val14.i
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cf ; 9 uses
  %i.cj = cmpxchg weak ptr %i.ci, i64 0, i64 -4 acquire monotonic, align 8, !noalias !809
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !87

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.l, %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.b ], [ %i.eb, %bb.l ], [ %i.eb, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %1) #25
          to label %.body unwind label %bb.m, !noalias !800

bb.b:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b, !noalias !809

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c, %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc16.i unwind label %bb.k, !noalias !809

.noexc16.i:                                       ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !828, !noalias !833, !nonnull !3, !noundef !3 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val7.i.i = load i64, ptr %i.cn, align 8, !alias.scope !828, !noalias !833, !noundef !3 ; 3 uses
  %i.co = lshr i64 %i.ca, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !835, !noalias !836 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !835, !noalias !836, !nonnull !3
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.noexc16.i
  %.pn.i.i.i = phi i64 [ %i.ca, %.noexc16.i ], [ %i.ds, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc16.i ], [ %.sroa.4.1.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %.noexc16.i ], [ %.sroa.01.1.i.i.i, %bb.h ]
  %i.cs = phi i64 [ 0, %.noexc16.i ], [ %i.dr, %bb.h ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.ct, align 1, !noalias !837 ; 3 uses
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.cr
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.cz, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i ], [ %i.cv, %bb.d ] ; 3 uses
  %i.cw = add i16 %.sroa.05.0.i22.i.i, -1
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = and i16 %i.cw, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.da = add i64 %.sroa.0.017.i.i.i, %i.cy
  %i.db = and i64 %i.da, %.val7.i.i
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.dc ; 3 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -88
  %.val3.i.i.i = load i64, ptr %i.de, align 8, !noalias !840, !noundef !3
  %i.df = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.df, label %bb.e, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %i.dd, i64 -96
  %.val2.i.i.i = load ptr, ptr %i.dg, align 8, !noalias !840, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !840
  %i.dh = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dh, label %.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.f

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.g, %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ %i.dq, %bb.g ], [ undef, %bb.f ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %i.dl = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = add i64 %.sroa.0.017.i.i.i, %i.do
  %i.dq = and i64 %i.dp, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dr = add i64 %i.cs, 16                       ; 2 uses
  %i.ds = add i64 %i.dr, %.sroa.0.017.i.i.i
  br label %bb.d

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.du = load i8, ptr %i.dt, align 1, !noalias !843, !noundef !3
  %i.dv = icmp sgt i8 %i.du, -1
  br i1 %i.dv, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dw = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !844
  %i.dx = icmp slt <16 x i8> %i.dw, zeroinitializer
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i17.i.i.i = icmp ne i16 %i.dy, 0
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dy, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  call void @llvm.assume(i1 %.not.i17.i.i.i)
  br label %bb.n

bb.k:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = cmpxchg ptr %i.ci, i64 -4, i64 0 release monotonic, align 8, !noalias !809
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ec, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.m, !noalias !809

.thread:                                          ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !809, !noalias !803
  %.sroa.8.8..sroa_idx14 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.8.8.copyload15 = load ptr, ptr %.sroa.8.8..sroa_idx14, align 8, !alias.scope !809, !noalias !803
  %i.ed = ptrtoint ptr %i.ci to i64
  %i.ee = ptrtoint ptr %i.dd to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !800
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ea, %bb.j ], [ %.sroa.4.1.i.i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload12 = load i64, ptr %1, align 8, !alias.scope !809, !noalias !803 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !alias.scope !809, !noalias !803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload12, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload12, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %i.ca, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.sroa.3.0.i.ph.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eg = load ptr, ptr %i.g, align 16, !nonnull !3, !noundef !3
  %i.eh = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4, !noundef !3
  call void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull %i.eg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eh)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ei = cmpxchg ptr %.val, i64 -4, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i.i9 = extractvalue { i64, i1 } %i.ei, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.w, !prof !87

bb.p:                                             ; preds = %.thread, %bb.n
  %.sroa.8.027 = phi ptr [ %.sroa.8.8.copyload15, %.thread ], [ %i.ci, %bb.n ]
  %.sroa.9.026 = phi i64 [ %i.ed, %.thread ], [ %i.ca, %bb.n ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %i.ee, %.thread ], [ %.sroa.3.0.i.ph.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %.sroa.8.027, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.sroa.9.026, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %.sroa.11.025, ptr %.sroa.11.8..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.11.025 to ptr      ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %.cast, i64 -16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !3, !noundef !3
  %i.el = getelementptr inbounds i8, ptr %.cast, i64 -8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !3, !align !4, !noundef !3
  %i.en = load <2 x ptr>, ptr %i.g, align 16
  store <2 x ptr> %i.en, ptr %i.ej, align 8
  %i.eo = inttoptr i64 %.sroa.9.026 to ptr        ; 2 uses
  %i.ep = cmpxchg ptr %i.eo, i64 -4, i64 0 release monotonic, align 8, !noalias !847
  %.sroa.18.0.in.i.i.i.i.i5 = extractvalue { i64, i1 } %i.ep, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6, label %bb.q, !prof !87

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.eo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6 unwind label %bb.r, !noalias !847

bb.r:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6: ; preds = %bb.q, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.3.0 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.em, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.ek, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.eu = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ev = insertvalue { ptr, ptr } %i.eu, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ev

bb.w:                                             ; preds = %bb.o
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.s, %.body, %bb.x
  %eh.lpad-body19 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.x ], [ %i.eq, %bb.r ], [ %i.er, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body19

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.ew = load ptr, ptr %i.g, align 16, !alias.scope !856, !nonnull !3, !noundef !3
  %i.ex = atomicrmw sub ptr %i.ew, i64 1 release, align 8, !noalias !856
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp ult i64 %1, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %1 ; 4 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = icmp ugt i64 %i.f, -9
  br i1 %i.g, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !554

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %bb.a
  %i.h = add nuw i64 %i.f, 4
  %i.i = cmpxchg weak ptr %i.e, i64 %i.f, i64 %i.h acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.b, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !555

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %bb.a, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = icmp ult i64 %1, %i.c
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %1 ; 4 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 3 uses
  %i.g = icmp ugt i64 %i.f, -9
  br i1 %i.g, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit, !prof !554

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit: ; preds = %bb.a
  %i.h = add nuw i64 %i.f, 4
  %i.i = cmpxchg weak ptr %i.e, i64 %i.f, i64 %i.h acquire monotonic, align 8
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.b, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, !prof !555

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread: ; preds = %bb.a, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.e)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  store ptr %2, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %3, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !864
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val11.i = load ptr, ptr %i.j, align 8, !alias.scope !862, !noalias !865, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.k, align 8, !alias.scope !862, !noalias !865, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !864
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load <2 x i64>, ptr %i.i, align 8, !alias.scope !860, !noalias !866 ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.b, align 16, !alias.scope !867, !noalias !864
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !867, !noalias !864
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !867, !noalias !864
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !867, !noalias !864
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #28, !noalias !866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !870
  store i8 -1, ptr %i.a, align 1, !noalias !870
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #28, !noalias !879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !870
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !880, !noalias !864
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !880, !noalias !864
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !880, !noalias !864 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !880, !noalias !864
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !880, !noalias !864, !noundef !3
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !880, !noalias !864, !noundef !3
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !864
  %i.cb = shl i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !860, !noalias !866, !noundef !3
  %i.ce = and i64 %i.cd, 63
  %i.cf = lshr i64 %i.cb, %i.ce                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !860, !noalias !866, !nonnull !3, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.cg, align 8, !alias.scope !860, !noalias !866, !noundef !3
  %i.ch = icmp ult i64 %i.cf, %.val14.i
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cf ; 9 uses
  %i.cj = cmpxchg weak ptr %i.ci, i64 0, i64 -4 acquire monotonic, align 8, !noalias !866
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  br i1 %i.ck, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.c, !prof !87

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.l, %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cl, %bb.b ], [ %i.ec, %bb.l ], [ %i.ec, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #25
          to label %.body unwind label %bb.m, !noalias !857

bb.b:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b, !noalias !866

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c, %bb.a
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cm, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc16.i unwind label %bb.k, !noalias !866

.noexc16.i:                                       ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.val.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !885, !noalias !890, !nonnull !3, !noundef !3 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.val7.i.i = load i64, ptr %i.cn, align 8, !alias.scope !885, !noalias !890, !noundef !3 ; 3 uses
  %i.co = lshr i64 %i.ca, 57
  %i.cp = trunc nuw nsw i64 %i.co to i8
  %i.cq = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %i.cr = shufflevector <16 x i8> %i.cq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.k, align 8    ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !892, !noalias !893, !nonnull !3
  %i.cs = inttoptr i64 %.val3.i.i.i.i to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.noexc16.i
  %.pn.i.i.i = phi i64 [ %i.ca, %.noexc16.i ], [ %i.dt, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc16.i ], [ %.sroa.4.1.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %.noexc16.i ], [ %.sroa.01.1.i.i.i, %bb.h ]
  %i.ct = phi i64 [ 0, %.noexc16.i ], [ %i.ds, %bb.h ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.cu, align 1, !noalias !894 ; 3 uses
  %i.cv = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.cr
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.da, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i ], [ %i.cw, %bb.d ] ; 3 uses
  %i.cx = add i16 %.sroa.05.0.i22.i.i, -1
  %i.cy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = and i16 %i.cx, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.db = add i64 %.sroa.0.017.i.i.i, %i.cz
  %i.dc = and i64 %i.db, %.val7.i.i
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [40 x i8], ptr %.val.i.i, i64 %i.dd ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  %.val3.i.i.i = load i64, ptr %i.df, align 8, !noalias !897, !noundef !3
  %i.dg = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.dg, label %bb.e, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.dh = getelementptr i8, ptr %i.de, i64 -32
  %.val2.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !897, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !897
  %i.di = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.backedge.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.f

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.g, %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ %i.dr, %bb.g ], [ undef, %bb.f ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.dj = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dk = bitcast <16 x i1> %i.dj to i16
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit._crit_edge.i.i
  %i.dm = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dn, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add i64 %.sroa.0.017.i.i.i, %i.dp
  %i.dr = and i64 %i.dq, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.ds = add i64 %i.ct, 16                       ; 2 uses
  %i.dt = add i64 %i.ds, %.sroa.0.017.i.i.i
  br label %bb.d

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.dv = load i8, ptr %i.du, align 1, !noalias !900, !noundef !3
  %i.dw = icmp sgt i8 %i.dv, -1
  br i1 %i.dw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.dx = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !901
  %i.dy = icmp slt <16 x i8> %i.dx, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i17.i.i.i = icmp ne i16 %i.dz, 0
  %i.ea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dz, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  call void @llvm.assume(i1 %.not.i17.i.i.i)
  br label %bb.n

bb.k:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = cmpxchg ptr %i.ci, i64 -4, i64 0 release monotonic, align 8, !noalias !866
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ed, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ci)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.m, !noalias !866

.thread:                                          ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !alias.scope !866, !noalias !860
  %i.ee = ptrtoint ptr %i.ci to i64
  %i.ef = ptrtoint ptr %i.de to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !857
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.eb, %bb.j ], [ %.sroa.4.1.i.i.i, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload12 = load i64, ptr %1, align 8, !alias.scope !866, !noalias !860 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !alias.scope !866, !noalias !860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload12, -9223372036854775808
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.sroa.0.0.copyload12, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.ca, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.3.0.i.ph.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.eh = load ptr, ptr %i.g, align 16, !nonnull !3, !noundef !3
  %i.ei = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4, !noundef !3
  call void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ei)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ej = cmpxchg ptr %.val, i64 -4, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i.i9 = extractvalue { i64, i1 } %i.ej, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.w, !prof !87

bb.p:                                             ; preds = %.thread, %bb.n
  %.sroa.8.027 = phi ptr [ %i.cs, %.thread ], [ %i.ci, %bb.n ]
  %.sroa.9.026 = phi i64 [ %i.ee, %.thread ], [ %i.ca, %bb.n ] ; 2 uses
  %.sroa.11.025 = phi i64 [ %i.ef, %.thread ], [ %.sroa.3.0.i.ph.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.8.027, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.9.026, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.11.025, ptr %.sroa.11.8..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.11.025 to ptr      ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.cast, i64 -16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !3, !noundef !3
  %i.em = getelementptr inbounds i8, ptr %.cast, i64 -8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !3, !align !4, !noundef !3
  %i.eo = load <2 x ptr>, ptr %i.g, align 16
  store <2 x ptr> %i.eo, ptr %i.ek, align 8
  %i.ep = inttoptr i64 %.sroa.9.026 to ptr        ; 2 uses
  %i.eq = cmpxchg ptr %i.ep, i64 -4, i64 0 release monotonic, align 8, !noalias !904
  %.sroa.18.0.in.i.i.i.i.i5 = extractvalue { i64, i1 } %i.eq, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6, label %bb.q, !prof !87

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ep)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6 unwind label %bb.r, !noalias !904

bb.r:                                             ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6: ; preds = %bb.q, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i6
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %.sroa.3.0 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.en, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %i.el, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.ev = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ew = insertvalue { ptr, ptr } %i.ev, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ew

bb.w:                                             ; preds = %bb.o
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1v_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.w, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.r, %bb.s, %.body, %bb.x
  %eh.lpad-body19 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.x ], [ %i.er, %bb.r ], [ %i.es, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body19

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ex = load ptr, ptr %i.g, align 16, !alias.scope !913, !nonnull !3, !noundef !3
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !noalias !913
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !914
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !914
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !914, !noundef !3
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !3
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !917
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !917
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !3
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !920, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !920, !noundef !3 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !920, !noundef !3
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !920
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !920
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !920
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !917
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !917
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !923
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !923
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i13 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i11, %bb.m ] ; 3 uses
  %.sroa.0.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i12, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i13, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i13, %.sroa.0.1.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !923, !noundef !3
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i13, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i14
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i15 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i15, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted23, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.119 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.119
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.119, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit18 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs6_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellNtNtCs2pqxYH9ZEk8_3std4time7InstantENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs6_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(704) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.04 = phi i32 [ 0, %bb.a ], [ %i.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call fastcc noundef ptr @_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity() #28 ; 7 uses
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.b) #25
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = add nuw nsw i32 %.sroa.0.04, 1           ; 2 uses
  %i.e = icmp eq ptr %i.b, null
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2072 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2176
  store atomic i64 0, ptr %i.j release, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2080
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.h:                                             ; preds = %bb.g
  call void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %exitcond.not = icmp eq i32 %i.d, 128
  br i1 %exitcond.not, label %bb.b, label %bb.c

bb.i:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.j:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCsbvkFyIu7lgC_4core5panic11unwind_safe16AssertUnwindSafeINtNtB1u_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputuNtNtB1u_6marker4SendEL_EEEEB3f_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvXso_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeINtNtB9_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6future6future6Futurep6OutputuNtNtB9_6marker4SendEL_EEEB1Z_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.d:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.f = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink15 = phi i64 [ 16, %bb.e ], [ 8, %bb.d ]
  %.sink = phi ptr [ %i.g, %bb.e ], [ null, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store ptr %.sink, ptr %i.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %storemerge7 = phi i64 [ 1, %bb.d ], [ 0, %.sink.split ]
  store i64 %storemerge7, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future12catch_unwindINtB4_11CatchUnwindINtNtNtCsbvkFyIu7lgC_4core5panic11unwind_safe16AssertUnwindSafeINtNtB1u_3pin3PinQNCNvMs3_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB2O_19UnitySchemaProvider9get_creds0EEENtNtNtB1u_6future6future6Future4pollB2Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef align 8 dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.5 = alloca [232 x i8], align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXso_NtNtCsbvkFyIu7lgC_4core5panic11unwind_safeINtB5_16AssertUnwindSafeINtNtB9_3pin3PinQNCNvMs3_NtCsgO8S5jLFugx_23deltalake_catalog_unity10datafusionNtB1y_19UnitySchemaProvider9get_creds0EENtNtNtB9_6future6future6Future4pollB1A_(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.c)
          to label %bb.e unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.15.0..sroa_idx, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775807
  br i1 %i.g, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = extractvalue { ptr, ptr } %i.d, 0
  %i.i = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!587 = distinct !{!587, !"_RINvXs0_NtNtCsbvkFyIu7lgC_4core4hash5implseNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity"}
!588 = distinct !{!588, !587, !"_RINvXs0_NtNtCsbvkFyIu7lgC_4core4hash5implseNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!589 = distinct !{!589, !590, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsReNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!590 = distinct !{!590, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsReNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity"}
!591 = !{!582, !585, !586}
!592 = !{!593, !595}
!593 = distinct !{!593, !594, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!594 = distinct !{!594, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity"}
!595 = distinct !{!595, !596, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!596 = distinct !{!596, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!597 = !{!598}
!598 = distinct !{!598, !599, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!599 = distinct !{!599, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsgO8S5jLFugx_23deltalake_catalog_unity"}
!600 = !{!601}
!601 = distinct !{!601, !602, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!602 = distinct !{!602, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!603 = !{!604}
!604 = distinct !{!604, !605, !"_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner10find_inner: argument 0"}
!605 = distinct !{!605, !"_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner10find_inner"}
!606 = !{!604, !601}
!607 = !{!608, !609}
!608 = distinct !{!608, !605, !"_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner10find_inner: argument 1"}
!609 = distinct !{!609, !602, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!610 = !{!611, !604, !608, !601, !609}
!611 = distinct !{!611, !612, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!612 = distinct !{!612, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!613 = !{!614, !604, !608, !601, !609}
!614 = distinct !{!614, !615, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!615 = distinct !{!615, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!616 = !{!617, !619}
!617 = distinct !{!617, !618, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 0"}
!618 = distinct !{!618, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq"}
!619 = distinct !{!619, !618, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str6traitseNtNtB8_3cmp9PartialEq2eq: argument 1"}
!620 = !{!621, !623, !624}
!621 = distinct !{!621, !622, !"_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_: argument 0"}
!622 = distinct !{!622, !"_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_"}
!623 = distinct !{!623, !622, !"_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_: argument 1"}
!624 = distinct !{!624, !622, !"_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_: argument 2"}
!625 = !{!623, !624}
!626 = !{!621}
!627 = !{!628, !630, !621, !623, !624}
!628 = distinct !{!628, !629, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB13_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2f_INtB2f_11InvalidatorB1A_B2V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0ENtNtNtB9_6traits8iterator8Iterator4nextB2Z_: argument 0"}
!629 = distinct !{!629, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB13_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2f_INtB2f_11InvalidatorB1A_B2V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0ENtNtNtB9_6traits8iterator8Iterator4nextB2Z_"}
!630 = distinct !{!630, !629, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB13_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2f_INtB2f_11InvalidatorB1A_B2V_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0ENtNtNtB9_6traits8iterator8Iterator4nextB2Z_: argument 1"}
!631 = !{!632, !628, !621}
!632 = distinct !{!632, !633, !"_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_: argument 0"}
!633 = distinct !{!633, !"_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_"}
!634 = !{!630, !621, !623, !624}
!635 = !{!636, !638, !640}
!636 = distinct !{!636, !637, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!637 = distinct !{!637, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!638 = distinct !{!638, !639, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1k_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2I_: argument 0"}
!639 = distinct !{!639, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1k_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2I_"}
!640 = distinct !{!640, !641, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_: argument 0"}
!641 = distinct !{!641, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_"}
!642 = !{!643, !645, !647}
!643 = distinct !{!643, !644, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!644 = distinct !{!644, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!645 = distinct !{!645, !646, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1k_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2I_: argument 0"}
!646 = distinct !{!646, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBN_6future11invalidator9PredicateB1k_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2I_"}
!647 = distinct !{!647, !648, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_: argument 0"}
!648 = distinct !{!648, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_: argument 0"}
!651 = distinct !{!651, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_"}
!652 = !{!653, !655, !650}
!653 = distinct !{!653, !654, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_: argument 0"}
!654 = distinct !{!654, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_"}
!655 = distinct !{!655, !656, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_: argument 0"}
!656 = distinct !{!656, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_"}
!657 = !{!658}
!658 = distinct !{!658, !659, !"_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19expire_after_createB1H_: argument 1"}
!659 = distinct !{!659, !"_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19expire_after_createB1H_"}
!660 = !{!661, !658, !662}
!661 = distinct !{!661, !659, !"_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19expire_after_createB1H_: argument 0"}
!662 = distinct !{!662, !659, !"_RNvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19expire_after_createB1H_: argument 2"}
!663 = distinct !{null}
!664 = !{!661, !662}
!665 = !{!666}
!666 = distinct !{!666, !667, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_: argument 0"}
!667 = distinct !{!667, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_"}
!668 = !{!669, !671, !666}
!669 = distinct !{!669, !670, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_: argument 0"}
!670 = distinct !{!670, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_"}
!671 = distinct !{!671, !672, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_: argument 0"}
!672 = distinct !{!672, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_"}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_: argument 0"}
!675 = distinct !{!675, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_"}
!676 = !{!677}
!677 = distinct !{!677, !678, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2g_10ValueEntryB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3j_: argument 0"}
!678 = distinct !{!678, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2g_10ValueEntryB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3j_"}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_: argument 0"}
!681 = distinct !{!681, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!684 = distinct !{!684, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!687 = distinct !{!687, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE3newCsgO8S5jLFugx_23deltalake_catalog_unity"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!690 = distinct !{!690, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!691 = !{!692}
!692 = distinct !{!692, !693, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1Y_6future11invalidator9PredicateB2J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB48_: argument 0"}
!693 = distinct !{!693, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1Y_6future11invalidator9PredicateB2J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB48_"}
!694 = !{!695}
!695 = distinct !{!695, !696, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtB4_6string6StringINtNtNtBN_6future11invalidator9PredicateB1y_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3newB2F_: argument 0"}
!696 = distinct !{!696, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtB4_6string6StringINtNtNtBN_6future11invalidator9PredicateB1y_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3newB2F_"}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1Y_6future11invalidator9PredicateB2J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB48_: argument 0"}
!699 = distinct !{!699, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1Y_6future11invalidator9PredicateB2J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB48_"}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2P_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1Y_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB6h_: argument 0"}
!702 = distinct !{!702, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2P_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1Y_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB6h_"}
!703 = !{!704}
!704 = distinct !{!704, !705, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtB4_4sync3ArcNtNtB4_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE3newB52_: argument 0"}
!705 = distinct !{!705, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtB4_4sync3ArcNtNtB4_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBN_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE3newB52_"}
!706 = !{!707}
!707 = distinct !{!707, !708, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2P_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1Y_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB6h_: argument 0"}
!708 = distinct !{!708, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2P_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1Y_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB6h_"}
!709 = !{!710, !712}
!710 = distinct !{!710, !711, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!711 = distinct !{!711, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!712 = distinct !{!712, !713, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!713 = distinct !{!713, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!716 = distinct !{!716, !"_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!717 = !{!718, !715}
!718 = distinct !{!718, !716, !"_RNvXs15_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_18AwsTempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!719 = !{!718}
!720 = !{!721, !723}
!721 = distinct !{!721, !722, !"_RNvXs1b_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_17R2TempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!722 = distinct !{!722, !"_RNvXs1b_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_17R2TempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!723 = distinct !{!723, !722, !"_RNvXs1b_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_17R2TempCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!724 = !{!721}
!725 = !{!723}
!726 = !{!727}
!727 = distinct !{!727, !728, !"_RNCNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00B1H_: argument 0"}
!728 = distinct !{!728, !"_RNCNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers00B1H_"}
!729 = !{!730, !732}
!730 = distinct !{!730, !731, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!731 = distinct !{!731, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!732 = distinct !{!732, !733, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!733 = distinct !{!733, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_RNvXsb_NtNtCsbvkFyIu7lgC_4core3ptr8non_nullINtB5_7NonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBY_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtB9_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!736 = distinct !{!736, !"_RNvXsb_NtNtCsbvkFyIu7lgC_4core3ptr8non_nullINtB5_7NonNullINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBY_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtB9_3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity"}
!737 = !{!738}
!738 = distinct !{!738, !739, !"_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserializeNtB5_18ParseIntervalErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 0"}
!739 = distinct !{!739, !"_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserializeNtB5_18ParseIntervalErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt"}
!740 = !{!741}
!741 = distinct !{!741, !739, !"_RNvXs1_NtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserializeNtB5_18ParseIntervalErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt: argument 1"}
!742 = !{!738, !741}
!743 = !{!744}
!744 = distinct !{!744, !745, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!745 = distinct !{!745, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity"}
!746 = !{!747}
!747 = distinct !{!747, !745, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!748 = !{!749}
!749 = distinct !{!749, !745, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!750 = !{!744, !747, !749}
!751 = !{!744, !747}
!752 = !{!744, !749}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!755 = distinct !{!755, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!756 = !{!757, !759, !760, !762, !763, !744, !747, !749}
!757 = distinct !{!757, !758, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!758 = distinct !{!758, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity"}
!759 = distinct !{!759, !758, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!760 = distinct !{!760, !761, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!761 = distinct !{!761, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!762 = distinct !{!762, !761, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!763 = distinct !{!763, !764, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!764 = distinct !{!764, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity"}
!765 = !{!759, !762, !744, !749}
!766 = !{!767, !769}
!767 = distinct !{!767, !768, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!768 = distinct !{!768, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity"}
!769 = distinct !{!769, !770, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!770 = distinct !{!770, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!773 = distinct !{!773, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!774 = !{!775}
!775 = distinct !{!775, !773, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!776 = !{!775, !777, !744, !749}
!777 = distinct !{!777, !773, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!778 = !{!775, !749}
!779 = !{!772, !777, !744, !747}
!780 = !{!781, !775, !744, !749}
!781 = distinct !{!781, !782, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!782 = distinct !{!782, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!783 = !{!784, !775, !744, !749}
!784 = distinct !{!784, !785, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!785 = distinct !{!785, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!786 = !{!775, !744, !749}
!787 = !{!788, !775, !744, !749}
!788 = distinct !{!788, !789, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!789 = distinct !{!789, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!792 = distinct !{!792, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!795 = distinct !{!795, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!798 = distinct !{!798, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!799 = !{!797, !794}
!800 = !{!801}
!801 = distinct !{!801, !802, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!802 = distinct !{!802, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity"}
!803 = !{!804}
!804 = distinct !{!804, !802, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!805 = !{!806}
!806 = distinct !{!806, !802, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!807 = !{!801, !804, !806}
!808 = !{!801, !804}
!809 = !{!801, !806}
!810 = !{!811}
!811 = distinct !{!811, !812, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!812 = distinct !{!812, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!813 = !{!814, !816, !817, !819, !820, !801, !804, !806}
!814 = distinct !{!814, !815, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!815 = distinct !{!815, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity"}
!816 = distinct !{!816, !815, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!817 = distinct !{!817, !818, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!818 = distinct !{!818, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!819 = distinct !{!819, !818, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!820 = distinct !{!820, !821, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!821 = distinct !{!821, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity"}
!822 = !{!816, !819, !801, !806}
!823 = !{!824, !826}
!824 = distinct !{!824, !825, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!825 = distinct !{!825, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity"}
!826 = distinct !{!826, !827, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!827 = distinct !{!827, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!828 = !{!829}
!829 = distinct !{!829, !830, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!830 = distinct !{!830, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!831 = !{!832}
!832 = distinct !{!832, !830, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!833 = !{!832, !834, !801, !806}
!834 = distinct !{!834, !830, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!835 = !{!832, !806}
!836 = !{!829, !834, !801, !804}
!837 = !{!838, !832, !801, !806}
!838 = distinct !{!838, !839, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!839 = distinct !{!839, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!840 = !{!841, !832, !801, !806}
!841 = distinct !{!841, !842, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!842 = distinct !{!842, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!843 = !{!832, !801, !806}
!844 = !{!845, !832, !801, !806}
!845 = distinct !{!845, !846, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!846 = distinct !{!846, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!847 = !{!848}
!848 = distinct !{!848, !849, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!849 = distinct !{!849, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!850 = !{!851}
!851 = distinct !{!851, !852, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!852 = distinct !{!852, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!855 = distinct !{!855, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!856 = !{!854, !851}
!857 = !{!858}
!858 = distinct !{!858, !859, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!859 = distinct !{!859, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity"}
!860 = !{!861}
!861 = distinct !{!861, !859, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!862 = !{!863}
!863 = distinct !{!863, !859, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!864 = !{!858, !861, !863}
!865 = !{!858, !861}
!866 = !{!858, !863}
!867 = !{!868}
!868 = distinct !{!868, !869, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!869 = distinct !{!869, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!870 = !{!871, !873, !874, !876, !877, !858, !861, !863}
!871 = distinct !{!871, !872, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!872 = distinct !{!872, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity"}
!873 = distinct !{!873, !872, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!874 = distinct !{!874, !875, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!875 = distinct !{!875, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!876 = distinct !{!876, !875, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!877 = distinct !{!877, !878, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!878 = distinct !{!878, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECsgO8S5jLFugx_23deltalake_catalog_unity"}
!879 = !{!873, !876, !858, !863}
!880 = !{!881, !883}
!881 = distinct !{!881, !882, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!882 = distinct !{!882, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsgO8S5jLFugx_23deltalake_catalog_unity"}
!883 = distinct !{!883, !884, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!884 = distinct !{!884, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!885 = !{!886}
!886 = distinct !{!886, !887, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4b_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!887 = distinct !{!887, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4b_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!888 = !{!889}
!889 = distinct !{!889, !887, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4b_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!890 = !{!889, !891, !858, !863}
!891 = distinct !{!891, !887, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4b_s_0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 2"}
!892 = !{!889, !863}
!893 = !{!886, !891, !858, !861}
!894 = !{!895, !889, !858, !863}
!895 = distinct !{!895, !896, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!896 = distinct !{!896, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!897 = !{!898, !889, !858, !863}
!898 = distinct !{!898, !899, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!899 = distinct !{!899, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4d_s_0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!900 = !{!889, !858, !863}
!901 = !{!902, !889, !858, !863}
!902 = distinct !{!902, !903, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128: argument 0"}
!903 = distinct !{!903, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse214__mm_load_si128"}
!904 = !{!905}
!905 = distinct !{!905, !906, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!906 = distinct !{!906, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!907 = !{!908}
!908 = distinct !{!908, !909, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!909 = distinct !{!909, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EECsgO8S5jLFugx_23deltalake_catalog_unity"}
!910 = !{!911}
!911 = distinct !{!911, !912, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!912 = distinct !{!912, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!913 = !{!911, !908}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le: argument 0"}
!916 = distinct !{!916, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le"}
!917 = !{!918}
!918 = distinct !{!918, !919, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!919 = distinct !{!919, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!920 = !{!921}
!921 = distinct !{!921, !922, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!922 = distinct !{!922, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!923 = !{!924}
!924 = distinct !{!924, !925, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le: argument 0"}
!925 = distinct !{!925, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le"}
end_hunk_1
