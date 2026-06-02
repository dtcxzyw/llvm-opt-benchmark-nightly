inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RINvMs2_NtCs3JXekYNd0JR_7dashmap3setINtB6_7DashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringE8containseECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !65, !noalias !44, !noundef !3
  %i.m = or i64 %i.j, %i.l                        ; 2 uses
  %i.n = xor i64 %i.m, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.o = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.p = add i64 %i.n, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.r = xor i64 %i.q, %i.o                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 16)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = add i64 %i.p, %i.r                       ; 3 uses
  %i.w = add i64 %i.t, %i.u                       ; 2 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 17)
  %i.y = xor i64 %i.v, %i.x                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 21)
  %i.aa = xor i64 %i.z, %i.w                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 32)
  %i.ac = xor i64 %i.w, %i.m
  %i.ad = xor i64 %i.ab, 255
  %i.ae = add i64 %i.ac, %i.y                     ; 3 uses
  %i.af = add i64 %i.aa, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 13)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at                    ; 3 uses
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 17)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 21)
  %i.be = xor i64 %i.bd, %i.ba                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bg = add i64 %i.bc, %i.ba
  %i.bh = add i64 %i.be, %i.bf                    ; 2 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 13)
  %i.bj = xor i64 %i.bi, %i.bg                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 16)
  %i.bl = xor i64 %i.bk, %i.bh                    ; 2 uses
  %i.bm = add i64 %i.bj, %i.bh                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 17)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 21)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bq = xor i64 %i.bo, %i.bn
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = xor i64 %i.br, %i.bm                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  %i.bt = shl i64 %i.bs, 7
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !41, !noalias !47, !noundef !3
  %i.bw = and i64 %i.bv, 63
  %i.bx = lshr i64 %i.bt, %i.bw                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.by = load ptr, ptr %0, align 8, !alias.scope !73, !noalias !47, !nonnull !3, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !73, !noalias !47, !noundef !3
  %i.cb = icmp ult i64 %i.bx, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr %i.by, i64 %i.bx ; 8 uses
  %i.cd = load atomic i64, ptr %i.cc monotonic, align 8, !noalias !74 ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, -9
  br i1 %i.ce, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !75

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %bb.a
  %i.cf = add nuw i64 %i.cd, 4
  %i.cg = cmpxchg weak ptr %i.cc, i64 %i.cd, i64 %i.cf acquire monotonic, align 8, !noalias !74
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  br i1 %i.ch, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !76

_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %bb.a
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.cc), !noalias !74
  br label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.cj = lshr i64 %i.bs, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !83, !noalias !84, !noundef !3 ; 2 uses
  %i.cn = load ptr, ptr %i.ci, align 8, !alias.scope !83, !noalias !84, !nonnull !3, !noundef !3 ; 2 uses
  %i.co = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.cp = shufflevector <16 x i8> %i.co, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.011.0.i.i.i = phi i64 [ 0, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.di, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.bs, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.dj, %bb.d ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.cm   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.cq, align 1, !noalias !87 ; 2 uses
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.cp
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not27.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
  %.sroa.05.0.i28.i.i = phi i16 [ %i.cw, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ], [ %i.cs, %bb.b ] ; 3 uses
  %i.ct = add i16 %.sroa.05.0.i28.i.i, -1
  %i.cu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i28.i.i, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = and i16 %i.ct, %.sroa.05.0.i28.i.i      ; 2 uses
  %i.cx = add i64 %.sroa.01.0.i.i.i, %i.cv
  %i.cy = and i64 %i.cx, %i.cm
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds [24 x i8], ptr %i.cn, i64 %i.cz ; 2 uses
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %.val3.i.i.i = load i64, ptr %i.db, align 8, !noalias !90, !noundef !3
  %i.dc = icmp eq i64 %2, %.val3.i.i.i
  br i1 %i.dc, label %bb.c, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.dd = getelementptr i8, ptr %i.da, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.dd, align 8, !noalias !90, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val2.i.i.i, i64 %2), !alias.scope !93, !noalias !97
  %i.de = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.de, label %bb.f, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.not.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.not.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %bb.b
  %i.df = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.dg = bitcast <16 x i1> %i.df to i16
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i
  %i.di = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.dj = add i64 %.sroa.01.0.i.i.i, %i.di
  br label %bb.b

bb.e:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE4__geteE0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i
  %i.dk = atomicrmw sub ptr %i.cc, i64 4 release, align 8, !noalias !44
  %i.dl = icmp eq i64 %i.dk, 6
  br i1 %i.dl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit, !prof !98

bb.f:                                             ; preds = %bb.c
  %i.dm = atomicrmw sub ptr %i.cc, i64 4 release, align 8
  %i.dn = icmp eq i64 %i.dm, 6
  br i1 %i.dn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit, !prof !98

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split: ; preds = %bb.f, %bb.e
  %.ph = phi i1 [ false, %bb.e ], [ true, %bb.f ]
  tail call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.cc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split, %bb.e, %bb.f
  %i.do = phi i1 [ true, %bb.f ], [ false, %bb.e ], [ %.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one3RefNtNtCs6Po7BT7Nknu_5alloc6string6StringuEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split ]
  ret i1 %i.do
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 6, 9) %3, i16 noundef range(i16 6, 15) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [72 x i8], align 8                ; 11 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 8 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [72 x i8], align 8                ; 14 uses
  %i.o = alloca [72 x i8], align 8                ; 8 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.22.i.i.i.i = alloca [32 x i8], align 8   ; 5 uses
  %.sroa.17167.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %.sroa.16179.i.i.i.i = alloca [48 x i8], align 8 ; 6 uses
  %.sroa.15191.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.q = alloca [32 x i8], align 16               ; 7 uses
  %i.r = alloca [32 x i8], align 16               ; 7 uses
  %i.s = alloca [32 x i8], align 16               ; 7 uses
  %i.t = alloca [32 x i8], align 16               ; 7 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.631.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [72 x i8], align 8                ; 18 uses
  %i.x = alloca [72 x i8], align 8                ; 8 uses
  %i.y = alloca [72 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [72 x i8], align 8               ; 4 uses
  %i.ac = alloca [72 x i8], align 8               ; 12 uses
  %i.ad = alloca [72 x i8], align 8               ; 11 uses
  %i.ae = alloca [72 x i8], align 8               ; 12 uses
  %i.af = alloca [72 x i8], align 8               ; 12 uses
  %i.ag = alloca [72 x i8], align 8               ; 12 uses
  %i.ah = alloca [40 x i8], align 8               ; 8 uses
  %i.ai = alloca [72 x i8], align 8               ; 11 uses
  %i.aj = alloca [72 x i8], align 8               ; 8 uses
  %i.ak = alloca [72 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 16              ; 5 uses
  %i.an = alloca [32 x i8], align 16              ; 8 uses
  %i.ao = alloca [32 x i8], align 16              ; 10 uses
  %i.ap = alloca [32 x i8], align 16              ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.643.i = alloca [32 x i8], align 8        ; 6 uses
  %i.as = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.637.i = alloca [32 x i8], align 8        ; 6 uses
  %.sroa.16163 = alloca [48 x i8], align 8        ; 11 uses
  %.sroa.631.i.sroa.8 = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.18105 = alloca [48 x i8], align 8        ; 13 uses
  %.sroa.619.i.sroa.8 = alloca [16 x i8], align 8 ; 7 uses
  %i.at = alloca [72 x i8], align 8               ; 12 uses
  %.sroa.613.i = alloca [32 x i8], align 8        ; 6 uses
  %i.au = alloca [72 x i8], align 8               ; 15 uses
  %i.av = alloca [40 x i8], align 8               ; 6 uses
  %i.aw = alloca [72 x i8], align 8               ; 21 uses
  %i.ax = alloca [72 x i8], align 8               ; 6 uses
  %i.ay = alloca [40 x i8], align 8               ; 8 uses
  %i.az = alloca [72 x i8], align 8               ; 22 uses
  %i.ba = alloca [72 x i8], align 8               ; 6 uses
  %i.bb = alloca [72 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i16 noundef %4)
  %i.bc = load i64, ptr %i.bb, align 8, !range !99, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.bc, -9223372036854775798
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bg = load i64, ptr %i.bf, align 8            ; 13 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.bc, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.be, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %.sroa.321.0..sroa_idx, align 8
  br label %bb.ew

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bh = trunc nuw i64 %i.be to i1
  br i1 %i.bh, label %bb.d, label %bb.et

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.bi = load ptr, ptr %1, align 8, !nonnull !3, !align !100, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107), !noalias !101
  %i.bj = and i64 %i.bg, 3
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.bl = tail call i64 @llvm.uadd.sat.i64(i64 %i.bg, i64 4) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !110, !noalias !111, !noundef !3 ; 19 uses
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 6 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !110, !noalias !111, !noundef !3 ; 2 uses
  %i.br = add i64 %i.bq, 4                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !alias.scope !110, !noalias !111
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !110, !noalias !111, !nonnull !3, !align !100, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !114, !noundef !3 ; 3 uses
  %i.bw = icmp ugt i64 %i.br, %i.bv
  br i1 %i.bw, label %bb.n, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f
  %i.bx = icmp ult i64 %i.bg, %i.bn
  br i1 %i.bx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.by = load ptr, ptr %i.bi, align 8, !alias.scope !104, !noalias !115, !nonnull !3, !noundef !3 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bg
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !116, !noundef !3
  %i.cb = or disjoint i64 %i.bg, 1                ; 3 uses
  %i.cc = icmp ult i64 %i.cb, %i.bn
  br i1 %i.cc, label %bb.i, label %bb.j

bb.h:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !116
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !116, !noundef !3
  %i.cf = or disjoint i64 %i.bg, 2                ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bn
  br i1 %i.cg, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cb, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !116
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ch = or disjoint i64 %i.bg, 3                ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.bn
  br i1 %i.ci, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cf, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !116
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !116
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ ptrtoint (ptr @12 to i64), %bb.d ], [ %i.bl, %bb.e ]
  %.sroa.13.0.ph = phi i64 [ undef, %bb.f ], [ -9223372036854775808, %bb.d ], [ %i.bg, %bb.e ]
  %.sroa.066.0.ph = phi i64 [ -9223372036854775800, %bb.f ], [ -9223372036854775804, %bb.d ], [ -9223372036854775803, %bb.e ]
  store i64 %.sroa.066.0.ph, ptr %i.az, align 8, !alias.scope !101, !noalias !117
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 0, ptr %.sroa.211.0..sroa_idx.i, align 8, !alias.scope !101, !noalias !117
  %.sroa.312.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %.sroa.312.0..sroa_idx.i, align 4, !noalias !117
  %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.312.i.sroa.4.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.312.i.sroa.5.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.13.0.ph, ptr %.sroa.312.i.sroa.6.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.14.0.ph, ptr %.sroa.312.i.sroa.7.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.312.i.sroa.8.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.bg, ptr %.sroa.312.i.sroa.9.0..sroa.312.0..sroa_idx.i.sroa_idx, align 8, !noalias !117
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

