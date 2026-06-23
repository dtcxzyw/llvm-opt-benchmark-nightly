inline.NumInlined: 115
inline.NumDeleted: 61
begin_hunk_0_@_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs6KaIMXx2hZw_14deltalake_hdfs:bb.a
  store <2 x i64> %i.j, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !15, !noalias !12
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !15, !noalias !12
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #14, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18
  store i8 -1, ptr %i.a, align 1, !noalias !18
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #14, !noalias !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !28, !noalias !12
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !28, !noalias !12
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !28, !noalias !12 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !28, !noalias !12
  %i.o = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !28, !noalias !12, !noundef !3
  %i.p = shl i64 %i.o, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !28, !noalias !12, !noundef !3
  %i.s = or i64 %i.p, %i.r                        ; 2 uses
  %i.t = xor i64 %i.s, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.u = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.v = add i64 %i.t, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.x = xor i64 %i.w, %i.u                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = add i64 %i.v, %i.x                      ; 3 uses
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.ae = xor i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = xor i64 %i.ac, %i.s
  %i.aj = xor i64 %i.ah, 255
  %i.ak = add i64 %i.ai, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ag, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 13)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.au = xor i64 %i.ar, %i.at                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 21)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 13)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 16)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 21)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 13)
  %i.bp = xor i64 %i.bo, %i.bm                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 16)
  %i.br = xor i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
  %i.bw = xor i64 %i.bu, %i.bt
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = xor i64 %i.bx, %i.bs                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  %i.bz = shl i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !8, !noalias !14, !noundef !3
  %i.cc = and i64 %i.cb, 63
  %i.cd = lshr i64 %i.bz, %i.cc                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !8, !noalias !14, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.ce, align 8, !alias.scope !8, !noalias !14, !noundef !3
  %i.cf = icmp ult i64 %i.cd, %.val14.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cd ; 11 uses
  %i.ch = cmpxchg weak ptr %i.cg, i64 0, i64 -4 acquire monotonic, align 8, !noalias !14
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.c, !prof !33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %bb.l, %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cj, %bb.b ], [ %i.dz, %bb.l ], [ %i.dz, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(88) %1) #15
          to label %.body unwind label %bb.m, !noalias !5

bb.b:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.b, !noalias !14

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %bb.c, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc16.i unwind label %bb.k, !noalias !14

