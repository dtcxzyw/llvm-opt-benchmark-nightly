inline.NumInlined: 10149
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXsb_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_3vec3VecbEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBG_B1i_EE6extendINtNtB1K_6option6OptionB2u_EECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18409)
  %.sroa.0.0.copyload16 = load i64, ptr %i.j, align 8, !alias.scope !18412 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !18414, !noalias !18409
  %.not17 = icmp eq i64 %.sroa.0.0.copyload16, -9223372036854775808
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.11.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.r
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ac, %bb.u, %bb.v, %.body.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.ev, %bb.v ], [ %i.q, %bb.b ], [ %.pn.i.i, %.body.i ], [ %i.eu, %bb.u ], [ %i.fa, %bb.ac ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB19_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.j) #48
          to label %bb.af unwind label %bb.ae

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0.copyload18 = phi i64 [ %.sroa.0.0.copyload16, %.lr.ph ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit ]
  store i64 %.sroa.0.0.copyload18, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18415)
  call void @llvm.experimental.noalias.scope.decl(metadata !18418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18420)
  call void @llvm.experimental.noalias.scope.decl(metadata !18423)
  call void @llvm.experimental.noalias.scope.decl(metadata !18425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18427
  store ptr %0, ptr %i.c, align 8, !noalias !18430
  %.val14.i.i = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !18431, !noalias !18432, !nonnull !3, !noundef !3
  %.val15.i.i = load i64, ptr %i.m, align 8, !alias.scope !18431, !noalias !18432, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18430
  %i.r = load <2 x i64>, ptr %i.l, align 8, !alias.scope !18433, !noalias !18434 ; 3 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.t = xor <2 x i64> %i.s, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.t, ptr %i.b, align 16, !alias.scope !18435, !noalias !18430
  %i.u = shufflevector <2 x i64> %i.r, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.v = xor <2 x i64> %i.u, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.v, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18435, !noalias !18430
  store <2 x i64> %i.r, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18435, !noalias !18430
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !18435, !noalias !18430
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val14.i.i, i64 noundef %.val15.i.i) #50, !noalias !18434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18438
  store i8 -1, ptr %i.a, align 1, !noalias !18438
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #50, !noalias !18447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18438
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !18448, !noalias !18430
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18448, !noalias !18430
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18448, !noalias !18430 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !18448, !noalias !18430
  %i.w = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !18448, !noalias !18430, !noundef !3
  %i.x = shl i64 %i.w, 56
  %i.y = load i64, ptr %i.n, align 8, !alias.scope !18448, !noalias !18430, !noundef !3
  %i.z = or i64 %i.x, %i.y                        ; 2 uses
  %i.aa = xor i64 %i.z, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.ab = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.ac = add i64 %i.aa, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.ad = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.ae = xor i64 %i.ad, %i.ab                    ; 3 uses
  %i.af = call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 16)
  %i.ag = xor i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 32)
  %i.ai = add i64 %i.ac, %i.ae                    ; 3 uses
  %i.aj = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.ak = call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 17)
  %i.al = xor i64 %i.ai, %i.ak                    ; 3 uses
  %i.am = call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 21)
  %i.an = xor i64 %i.am, %i.aj                    ; 3 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.ap = xor i64 %i.aj, %i.z
  %i.aq = xor i64 %i.ao, 255
  %i.ar = add i64 %i.ap, %i.al                    ; 3 uses
  %i.as = add i64 %i.an, %i.aq                    ; 2 uses
  %i.at = call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 13)
  %i.au = xor i64 %i.ar, %i.at                    ; 3 uses
  %i.av = call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ay, %i.ba                    ; 3 uses
  %i.bc = call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az                    ; 3 uses
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 3 uses
  %i.bl = call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bm = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bn = add i64 %i.bk, %i.bl                    ; 2 uses
  %i.bo = call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bp = xor i64 %i.bo, %i.bm                    ; 3 uses
  %i.bq = call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.br = xor i64 %i.bq, %i.bn                    ; 3 uses
  %i.bs = call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 32)
  %i.bt = add i64 %i.bp, %i.bn
  %i.bu = add i64 %i.br, %i.bs                    ; 2 uses
  %i.bv = call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bw = xor i64 %i.bv, %i.bt                    ; 3 uses
  %i.bx = call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 16)
  %i.by = xor i64 %i.bx, %i.bu                    ; 2 uses
  %i.bz = add i64 %i.bw, %i.bu                    ; 3 uses
  %i.ca = call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 17)
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 21)
  %i.cc = call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 32)
  %i.cd = xor i64 %i.cb, %i.ca
  %i.ce = xor i64 %i.cd, %i.cc
  %i.cf = xor i64 %i.ce, %i.bz                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18430
  %i.cg = shl i64 %i.cf, 7
  %i.ch = load i64, ptr %i.o, align 8, !alias.scope !18433, !noalias !18434, !noundef !3
  %i.ci = and i64 %i.ch, 63
  %i.cj = lshr i64 %i.cg, %i.ci                   ; 2 uses
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !18433, !noalias !18434, !nonnull !3, !noundef !3
  %.val10.i.i = load i64, ptr %i.p, align 8, !alias.scope !18433, !noalias !18434, !noundef !3
  %i.ck = icmp ult i64 %i.cj, %.val10.i.i
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [128 x i8], ptr %.val.i.i, i64 %i.cj ; 10 uses
  %i.cm = cmpxchg weak ptr %i.cl, i64 0, i64 -4 acquire monotonic, align 8, !noalias !18434
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.e, !prof !2537

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.o, %bb.n, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.co, %bb.d ], [ %i.ei, %bb.o ], [ %i.ei, %bb.n ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #48
          to label %.body.i unwind label %bb.p, !noalias !18453

bb.d:                                             ; preds = %bb.e
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cl)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.d, !noalias !18434

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.e, %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18454)
  call void @llvm.experimental.noalias.scope.decl(metadata !18457)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !18459, !noalias !18462, !noundef !3
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.f, label %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !98