bb.o:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !116, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !116, !noundef !3
  %.sroa.6.0.insert.ext.i = zext i8 %i.cm to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.ck to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.ce to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %i.ca to i64
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %i.cn = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i, i64 %i.bg) ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.co = and i64 %i.cn, 3
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.cq = tail call i64 @llvm.uadd.sat.i64(i64 %i.cn, i64 4) ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, %i.bn
  br i1 %i.cr, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = add i64 %i.bq, 8                        ; 3 uses
  store i64 %i.cs, ptr %i.bp, align 8, !alias.scope !130, !noalias !133
  %i.ct = icmp ugt i64 %i.cs, %i.bv
  br i1 %i.ct, label %bb.aa, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.q
  %i.cu = icmp ult i64 %i.cn, %i.bn
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cn
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !137, !noundef !3
  %i.cx = or disjoint i64 %i.cn, 1                ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.bn
  br i1 %i.cy, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !137, !inline_history !138
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cx
  %i.da = load i8, ptr %i.cz, align 1, !noalias !137, !noundef !3
  %i.db = or disjoint i64 %i.cn, 2                ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.bn
  br i1 %i.dc, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !137, !inline_history !138
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dd = or disjoint i64 %i.cn, 3                ; 3 uses
  %i.de = icmp ult i64 %i.dd, %i.bn
  br i1 %i.de, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.db, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !137, !inline_history !138
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.dd, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !137, !inline_history !138
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.df = add nuw i64 %i.cn, 4                    ; 6 uses
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.da to i64
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.cw to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.db
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !137, !noundef !3
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.dh to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !noalias !137, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.dj to i64
  %i.dk = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 26
  %i.dl = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 18
  %i.dm = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 10
  %i.dn = shl nuw nsw i64 %.sroa.0.0.insert.ext.i.i.i, 2
  %i.do = or disjoint i64 %i.dm, %i.dn
  %i.dp = or disjoint i64 %i.do, %i.dl
  %i.dq = or disjoint i64 %i.dp, %i.dk            ; 2 uses
  %i.dr = tail call i64 @llvm.uadd.sat.i64(i64 %i.df, i64 %i.dq) ; 6 uses
  %i.ds = icmp ugt i64 %i.dr, %i.bn
  br i1 %i.ds, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = add i64 %i.dq, %i.cs                    ; 2 uses
  store i64 %i.dt, ptr %i.bp, align 8, !alias.scope !139, !noalias !140
  %i.du = icmp ugt i64 %i.dt, %i.bv
  br i1 %i.du, label %bb.aa, label %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.p, %bb.q, %bb.o, %bb.y
  %.sroa.069.0.ph = phi i64 [ -9223372036854775803, %bb.p ], [ -9223372036854775803, %bb.y ], [ -9223372036854775804, %bb.o ], [ -9223372036854775800, %bb.q ], [ -9223372036854775800, %bb.z ]
  %.sroa.21.0.ph = phi i64 [ %i.cn, %bb.p ], [ %i.df, %bb.y ], [ -9223372036854775808, %bb.o ], [ undef, %bb.q ], [ %i.df, %bb.z ]
  %.sroa.23.0.ph = phi i64 [ %i.cq, %bb.p ], [ %i.dr, %bb.y ], [ ptrtoint (ptr @12 to i64), %bb.o ], [ undef, %bb.q ], [ %i.dr, %bb.z ]
  store i64 %.sroa.069.0.ph, ptr %i.az, align 8, !alias.scope !119, !noalias !122
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 0, ptr %.sroa.217.0..sroa_idx.i, align 8, !alias.scope !119, !noalias !122
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 8, ptr %.sroa.318.0..sroa_idx.i, align 8, !alias.scope !119, !noalias !122
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 0, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !122
  %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 %.sroa.21.0.ph, ptr %.sroa.419.i.sroa.4.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store i64 %.sroa.23.0.ph, ptr %.sroa.419.i.sroa.5.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i64 3, ptr %.sroa.419.i.sroa.6.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  store i64 %i.cn, ptr %.sroa.419.i.sroa.7.0..sroa.419.0..sroa_idx.i.sroa_idx, align 8, !noalias !122
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.z
  %.not.i.i.i.i330.not = icmp ugt i64 %i.dr, %i.df
  br i1 %.not.i.i.i.i330.not, label %.lr.ph, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i