.noexc16.i:                                       ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %.val.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !34, !noalias !39, !nonnull !3, !noundef !3 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val7.i.i = load i64, ptr %i.cl, align 8, !alias.scope !34, !noalias !39, !noundef !3 ; 4 uses
  %i.cm = lshr i64 %i.by, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 3 uses
  %i.co = insertelement <16 x i8> poison, i8 %i.cn, i64 0
  %i.cp = shufflevector <16 x i8> %i.co, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !41, !noalias !42 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !41, !noalias !42, !nonnull !3
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.noexc16.i
  %.pn.i.i.i = phi i64 [ %i.by, %.noexc16.i ], [ %i.dq, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc16.i ], [ %.sroa.4.1.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %.noexc16.i ], [ %.sroa.01.1.i.i.i, %bb.h ]
  %i.cq = phi i64 [ 0, %.noexc16.i ], [ %i.dp, %bb.h ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.cr, align 1, !noalias !43 ; 3 uses
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.cp
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.cx, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i ], [ %i.ct, %bb.d ] ; 3 uses
  %i.cu = add i16 %.sroa.05.0.i22.i.i, -1
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = and i16 %i.cu, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.cy = add i64 %.sroa.0.017.i.i.i, %i.cw
  %i.cz = and i64 %i.cy, %.val7.i.i
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.da ; 3 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -88
  %.val3.i.i.i = load i64, ptr %i.dc, align 8, !noalias !46, !noundef !3
  %i.dd = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.dd, label %bb.e, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.de = getelementptr i8, ptr %i.db, i64 -96
  %.val2.i.i.i = load ptr, ptr %i.de, align 8, !noalias !46, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !46
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.f

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.g, %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i ], [ %i.do, %bb.g ], [ undef, %bb.f ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i
  %i.dj = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dk, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = add i64 %.sroa.0.017.i.i.i, %i.dm
  %i.do = and i64 %i.dn, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dp = add i64 %i.cq, 16                       ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.0.017.i.i.i
  br label %bb.d

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !49, !noundef !3
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.du = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !49
  %i.dv = icmp slt <16 x i8> %i.du, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i17.i.i.i = icmp ne i16 %i.dw, 0
  %i.dx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dw, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  call void @llvm.assume(i1 %.not.i17.i.i.i)
  br label %bb.n

bb.k:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8, !noalias !14
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.l, !prof !33

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.m, !noalias !14

.thread:                                          ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !14, !noalias !8
  %.sroa.8.8..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.8.8.copyload14 = load ptr, ptr %.sroa.8.8..sroa_idx13, align 8, !alias.scope !14, !noalias !8
  %i.ec = ptrtoint ptr %i.cg to i64
  %i.ed = ptrtoint ptr %i.db to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !5
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dy, %bb.j ], [ %.sroa.4.1.i.i.i, %bb.i ] ; 4 uses
  %.sroa.0.0.copyload11 = load i64, ptr %1, align 8, !alias.scope !14, !noalias !8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !alias.scope !14, !noalias !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload11, -9223372036854775808
  br i1 %.not, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.thread, %bb.n
  %.sroa.8.029 = phi ptr [ %.sroa.8.8.copyload14, %.thread ], [ %i.cg, %bb.n ]
  %.sroa.9.028 = phi i64 [ %i.ec, %.thread ], [ %i.by, %bb.n ] ; 2 uses
  %.sroa.11.027 = phi i64 [ %i.ed, %.thread ], [ %.sroa.3.0.i.ph.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %.sroa.8.029, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %.sroa.9.028, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %.sroa.11.027, ptr %.sroa.11.8..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.11.027 to ptr      ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.cast, i64 -16 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !3, !noundef !3
  %i.eh = getelementptr inbounds i8, ptr %.cast, i64 -8
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ej = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.ej, ptr %i.ef, align 8
  %i.ek = inttoptr i64 %.sroa.9.028 to ptr        ; 2 uses
  %i.el = cmpxchg ptr %i.ek, i64 -4, i64 0 release monotonic, align 8, !noalias !50
  %i.em = extractvalue { i64, i1 } %i.el, 1
  br i1 %i.em, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6, label %bb.p, !prof !33

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ek)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6 unwind label %bb.q, !noalias !50