bb.f:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ct = invoke { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cp, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.n, !noalias !18434 ; 0 uses

_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.f, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.cp, align 8, !alias.scope !18454, !noalias !18465, !nonnull !3, !noundef !3 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.val7.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !18454, !noalias !18465, !noundef !3 ; 3 uses
  %i.cv = lshr i64 %i.cf, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %i.cy = shufflevector <16 x i8> %i.cx, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !18466, !noalias !18467 ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !18466, !noalias !18467, !nonnull !3
  %i.cz = inttoptr i64 %.val3.i.i.i.i.i to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.cf, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ea, %bb.k ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.4.1.i.i.i.i, %bb.k ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.k ]
  %i.da = phi i64 [ 0, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.dz, %bb.k ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val7.i.i.i ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i.i = load <16 x i8>, ptr %i.db, align 1, !noalias !18468 ; 3 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i.i, %i.cy
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i21.i.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i21.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i
  %.sroa.05.0.i22.i.i.i = phi i16 [ %i.dh, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i ], [ %i.dd, %bb.g ] ; 3 uses
  %i.de = add i16 %.sroa.05.0.i22.i.i.i, -1
  %i.df = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i.i, i1 true)
  %i.dg = zext nneg i16 %i.df to i64
  %i.dh = and i16 %i.de, %.sroa.05.0.i22.i.i.i    ; 2 uses
  %i.di = add i64 %.sroa.0.017.i.i.i.i, %i.dg
  %i.dj = and i64 %i.di, %.val7.i.i.i
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [48 x i8], ptr %.val.i.i.i, i64 %i.dk ; 3 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -32
  %.val3.i.i.i.i = load i64, ptr %i.dm, align 8, !noalias !18471, !noundef !3
  %i.dn = icmp eq i64 %.val3.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.dn, label %bb.h, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.do = getelementptr i8, ptr %i.dl, i64 -40
  %.val2.i.i.i.i = load ptr, ptr %i.do, align 8, !noalias !18471, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i, i64 %.val3.i.i.i.i.i), !noalias !18471
  %i.dp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.dp, label %.thread.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i.i, %bb.g
  %.not12.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.i

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i ], [ %i.dy, %bb.j ], [ undef, %bb.i ] ; 3 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i ], [ 1, %bb.j ], [ 0, %bb.i ]
  %i.dq = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i.i, splat (i8 -1)
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.k, label %bb.l

bb.i:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i.i
  %i.dt = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i.i, zeroinitializer
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.du, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = add i64 %.sroa.0.017.i.i.i.i, %i.dw
  %i.dy = and i64 %i.dx, %.val7.i.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i

bb.k:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dz = add i64 %i.da, 16                       ; 2 uses
  %i.ea = add i64 %i.dz, %.sroa.0.017.i.i.i.i
  br label %bb.g

bb.l:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !18474, !noundef !3
  %i.ed = icmp sgt i8 %i.ec, -1
  br i1 %i.ed, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.val72.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !18474
  %i.ee = icmp slt <16 x i8> %.val72.i.i.i.i.i, zeroinitializer
  %i.ef = bitcast <16 x i1> %i.ee to i16          ; 2 uses
  %.not.i23.i.i.i.i = icmp ne i16 %i.ef, 0
  %i.eg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ef, i1 true)
  %i.eh = zext nneg i16 %i.eg to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i)
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = cmpxchg ptr %i.cl, i64 -4, i64 0 release monotonic, align 8, !noalias !18434
  %i.ek = extractvalue { i64, i1 } %i.ej, 1
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.o, !prof !2537

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.p, !noalias !18434

.thread.i:                                        ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 16, i1 false), !alias.scope !18475, !noalias !18476
  %i.el = ptrtoint ptr %i.cl to i64
  %i.em = ptrtoint ptr %i.dl to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18427
  br label %bb.s