.lr.ph:                                           ; preds = %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.06.0.i.i.i = sub nuw i64 %i.dr, %i.df
  %i.dv = lshr i64 %.sroa.06.0.i.i.i, 2
  %i.dw = and i64 %i.dr, 3
  %.not.i.i.i = icmp ne i64 %i.dw, 0
  %i.dx = zext i1 %.not.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.dv, %i.dx
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 8 uses
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 8 uses
  %.sroa.580.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.681.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.718.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.16163.8..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.453.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.554.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.sroa.655.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.15157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.16163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.16163.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16163, i64 16
  %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 4 uses
  %.sroa.631.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.27132.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.28.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.31.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.32.24..sroa.7.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.757.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.27132.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %.sroa.28.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.sroa.31.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %.sroa.32.24..sroa.757.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.27132.8..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.453.0..sroa_idx.i.i.i150.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i151.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i152.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.554.0..sroa_idx.i.i.i153.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.655.0..sroa_idx.i.i.i154.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5.0..sroa_idx.i149.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.14110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.21116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.27132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.14110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.21116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.24.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.sroa.27132.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.sroa.28.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %.sroa.31.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.32.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %.sroa.3102.i.sroa.4.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56 ; 2 uses
  %.sroa.3102.i.sroa.6.0..sroa.3102.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %.sroa.625.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.sroa.625.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.718.0..sroa_idx.i156.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.17167.i.i.i.i, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.16179.i.i.i.i, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.15191.i.i.i.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.654.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.357.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 6 uses
  %.sroa.256.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.718.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.242.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.848.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.er = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.41.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.15191.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 5 uses
  %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %.sroa.15191.8..sroa_idx192.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.625.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.718.0..sroa_idx.i111.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.41.0..sroa_idx.i115.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.5.0..sroa_idx.i116.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.15.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.16179.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.619.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.718.0..sroa_idx.i119.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.453.0..sroa_idx.i.i.i125.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i126.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i127.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.554.0..sroa_idx.i.i.i128.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.655.0..sroa_idx.i.i.i129.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.438.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0..sroa_idx.i123.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11158.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.16.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.17167.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.613.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.718.0..sroa_idx.i131.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.22.24..sroa.718.0..sroa_idx.i131.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.242.0..sroa_idx.i.i.i135.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.343.0..sroa_idx.i.i.i136.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i.i137.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.545.0..sroa_idx.i.i.i138.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.646.0..sroa_idx.i.i.i139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.sroa.747.0..sroa_idx.i.i.i140.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.848.0..sroa_idx.i.i.i141.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.41.0..sroa_idx.i142.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i143.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.17.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5104.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.312.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.41.0..sroa_idx.i160.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.5.0..sroa_idx.i161.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.1295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.1799.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.18105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.18105.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18105, i64 16
  %.sroa.619.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.5116.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.6117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %.sroa.5131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.8134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.9135.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %.sroa.312.0..sroa_idx.i22.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.es
  %.sroa.9.0333 = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph ], [ %i.fk, %bb.es ]
  %.sroa.679.0332 = phi i64 [ %i.df, %.lr.ph ], [ %i.fj, %bb.es ] ; 12 uses
  %.sroa.078.0331 = phi i64 [ 0, %.lr.ph ], [ %i.fl, %bb.es ] ; 2 uses
  %i.fj = add i64 %.sroa.679.0332, 4
  %i.fk = add i64 %.sroa.9.0333, -1               ; 2 uses
  %i.fl = add i64 %.sroa.078.0331, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !141
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148), !noalias !151
  %i.fm = call i64 @llvm.uadd.sat.i64(i64 %.sroa.679.0332, i64 4) ; 2 uses
  %i.fn = load i64, ptr %i.bm, align 8, !alias.scope !152, !noalias !153, !noundef !3 ; 9 uses
  %i.fo = icmp ugt i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = load i64, ptr %i.bp, align 8, !alias.scope !152, !noalias !153, !noundef !3
  %i.fq = add i64 %i.fp, 4                        ; 2 uses
  store i64 %i.fq, ptr %i.bp, align 8, !alias.scope !152, !noalias !153
  %i.fr = load ptr, ptr %i.bs, align 8, !alias.scope !152, !noalias !153, !nonnull !3, !align !100, !noundef !3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !noalias !156, !noundef !3
  %i.fu = icmp ugt i64 %i.fq, %i.ft
  br i1 %i.fu, label %bb.ak, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53: ; preds = %bb.ac
  %i.fv = icmp ult i64 %.sroa.679.0332, %i.fn
  br i1 %i.fv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53
  %i.fw = load ptr, ptr %i.bi, align 8, !alias.scope !145, !noalias !157, !nonnull !3, !noundef !3 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.sroa.679.0332
  %i.fy = load i8, ptr %i.fx, align 1, !noalias !158, !noundef !3
  %i.fz = or disjoint i64 %.sroa.679.0332, 1      ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.fn
  br i1 %i.ga, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i53
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.679.0332, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !158
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fz
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !158, !noundef !3
  %i.gd = or disjoint i64 %.sroa.679.0332, 2      ; 3 uses
  %i.ge = icmp ult i64 %i.gd, %i.fn
  br i1 %i.ge, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !158
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gf = or disjoint i64 %.sroa.679.0332, 3      ; 3 uses
  %i.gg = icmp ult i64 %i.gf, %i.fn
  br i1 %i.gg, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gd, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !158
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gf, i64 noundef %i.fn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !158
  unreachable

bb.ak:                                            ; preds = %bb.ab, %bb.ac
  %.sroa.085.0.ph = phi i64 [ -9223372036854775800, %bb.ac ], [ -9223372036854775803, %bb.ab ]
  store i64 %.sroa.085.0.ph, ptr %i.aw, align 8, !alias.scope !142, !noalias !159
  store i32 0, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !142, !noalias !159
  store i32 0, ptr %.sroa.312.0..sroa_idx.i22.i, align 4, !noalias !159
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !159
  store i64 0, ptr %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !159
  store i64 %.sroa.679.0332, ptr %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx, align 8, !noalias !159
  store i64 %i.fm, ptr %.sroa.375.0..sroa_idx.i, align 8, !noalias !159
  store i64 3, ptr %.sroa.3102.i.sroa.4.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !159
  store i64 %.sroa.679.0332, ptr %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !159
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i

bb.al:                                            ; preds = %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gd
  %i.gi = load i8, ptr %i.gh, align 1, !noalias !158, !noundef !3
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !158, !noundef !3
  %.sroa.6.0.insert.ext.i54 = zext i8 %i.gk to i64
  %.sroa.6.0.insert.shift.i55 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i54, 24
  %.sroa.5.0.insert.ext.i56 = zext i8 %i.gi to i64
  %.sroa.5.0.insert.shift.i57 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i56, 16
  %.sroa.4.0.insert.ext.i58 = zext i8 %i.gc to i64
  %.sroa.4.0.insert.shift.i59 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i58, 8
  %.sroa.0.0.insert.ext.i60 = zext i8 %i.fy to i64
  %.sroa.5.0.insert.insert.i61 = or disjoint i64 %.sroa.4.0.insert.shift.i59, %.sroa.0.0.insert.ext.i60
  %.sroa.4.0.insert.insert.i62 = or disjoint i64 %.sroa.5.0.insert.insert.i61, %.sroa.5.0.insert.shift.i57
  %.sroa.0.0.insert.insert.i63 = or disjoint i64 %.sroa.4.0.insert.insert.i62, %.sroa.6.0.insert.shift.i55
  %i.gl = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i63, i64 %.sroa.679.0332)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.637.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !164
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %i.gl) #50, !noalias !166, !inline_history !167
  %i.gm = load i64, ptr %i.ar, align 8, !range !99, !noalias !164, !noundef !3 ; 2 uses
  %.not.i40 = icmp eq i64 %i.gm, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.571.0..sroa_idx.i, i64 32, i1 false), !noalias !164
  br i1 %.not.i40, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.672.0..sroa_idx.i, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, i64 32, i1 false), !noalias !168
  store i64 %i.gm, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.643.i, i64 32, i1 false), !noalias !164
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetReEB1Q_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.as, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @292, i64 noundef 4, i16 noundef 4) #50
  %i.gn = load i64, ptr %i.as, align 8, !range !99, !noalias !164, !noundef !3 ; 2 uses
  %.not142.i = icmp eq i64 %i.gn, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.580.0..sroa_idx.i, i64 32, i1 false), !noalias !164
  br i1 %.not142.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx.i, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, i64 32, i1 false), !noalias !168
  store i64 %i.gn, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16163)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.637.i, i64 32, i1 false), !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !169), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !172), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !174
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i16 noundef 6), !noalias !176, !inline_history !167
  %i.go = load i64, ptr %i.ak, align 8, !range !99, !noalias !174, !noundef !3 ; 2 uses
  %.not.i.i41 = icmp eq i64 %i.go, -9223372036854775798
  %i.gp = load i64, ptr %i.dy, align 8, !noalias !174 ; 2 uses
  %i.gq = load i64, ptr %i.dz, align 8, !noalias !174 ; 4 uses
  br i1 %.not.i.i41, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16163, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i.i, i64 48, i1 false), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !174
  br label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !174
  %i.gr = trunc nuw i64 %i.gp to i1
  br i1 %i.gr, label %bb.as, label %bb.bb

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !174
  %i.gs = load ptr, ptr %i.ap, align 16, !alias.scope !172, !noalias !178, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !182), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !184), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !187), !noalias !119
  %i.gt = call i64 @llvm.uadd.sat.i64(i64 %i.gq, i64 1) ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !alias.scope !189, !noalias !190, !noundef !3