bb.q:                                             ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d) #15
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6: ; preds = %bb.p, %bb.o
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.t:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %.sroa.3.0 = phi ptr [ %i.ei, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i ], [ undef, %bb.u ], [ undef, %bb.v ]
  %.sroa.0.0 = phi ptr [ %i.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.er = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.es = insertvalue { ptr, ptr } %i.er, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.es

bb.u:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !noalias !56, !noundef !3
  %i.ev = and i8 %i.eu, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ey = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.ez = and i64 %.val7.i.i, %i.ey
  %i.fa = getelementptr i8, ptr %.val.i.i, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %i.fc = load <2 x i64>, ptr %i.ex, align 8, !alias.scope !53, !noalias !62
  %i.fd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ew, i64 0
  %i.fe = sub <2 x i64> %i.fc, %i.fd
  %i.ff = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.fg = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -104
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %i.fg, i64 -96
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fg, i64 -16
  %i.fi = load <2 x ptr>, ptr %i.e, align 16
  store i8 %i.cn, ptr %i.et, align 1, !noalias !56
  store i8 %i.cn, ptr %i.fb, align 1, !noalias !56
  store <2 x i64> %i.fe, ptr %i.ex, align 8, !alias.scope !53, !noalias !62
  store i64 %.sroa.0.0.copyload11, ptr %i.fh, align 8, !noalias !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  store <2 x ptr> %i.fi, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !64
  %i.fj = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  br i1 %i.fk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.q, %bb.r, %.body, %bb.w
  %eh.lpad-body21 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.w ], [ %i.en, %bb.q ], [ %i.eo, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body21

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.fl = load ptr, ptr %i.e, align 16, !alias.scope !71, !nonnull !3, !noundef !3
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !71
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.w:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  store ptr %2, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val11.i = load ptr, ptr %i.h, align 8, !alias.scope !77, !noalias !80, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.i, align 8, !alias.scope !77, !noalias !80, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !79
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load <2 x i64>, ptr %i.g, align 8, !alias.scope !75, !noalias !81 ; 3 uses
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.l, ptr %i.b, align 16, !alias.scope !82, !noalias !79
  %i.m = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.n = xor <2 x i64> %i.m, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !79
  store <2 x i64> %i.j, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !82, !noalias !79
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !82, !noalias !79
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #14, !noalias !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85
  store i8 -1, ptr %i.a, align 1, !noalias !85
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #14, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !85
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !95, !noalias !79
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !95, !noalias !79
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !95, !noalias !79 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !95, !noalias !79
  %i.o = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !95, !noalias !79, !noundef !3
  %i.p = shl i64 %i.o, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !95, !noalias !79, !noundef !3
  %i.s = or i64 %i.p, %i.r                        ; 2 uses
  %i.t = xor i64 %i.s, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.u = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.v = add i64 %i.t, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.x = xor i64 %i.w, %i.u                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = add i64 %i.v, %i.x                      ; 3 uses
  %i.ac = add i64 %i.z, %i.aa                     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 17)
  %i.ae = xor i64 %i.ab, %i.ad                    ; 3 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 21)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = xor i64 %i.ac, %i.s
  %i.aj = xor i64 %i.ah, 255
  %i.ak = add i64 %i.ai, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ag, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 13)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.au = xor i64 %i.ar, %i.at                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 21)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 13)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 16)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 21)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 13)
  %i.bp = xor i64 %i.bo, %i.bm                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 16)
  %i.br = xor i64 %i.bq, %i.bn                    ; 2 uses
  %i.bs = add i64 %i.bp, %i.bn                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 17)
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 21)
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 32)
  %i.bw = xor i64 %i.bu, %i.bt
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = xor i64 %i.bx, %i.bs                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !79
  %i.bz = shl i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !75, !noalias !81, !noundef !3
  %i.cc = and i64 %i.cb, 63
  %i.cd = lshr i64 %i.bz, %i.cc                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !75, !noalias !81, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.ce, align 8, !alias.scope !75, !noalias !81, !noundef !3
  %i.cf = icmp ult i64 %i.cd, %.val14.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cd ; 11 uses
  %i.ch = cmpxchg weak ptr %i.cg, i64 0, i64 -4 acquire monotonic, align 8, !noalias !81
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.c, !prof !33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %bb.l, %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cj, %bb.b ], [ %i.dz, %bb.l ], [ %i.dz, %bb.k ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(88) %1) #15
          to label %.body unwind label %bb.m, !noalias !72

bb.b:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.b, !noalias !81

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %bb.c, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc16.i unwind label %bb.k, !noalias !81

.noexc16.i:                                       ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %.val.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !100, !noalias !105, !nonnull !3, !noundef !3 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val7.i.i = load i64, ptr %i.cl, align 8, !alias.scope !100, !noalias !105, !noundef !3 ; 4 uses
  %i.cm = lshr i64 %i.by, 57
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 3 uses
  %i.co = insertelement <16 x i8> poison, i8 %i.cn, i64 0
  %i.cp = shufflevector <16 x i8> %i.co, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !107, !noalias !108 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !107, !noalias !108, !nonnull !3
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.noexc16.i
  %.pn.i.i.i = phi i64 [ %i.by, %.noexc16.i ], [ %i.dq, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %.noexc16.i ], [ %.sroa.4.1.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %.noexc16.i ], [ %.sroa.01.1.i.i.i, %bb.h ]
  %i.cq = phi i64 [ 0, %.noexc16.i ], [ %i.dp, %bb.h ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.cr, align 1, !noalias !109 ; 3 uses
  %i.cs = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.cp
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.cx, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i ], [ %i.ct, %bb.d ] ; 3 uses
  %i.cu = add i16 %.sroa.05.0.i22.i.i, -1
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = and i16 %i.cu, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.cy = add i64 %.sroa.0.017.i.i.i, %i.cw
  %i.cz = and i64 %i.cy, %.val7.i.i
  %i.da = sub nsw i64 0, %i.cz
  %i.db = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.da ; 3 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -88
  %.val3.i.i.i = load i64, ptr %i.dc, align 8, !noalias !112, !noundef !3
  %i.dd = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.dd, label %bb.e, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.de = getelementptr i8, ptr %i.db, i64 -96
  %.val2.i.i.i = load ptr, ptr %i.de, align 8, !noalias !112, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !112
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit.backedge.i.i, %bb.d
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.f

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.g, %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i ], [ %i.do, %bb.g ], [ undef, %bb.f ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i ], [ 1, %bb.g ], [ 0, %bb.f ]
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.h, label %bb.i