bb.p:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !18453
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.l
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.eh, %bb.m ], [ %.sroa.4.1.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.0.0.copyload8.i = load i64, ptr %i.h, align 8, !alias.scope !18477, !noalias !18476 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !alias.scope !18475, !noalias !18476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18427
  %.not.i = icmp eq i64 %.sroa.0.0.copyload8.i, -9223372036854775808
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %.sroa.0.0.copyload8.i, ptr %i.e, align 8, !noalias !18427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !noalias !18478
  store ptr %i.cl, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !18427
  store i64 %i.cf, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !18427
  store i64 %.sroa.3.0.i.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !18427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18427
  invoke void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_3vec3VecbEE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.r
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !18427, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.eo = cmpxchg ptr %.val.i, i64 -4, i64 0 release monotonic, align 8, !noalias !18479
  %i.ep = extractvalue { i64, i1 } %i.eo, 1
  br i1 %i.ep, label %.thread, label %bb.y, !prof !2537

bb.s:                                             ; preds = %bb.q, %.thread.i
  %.sroa.8.022.i = phi ptr [ %i.cz, %.thread.i ], [ %i.cl, %bb.q ]
  %.sroa.9.021.i = phi i64 [ %i.el, %.thread.i ], [ %i.cf, %bb.q ] ; 2 uses
  %.sroa.11.020.i = phi i64 [ %i.em, %.thread.i ], [ %.sroa.3.0.i.ph.i.i.i, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !18427
  store ptr %.sroa.8.022.i, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !18427
  store i64 %.sroa.9.021.i, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !18427
  store i64 %.sroa.11.020.i, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !18427
  %.cast.i = inttoptr i64 %.sroa.11.020.i to ptr
  %i.eq = getelementptr inbounds i8, ptr %.cast.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i64 24, i1 false), !noalias !18480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !18481
  %i.er = inttoptr i64 %.sroa.9.021.i to ptr      ; 2 uses
  %i.es = cmpxchg ptr %i.er, i64 -4, i64 0 release monotonic, align 8, !noalias !18482
  %i.et = extractvalue { i64, i1 } %i.es, 1
  br i1 %i.et, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i4.i, label %bb.t, !prof !2537

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.er)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i4.i unwind label %bb.u, !noalias !18482

bb.u:                                             ; preds = %bb.t
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #48
          to label %.body unwind label %bb.x, !noalias !18479

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i4.i: ; preds = %bb.t, %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.v, !noalias !18479

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i4.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.w, !noalias !18479

bb.w:                                             ; preds = %bb.v
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !18479
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i4.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.aa unwind label %bb.b

bb.x:                                             ; preds = %bb.u
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !18479
  unreachable

bb.y:                                             ; preds = %.noexc
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val.i)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %.noexc, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18427
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #48
          to label %.body unwind label %bb.z, !noalias !18485

bb.z:                                             ; preds = %.body.i
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !18485
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB19_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.aa:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18427
  %.pr = load i64, ptr %i.i, align 8, !alias.scope !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ez = icmp eq i64 %.pr, -9223372036854775808
  br i1 %i.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.aa, %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !18489)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !alias.scope !18491 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false), !alias.scope !18491
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !18414, !noalias !18489
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %._crit_edge, label %bb.c

bb.ae:                                            ; preds = %.body
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.af:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB6_6ColumnNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !781, !noundef !3 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18495)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !18498, !noundef !3 ; 4 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit: ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !18498, !noundef !3
  %i.j = or i128 %i.i, %i.h                       ; 5 uses
  store i128 %i.j, ptr %1, align 16, !alias.scope !18498
  %i.k = add nuw i8 %i.d, 64                      ; 2 uses
  store i8 %i.k, ptr %i.c, align 16, !alias.scope !18498
  br i1 %i.b, label %bb.b, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit._crit_edge

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit._crit_edge: ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !18499, !noalias !18504
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre8 = load ptr, ptr %.phi.trans.insert7, align 16, !alias.scope !18499, !noalias !18504
  br label %bb.aw

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.thread: ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !18498, !noundef !3 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !18498, !noundef !3
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !18498, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !18498, !noundef !3
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !18498
  %i.ab = zext i1 %i.b to i128
  store i128 %i.ab, ptr %1, align 16, !alias.scope !18498
  store i8 64, ptr %i.c, align 16, !alias.scope !18498
  br i1 %i.b, label %.thread, label %bb.aw

bb.b:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18512)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18515)
end_hunk_0
begin_hunk_1_@_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEINtNtB5_1t3MapBF_B1N_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core:bb.a

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.3.0 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.er, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.ep, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.fa = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.fb = insertvalue { ptr, ptr } %i.fa, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.fb

bb.x:                                             ; preds = %bb.p
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.x, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.s, %bb.t, %.body, %bb.y
  %eh.lpad-body17 = phi { ptr, i32 } [ %.pn.i, %.body ], [ %.pn.i, %bb.y ], [ %i.ew, %bb.s ], [ %i.ex, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body17

.body:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtB1B_4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !34361)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  %i.fc = load ptr, ptr %i.g, align 16, !alias.scope !34367, !nonnull !3, !noundef !3
  %i.fd = atomicrmw sub ptr %i.fc, i64 1 release, align 8, !noalias !34367
  %i.fe = icmp eq i64 %i.fd, 1
  br i1 %i.fe, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.y:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34373)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !34375
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val11.i = load ptr, ptr %i.h, align 8, !alias.scope !34373, !noalias !34376, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.i, align 8, !alias.scope !34373, !noalias !34376, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34375
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load <2 x i64>, ptr %i.g, align 8, !alias.scope !34371, !noalias !34377 ; 3 uses
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.l, ptr %i.b, align 16, !alias.scope !34378, !noalias !34375
  %i.m = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.n = xor <2 x i64> %i.m, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !34378, !noalias !34375
  store <2 x i64> %i.j, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !34378, !noalias !34375
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !34378, !noalias !34375
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #50, !noalias !34377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34381
  store i8 -1, ptr %i.a, align 1, !noalias !34381
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #50, !noalias !34390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34381
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !34391, !noalias !34375
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !34391, !noalias !34375
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !34391, !noalias !34375 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !34391, !noalias !34375
  %i.o = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !34391, !noalias !34375, !noundef !3
  %i.p = shl i64 %i.o, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !34391, !noalias !34375, !noundef !3
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
  %i.by = xor i64 %i.bx, %i.bs                    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34375
  %i.bz = shl i64 %i.by, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !34371, !noalias !34377, !noundef !3
  %i.cc = and i64 %i.cb, 63
  %i.cd = lshr i64 %i.bz, %i.cc                   ; 2 uses
  %.val13.i = load ptr, ptr %0, align 8, !alias.scope !34371, !noalias !34377, !nonnull !3, !noundef !3
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load i64, ptr %i.ce, align 8, !alias.scope !34371, !noalias !34377, !noundef !3
  %i.cf = icmp ult i64 %i.cd, %.val14.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %.val13.i, i64 %i.cd ; 10 uses
  %i.ch = cmpxchg weak ptr %i.cg, i64 0, i64 -4 acquire monotonic, align 8, !noalias !34377
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c, !prof !2537

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m, %bb.l, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.cj, %bb.b ], [ %i.ed, %bb.m ], [ %i.ed, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #48
          to label %common.resume unwind label %bb.n, !noalias !34368

bb.b:                                             ; preds = %bb.c
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.b, !noalias !34377

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.c, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34399)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !34401, !noalias !34404, !noundef !3
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.d, label %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !98