end_hunk_0
begin_hunk_1_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !202
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, i16 noundef 10), !noalias !203, !inline_history !167
  %i.hh = load i64, ptr %i.ag, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not.i148.i = icmp eq i64 %i.hh, -9223372036854775798
  %i.hi = load i64, ptr %i.ec, align 8, !noalias !202 ; 2 uses
  %i.hj = load i64, ptr %i.ed, align 8, !noalias !202 ; 3 uses
  br i1 %.not.i148.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.24.24.copyload = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.27132.24.copyload = load ptr, ptr %.sroa.27132.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %i.hk = load <2 x i64>, ptr %.sroa.28.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.31.24.copyload = load ptr, ptr %.sroa.31.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.32.24.copyload = load i64, ptr %.sroa.32.24..sroa.7.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !202
  br label %bb.bu

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !202
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao, i16 noundef 8), !noalias !203, !inline_history !167
  %i.hl = load i64, ptr %i.af, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not74.i.i = icmp eq i64 %i.hl, -9223372036854775798
  %i.hm = load i64, ptr %i.ee, align 8, !noalias !202 ; 2 uses
  %i.hn = load i64, ptr %i.ef, align 8, !noalias !202 ; 7 uses
  br i1 %.not74.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.sroa.24.24.copyload131 = load i64, ptr %.sroa.757.0..sroa_idx.i.i, align 8, !noalias !204
  %.sroa.27132.24.copyload140 = load ptr, ptr %.sroa.27132.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %i.ho = load <2 x i64>, ptr %.sroa.28.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.31.24.copyload149 = load ptr, ptr %.sroa.31.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  %.sroa.32.24.copyload152 = load i64, ptr %.sroa.32.24..sroa.757.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !202
  br label %bb.bu

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !202
  %i.hp = trunc nuw i64 %i.hm to i1
  %i.hq = trunc nuw i64 %i.hi to i1               ; 2 uses
  br i1 %i.hp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.hq, label %bb.bi, label %bb.bu

bb.bh:                                            ; preds = %bb.bf
  br i1 %i.hq, label %bb.bu, label %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !202
  %i.hr = load ptr, ptr %i.ao, align 16, !alias.scope !200, !noalias !205, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !209), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !211), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !214), !noalias !119
  %i.hs = call i64 @llvm.uadd.sat.i64(i64 %i.hn, i64 1) ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !216, !noalias !217, !noundef !3
  %i.hv = icmp ugt i64 %i.hs, %i.hu
  br i1 %i.hv, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 40 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !216, !noalias !217, !noundef !3
  %i.hy = add i64 %i.hx, 1                        ; 2 uses
  store i64 %i.hy, ptr %i.hw, align 8, !alias.scope !216, !noalias !217
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !216, !noalias !217, !nonnull !3, !align !100, !noundef !3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !218, !noundef !3
  %i.id = icmp ugt i64 %i.hy, %i.ic
  br i1 %i.id, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  store i64 -9223372036854775803, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  store i64 0, ptr %.sroa.453.0..sroa_idx.i.i.i150.i, align 8, !alias.scope !219, !noalias !220
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.sroa.4.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i151.i, align 8, !alias.scope !219, !noalias !220
  store i64 0, ptr %.sroa.453.sroa.5.0..sroa.453.0..sroa_idx.sroa_idx.i.i.i152.i, align 8, !alias.scope !219, !noalias !220
  store i64 %i.hn, ptr %.sroa.554.0..sroa_idx.i.i.i153.i, align 8, !alias.scope !219, !noalias !220
  store i64 %i.hs, ptr %.sroa.655.0..sroa_idx.i.i.i154.i, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  store i64 -9223372036854775798, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  store i64 -9223372036854775800, ptr %i.ad, align 8, !alias.scope !219, !noalias !220
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !202
  store i64 -9223372036854775808, ptr %i.eg, align 8, !noalias !202
  store ptr @294, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 9, ptr %.sroa.5.0..sroa_idx.i149.i, align 8, !noalias !202
  store i64 %i.hn, ptr %i.eh, align 8, !noalias !202
  store i64 1, ptr %i.aa, align 8, !noalias !202
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ad, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.aa), !noalias !203, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !202
  %i.ie = load i64, ptr %i.ae, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not75.i.i = icmp eq i64 %i.ie, -9223372036854775798
  br i1 %.not75.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.14110.0.copyload = load i64, ptr %.sroa.14110.0..sroa_idx, align 8, !noalias !204
  %.sroa.21116.0.copyload = load i64, ptr %.sroa.21116.0..sroa_idx, align 8, !noalias !204
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !204
  %.sroa.27132.0.copyload = load ptr, ptr %.sroa.27132.0..sroa_idx, align 8, !noalias !204
  %i.if = load <2 x i64>, ptr %.sroa.28.0..sroa_idx, align 8, !noalias !204
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8, !noalias !204
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !202
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !202
  %i.ig = load ptr, ptr %i.ao, align 16, !alias.scope !200, !noalias !205, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !203, !nonnull !3, !noundef !3
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !noalias !203, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !221), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !224), !noalias !119
  %i.ik = icmp ugt i64 %i.hn, %i.ij
  br i1 %i.ik, label %bb.bq, label %bb.br, !prof !98

bb.bq:                                            ; preds = %bb.bp
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.hn, i64 noundef range(i64 0, -9223372036854775808) %i.ij, i64 noundef range(i64 0, -9223372036854775808) %i.ij, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #51, !noalias !227, !inline_history !167
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hn
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.il, align 1, !alias.scope !228, !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !202
  call fastcc void @_RNCNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB8_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ab, i8 noundef %.sroa.0.0.copyload.i.i.i.i, ptr noalias noundef align 8 dereferenceable(48) %i.ig, i64 noundef %i.hj), !noalias !203, !inline_history !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !202
  store i64 -9223372036854775808, ptr %i.ei, align 8, !noalias !202
  store ptr @295, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 5, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !202
  store i64 %i.hj, ptr %i.ej, align 8, !noalias !202
  store i64 1, ptr %i.z, align 8, !noalias !202
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.z), !noalias !203, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !202
  %i.im = load i64, ptr %i.ac, align 8, !range !99, !noalias !202, !noundef !3 ; 2 uses
  %.not77.i.i = icmp eq i64 %i.im, -9223372036854775798
  br i1 %.not77.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.sroa.14110.0.copyload112 = load i64, ptr %.sroa.14110.0..sroa_idx111, align 8, !noalias !204
  %.sroa.21116.0.copyload118 = load i64, ptr %.sroa.21116.0..sroa_idx117, align 8, !noalias !204
  %.sroa.24.0.copyload125 = load i64, ptr %.sroa.24.0..sroa_idx124, align 8, !noalias !204
  %.sroa.27132.0.copyload134 = load ptr, ptr %.sroa.27132.0..sroa_idx133, align 8, !noalias !204
  %i.in = load <2 x i64>, ptr %.sroa.28.0..sroa_idx141, align 8, !noalias !204
  %.sroa.31.0.copyload148 = load ptr, ptr %.sroa.31.0..sroa_idx147, align 8, !noalias !204
  %.sroa.32.0.copyload151 = load i64, ptr %.sroa.32.0..sroa_idx150, align 8, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !202
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !202
  br label %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i