bb.f:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs.exit._crit_edge.i.i
  %i.dj = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dk = bitcast <16 x i1> %i.dj to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dk, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = add i64 %.sroa.0.017.i.i.i, %i.dm
  %i.do = and i64 %i.dn, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.h:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dp = add i64 %i.cq, 16                       ; 2 uses
  %i.dq = add i64 %i.dp, %.sroa.0.017.i.i.i
  br label %bb.d

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !115, !noundef !3
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.du = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !115
  %i.dv = icmp slt <16 x i8> %i.du, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i17.i.i.i = icmp ne i16 %i.dw, 0
  %i.dx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dw, i1 true)
  %i.dy = zext nneg i16 %i.dx to i64
  call void @llvm.assume(i1 %.not.i17.i.i.i)
  br label %bb.n

bb.k:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8, !noalias !81
  %i.eb = extractvalue { i64, i1 } %i.ea, 1
  br i1 %i.eb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i, label %bb.l, !prof !33

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.m, !noalias !81

.thread:                                          ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !81, !noalias !75
  %.sroa.8.8..sroa_idx13 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.8.8.copyload14 = load ptr, ptr %.sroa.8.8..sroa_idx13, align 8, !alias.scope !81, !noalias !75
  %i.ec = ptrtoint ptr %i.cg to i64
  %i.ed = ptrtoint ptr %i.db to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13, !noalias !72
  unreachable

bb.n:                                             ; preds = %bb.i, %bb.j
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.dy, %bb.j ], [ %.sroa.4.1.i.i.i, %bb.i ] ; 4 uses
  %.sroa.0.0.copyload11 = load i64, ptr %1, align 8, !alias.scope !81, !noalias !75 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !alias.scope !81, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload11, -9223372036854775808
  br i1 %.not, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.thread, %bb.n
  %.sroa.8.029 = phi ptr [ %.sroa.8.8.copyload14, %.thread ], [ %i.cg, %bb.n ]
  %.sroa.9.028 = phi i64 [ %i.ec, %.thread ], [ %i.by, %bb.n ] ; 2 uses
  %.sroa.11.027 = phi i64 [ %i.ed, %.thread ], [ %.sroa.3.0.i.ph.i.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %.sroa.8.029, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %.sroa.9.028, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 %.sroa.11.027, ptr %.sroa.11.8..sroa_idx, align 8
  %.cast = inttoptr i64 %.sroa.11.027 to ptr      ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.cast, i64 -16 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !3, !noundef !3
  %i.eh = getelementptr inbounds i8, ptr %.cast, i64 -8
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !3, !align !4, !noundef !3
  %i.ej = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.ej, ptr %i.ef, align 8
  %i.ek = inttoptr i64 %.sroa.9.028 to ptr        ; 2 uses
  %i.el = cmpxchg ptr %i.ek, i64 -4, i64 0 release monotonic, align 8, !noalias !116
  %i.em = extractvalue { i64, i1 } %i.el, 1
  br i1 %i.em, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6, label %bb.p, !prof !33

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ek)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6 unwind label %bb.q, !noalias !116