bb.d:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.co = invoke { i64, i64 } @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.l, !noalias !34377 ; 0 uses

_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs14kWLkQVSKO_14deltalake_core.exit.i
  %.val.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !34396, !noalias !34407, !nonnull !3, !noundef !3 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val7.i.i = load i64, ptr %i.cp, align 8, !alias.scope !34396, !noalias !34407, !noundef !3 ; 3 uses
  %i.cq = lshr i64 %i.by, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !34408, !noalias !34409 ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !34408, !noalias !34409, !nonnull !3
  %i.cu = inttoptr i64 %.val3.i.i.i.i to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.by, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.dv, %bb.i ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.4.1.i.i.i, %bb.i ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.01.1.i.i.i, %bb.i ]
  %i.cv = phi i64 [ 0, %_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_uEINtNtB1F_1t3MapBY_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.du, %bb.i ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i19.i.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !34410 ; 3 uses
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, %i.ct
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i21.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i21.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i
  %.sroa.05.0.i22.i.i = phi i16 [ %i.dc, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ], [ %i.cy, %bb.e ] ; 3 uses
  %i.cz = add i16 %.sroa.05.0.i22.i.i, -1
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i22.i.i, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = and i16 %i.cz, %.sroa.05.0.i22.i.i      ; 2 uses
  %i.dd = add i64 %.sroa.0.017.i.i.i, %i.db
  %i.de = and i64 %i.dd, %.val7.i.i
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.df ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %.val3.i.i.i = load i64, ptr %i.dh, align 8, !noalias !34413, !noundef !3
  %i.di = icmp eq i64 %.val3.i.i.i, %.val3.i.i.i.i
  br i1 %i.di, label %bb.f, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.dj = getelementptr i8, ptr %i.dg, i64 -16
  %.val2.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !34413, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %.val3.i.i.i.i), !noalias !34413
  %i.dk = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.dk, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %.not.i.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i, label %.lr.ph.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %bb.e
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.g

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i: ; preds = %bb.h, %bb.g, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i ], [ %i.dt, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.01.1.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i ], [ 1, %bb.h ], [ 0, %bb.g ]
  %i.dl = icmp eq <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, splat (i8 -1)
  %i.dm = bitcast <16 x i1> %i.dl to i16
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %bb.j

bb.g:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_uEINtNtB1H_1t3MapB10_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB2R_s_0E0Cs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i.i
  %i.do = icmp slt <16 x i8> %.sroa.0.0.copyload.i19.i.i.i, zeroinitializer
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dp, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = add i64 %.sroa.0.017.i.i.i, %i.dr
  %i.dt = and i64 %i.ds, %.val7.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i

bb.i:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.du = add i64 %i.cv, 16                       ; 2 uses
  %i.dv = add i64 %i.du, %.sroa.0.017.i.i.i
  br label %bb.e

bb.j:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.1.i.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !34416, !noundef !3
  %i.dy = icmp sgt i8 %i.dx, -1
  br i1 %i.dy, label %bb.k, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.j
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !34416
  %i.dz = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.ea = bitcast <16 x i1> %i.dz to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.ea, 0
  %i.eb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ea, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  br label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit

bb.l:                                             ; preds = %bb.d
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8, !noalias !34377
  %i.ef = extractvalue { i64, i1 } %i.ee, 1
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.m, !prof !2537

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.n, !noalias !34377

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !alias.scope !34377, !noalias !34371
  %i.eg = ptrtoint ptr %i.cg to i64
  %i.eh = ptrtoint ptr %i.dg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.n:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !34368
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.eo, %bb.t ], [ %i.en, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.j, %bb.k
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.ec, %bb.k ], [ %.sroa.4.1.i.i.i, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload7 = load i64, ptr %1, align 8, !alias.scope !34377, !noalias !34371 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !alias.scope !34377, !noalias !34371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i64 %.sroa.0.0.copyload7, -9223372036854775808
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.0.0.copyload7, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cg, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.by, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.3.0.i.ph.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringuE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  %.val = load ptr, ptr %i.d, align 8, !nonnull !3, !align !100, !noundef !3 ; 2 uses
  %i.ej = cmpxchg ptr %.val, i64 -4, i64 0 release monotonic, align 8
  %i.ek = extractvalue { i64, i1 } %i.ej, 1
  br i1 %i.ek, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.p, !prof !2537

bb.p:                                             ; preds = %bb.o
  call void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref3one6RefMutNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.q:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.8.018 = phi ptr [ %i.cu, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.cg, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit ]
  %.sroa.9.017 = phi i64 [ %i.eg, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.by, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sroa.11.016 = phi i64 [ %i.eh, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %.sroa.3.0.i.ph.i.i, %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuEINtNtB5_1t3MapBF_uNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.8.018, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.9.017, ptr %.sroa.9.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.11.016, ptr %.sroa.11.8..sroa_idx, align 8
  %.val.i5.cast = inttoptr i64 %.sroa.9.017 to ptr ; 2 uses
  %i.el = cmpxchg ptr %.val.i5.cast, i64 -4, i64 0 release monotonic, align 8, !noalias !34417
  %i.em = extractvalue { i64, i1 } %i.el, 1
  br i1 %i.em, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i6, label %bb.r, !prof !2537

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val.i5.cast)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i6 unwind label %bb.s, !noalias !34417

bb.s:                                             ; preds = %bb.r
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #48
          to label %common.resume unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i6: ; preds = %bb.r, %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i6
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringuEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueuEEEEECs14kWLkQVSKO_14deltalake_core.exit.i6
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!18266 = !{!18267}
!18267 = distinct !{!18267, !18268, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18268 = distinct !{!18268, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18269 = !{!18267, !18238}
!18270 = !{!18271, !18241}
!18271 = distinct !{!18271, !18268, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18272 = !{!18273, !18275, !18277, !18279, !18267, !18271, !18238, !18241}
!18273 = distinct !{!18273, !18274, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18274 = distinct !{!18274, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18275 = distinct !{!18275, !18276, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18276 = distinct !{!18276, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!18277 = distinct !{!18277, !18278, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18278 = distinct !{!18278, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18279 = distinct !{!18279, !18280, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18280 = distinct !{!18280, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18281 = !{!18282, !18284, !18286, !18267, !18271, !18238, !18241}
!18282 = distinct !{!18282, !18283, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18283 = distinct !{!18283, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18284 = distinct !{!18284, !18285, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18285 = distinct !{!18285, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18286 = distinct !{!18286, !18287, !"_RINvXsA4_NtCs4lawaffTVVK_9sqlparser3astNtB7_17SessionParamValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18287 = distinct !{!18287, !"_RINvXsA4_NtCs4lawaffTVVK_9sqlparser3astNtB7_17SessionParamValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18288 = !{!18289}
!18289 = distinct !{!18289, !18290, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18290 = distinct !{!18290, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18291 = !{!18289, !18238}
!18292 = !{!18293, !18241}
!18293 = distinct !{!18293, !18290, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18294 = !{!18295, !18297, !18289, !18293, !18238, !18241}
!18295 = distinct !{!18295, !18296, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18296 = distinct !{!18296, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18297 = distinct !{!18297, !18298, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18298 = distinct !{!18298, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!18299 = !{!18300, !18302, !18289, !18293, !18238, !18241}
!18300 = distinct !{!18300, !18301, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18301 = distinct !{!18301, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18302 = distinct !{!18302, !18303, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18303 = distinct !{!18303, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18304 = !{!18305, !18307, !18309, !18238, !18241}
!18305 = distinct !{!18305, !18306, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18306 = distinct !{!18306, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18307 = distinct !{!18307, !18308, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18308 = distinct !{!18308, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18309 = distinct !{!18309, !18310, !"_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18310 = distinct !{!18310, !"_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18311 = !{!18312, !18314, !18309, !18238, !18241}
!18312 = distinct !{!18312, !18313, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18313 = distinct !{!18313, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18314 = distinct !{!18314, !18315, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18315 = distinct !{!18315, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18316 = !{!18317, !18319}
!18317 = distinct !{!18317, !18318, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18318 = distinct !{!18318, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18319 = distinct !{!18319, !18320, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18320 = distinct !{!18320, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18321 = !{!18322}
!18322 = distinct !{!18322, !18323, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!18323 = distinct !{!18323, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core"}
!18324 = !{!18325, !18327}
!18325 = distinct !{!18325, !18326, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18326 = distinct !{!18326, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18327 = distinct !{!18327, !18328, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18328 = distinct !{!18328, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18329 = !{!18330, !18332}
!18330 = distinct !{!18330, !18331, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18331 = distinct !{!18331, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18332 = distinct !{!18332, !18333, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18333 = distinct !{!18333, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!18334 = !{!18335, !18337}
!18335 = distinct !{!18335, !18336, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18336 = distinct !{!18336, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18337 = distinct !{!18337, !18338, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18338 = distinct !{!18338, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18339 = !{!18340, !18342, !18344}
!18340 = distinct !{!18340, !18341, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18341 = distinct !{!18341, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18342 = distinct !{!18342, !18343, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18343 = distinct !{!18343, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18344 = distinct !{!18344, !18345, !"_RINvXssQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_15ContextModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18345 = distinct !{!18345, !"_RINvXssQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_15ContextModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18346 = !{!18347}
!18347 = distinct !{!18347, !18348, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!18348 = distinct !{!18348, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core"}
!18349 = !{!18350, !18352, !18354, !18356}
!18350 = distinct !{!18350, !18351, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18351 = distinct !{!18351, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18352 = distinct !{!18352, !18353, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18353 = distinct !{!18353, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!18354 = distinct !{!18354, !18355, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18355 = distinct !{!18355, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18356 = distinct !{!18356, !18357, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18357 = distinct !{!18357, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18358 = !{!18359, !18361}
!18359 = distinct !{!18359, !18360, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18360 = distinct !{!18360, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18361 = distinct !{!18361, !18362, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18362 = distinct !{!18362, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core"}
!18363 = !{!18364, !18366, !18368}
!18364 = distinct !{!18364, !18365, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18365 = distinct !{!18365, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18366 = distinct !{!18366, !18367, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18367 = distinct !{!18367, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18368 = distinct !{!18368, !18369, !"_RINvXssQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_15ContextModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18369 = distinct !{!18369, !"_RINvXssQ_NtCs4lawaffTVVK_9sqlparser3astNtB7_15ContextModifierNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18370 = !{!18371, !18373}
!18371 = distinct !{!18371, !18372, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18372 = distinct !{!18372, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs14kWLkQVSKO_14deltalake_core"}
!18373 = distinct !{!18373, !18374, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18374 = distinct !{!18374, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs14kWLkQVSKO_14deltalake_core"}
!18375 = !{!18376, !18378, !18379, !18381}
!18376 = distinct !{!18376, !18377, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18377 = distinct !{!18377, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18378 = distinct !{!18378, !18377, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18379 = distinct !{!18379, !18380, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!18380 = distinct !{!18380, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!18381 = distinct !{!18381, !18380, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!18382 = !{!18378, !18381}
!18383 = !{!18384}
!18384 = distinct !{!18384, !18385, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!18385 = distinct !{!18385, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs14kWLkQVSKO_14deltalake_core"}
!18386 = !{!18387}
!18387 = distinct !{!18387, !18388, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB13_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18388 = distinct !{!18388, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB13_6HasherEL_ECs14kWLkQVSKO_14deltalake_core"}
!18389 = !{!18390}
!18390 = distinct !{!18390, !18388, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB13_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18391 = !{!18392}
!18392 = distinct !{!18392, !18393, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18393 = distinct !{!18393, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core"}
!18394 = !{!18392, !18387}
!18395 = !{!18396, !18390}
!18396 = distinct !{!18396, !18393, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18397 = !{!18398}
!18398 = distinct !{!18398, !18399, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1d_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18399 = distinct !{!18399, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1d_6HasherEL_ECs14kWLkQVSKO_14deltalake_core"}
!18400 = !{!18398, !18387}
!18401 = !{!18402, !18390}
!18402 = distinct !{!18402, !18399, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB1d_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18403 = !{!18404}
!18404 = distinct !{!18404, !18405, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18405 = distinct !{!18405, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core"}
!18406 = !{!18404, !18387}
!18407 = !{!18408, !18390}
!18408 = distinct !{!18408, !18405, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashQDNtB16_6HasherEL_ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18409 = !{!18410}
!18410 = distinct !{!18410, !18411, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:pre.rot"}
!18411 = distinct !{!18411, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!18412 = !{!18410, !18413}
!18413 = distinct !{!18413, !18411, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18414 = !{!18413}
!18415 = !{!18416}
!18416 = distinct !{!18416, !18417, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18417 = distinct !{!18417, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core"}
!18418 = !{!18419}
!18419 = distinct !{!18419, !18417, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core: argument 2"}
!18420 = !{!18421}
!18421 = distinct !{!18421, !18422, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18422 = distinct !{!18422, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core"}
!18423 = !{!18424}
!18424 = distinct !{!18424, !18422, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18425 = !{!18426}
!18426 = distinct !{!18426, !18422, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs14kWLkQVSKO_14deltalake_core: argument 2"}
!18427 = !{!18428, !18416, !18419, !18429}
!18428 = distinct !{!18428, !18417, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18429 = distinct !{!18429, !18417, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs14kWLkQVSKO_14deltalake_core: argument 3"}
!18430 = !{!18421, !18424, !18426, !18428, !18416, !18419, !18429}
!18431 = !{!18426, !18419}
!18432 = !{!18421, !18424, !18428, !18416, !18429}
!18433 = !{!18424, !18416}
!18434 = !{!18421, !18426, !18428, !18419, !18429}
!18435 = !{!18436}
!18436 = distinct !{!18436, !18437, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!18437 = distinct !{!18437, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!18438 = !{!18439, !18441, !18442, !18444, !18445, !18421, !18424, !18426, !18428, !18416, !18419, !18429}
!18439 = distinct !{!18439, !18440, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18440 = distinct !{!18440, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18441 = distinct !{!18441, !18440, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18442 = distinct !{!18442, !18443, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!18443 = distinct !{!18443, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!18444 = distinct !{!18444, !18443, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!18445 = distinct !{!18445, !18446, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18446 = distinct !{!18446, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18447 = !{!18441, !18444, !18421, !18426, !18428, !18419, !18429}
!18448 = !{!18449, !18451}
!18449 = distinct !{!18449, !18450, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18450 = distinct !{!18450, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs14kWLkQVSKO_14deltalake_core"}
!18451 = distinct !{!18451, !18452, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!18452 = distinct !{!18452, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!18453 = !{!18421, !18428, !18429}
!18454 = !{!18455}
!18455 = distinct !{!18455, !18456, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18456 = distinct !{!18456, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs14kWLkQVSKO_14deltalake_core"}
!18457 = !{!18458}
!18458 = distinct !{!18458, !18456, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18459 = !{!18460, !18455}
!18460 = distinct !{!18460, !18461, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18461 = distinct !{!18461, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core"}
!18462 = !{!18463, !18458, !18464, !18421, !18426, !18428, !18419, !18429}
!18463 = distinct !{!18463, !18461, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18464 = distinct !{!18464, !18456, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs14kWLkQVSKO_14deltalake_core: argument 2"}
!18465 = !{!18458, !18464, !18421, !18426, !18428, !18419, !18429}
!18466 = !{!18458, !18426, !18419}
!18467 = !{!18455, !18464, !18421, !18424, !18428, !18416, !18429}
!18468 = !{!18469, !18458, !18421, !18426, !18428, !18419, !18429}
!18469 = distinct !{!18469, !18470, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!18470 = distinct !{!18470, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!18471 = !{!18472, !18458, !18421, !18426, !18428, !18419, !18429}
!18472 = distinct !{!18472, !18473, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!18473 = distinct !{!18473, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs14kWLkQVSKO_14deltalake_core"}
!18474 = !{!18458, !18421, !18426, !18428, !18419, !18429}
!18475 = !{!18421, !18426}
!18476 = !{!18424, !18428, !18416, !18429}
!18477 = !{!18421, !18426, !18419}
!18478 = !{!18428, !18416, !18429}
!18479 = !{!18428, !18419, !18429}
!18480 = !{!18419, !18429}
!18481 = !{!18428, !18419}
!18482 = !{!18483, !18428, !18419, !18429}
!18483 = distinct !{!18483, !18484, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18484 = distinct !{!18484, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecbEEECs14kWLkQVSKO_14deltalake_core"}
!18485 = !{!18428}
!18486 = !{!18487}
!18487 = distinct !{!18487, !18488, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18488 = distinct !{!18488, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs14kWLkQVSKO_14deltalake_core"}
!18489 = !{!18490}
!18490 = distinct !{!18490, !18411, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:h.rot"}
!18491 = !{!18490, !18413}
!18492 = !{!18493}
!18493 = distinct !{!18493, !18494, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!18494 = distinct !{!18494, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!18495 = !{!18496}
!18496 = distinct !{!18496, !18497, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18497 = distinct !{!18497, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!18498 = !{!18496, !18493}
!18499 = !{!18500, !18502}
!18500 = distinct !{!18500, !18501, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18501 = distinct !{!18501, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18502 = distinct !{!18502, !18503, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18503 = distinct !{!18503, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18504 = !{!18505, !18506}
!18505 = distinct !{!18505, !18501, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18506 = distinct !{!18506, !18503, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18507 = !{!18508}
!18508 = distinct !{!18508, !18509, !"_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18509 = distinct !{!18509, !"_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core"}
!18510 = !{!18511}
!18511 = distinct !{!18511, !18509, !"_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core: argument 1"}
!18512 = !{!18513}
!18513 = distinct !{!18513, !18514, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize: argument 0"}
!18514 = distinct !{!18514, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize"}
!18515 = !{!18516}
!18516 = distinct !{!18516, !18517, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18517 = distinct !{!18517, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numyECs14kWLkQVSKO_14deltalake_core"}
!18518 = !{!18516, !18513, !18511}
!18519 = !{!18516, !18513, !18508, !18511}
!18520 = !{!18521}
!18521 = distinct !{!18521, !18522, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18522 = distinct !{!18522, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18523 = !{!18524}
!18524 = distinct !{!18524, !18522, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18525 = !{!18526}
!18526 = distinct !{!18526, !18527, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18527 = distinct !{!18527, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18528 = !{!18529}
!18529 = distinct !{!18529, !18527, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18530 = !{!18526, !18521, !18511}
!18531 = !{!18529, !18524, !18508}
!18532 = !{!18526, !18521, !18508, !18511}
!18533 = !{!18534}
!18534 = distinct !{!18534, !18535, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18535 = distinct !{!18535, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18536 = !{!18537}
!18537 = distinct !{!18537, !18535, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!18538 = !{!18534, !18526, !18529, !18521, !18524, !18508, !18511}
!18539 = !{!18534, !18529, !18524}
!18540 = !{!18537, !18526, !18521, !18508, !18511}
!18541 = !{!18542, !18544, !18521, !18508, !18511}
!18542 = distinct !{!18542, !18543, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18543 = distinct !{!18543, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!18544 = distinct !{!18544, !18545, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!18545 = distinct !{!18545, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!18546 = !{!18547}
!18547 = distinct !{!18547, !18548, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18548 = distinct !{!18548, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18549 = !{!18550}
!18550 = distinct !{!18550, !18548, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18551 = !{!18552}
!18552 = distinct !{!18552, !18553, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18553 = distinct !{!18553, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18554 = !{!18555}
!18555 = distinct !{!18555, !18553, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18556 = !{!18552, !18547, !18511}
!18557 = !{!18555, !18550, !18508}
!18558 = !{!18552, !18547, !18508, !18511}
!18559 = !{!18560}
!18560 = distinct !{!18560, !18561, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18561 = distinct !{!18561, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18562 = !{!18563}
!18563 = distinct !{!18563, !18561, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!18564 = !{!18560, !18552, !18555, !18547, !18550, !18508, !18511}
!18565 = !{!18560, !18555, !18550}
!18566 = !{!18563, !18552, !18547, !18508, !18511}
!18567 = !{!18568}
!18568 = distinct !{!18568, !18569, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!18569 = distinct !{!18569, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!18570 = !{!18571}
!18571 = distinct !{!18571, !18572, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18572 = distinct !{!18572, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!18573 = !{!18571, !18568, !18547, !18508, !18511}
!18574 = !{!18571, !18568, !18547, !18511}
!18575 = !{!18550, !18508}
!18576 = !{!18577}
!18577 = distinct !{!18577, !18578, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18578 = distinct !{!18578, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18579 = !{!18580}
!18580 = distinct !{!18580, !18578, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18581 = !{!18582}
!18582 = distinct !{!18582, !18583, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18583 = distinct !{!18583, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18584 = !{!18585}
!18585 = distinct !{!18585, !18583, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18586 = !{!18582, !18577, !18511}
!18587 = !{!18585, !18580, !18508}
!18588 = !{!18582, !18577, !18508, !18511}
!18589 = !{!18590}
!18590 = distinct !{!18590, !18591, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18591 = distinct !{!18591, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18592 = !{!18593}
!18593 = distinct !{!18593, !18591, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!18594 = !{!18590, !18582, !18585, !18577, !18580, !18508, !18511}
!18595 = !{!18590, !18585, !18580}
!18596 = !{!18593, !18582, !18577, !18508, !18511}
!18597 = !{!18598, !18600, !18577, !18508, !18511}
!18598 = distinct !{!18598, !18599, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18599 = distinct !{!18599, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!18600 = distinct !{!18600, !18601, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!18601 = distinct !{!18601, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!18602 = !{!18603}
!18603 = distinct !{!18603, !18604, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18604 = distinct !{!18604, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18605 = !{!18606}
!18606 = distinct !{!18606, !18604, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18607 = !{!18608}
!18608 = distinct !{!18608, !18609, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18609 = distinct !{!18609, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18610 = !{!18611}
!18611 = distinct !{!18611, !18609, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18612 = !{!18608, !18603, !18511}
!18613 = !{!18611, !18606, !18508}
!18614 = !{!18608, !18603, !18508, !18511}
!18615 = !{!18616}
!18616 = distinct !{!18616, !18617, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18617 = distinct !{!18617, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18618 = !{!18619}
!18619 = distinct !{!18619, !18617, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!18620 = !{!18616, !18608, !18611, !18603, !18606, !18508, !18511}
!18621 = !{!18616, !18611, !18606}
!18622 = !{!18619, !18608, !18603, !18508, !18511}
!18623 = !{!18624}
!18624 = distinct !{!18624, !18625, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!18625 = distinct !{!18625, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!18626 = !{!18627}
!18627 = distinct !{!18627, !18628, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18628 = distinct !{!18628, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!18629 = !{!18627, !18624, !18603, !18508, !18511}
!18630 = !{!18627, !18624, !18603, !18511}
!18631 = !{!18606, !18508}
!18632 = !{!18633}
!18633 = distinct !{!18633, !18634, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18634 = distinct !{!18634, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18635 = !{!18636}
!18636 = distinct !{!18636, !18634, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18637 = !{!18638}
!18638 = distinct !{!18638, !18639, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18639 = distinct !{!18639, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18640 = !{!18641}
!18641 = distinct !{!18641, !18639, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18642 = !{!18638, !18633, !18511}
!18643 = !{!18641, !18636, !18508}
!18644 = !{!18638, !18633, !18508, !18511}
!18645 = !{!18646}
!18646 = distinct !{!18646, !18647, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18647 = distinct !{!18647, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18648 = !{!18649}
!18649 = distinct !{!18649, !18647, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 1"}
!18650 = !{!18646, !18638, !18641, !18633, !18636, !18508, !18511}
!18651 = !{!18646, !18641, !18636}
!18652 = !{!18649, !18638, !18633, !18508, !18511}
!18653 = !{!18654}
!18654 = distinct !{!18654, !18655, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8: argument 0"}
!18655 = distinct !{!18655, !"_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8"}
!18656 = !{!18657}
!18657 = distinct !{!18657, !18658, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core: argument 0"}
!18658 = distinct !{!18658, !"_RINvMNtCsjTPIcpFZL1T_8foldhash4fastNtB3_10FoldHasher9write_numhECs14kWLkQVSKO_14deltalake_core"}
!18659 = !{!18657, !18654, !18633, !18508, !18511}
!18660 = !{!18657, !18654, !18633, !18511}
!18661 = !{!18636, !18508}
!18662 = !{!18663}
!18663 = distinct !{!18663, !18664, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 0"}
!18664 = distinct !{!18664, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core"}
!18665 = !{!18666}
!18666 = distinct !{!18666, !18664, !"_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core: argument 1"}
!18667 = !{!18668}
!18668 = distinct !{!18668, !18669, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 0"}
!18669 = distinct !{!18669, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write"}
!18670 = !{!18671}
!18671 = distinct !{!18671, !18669, !"_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write: argument 1"}
!18672 = !{!18668, !18663, !18511}
!18673 = !{!18671, !18666, !18508}
!18674 = !{!18668, !18663, !18508, !18511}
!18675 = !{!18676}
!18676 = distinct !{!18676, !18677, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short: argument 0"}
!18677 = distinct !{!18677, !"_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short"}
!18678 = !{!18679}
end_hunk_2