bb.bu:                                            ; preds = %bb.bg, %bb.bh, %bb.bs, %bb.bo, %bb.be, %bb.bc
  %.sroa.0108.0.ph = phi i64 [ %i.hh, %bb.bc ], [ %i.hl, %bb.be ], [ %i.im, %bb.bs ], [ %i.ie, %bb.bo ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.14110.0.ph = phi i64 [ %i.hi, %bb.bc ], [ %i.hm, %bb.be ], [ %.sroa.14110.0.copyload112, %bb.bs ], [ %.sroa.14110.0.copyload, %bb.bo ], [ 8, %bb.bh ], [ 8, %bb.bg ]
  %.sroa.21116.0.ph = phi i64 [ %i.hj, %bb.bc ], [ %i.hn, %bb.be ], [ %.sroa.21116.0.copyload118, %bb.bs ], [ %.sroa.21116.0.copyload, %bb.bo ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  %.sroa.24.0.ph = phi i64 [ %.sroa.24.24.copyload, %bb.bc ], [ %.sroa.24.24.copyload131, %bb.be ], [ %.sroa.24.0.copyload125, %bb.bs ], [ %.sroa.24.0.copyload, %bb.bo ], [ -9223372036854775808, %bb.bh ], [ -9223372036854775808, %bb.bg ]
  %.sroa.27132.0.ph = phi ptr [ %.sroa.27132.24.copyload, %bb.bc ], [ %.sroa.27132.24.copyload140, %bb.be ], [ %.sroa.27132.0.copyload134, %bb.bs ], [ %.sroa.27132.0.copyload, %bb.bo ], [ @294, %bb.bh ], [ @294, %bb.bg ]
  %.sroa.31.3.ph = phi ptr [ %.sroa.31.24.copyload, %bb.bc ], [ %.sroa.31.24.copyload149, %bb.be ], [ %.sroa.31.0.copyload148, %bb.bs ], [ %.sroa.31.0.copyload, %bb.bo ], [ @295, %bb.bh ], [ @295, %bb.bg ]
  %.sroa.32.3.ph = phi i64 [ %.sroa.32.24.copyload, %bb.bc ], [ %.sroa.32.24.copyload152, %bb.be ], [ %.sroa.32.0.copyload151, %bb.bs ], [ %.sroa.32.0.copyload, %bb.bo ], [ 5, %bb.bh ], [ 5, %bb.bg ]
  %i.io = phi <2 x i64> [ %i.hk, %bb.bc ], [ %i.ho, %bb.be ], [ %i.in, %bb.bs ], [ %i.if, %bb.bo ], [ <i64 9, i64 -9223372036854775808>, %bb.bh ], [ <i64 9, i64 -9223372036854775808>, %bb.bg ]
  store i64 %.sroa.0108.0.ph, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  store i64 %.sroa.14110.0.ph, ptr %.sroa.274.0..sroa_idx.i, align 8, !noalias !168
  store i64 %.sroa.21116.0.ph, ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store i64 %.sroa.24.0.ph, ptr %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store ptr %.sroa.27132.0.ph, ptr %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store <2 x i64> %i.io, ptr %.sroa.375.0..sroa_idx.i, align 8, !noalias !168
  store ptr %.sroa.31.3.ph, ptr %.sroa.3102.i.sroa.5.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  store i64 %.sroa.32.3.ph, ptr %.sroa.3102.i.sroa.6.0..sroa.3102.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bh, %bb.bt
  %.sroa.24.8.copyload128 = load i64, ptr %.sroa.631.i.sroa.8.0..sroa_idx, align 16, !alias.scope !229, !noalias !164
  %.sroa.27132.8.copyload137 = load ptr, ptr %.sroa.27132.8..sroa_idx136, align 8, !alias.scope !229, !noalias !164
  %i.ip = load <2 x i64>, ptr %i.ao, align 16, !alias.scope !229, !noalias !164
  store <2 x i64> %i.ip, ptr %i.an, align 16, !noalias !164
  store i64 %.sroa.24.8.copyload128, ptr %.sroa.625.i.sroa.8.0..sroa_idx, align 16, !noalias !164
  store ptr %.sroa.27132.8.copyload137, ptr %.sroa.625.i.sroa.9.0..sroa_idx, align 8, !noalias !164
  call void @llvm.experimental.noalias.scope.decl(metadata !230), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !233), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !235
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, i16 noundef 12), !noalias !236, !inline_history !167
  %i.iq = load i64, ptr %i.y, align 8, !range !99, !noalias !235, !noundef !3 ; 2 uses
  %.not.i155.i = icmp eq i64 %i.iq, -9223372036854775798
  %6 = load i64, ptr %i.ek, align 8, !noalias !235 ; 2 uses
  %7 = load i64, ptr %5, align 8, !noalias !235   ; 13 uses
  br i1 %.not.i155.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18105, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i156.i, i64 48, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !235
  br label %bb.ek

bb.bw:                                            ; preds = %_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_unionNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema4TypeNCNvXs3Y_B1h_NtB1h_5FieldNtB6_10Verifiable12run_verifier0ReB2U_ECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !235
  %8 = trunc nuw i64 %6 to i1
  br i1 %8, label %bb.bx, label %bb.el

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !235
  %i.ir = load ptr, ptr %i.an, align 16, !alias.scope !233, !noalias !238, !nonnull !3, !align !100, !noundef !3 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !242), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !244), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !247), !noalias !119
  %i.is = and i64 %7, 3
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.iu = call i64 @llvm.uadd.sat.i64(i64 %7, i64 4) ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !alias.scope !250, !noalias !251, !noundef !3 ; 9 uses
  %i.ix = icmp ugt i64 %i.iu, %i.iw
  br i1 %i.ix, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 40 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !250, !noalias !251, !noundef !3
  %i.ja = add i64 %i.iz, 4                        ; 2 uses
  store i64 %i.ja, ptr %i.iy, align 8, !alias.scope !250, !noalias !251
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !250, !noalias !251, !nonnull !3, !align !100, !noundef !3
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noalias !254, !noundef !3
  %i.jf = icmp ugt i64 %i.ja, %i.je
  br i1 %i.jf, label %bb.ch, label %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.bz
  %i.jg = icmp ult i64 %7, %i.iw
  br i1 %i.jg, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.jh = load ptr, ptr %i.ir, align 8, !alias.scope !255, !noalias !256, !nonnull !3, !noundef !3 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %7
  %i.jj = load i8, ptr %i.ji, align 1, !noalias !257, !noundef !3
  %i.jk = or disjoint i64 %7, 1                   ; 3 uses
  %i.jl = icmp ult i64 %i.jk, %i.iw
  br i1 %i.jl, label %bb.cc, label %bb.cd

bb.cb:                                            ; preds = %_RINvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_8Verifier9in_buffermECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %i.iw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #51, !noalias !257, !inline_history !167
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jk
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !257, !noundef !3
  %i.jo = or disjoint i64 %7, 2                   ; 3 uses
  %i.jp = icmp ult i64 %i.jo, %i.iw
  br i1 %i.jp, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.jk, i64 noundef %i.iw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #51, !noalias !257, !inline_history !167
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.jq = or disjoint i64 %7, 3                   ; 3 uses
  %i.jr = icmp ult i64 %i.jq, %i.iw
  br i1 %i.jr, label %bb.ci, label %bb.cg

bb.cf:                                            ; preds = %bb.cc
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef %i.iw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #51, !noalias !257, !inline_history !167
  unreachable

bb.cg:                                            ; preds = %bb.ce
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.jq, i64 noundef %i.iw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #51, !noalias !257, !inline_history !167
  unreachable

bb.ch:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.sroa.13.0.ph.i.i.i = phi i64 [ undef, %bb.bz ], [ -9223372036854775808, %bb.bx ], [ %7, %bb.by ]
  %.sroa.14.0.ph.i.i.i = phi i64 [ undef, %bb.bz ], [ ptrtoint (ptr @12 to i64), %bb.bx ], [ %i.iu, %bb.by ]
  %.sroa.0.0.ph.i.i.i = phi i64 [ -9223372036854775800, %bb.bz ], [ -9223372036854775804, %bb.bx ], [ -9223372036854775803, %bb.by ]
  store i64 %.sroa.0.0.ph.i.i.i, ptr %i.w, align 8, !alias.scope !239, !noalias !258
  store i32 0, ptr %.sroa.256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i32 0, ptr %.sroa.312.0..sroa_idx.i.i.i, align 4, !alias.scope !239, !noalias !258
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 0, ptr %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %.sroa.13.0.ph.i.i.i, ptr %.sroa.5104.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %.sroa.14.0.ph.i.i.i, ptr %.sroa.357.0..sroa_idx.i.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 3, ptr %.sroa.312.sroa.6.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !239, !noalias !258
  store i64 %7, ptr %.sroa.312.sroa.7.0..sroa.312.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !239, !noalias !258
  br label %bb.eh