bb.q:                                             ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d) #15
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6: ; preds = %bb.p, %bb.o
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i6
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.t:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.v, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  %.sroa.3.0 = phi ptr [ %i.ei, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i ], [ undef, %bb.u ], [ undef, %bb.v ]
  %.sroa.0.0 = phi ptr [ %i.eg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs6KaIMXx2hZw_14deltalake_hdfs.exit.i ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.er = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.es = insertvalue { ptr, ptr } %i.er, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.es

bb.u:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !noalias !122, !noundef !3
  %i.ev = and i8 %i.eu, 1
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ey = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.ez = and i64 %.val7.i.i, %i.ey
  %i.fa = getelementptr i8, ptr %.val.i.i, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %i.fc = load <2 x i64>, ptr %i.ex, align 8, !alias.scope !119, !noalias !128
  %i.fd = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ew, i64 0
  %i.fe = sub <2 x i64> %i.fc, %i.fd
  %i.ff = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.fg = getelementptr inbounds [104 x i8], ptr %.val.i.i, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -104
  %.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %i.fg, i64 -96
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.fg, i64 -16
  %i.fi = load <2 x ptr>, ptr %i.e, align 16
  store i8 %i.cn, ptr %i.et, align 1, !noalias !122
  store i8 %i.cn, ptr %i.fb, align 1, !noalias !122
  store <2 x i64> %i.fe, ptr %i.ex, align 8, !alias.scope !119, !noalias !128
  store i64 %.sroa.0.0.copyload11, ptr %i.fh, align 8, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  store <2 x ptr> %i.fi, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !130
  %i.fj = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8
  %i.fk = extractvalue { i64, i1 } %i.fj, 1
  br i1 %i.fk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit: ; preds = %bb.q, %bb.r, %.body, %bb.w
  %eh.lpad-body21 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.w ], [ %i.en, %bb.q ], [ %i.eo, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body21

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEECs6KaIMXx2hZw_14deltalake_hdfs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.fl = load ptr, ptr %i.e, align 16, !alias.scope !137, !nonnull !3, !noundef !3
  %i.fm = atomicrmw sub ptr %i.fl, i64 1 release, align 8, !noalias !137
  %i.fn = icmp eq i64 %i.fm, 1
  br i1 %i.fn, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit

bb.w:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #16
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !138
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
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !138
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
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !138, !noundef !3
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
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !141
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !141
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !3
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !144, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !144, !noundef !3 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !144, !noundef !3
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
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !144
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !144
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !144
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !141
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !141
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !147
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
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !147
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
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !147, !noundef !3
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

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE7reserveNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB7_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB7_6marker4SendEL_EENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCs6KaIMXx2hZw_14deltalake_hdfs(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8) unnamed_addr #8

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { inlinehint }
attributes #15 = { cold }
attributes #16 = { noinline }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{}
!4 = !{i64 8}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!7 = distinct !{!7, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !7, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!12 = !{!6, !9, !11}
!13 = !{!6, !9}
!14 = !{!6, !11}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!17 = distinct !{!17, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!18 = !{!19, !21, !22, !24, !25, !6, !9, !11}
!19 = distinct !{!19, !20, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!20 = distinct !{!20, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs"}
!21 = distinct !{!21, !20, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!22 = distinct !{!22, !23, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!23 = distinct !{!23, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!24 = distinct !{!24, !23, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!25 = distinct !{!25, !26, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!26 = distinct !{!26, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs6KaIMXx2hZw_14deltalake_hdfs"}
!27 = !{!21, !24, !6, !11}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!30 = distinct !{!30, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs6KaIMXx2hZw_14deltalake_hdfs"}
!31 = distinct !{!31, !32, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!32 = distinct !{!32, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!36 = distinct !{!36, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECs6KaIMXx2hZw_14deltalake_hdfs"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!39 = !{!38, !40, !6, !11}
!40 = distinct !{!40, !36, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4n_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!41 = !{!38, !11}
!42 = !{!35, !40, !6, !9}
!43 = !{!44, !38, !6, !11}
!44 = distinct !{!44, !45, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!45 = distinct !{!45, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!46 = !{!47, !38, !6, !11}
!47 = distinct !{!47, !48, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!48 = distinct !{!48, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4p_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs"}
!49 = !{!38, !6, !11}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!52 = distinct !{!52, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!55 = distinct !{!55, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs"}
!56 = !{!54, !57, !58, !60, !61}
!57 = distinct !{!57, !55, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!58 = distinct !{!58, !59, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!59 = distinct !{!59, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs"}
!60 = distinct !{!60, !59, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!61 = distinct !{!61, !59, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!62 = !{!57, !58, !60, !61}
!63 = !{!54, !58, !61}
!64 = !{!54, !58, !60, !61}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!67 = distinct !{!67, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!70 = distinct !{!70, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs"}
!71 = !{!69, !66}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!74 = distinct !{!74, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs"}
!75 = !{!76}
!76 = distinct !{!76, !74, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!77 = !{!78}
!78 = distinct !{!78, !74, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!79 = !{!73, !76, !78}
!80 = !{!73, !76}
!81 = !{!73, !78}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!84 = distinct !{!84, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!85 = !{!86, !88, !89, !91, !92, !73, !76, !78}
!86 = distinct !{!86, !87, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!87 = distinct !{!87, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs"}
!88 = distinct !{!88, !87, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!89 = distinct !{!89, !90, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!90 = distinct !{!90, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!91 = distinct !{!91, !90, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!92 = distinct !{!92, !93, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!93 = distinct !{!93, !"_RINvXs9_Cseo6ZV82fEK1_3urlNtB6_3UrlNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs6KaIMXx2hZw_14deltalake_hdfs"}
!94 = !{!88, !91, !73, !78}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!97 = distinct !{!97, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs6KaIMXx2hZw_14deltalake_hdfs"}
!98 = distinct !{!98, !99, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!99 = distinct !{!99, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!102 = distinct !{!102, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECs6KaIMXx2hZw_14deltalake_hdfs"}
!103 = !{!104}
!104 = distinct !{!104, !102, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!105 = !{!104, !106, !73, !78}
!106 = distinct !{!106, !102, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1r_INtB1r_7DashMapBY_B25_EINtNtB1r_1t3MapBY_B25_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4q_s_0ECs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!107 = !{!104, !78}
!108 = !{!101, !106, !73, !76}
!109 = !{!110, !104, !73, !78}
!110 = distinct !{!110, !111, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!111 = distinct !{!111, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!112 = !{!113, !104, !73, !78}
!113 = distinct !{!113, !114, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!114 = distinct !{!114, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE24find_or_find_insert_slotNCNvXs2_B1t_INtB1t_7DashMapB10_B27_EINtNtB1t_1t3MapB10_B27_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB4s_s_0E0Cs6KaIMXx2hZw_14deltalake_hdfs"}
!115 = !{!104, !73, !78}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEECs6KaIMXx2hZw_14deltalake_hdfs"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!121 = distinct !{!121, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs"}
!122 = !{!120, !123, !124, !126, !127}
!123 = distinct !{!123, !121, !"_RNvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE14insert_in_slotCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!124 = distinct !{!124, !125, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!125 = distinct !{!125, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs"}
!126 = distinct !{!126, !125, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 1"}
!127 = distinct !{!127, !125, !"_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCs6KaIMXx2hZw_14deltalake_hdfs: argument 2"}
!128 = !{!123, !124, !126, !127}
!129 = !{!120, !124, !127}
!130 = !{!120, !124, !126, !127}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EECs6KaIMXx2hZw_14deltalake_hdfs"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs: argument 0"}
!136 = distinct !{!136, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs6KaIMXx2hZw_14deltalake_hdfs"}
!137 = !{!135, !132}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le: argument 0"}
!140 = distinct !{!140, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le"}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!143 = distinct !{!143, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!146 = distinct !{!146, !"_RNvXs6_NtNtCsbvkFyIu7lgC_4core4hash3sipNtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le: argument 0"}
!149 = distinct !{!149, !"_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le"}
end_hunk_0