bb.ci:                                            ; preds = %bb.ce
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jo
  %i.jt = load i8, ptr %i.js, align 1, !noalias !257, !noundef !3
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jq
  %i.jv = load i8, ptr %i.ju, align 1, !noalias !257, !noundef !3
  %.sroa.6.0.insert.ext.i.i.i.i = zext i8 %i.jv to i64
  %.sroa.6.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i.i = zext i8 %i.jt to i64
  %.sroa.5.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i.i = zext i8 %i.jn to i64
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.jj to i64
  %.sroa.5.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i
  %.sroa.4.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.5.0.insert.insert.i.i.i.i, %.sroa.5.0.insert.shift.i.i.i.i
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.4.0.insert.insert.i.i.i.i, %.sroa.6.0.insert.shift.i.i.i.i
  %i.jw = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.insert.insert.i.i.i.i, i64 %7)
  call void @llvm.experimental.noalias.scope.decl(metadata !259), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17167.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16179.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15191.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.631.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !263
  call fastcc void @_RNvMs4_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_8Verifier11visit_table(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ir, i64 noundef %i.jw) #50, !noalias !265, !inline_history !167
  %i.jx = load i64, ptr %i.u, align 8, !range !99, !noalias !263, !noundef !3 ; 2 uses
  %.not.i.i.i.i42 = icmp eq i64 %i.jx, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.eo, i64 32, i1 false), !noalias !263
  br i1 %.not.i.i.i.i42, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.357.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.256.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, i64 32, i1 false), !noalias !266
  store i64 %i.jx, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  br label %bb.eg

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.631.i.i.i.i, i64 32, i1 false), !noalias !263
  call void @llvm.experimental.noalias.scope.decl(metadata !268), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !271), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !273
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t, i16 noundef 4), !noalias !274, !inline_history !167
  %i.jy = load i64, ptr %i.p, align 8, !range !99, !noalias !273, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.jy, -9223372036854775798
  %i.jz = load i64, ptr %i.ep, align 8, !noalias !273 ; 2 uses
  %i.ka = load i64, ptr %i.eq, align 8, !noalias !273 ; 6 uses
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15191.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !273
  br label %bb.cx

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !273
  %i.kb = trunc nuw i64 %i.jz to i1
  br i1 %i.kb, label %bb.cn, label %bb.cy

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !273
  %i.kc = load ptr, ptr %i.t, align 16, !alias.scope !271, !noalias !275, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !276), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !279), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !281), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !284), !noalias !119
  %i.kd = and i64 %i.ka, 7
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.kf = call i64 @llvm.uadd.sat.i64(i64 %i.ka, i64 8) ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !286, !noalias !287, !noundef !3
  %i.ki = icmp ugt i64 %i.kf, %i.kh
  br i1 %i.ki, label %bb.cr, label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i64 -9223372036854775804, ptr %i.n, align 8, !alias.scope !288, !noalias !289
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store ptr @15, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 %i.ka, ptr %.sroa.848.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  br label %bb.cu

bb.cq:                                            ; preds = %bb.co
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 40 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !286, !noalias !287, !noundef !3
  %i.kl = add i64 %i.kk, 8                        ; 2 uses
  store i64 %i.kl, ptr %i.kj, align 8, !alias.scope !286, !noalias !287
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !286, !noalias !287, !nonnull !3, !align !100, !noundef !3
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !noalias !290, !noundef !3
  %i.kq = icmp ugt i64 %i.kl, %i.kp
  br i1 %i.kq, label %bb.ct, label %bb.cs

bb.cr:                                            ; preds = %bb.co
  store i64 -9223372036854775803, ptr %i.n, align 8, !alias.scope !288, !noalias !289
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 %i.ka, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  store i64 %i.kf, ptr %.sroa.646.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !288, !noalias !289
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  store i64 -9223372036854775798, ptr %i.n, align 8, !alias.scope !288, !noalias !289
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  store i64 -9223372036854775800, ptr %i.n, align 8, !alias.scope !288, !noalias !289
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !273
  store i64 -9223372036854775808, ptr %i.er, align 8, !noalias !273
  store ptr @280, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i, align 8, !noalias !273
  store i64 2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !273
  store i64 %i.ka, ptr %i.es, align 8, !noalias !273
  store i64 1, ptr %i.m, align 8, !noalias !273
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.m), !noalias !274, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !273
  %i.kr = load i64, ptr %i.o, align 8, !range !99, !noalias !273, !noundef !3 ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %i.kr, -9223372036854775798
  br i1 %.not37.i.i.i.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.sroa.9.0.copyload.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 8, !noalias !291
  %.sroa.14.0.copyload.i.i.i.i = load i64, ptr %.sroa.14.0..sroa_idx.i.i.i.i, align 8, !noalias !291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15191.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15191.0..sroa_idx.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !273
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !273
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cv, %bb.cl
  %.sroa.14.1.i.i.i.i = phi i64 [ %i.ka, %bb.cl ], [ %.sroa.14.0.copyload.i.i.i.i, %bb.cv ]
  %.sroa.9.1.i.i.i.i = phi i64 [ %i.jz, %bb.cl ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.cv ]
  %.sroa.0182.1.i.i.i.i = phi i64 [ %i.jy, %bb.cl ], [ %i.kr, %bb.cv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15191.i.i.i.i, i64 16, i1 false), !noalias !266
  store i64 %.sroa.0182.1.i.i.i.i, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  store i64 %.sroa.9.1.i.i.i.i, ptr %.sroa.256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  store i64 %.sroa.14.1.i.i.i.i, ptr %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.357.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 32, i1 false), !noalias !266
  br label %bb.eg

bb.cy:                                            ; preds = %bb.cw, %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15191.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.15191.8..sroa_idx192.i.i.i.i, i64 16, i1 false), !noalias !263
  %i.ks = load <2 x i64>, ptr %i.t, align 16, !alias.scope !292, !noalias !263
  store <2 x i64> %i.ks, ptr %i.s, align 16, !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.625.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.15191.8..sroa_idx192.i.i.i.i, i64 16, i1 false), !noalias !262
  call void @llvm.experimental.noalias.scope.decl(metadata !293), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !296), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !298
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, i16 noundef 6), !noalias !299, !inline_history !167
  %i.kt = load i64, ptr %i.l, align 8, !range !99, !noalias !298, !noundef !3 ; 2 uses
  %.not.i110.i.i.i.i = icmp eq i64 %i.kt, -9223372036854775798
  %i.ku = load i64, ptr %i.et, align 8, !noalias !298 ; 2 uses
  %i.kv = load i64, ptr %i.eu, align 8, !noalias !298 ; 3 uses
  br i1 %.not.i110.i.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16179.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx.i111.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !298
  br label %bb.de

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !298
  %i.kw = trunc nuw i64 %i.ku to i1
  br i1 %i.kw, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !298
  %i.kx = load ptr, ptr %i.s, align 16, !alias.scope !296, !noalias !300, !nonnull !3, !align !100, !noundef !3
  call fastcc void @_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema3IntENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef align 8 dereferenceable(48) %i.kx, i64 noundef %i.kv), !noalias !299, !inline_history !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !298
  store i64 -9223372036854775808, ptr %i.ev, align 8, !noalias !298
  store ptr @281, ptr %.sroa.41.0..sroa_idx.i115.i.i.i.i, align 8, !noalias !298
  store i64 9, ptr %.sroa.5.0..sroa_idx.i116.i.i.i.i, align 8, !noalias !298
  store i64 %i.kv, ptr %i.ew, align 8, !noalias !298
  store i64 1, ptr %i.i, align 8, !noalias !298
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.k, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.i), !noalias !299, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !298
  %i.ky = load i64, ptr %i.k, align 8, !range !99, !noalias !298, !noundef !3 ; 2 uses
  %.not37.i117.i.i.i.i = icmp eq i64 %i.ky, -9223372036854775798
  br i1 %.not37.i117.i.i.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !noalias !301
  %.sroa.15.0.copyload.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i.i, align 8, !noalias !301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16179.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16179.0..sroa_idx.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !298
  br label %bb.de

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !298
  br label %bb.df

bb.de:                                            ; preds = %bb.dc, %bb.cz
  %.sroa.15.1.i.i.i.i = phi i64 [ %i.kv, %bb.cz ], [ %.sroa.15.0.copyload.i.i.i.i, %bb.dc ]
  %.sroa.10.1.i.i.i.i = phi i64 [ %i.ku, %bb.cz ], [ %.sroa.10.0.copyload.i.i.i.i, %bb.dc ]
  %.sroa.0170.1.i.i.i.i = phi i64 [ %i.kt, %bb.cz ], [ %i.ky, %bb.dc ]
end_hunk_1
begin_hunk_2_@_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core:bb.a
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  store i64 -9223372036854775798, ptr %i.f, align 8, !alias.scope !325, !noalias !326
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dj
  store i64 -9223372036854775800, ptr %i.f, align 8, !alias.scope !325, !noalias !326
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !308
  store i64 -9223372036854775808, ptr %i.ez, align 8, !noalias !308
  store ptr @282, ptr %.sroa.438.0..sroa_idx.i.i.i.i.i, align 8, !noalias !308
  store i64 9, ptr %.sroa.5.0..sroa_idx.i123.i.i.i.i, align 8, !noalias !308
  store i64 %i.lc, ptr %i.fa, align 8, !noalias !308
  store i64 1, ptr %i.e, align 8, !noalias !308
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e), !noalias !327, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !308
  %i.lr = load i64, ptr %i.g, align 8, !range !99, !noalias !308, !noundef !3 ; 2 uses
  %.not37.i124.i.i.i.i = icmp eq i64 %i.lr, -9223372036854775798
  br i1 %.not37.i124.i.i.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %.sroa.11158.0.copyload.i.i.i.i = load i64, ptr %.sroa.11158.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  %.sroa.16.0.copyload.i.i.i.i = load i64, ptr %.sroa.16.0..sroa_idx.i.i.i.i, align 8, !noalias !328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17167.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.17167.0..sroa_idx.i.i.i.i, i64 48, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !308
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !308
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %bb.dg
  %.sroa.16.1.i.i.i.i = phi i64 [ %i.lc, %bb.dg ], [ %.sroa.16.0.copyload.i.i.i.i, %bb.do ]
  %.sroa.11158.1.i.i.i.i = phi i64 [ %i.lb, %bb.dg ], [ %.sroa.11158.0.copyload.i.i.i.i, %bb.do ]
  %.sroa.0157.1.i.i.i.i = phi i64 [ %i.la, %bb.dg ], [ %i.lr, %bb.do ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17167.i.i.i.i, i64 16, i1 false), !noalias !266
  store i64 %.sroa.0157.1.i.i.i.i, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  store i64 %.sroa.11158.1.i.i.i.i, ptr %.sroa.256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  store i64 %.sroa.16.1.i.i.i.i, ptr %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.357.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 32, i1 false), !noalias !266
  br label %bb.eg

bb.dr:                                            ; preds = %bb.dp, %bb.dh
  %i.ls = load <2 x i64>, ptr %i.r, align 16, !alias.scope !329, !noalias !330
  store <2 x i64> %i.ls, ptr %i.q, align 16, !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.613.sroa.8.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.619.sroa.8.0..sroa_idx.i.i.i.i, i64 16, i1 false), !noalias !262
  call void @llvm.experimental.noalias.scope.decl(metadata !331), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !334), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !336
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q, i16 noundef 10), !noalias !337, !inline_history !167
  %i.lt = load i64, ptr %i.d, align 8, !range !99, !noalias !336, !noundef !3 ; 2 uses
  %.not.i130.i.i.i.i = icmp eq i64 %i.lt, -9223372036854775798
  %i.lu = load i64, ptr %i.fb, align 8, !noalias !336 ; 2 uses
  %i.lv = load i64, ptr %i.fc, align 8, !noalias !336 ; 6 uses
  br i1 %.not.i130.i.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.lw = load <2 x i64>, ptr %.sroa.718.0..sroa_idx.i131.i.i.i.i, align 8, !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.24..sroa.718.0..sroa_idx.i131.sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !336
  br label %bb.ee

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !336
  %i.lx = trunc nuw i64 %i.lu to i1
  br i1 %i.lx, label %bb.du, label %bb.ef

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !336
  %i.ly = load ptr, ptr %i.q, align 16, !alias.scope !334, !noalias !339, !nonnull !3, !align !100, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !343), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !345), !noalias !119
  call void @llvm.experimental.noalias.scope.decl(metadata !348), !noalias !119
  %i.lz = and i64 %i.lv, 1
  %i.ma = icmp eq i64 %i.lz, 0
  br i1 %i.ma, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.mb = call i64 @llvm.uadd.sat.i64(i64 %i.lv, i64 2) ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !alias.scope !350, !noalias !351, !noundef !3
  %i.me = icmp ugt i64 %i.mb, %i.md
  br i1 %i.me, label %bb.dy, label %bb.dx

bb.dw:                                            ; preds = %bb.du
  store i64 -9223372036854775804, ptr %i.b, align 8, !alias.scope !352, !noalias !353
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i135.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i136.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i137.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 -9223372036854775808, ptr %.sroa.545.0..sroa_idx.i.i.i138.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store ptr @13, ptr %.sroa.646.0..sroa_idx.i.i.i139.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 3, ptr %.sroa.747.0..sroa_idx.i.i.i140.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 %i.lv, ptr %.sroa.848.0..sroa_idx.i.i.i141.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  br label %bb.eb

bb.dx:                                            ; preds = %bb.dv
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ly, i64 40 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !alias.scope !350, !noalias !351, !noundef !3
  %i.mh = add i64 %i.mg, 2                        ; 2 uses
  store i64 %i.mh, ptr %i.mf, align 8, !alias.scope !350, !noalias !351
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !350, !noalias !351, !nonnull !3, !align !100, !noundef !3
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load i64, ptr %i.mk, align 8, !noalias !354, !noundef !3
  %i.mm = icmp ugt i64 %i.mh, %i.ml
  br i1 %i.mm, label %bb.ea, label %bb.dz

bb.dy:                                            ; preds = %bb.dv
  store i64 -9223372036854775803, ptr %i.b, align 8, !alias.scope !352, !noalias !353
  store i64 0, ptr %.sroa.242.0..sroa_idx.i.i.i135.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.343.0..sroa_idx.i.i.i136.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 0, ptr %.sroa.444.0..sroa_idx.i.i.i137.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 %i.lv, ptr %.sroa.545.0..sroa_idx.i.i.i138.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  store i64 %i.mb, ptr %.sroa.646.0..sroa_idx.i.i.i139.i.i.i.i, align 8, !alias.scope !352, !noalias !353
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dx
  store i64 -9223372036854775798, ptr %i.b, align 8, !alias.scope !352, !noalias !353
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  store i64 -9223372036854775800, ptr %i.b, align 8, !alias.scope !352, !noalias !353
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !336
  store i64 -9223372036854775808, ptr %i.fd, align 8, !noalias !336
  store ptr @283, ptr %.sroa.41.0..sroa_idx.i142.i.i.i.i, align 8, !noalias !336
  store i64 14, ptr %.sroa.5.0..sroa_idx.i143.i.i.i.i, align 8, !noalias !336
  store i64 %i.lv, ptr %i.fe, align 8, !noalias !336
  store i64 1, ptr %i.a, align 8, !noalias !336
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a), !noalias !337, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !336
  %i.mn = load i64, ptr %i.c, align 8, !range !99, !noalias !336, !noundef !3 ; 2 uses
  %.not37.i144.i.i.i.i = icmp eq i64 %i.mn, -9223372036854775798
  br i1 %.not37.i144.i.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.sroa.12.0.copyload.i.i.i.i = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.17.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  %i.mo = load <2 x i64>, ptr %.sroa.19.0..sroa_idx.i.i.i.i, align 8, !noalias !338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !336
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !336
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec, %bb.ds
  %.sroa.17.1.i.i.i.i = phi i64 [ %i.lv, %bb.ds ], [ %.sroa.17.0.copyload.i.i.i.i, %bb.ec ]
  %.sroa.12.1.i.i.i.i = phi i64 [ %i.lu, %bb.ds ], [ %.sroa.12.0.copyload.i.i.i.i, %bb.ec ]
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.lt, %bb.ds ], [ %i.mn, %bb.ec ]
  %i.mp = phi <2 x i64> [ %i.lw, %bb.ds ], [ %i.mo, %bb.ec ]
  %i.mq = inttoptr i64 %.sroa.12.1.i.i.i.i to ptr
  store i64 %.sroa.0.1.i.i.i.i, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  store ptr %i.mq, ptr %.sroa.256.0..sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  store i64 %.sroa.17.1.i.i.i.i, ptr %.sroa.265.sroa.2.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  store <2 x i64> %i.mp, ptr %.sroa.265.sroa.3.0..sroa.265.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !267, !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.357.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.22.i.i.i.i, i64 32, i1 false), !noalias !266
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ed, %bb.dt
  %.sroa.12.1.ph.i.i.i.i = load i64, ptr %i.q, align 16, !alias.scope !355, !noalias !263
  %i.mr = inttoptr i64 %.sroa.12.1.ph.i.i.i.i to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !noalias !265, !noundef !3
  %i.mu = add i64 %i.mt, -1
  store i64 %i.mu, ptr %i.ms, align 8, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.i.i.i)
  store i64 -9223372036854775798, ptr %i.w, align 8, !alias.scope !267, !noalias !266
  br label %_RNvXs3S_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_18DictionaryEncodingNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i

bb.eg:                                            ; preds = %bb.ee, %bb.dq, %bb.de, %bb.cx, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.i.i.i)
  br label %_RNvXs3S_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_18DictionaryEncodingNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i

_RNvXs3S_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_18DictionaryEncodingNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i: ; preds = %bb.eg, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17167.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16179.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15191.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !262
  br label %bb.eh

bb.eh:                                            ; preds = %_RNvXs3S_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_18DictionaryEncodingNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit.i.i.i, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !235
  store i64 -9223372036854775808, ptr %i.ff, align 8, !noalias !235
  store ptr @296, ptr %.sroa.41.0..sroa_idx.i160.i, align 8, !noalias !235
  store i64 10, ptr %.sroa.5.0..sroa_idx.i161.i, align 8, !noalias !235
  store i64 %7, ptr %i.fg, align 8, !noalias !235
  store i64 1, ptr %i.v, align 8, !noalias !235
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.x, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.w, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.v), !noalias !236, !inline_history !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !235
  %i.mv = load i64, ptr %i.x, align 8, !range !99, !noalias !235, !noundef !3 ; 2 uses
  %.not37.i162.i = icmp eq i64 %i.mv, -9223372036854775798
  br i1 %.not37.i162.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.1295.0.copyload = load i64, ptr %.sroa.1295.0..sroa_idx, align 8, !noalias !237
  %.sroa.1799.0.copyload = load i64, ptr %.sroa.1799.0..sroa_idx, align 8, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18105, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.18105.0..sroa_idx, i64 48, i1 false), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !235
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !235
  br label %bb.el

bb.ek:                                            ; preds = %bb.bv, %bb.ei
  %.sroa.094.0 = phi i64 [ %i.iq, %bb.bv ], [ %i.mv, %bb.ei ]
  %.sroa.1295.0 = phi i64 [ %6, %bb.bv ], [ %.sroa.1295.0.copyload, %bb.ei ]
  %.sroa.1799.0 = phi i64 [ %7, %bb.bv ], [ %.sroa.1799.0.copyload, %bb.ei ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18105, i64 16, i1 false), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.18105.40..sroa_idx, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.292.i.sroa.5.0..sroa.292.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.sroa.8, i64 16, i1 false), !noalias !168
  store i64 %.sroa.094.0, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  store i64 %.sroa.1295.0, ptr %.sroa.274.0..sroa_idx.i, align 8, !noalias !168
  store i64 %.sroa.1799.0, ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

bb.el:                                            ; preds = %bb.bw, %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18105, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.625.i.sroa.8.0..sroa_idx, i64 16, i1 false), !alias.scope !356, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18105, i64 16, i1 false), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18105)
  %i.mw = load <2 x i64>, ptr %i.an, align 16, !alias.scope !356, !noalias !164
  store <2 x i64> %i.mw, ptr %i.am, align 16, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.619.i.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.i.sroa.8, i64 16, i1 false), !noalias !164
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEEEReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) @297, i64 noundef 8, i16 noundef 14) #50
  %i.mx = load i64, ptr %i.at, align 8, !range !99, !noalias !164, !noundef !3 ; 2 uses
  %.not146.i = icmp eq i64 %i.mx, -9223372036854775798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5116.0..sroa_idx.i, i64 32, i1 false), !noalias !164
  br i1 %.not146.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117.0..sroa_idx.i, i64 32, i1 false), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.274.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i, i64 32, i1 false), !noalias !168
  store i64 %i.mx, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.613.i, i64 32, i1 false), !noalias !164
  call fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.au, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.al, i16 noundef 16) #50
  %i.my = load i64, ptr %i.au, align 8, !range !99, !noalias !164, !noundef !3 ; 2 uses
  %.not147.i = icmp eq i64 %i.my, -9223372036854775798
  %.sroa.0121.0.copyload.i = load ptr, ptr %.sroa.5131.0..sroa_idx.i, align 8, !noalias !164 ; 2 uses
  br i1 %.not147.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %.sroa.8134.0.copyload.i = load i64, ptr %.sroa.8134.0..sroa_idx.i, align 8, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9135.0..sroa_idx.i, i64 32, i1 false), !noalias !168
  %i.mz = load <2 x i64>, ptr %.sroa.6132.0..sroa_idx.i, align 8, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  store i64 %i.my, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  store ptr %.sroa.0121.0.copyload.i, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !161, !noalias !168
  store <2 x i64> %i.mz, ptr %.sroa.292.i.sroa.4.0..sroa.292.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !161, !noalias !168
  store i64 %.sroa.8134.0.copyload.i, ptr %.sroa.2101.i.sroa.6.0..sroa.2101.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !161, !noalias !168
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !164
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload.i, i64 24 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !noalias !166, !noundef !3
  %i.nc = add i64 %i.nb, -1
  store i64 %i.nc, ptr %i.na, align 8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  store i64 -9223372036854775798, ptr %i.aw, align 8, !alias.scope !161, !noalias !168
  br label %_RNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit

bb.eq:                                            ; preds = %bb.eo, %bb.em, %bb.ek, %bb.bu, %bb.ba, %bb.ao, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.631.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.i.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i)
  br label %_RNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit

_RNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit: ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RNvXs3Y_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB6_5FieldNtNtCs2TwJzntlzha_11flatbuffers8verifier10Verifiable12run_verifier.exit, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !141
  store i64 %.sroa.078.0331, ptr %i.fh, align 8, !noalias !141
  store i64 %.sroa.679.0332, ptr %i.fi, align 8, !noalias !141
  store i64 0, ptr %i.av, align 8, !noalias !141
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ax, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.aw, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.av), !noalias !119, !inline_history !138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !141
  %i.nd = load i64, ptr %i.ax, align 8, !range !99, !noalias !141, !noundef !3
  %.not20.i = icmp eq i64 %i.nd, -9223372036854775798
  br i1 %.not20.i, label %bb.es, label %bb.er

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.es, %_RINvNtCs2TwJzntlzha_11flatbuffers8verifier19verify_vector_rangeINtNtB4_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i
  store i64 -9223372036854775798, ptr %i.az, align 8, !alias.scope !119, !noalias !122
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

bb.er:                                            ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(72) %i.ax, i64 72, i1 false), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !141
  br label %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit

bb.es:                                            ; preds = %_RNvXs6_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !141
  %.not.i.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.ab

bb.et:                                            ; preds = %bb.c
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ne, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.ew

_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.er, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_7step_by6StepByINtNtNtBa_3ops5range5RangejEEENtNtNtB8_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.aa, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 -9223372036854775808, ptr %i.nf, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %2, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bg, ptr %i.ng, align 8
  store i64 1, ptr %i.ay, align 8
  call fastcc void @_RINvNtCs2TwJzntlzha_11flatbuffers8verifier12append_traceuECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.ba, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.az, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.nh = load i64, ptr %i.ba, align 8, !range !99, !noundef !3
  %.not37 = icmp eq i64 %i.nh, -9223372036854775798
  br i1 %.not37, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ba, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ew

bb.ev:                                            ; preds = %_RNvXsk_NtCs2TwJzntlzha_11flatbuffers8verifierINtNtB7_6vector6VectorINtNtB7_10primitives15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema5FieldEENtB5_10Verifiable12run_verifierCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ni, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 -9223372036854775798, ptr %0, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev, %bb.et, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB6_13TableVerifier11visit_fieldINtNtB8_10primitives15ForwardsUOffsetINtNtB8_6vector6VectorIB1g_NtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEReECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, i16 noundef range(i16 8, 17) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.619.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.613.i.i.i.i = alloca [32 x i8], align 8  ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [40 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 16 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [72 x i8], align 8                ; 22 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs5_NtCs2TwJzntlzha_11flatbuffers8verifierNtB5_13TableVerifier5deref(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i16 noundef %2)
  %i.m = load i64, ptr %i.l, align 8, !range !99, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.m, -9223372036854775798
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 13 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.m, ptr %0, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %.sroa.220.0..sroa_idx, align 8
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.321.0..sroa_idx, align 8
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.r = trunc nuw i64 %i.o to i1
  br i1 %i.r, label %bb.d, label %bb.av

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.s = load ptr, ptr %1, align 8, !nonnull !3, !align !100, !noundef !3 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.t = and i64 %i.q, 3
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @llvm.uadd.sat.i64(i64 %i.q, i64 4) ; 2 uses
end_hunk_2
