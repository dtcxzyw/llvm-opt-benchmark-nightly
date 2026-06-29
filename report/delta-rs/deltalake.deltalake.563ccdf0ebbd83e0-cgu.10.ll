inline.NumInlined: 6560
inline.NumDeleted: 2964
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvXsb_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_3vec3VecbEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBG_B1i_EE6extendINtNtB1K_6option6OptionB2u_EECs7p2uQeJxui2_9deltalake
define hidden void @_RINvXsb_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_3vec3VecbEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBG_B1i_EE6extendINtNtB1K_6option6OptionB2u_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8845)
  %.sroa.0.0.copyload16 = load i64, ptr %i.j, align 8, !alias.scope !8848 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !8850, !noalias !8845
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

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit.i, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.q
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.t, %bb.u, %.body.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.et, %bb.u ], [ %i.q, %bb.b ], [ %.pn.i.i, %.body.i ], [ %i.es, %bb.t ], [ %i.ey, %bb.ab ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB19_3vec3VecbEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.j) #51
          to label %bb.ae unwind label %bb.ad

bb.c:                                             ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.0.0.copyload18 = phi i64 [ %.sroa.0.0.copyload16, %.lr.ph ], [ %.sroa.0.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit ]
  store i64 %.sroa.0.0.copyload18, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8851)
  call void @llvm.experimental.noalias.scope.decl(metadata !8854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8856)
  call void @llvm.experimental.noalias.scope.decl(metadata !8859)
  call void @llvm.experimental.noalias.scope.decl(metadata !8861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8863
  store ptr %0, ptr %i.c, align 8, !noalias !8866
  %.val11.i.i = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !8867, !noalias !8868, !nonnull !4, !noundef !4
  %.val12.i.i = load i64, ptr %i.m, align 8, !alias.scope !8867, !noalias !8868, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8866
  %i.r = load <2 x i64>, ptr %i.l, align 8, !alias.scope !8869, !noalias !8870 ; 3 uses
  %i.s = shufflevector <2 x i64> %i.r, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.t = xor <2 x i64> %i.s, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.t, ptr %i.b, align 16, !alias.scope !8871, !noalias !8866
  %i.u = shufflevector <2 x i64> %i.r, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.v = xor <2 x i64> %i.u, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.v, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !8871, !noalias !8866
  store <2 x i64> %i.r, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !8871, !noalias !8866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !8871, !noalias !8866
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i.i, i64 noundef %.val12.i.i) #57, !noalias !8870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8874
  store i8 -1, ptr %i.a, align 1, !noalias !8874
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #57, !noalias !8883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8874
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !8884, !noalias !8866
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8884, !noalias !8866
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !8884, !noalias !8866 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !8884, !noalias !8866
  %i.w = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !8884, !noalias !8866, !noundef !4
  %i.x = shl i64 %i.w, 56
  %i.y = load i64, ptr %i.n, align 8, !alias.scope !8884, !noalias !8866, !noundef !4
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8866
  %i.cg = shl i64 %i.cf, 7
  %i.ch = load i64, ptr %i.o, align 8, !alias.scope !8869, !noalias !8870, !noundef !4
  %i.ci = and i64 %i.ch, 63
  %i.cj = lshr i64 %i.cg, %i.ci                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8889)
  %i.ck = load ptr, ptr %0, align 8, !alias.scope !8892, !noalias !8870, !nonnull !4, !noundef !4
  %i.cl = load i64, ptr %i.p, align 8, !alias.scope !8892, !noalias !8870, !noundef !4
  %i.cm = icmp ult i64 %i.cj, %i.cl
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %i.cj ; 9 uses
  %i.co = cmpxchg weak ptr %i.cn, i64 0, i64 -4 acquire monotonic, align 8, !noalias !8893
  %i.cp = extractvalue { i64, i1 } %i.co, 1
  br i1 %i.cp, label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.e, !prof !649

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.n, %bb.m, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.cq, %bb.d ], [ %i.eg, %bb.n ], [ %i.eg, %bb.m ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #51
          to label %.body.i unwind label %bb.o, !noalias !8894

bb.d:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cn)
          to label %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.d, !noalias !8870

_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.e, %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8895)
  call void @llvm.experimental.noalias.scope.decl(metadata !8898)
  invoke void @_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entrys_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cr, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc14.i.i unwind label %bb.m, !noalias !8870

.noexc14.i.i:                                     ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !8895, !noalias !8900, !nonnull !4, !noundef !4 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.val7.i.i.i = load i64, ptr %i.cs, align 8, !alias.scope !8895, !noalias !8900, !noundef !4 ; 3 uses
  %i.ct = lshr i64 %i.cf, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8
  %i.cv = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val3.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !8902, !noalias !8903 ; 3 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8, !alias.scope !8902, !noalias !8903, !nonnull !4
  %i.cx = inttoptr i64 %.val3.i.i.i.i.i.i to ptr
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.noexc14.i.i
  %.pn.i.i.i.i = phi i64 [ %i.cf, %.noexc14.i.i ], [ %i.dy, %bb.j ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %.noexc14.i.i ], [ %.sroa.4.1.i.i.i.i, %bb.j ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %.noexc14.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.j ]
  %i.cy = phi i64 [ 0, %.noexc14.i.i ], [ %i.dx, %bb.j ]
  %.sroa.0.021.i.i.i.i = and i64 %.pn.i.i.i.i, %.val7.i.i.i ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.0.021.i.i.i.i
  %.sroa.0.0.copyload.i22.i.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !8904 ; 3 uses
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, %i.cw
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not23.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not23.i.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i
  %.sroa.05.024.i.i.i.i = phi i16 [ %i.df, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i ], [ %i.db, %bb.f ] ; 3 uses
  %i.dc = add i16 %.sroa.05.024.i.i.i.i, -1
  %i.dd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.024.i.i.i.i, i1 true)
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = and i16 %i.dc, %.sroa.05.024.i.i.i.i    ; 2 uses
  %i.dg = add i64 %.sroa.0.021.i.i.i.i, %i.de
  %i.dh = and i64 %i.dg, %.val7.i.i.i
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [48 x i8], ptr %.val.i.i.i, i64 %i.di ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 -32
  %.val3.i.i.i.i.i = load i64, ptr %i.dk, align 8, !noalias !8907, !noundef !4
  %i.dl = icmp eq i64 %.val3.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.dl, label %bb.g, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr i8, ptr %i.dj, i64 -40
  %.val2.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !noalias !8907, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i), !noalias !8907
  %i.dn = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.thread.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.df, 0
  br i1 %.not.i.i.i.i, label %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i: ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit.backedge.i.i.i.i, %bb.f
  %.not12.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.h

_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i ], [ %i.dw, %bb.i ], [ undef, %bb.h ] ; 3 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i ], [ 1, %bb.i ], [ 0, %bb.h ]
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, splat (i8 -1)
  %i.dp = bitcast <16 x i1> %i.do to i16
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.j, label %bb.k

bb.h:                                             ; preds = %_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake.exit._crit_edge.i.i.i.i
  %i.dr = icmp slt <16 x i8> %.sroa.0.0.copyload.i22.i.i.i.i, zeroinitializer
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ds, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = add i64 %.sroa.0.021.i.i.i.i, %i.du
  %i.dw = and i64 %i.dv, %.val7.i.i.i
  br label %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i

bb.j:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dx = add i64 %i.cy, 16                       ; 2 uses
  %i.dy = add i64 %i.dx, %.sroa.0.021.i.i.i.i
  br label %bb.f

bb.k:                                             ; preds = %_RNvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !8910, !noundef !4
  %i.eb = icmp sgt i8 %i.ea, -1
  br i1 %i.eb, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %.val2.i23.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i, align 16, !noalias !8910
  %i.ec = icmp slt <16 x i8> %.val2.i23.i.i.i.i, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16          ; 2 uses
  %.not.i24.i.i.i.i = icmp ne i16 %i.ed, 0
  %i.ee = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ed, i1 true)
  %i.ef = zext nneg i16 %i.ee to i64
  call void @llvm.assume(i1 %.not.i24.i.i.i.i)
  br label %bb.p

bb.m:                                             ; preds = %_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eh = cmpxchg ptr %i.cn, i64 -4, i64 0 release monotonic, align 8, !noalias !8870
  %i.ei = extractvalue { i64, i1 } %i.eh, 1
  br i1 %i.ei, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.n, !prof !649

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cn)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.o, !noalias !8870

.thread.i:                                        ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 16, i1 false), !alias.scope !8911, !noalias !8912
  %i.ej = ptrtoint ptr %i.cn to i64
  %i.ek = ptrtoint ptr %i.dj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8863
  br label %bb.r

bb.o:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8894
  unreachable

bb.p:                                             ; preds = %bb.l, %bb.k
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.ef, %bb.l ], [ %.sroa.4.1.i.i.i.i, %bb.k ] ; 2 uses
  %.sroa.0.0.copyload8.i = load i64, ptr %i.h, align 8, !alias.scope !8913, !noalias !8912 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !alias.scope !8911, !noalias !8912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8863
  %.not.i = icmp eq i64 %.sroa.0.0.copyload8.i, -9223372036854775808
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.sroa.0.0.copyload8.i, ptr %i.e, align 8, !noalias !8863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx7, i64 16, i1 false), !noalias !8914
  store ptr %i.cn, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !8863
  store i64 %i.cf, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !8863
  store i64 %.sroa.3.0.i.ph.i.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !8863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8863
  invoke void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_3vec3VecbEE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.q
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !8863, !nonnull !4, !align !90, !noundef !4 ; 2 uses
  %i.em = cmpxchg ptr %.val.i, i64 -4, i64 0 release monotonic, align 8, !noalias !8915
  %i.en = extractvalue { i64, i1 } %i.em, 1
  br i1 %i.en, label %.thread, label %bb.x, !prof !649

bb.r:                                             ; preds = %bb.p, %.thread.i
  %.sroa.8.022.i = phi ptr [ %i.cx, %.thread.i ], [ %i.cn, %bb.p ]
  %.sroa.9.021.i = phi i64 [ %i.ej, %.thread.i ], [ %i.cf, %bb.p ] ; 2 uses
  %.sroa.11.020.i = phi i64 [ %i.ek, %.thread.i ], [ %.sroa.3.0.i.ph.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !8863
  store ptr %.sroa.8.022.i, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !8863
  store i64 %.sroa.9.021.i, ptr %.sroa.9.8..sroa_idx.i, align 8, !noalias !8863
  store i64 %.sroa.11.020.i, ptr %.sroa.11.8..sroa_idx.i, align 8, !noalias !8863
  %.cast.i = inttoptr i64 %.sroa.11.020.i to ptr
  %i.eo = getelementptr inbounds i8, ptr %.cast.i, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.eo, i64 24, i1 false), !noalias !8916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !8917
  %i.ep = inttoptr i64 %.sroa.9.021.i to ptr      ; 2 uses
  %i.eq = cmpxchg ptr %i.ep, i64 -4, i64 0 release monotonic, align 8, !noalias !8918
  %i.er = extractvalue { i64, i1 } %i.eq, 1
  br i1 %i.er, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i4.i, label %bb.s, !prof !649

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ep)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i4.i unwind label %bb.t, !noalias !8918

bb.t:                                             ; preds = %bb.s
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #51
          to label %.body unwind label %bb.w, !noalias !8915

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i4.i: ; preds = %bb.s, %bb.r
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.u, !noalias !8915

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i4.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.v, !noalias !8915

bb.v:                                             ; preds = %bb.u
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8915
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i4.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.z unwind label %bb.b

bb.w:                                             ; preds = %bb.t
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8915
  unreachable

bb.x:                                             ; preds = %.noexc
  invoke void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %.val.i)
          to label %.thread unwind label %bb.b

.thread:                                          ; preds = %.noexc, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8863
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit

.body.i:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCslfDARg5dRCJ_8lock_api6rwlock16RwLockWriteGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1B_4util11SharedValueINtNtB35_3vec3VecbEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #51
          to label %.body unwind label %bb.y, !noalias !8921

bb.y:                                             ; preds = %.body.i
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8921
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB19_3vec3VecbEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8863
  %.pr = load i64, ptr %i.i, align 8, !alias.scope !8922
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ex = icmp eq i64 %.pr, -9223372036854775808
  br i1 %i.ex, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.aa
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.z, %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !8925)
  %.sroa.0.0.copyload = load i64, ptr %i.j, align 8, !alias.scope !8927 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false), !alias.scope !8927
  store i64 -9223372036854775808, ptr %i.j, align 8, !alias.scope !8850, !noalias !8925
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %._crit_edge, label %bb.c

bb.ad:                                            ; preds = %.body
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvXsi_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_14TableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !126, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8928
  store i64 %i.h, ptr %i.g, align 8, !noalias !8928
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !8928
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.l) #57
  switch i64 %i.h, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8933
  store i8 -1, ptr %i.f, align 1, !noalias !8933
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1) #57, !noalias !8940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8933
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8941
  store i8 -1, ptr %i.e, align 1, !noalias !8941
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1) #57, !noalias !8948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8941
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.q) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8949
  store i8 -1, ptr %i.d, align 1, !noalias !8949
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1) #57, !noalias !8956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8949
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8957
  store i8 -1, ptr %i.c, align 1, !noalias !8957
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1) #57, !noalias !8964
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!8702 = distinct !{!8702, !8700, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNvMsC_BX_BV_3andE0Cs7p2uQeJxui2_9deltalake: argument 2"}
!8703 = distinct !{!8703, !8704, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNvMsC_BS_BQ_3andE0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8704 = distinct !{!8704, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNvMsC_BS_BQ_3andE0ECs7p2uQeJxui2_9deltalake"}
!8705 = distinct !{!8705, !8704, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNvMsC_BS_BQ_3andE0ECs7p2uQeJxui2_9deltalake: argument 1"}
!8706 = !{!8703, !8705}
!8707 = !{!8699, !8701, !8703, !8705}
!8708 = !{!8709, !8711, !8712}
!8709 = distinct !{!8709, !8710, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3i_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8710 = distinct !{!8710, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3i_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!8711 = distinct !{!8711, !8710, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3i_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8712 = distinct !{!8712, !8713, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8713 = distinct !{!8713, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECs7p2uQeJxui2_9deltalake"}
!8714 = !{!8712}
!8715 = !{!8716, !8718, !8709, !8712}
!8716 = distinct !{!8716, !8717, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterBI_EEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8717 = distinct !{!8717, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB1R_5slice4iter4IterBI_EEE0Cs7p2uQeJxui2_9deltalake"}
!8718 = distinct !{!8718, !8719, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB27_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8719 = distinct !{!8719, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB27_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtNtBe_5slice4iter4IterB1f_EEE0E0Cs7p2uQeJxui2_9deltalake"}
!8720 = !{!8721}
!8721 = distinct !{!8721, !8722, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8722 = distinct !{!8722, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake"}
!8723 = !{!8724}
!8724 = distinct !{!8724, !8722, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!8725 = !{!8721, !8724}
!8726 = !{!8727, !8729, !8730, !8721, !8724}
!8727 = distinct !{!8727, !8728, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNCINvMs1_BX_BV_10union_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8728 = distinct !{!8728, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNCINvMs1_BX_BV_10union_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0Cs7p2uQeJxui2_9deltalake"}
!8729 = distinct !{!8729, !8728, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNCINvMs1_BX_BV_10union_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8730 = distinct !{!8730, !8728, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNCINvMs1_BX_BV_10union_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 2"}
!8731 = !{!8727, !8729, !8721, !8724}
!8732 = !{!8733, !8735}
!8733 = distinct !{!8733, !8734, !"_RINvYINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterTNtNtBc_6string6StringB14_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3mapB13_NvYB13_NtNtB1D_5clone5Clone5cloneECs7p2uQeJxui2_9deltalake: argument 0"}
!8734 = distinct !{!8734, !"_RINvYINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterTNtNtBc_6string6StringB14_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3mapB13_NvYB13_NtNtB1D_5clone5Clone5cloneECs7p2uQeJxui2_9deltalake"}
!8735 = distinct !{!8735, !8734, !"_RINvYINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterTNtNtBc_6string6StringB14_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3mapB13_NvYB13_NtNtB1D_5clone5Clone5cloneECs7p2uQeJxui2_9deltalake: argument 1"}
!8736 = !{!8737, !8739, !8740, !8742, !8744, !8746}
!8737 = distinct !{!8737, !8738, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8738 = distinct !{!8738, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8739 = distinct !{!8739, !8738, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8740 = distinct !{!8740, !8741, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!8741 = distinct !{!8741, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!8742 = distinct !{!8742, !8743, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8743 = distinct !{!8743, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!8744 = distinct !{!8744, !8745, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8745 = distinct !{!8745, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!8746 = distinct !{!8746, !8745, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!8747 = !{!8737, !8742, !8744, !8746}
!8748 = !{!8749, !8751, !8752, !8754, !8755, !8757, !8737, !8742, !8744, !8746}
!8749 = distinct !{!8749, !8750, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8750 = distinct !{!8750, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake"}
!8751 = distinct !{!8751, !8750, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8752 = distinct !{!8752, !8753, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8753 = distinct !{!8753, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake"}
!8754 = distinct !{!8754, !8753, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8755 = distinct !{!8755, !8756, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8756 = distinct !{!8756, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!8757 = distinct !{!8757, !8756, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8758 = !{!8759, !8761, !8762, !8764, !8744, !8746}
!8759 = distinct !{!8759, !8760, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8760 = distinct !{!8760, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8761 = distinct !{!8761, !8760, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_EBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2l_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB2T_8for_each4callTjBV_ENCINvMs1_NtNtB10_11collections9vec_dequeINtB4o_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtB4o_4iter4IterBV_EEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8762 = distinct !{!8762, !8763, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!8763 = distinct !{!8763, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!8764 = distinct !{!8764, !8765, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8765 = distinct !{!8765, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!8766 = !{!8759, !8764, !8744, !8746}
!8767 = !{!8768, !8770, !8771, !8773, !8774, !8776, !8759, !8764, !8744, !8746}
!8768 = distinct !{!8768, !8769, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8769 = distinct !{!8769, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake"}
!8770 = distinct !{!8770, !8769, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_4iter4IterB18_EEE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8771 = distinct !{!8771, !8772, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8772 = distinct !{!8772, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake"}
!8773 = distinct !{!8773, !8772, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters6cloned6ClonedINtNtB29_4iter4IterB1h_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8774 = distinct !{!8774, !8775, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8775 = distinct !{!8775, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!8776 = distinct !{!8776, !8775, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8777 = !{!8778}
!8778 = distinct !{!8778, !8779, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake: argument 0"}
!8779 = distinct !{!8779, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake"}
!8780 = !{!8781}
!8781 = distinct !{!8781, !8782, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake: argument 0"}
!8782 = distinct !{!8782, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake"}
!8783 = !{!8784, !8781, !8778}
!8784 = distinct !{!8784, !8785, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0"}
!8785 = distinct !{!8785, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!8786 = !{!8787, !8788}
!8787 = distinct !{!8787, !8782, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake: argument 1"}
!8788 = distinct !{!8788, !8779, !"_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake: argument 1"}
!8789 = !{!8790, !8792, !8793, !8781, !8787, !8778, !8788}
!8790 = distinct !{!8790, !8791, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8791 = distinct !{!8791, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8792 = distinct !{!8792, !8791, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8793 = distinct !{!8793, !8794, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!8794 = distinct !{!8794, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!8795 = !{!8790, !8781, !8787, !8778, !8788}
!8796 = !{!8797, !8799, !8790, !8781, !8787, !8778, !8788}
!8797 = distinct !{!8797, !8798, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8798 = distinct !{!8798, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8799 = distinct !{!8799, !8798, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8800 = !{!8801, !8803, !8804, !8806, !8807, !8809, !8810, !8812, !8797, !8799, !8790, !8781, !8787, !8778, !8788}
!8801 = distinct !{!8801, !8802, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8802 = distinct !{!8802, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake"}
!8803 = distinct !{!8803, !8802, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8804 = distinct !{!8804, !8805, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8805 = distinct !{!8805, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake"}
!8806 = distinct !{!8806, !8805, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8807 = distinct !{!8807, !8808, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8808 = distinct !{!8808, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!8809 = distinct !{!8809, !8808, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8810 = distinct !{!8810, !8811, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8811 = distinct !{!8811, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8812 = distinct !{!8812, !8811, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8813 = !{!8814}
!8814 = distinct !{!8814, !8815, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake: argument 0"}
!8815 = distinct !{!8815, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake"}
!8816 = !{!8817, !8814, !8778}
!8817 = distinct !{!8817, !8818, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0"}
!8818 = distinct !{!8818, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!8819 = !{!8820, !8788}
!8820 = distinct !{!8820, !8815, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake: argument 1"}
!8821 = !{!8822, !8824, !8825, !8814, !8820, !8778, !8788}
!8822 = distinct !{!8822, !8823, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8823 = distinct !{!8823, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8824 = distinct !{!8824, !8823, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB15_EuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1S_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3h_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2s_NCINvMs0_B2v_B2s_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5j_9EnumeratepEB3F_4fold9enumerateB14_uNCINvNvB3F_8for_each4callTjB14_ENCINvMs1_NtNtB19_11collections9vec_dequeINtB6U_8VecDequeB14_E10write_iterIB3s_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtB6U_4iter4IterB14_EEEEE0E0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8825 = distinct !{!8825, !8826, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!8826 = distinct !{!8826, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!8827 = !{!8822, !8814, !8820, !8778, !8788}
!8828 = !{!8829, !8831, !8822, !8814, !8820, !8778, !8788}
!8829 = distinct !{!8829, !8830, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8830 = distinct !{!8830, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8831 = distinct !{!8831, !8830, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1S_EuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMs0_B2D_B2A_10wrap_mut_2uB1R_NCINvNvXs_NtBb_9enumerateINtB41_9EnumeratepEB14_4fold9enumerateB1R_uNCINvNvB14_8for_each4callTjB1R_ENCINvMs1_NtNtB1W_11collections9vec_dequeINtB5C_8VecDequeB1R_E10write_iterIBS_INtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB5C_4iter4IterB1R_EEEEE0E0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8832 = !{!8833, !8835, !8836, !8838, !8839, !8841, !8842, !8844, !8829, !8831, !8822, !8814, !8820, !8778, !8788}
!8833 = distinct !{!8833, !8834, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8834 = distinct !{!8834, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake"}
!8835 = distinct !{!8835, !8834, !"_RNCINvMs1_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB8_8VecDequeTNtNtBc_6string6StringB19_EE10write_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters4take4TakeINtNtB1R_12by_ref_sized10ByRefSizedINtNtB1R_6cloned6ClonedINtNtB8_4iter4IterB18_EEEEE0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8836 = distinct !{!8836, !8837, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8837 = distinct !{!8837, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake"}
!8838 = distinct !{!8838, !8837, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1i_EENCINvMs1_NtNtB1m_11collections9vec_dequeINtB29_8VecDequeB1h_E10write_iterINtNtNtBc_8adapters4take4TakeINtNtB3g_12by_ref_sized10ByRefSizedINtNtB3g_6cloned6ClonedINtNtB29_4iter4IterB1h_EEEEE0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8839 = distinct !{!8839, !8840, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8840 = distinct !{!8840, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!8841 = distinct !{!8841, !8840, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtNtCs6Po7BT7Nknu_5alloc6string6StringB22_EuNCINvNvB1e_8for_each4callTjB21_ENCINvMs1_NtNtB26_11collections9vec_dequeINtB3p_8VecDequeB21_E10write_iterINtNtBb_4take4TakeINtNtBb_12by_ref_sized10ByRefSizedINtNtBb_6cloned6ClonedINtNtB3p_4iter4IterB21_EEEEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8842 = distinct !{!8842, !8843, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8843 = distinct !{!8843, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!8844 = distinct !{!8844, !8843, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1o_ENCINvNvXs_NtNtNtBc_4iter8adapters9enumerateINtB2f_9EnumeratepENtNtNtB2j_6traits8iterator8Iterator4fold9enumerateB1n_uNCINvNvB35_8for_each4callTjB1n_ENCINvMs1_NtNtB1s_11collections9vec_dequeINtB4D_8VecDequeB1n_E10write_iterINtNtB2h_4take4TakeINtNtB2h_12by_ref_sized10ByRefSizedINtNtB2h_6cloned6ClonedINtNtB4D_4iter4IterB1n_EEEEE0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!8845 = !{!8846}
!8846 = distinct !{!8846, !8847, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0:pre.rot"}
!8847 = distinct !{!8847, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!8848 = !{!8846, !8849}
!8849 = distinct !{!8849, !8847, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 1"}
!8850 = !{!8849}
!8851 = !{!8852}
!8852 = distinct !{!8852, !8853, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7p2uQeJxui2_9deltalake: argument 1"}
!8853 = distinct !{!8853, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7p2uQeJxui2_9deltalake"}
!8854 = !{!8855}
!8855 = distinct !{!8855, !8853, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7p2uQeJxui2_9deltalake: argument 2"}
!8856 = !{!8857}
!8857 = distinct !{!8857, !8858, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs7p2uQeJxui2_9deltalake: argument 0"}
!8858 = distinct !{!8858, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs7p2uQeJxui2_9deltalake"}
!8859 = !{!8860}
!8860 = distinct !{!8860, !8858, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs7p2uQeJxui2_9deltalake: argument 1"}
!8861 = !{!8862}
!8862 = distinct !{!8862, !8858, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entryCs7p2uQeJxui2_9deltalake: argument 2"}
!8863 = !{!8864, !8852, !8855, !8865}
!8864 = distinct !{!8864, !8853, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7p2uQeJxui2_9deltalake: argument 0"}
!8865 = distinct !{!8865, !8853, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7p2uQeJxui2_9deltalake: argument 3"}
!8866 = !{!8857, !8860, !8862, !8864, !8852, !8855, !8865}
!8867 = !{!8862, !8855}
!8868 = !{!8857, !8860, !8864, !8852, !8865}
!8869 = !{!8860, !8852}
!8870 = !{!8857, !8862, !8864, !8855, !8865}
!8871 = !{!8872}
!8872 = distinct !{!8872, !8873, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!8873 = distinct !{!8873, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!8874 = !{!8875, !8877, !8878, !8880, !8881, !8857, !8860, !8862, !8864, !8852, !8855, !8865}
!8875 = distinct !{!8875, !8876, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8876 = distinct !{!8876, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8877 = distinct !{!8877, !8876, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8878 = distinct !{!8878, !8879, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8879 = distinct !{!8879, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8880 = distinct !{!8880, !8879, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8881 = distinct !{!8881, !8882, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!8882 = distinct !{!8882, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!8883 = !{!8877, !8880, !8857, !8862, !8864, !8855, !8865}
!8884 = !{!8885, !8887}
!8885 = distinct !{!8885, !8886, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!8886 = distinct !{!8886, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!8887 = distinct !{!8887, !8888, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!8888 = distinct !{!8888, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!8889 = !{!8890}
!8890 = distinct !{!8890, !8891, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake: argument 0"}
!8891 = distinct !{!8891, !"_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBJ_3vec3VecbEEINtNtB5_1t3MapBF_B1h_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE18__yield_write_shardCs7p2uQeJxui2_9deltalake"}
!8892 = !{!8890, !8860, !8852}
!8893 = !{!8890, !8857, !8862, !8864, !8855, !8865}
!8894 = !{!8857, !8864, !8865}
!8895 = !{!8896}
!8896 = distinct !{!8896, !8897, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs7p2uQeJxui2_9deltalake: argument 0"}
!8897 = distinct !{!8897, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs7p2uQeJxui2_9deltalake"}
!8898 = !{!8899}
!8899 = distinct !{!8899, !8897, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs7p2uQeJxui2_9deltalake: argument 1"}
!8900 = !{!8899, !8901, !8857, !8862, !8864, !8855, !8865}
!8901 = distinct !{!8901, !8897, !"_RINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB12_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB37_s_0ECs7p2uQeJxui2_9deltalake: argument 2"}
!8902 = !{!8899, !8862, !8855}
!8903 = !{!8896, !8901, !8857, !8860, !8864, !8852, !8865}
!8904 = !{!8905, !8899, !8857, !8862, !8864, !8855, !8865}
!8905 = distinct !{!8905, !8906, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!8906 = distinct !{!8906, !"_RNvNtNtNtCsbvkFyIu7lgC_4core9core_arch3x864sse215__mm_loadu_si128"}
!8907 = !{!8908, !8899, !8857, !8862, !8864, !8855, !8865}
!8908 = distinct !{!8908, !8909, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!8909 = distinct !{!8909, !"_RNCINvMs6_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB14_3vec3VecbEEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6__entry0NCB39_s_0E0Cs7p2uQeJxui2_9deltalake"}
!8910 = !{!8899, !8857, !8862, !8864, !8855, !8865}
!8911 = !{!8857, !8862}
!8912 = !{!8860, !8864, !8852, !8865}
!8913 = !{!8857, !8862, !8855}
!8914 = !{!8864, !8852, !8865}
!8915 = !{!8864, !8855, !8865}
!8916 = !{!8855, !8865}
!8917 = !{!8864, !8855}
!8918 = !{!8919, !8864, !8855, !8865}
!8919 = distinct !{!8919, !8920, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecbEEECs7p2uQeJxui2_9deltalake: argument 0"}
!8920 = distinct !{!8920, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs3JXekYNd0JR_7dashmap6mapref5entry13OccupiedEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1F_3vec3VecbEEECs7p2uQeJxui2_9deltalake"}
!8921 = !{!8864}
!8922 = !{!8923}
!8923 = distinct !{!8923, !8924, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake: argument 0"}
!8924 = distinct !{!8924, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEECs7p2uQeJxui2_9deltalake"}
!8925 = !{!8926}
!8926 = distinct !{!8926, !8847, !"_RNvXsy_NtCsbvkFyIu7lgC_4core6optionINtB5_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBR_3vec3VecbEEENtNtNtNtB7_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0:h.rot"}
!8927 = !{!8926, !8849}
!8928 = !{!8929, !8931}
!8929 = distinct !{!8929, !8930, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!8930 = distinct !{!8930, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!8931 = distinct !{!8931, !8932, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!8932 = distinct !{!8932, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!8933 = !{!8934, !8936, !8937, !8939}
!8934 = distinct !{!8934, !8935, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8935 = distinct !{!8935, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8936 = distinct !{!8936, !8935, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8937 = distinct !{!8937, !8938, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8938 = distinct !{!8938, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8939 = distinct !{!8939, !8938, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8940 = !{!8936, !8939}
!8941 = !{!8942, !8944, !8945, !8947}
!8942 = distinct !{!8942, !8943, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8943 = distinct !{!8943, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8944 = distinct !{!8944, !8943, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8945 = distinct !{!8945, !8946, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8946 = distinct !{!8946, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8947 = distinct !{!8947, !8946, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8948 = !{!8944, !8947}
!8949 = !{!8950, !8952, !8953, !8955}
!8950 = distinct !{!8950, !8951, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8951 = distinct !{!8951, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8952 = distinct !{!8952, !8951, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8953 = distinct !{!8953, !8954, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8954 = distinct !{!8954, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8955 = distinct !{!8955, !8954, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8956 = !{!8952, !8955}
!8957 = !{!8958, !8960, !8961, !8963}
!8958 = distinct !{!8958, !8959, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8959 = distinct !{!8959, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8960 = distinct !{!8960, !8959, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8961 = distinct !{!8961, !8962, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8962 = distinct !{!8962, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8963 = distinct !{!8963, !8962, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8964 = !{!8960, !8963}
!8965 = !{!8966, !8968, !8969, !8971}
!8966 = distinct !{!8966, !8967, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8967 = distinct !{!8967, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8968 = distinct !{!8968, !8967, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8969 = distinct !{!8969, !8970, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8970 = distinct !{!8970, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8971 = distinct !{!8971, !8970, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8972 = !{!8968, !8971}
!8973 = !{!8974, !8976, !8977, !8979}
!8974 = distinct !{!8974, !8975, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!8975 = distinct !{!8975, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!8976 = distinct !{!8976, !8975, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!8977 = distinct !{!8977, !8978, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!8978 = distinct !{!8978, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!8979 = distinct !{!8979, !8978, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!8980 = !{!8976, !8979}
!8981 = !{!8982, !8984}
!8982 = distinct !{!8982, !8983, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!8983 = distinct !{!8983, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!8984 = distinct !{!8984, !8985, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!8985 = distinct !{!8985, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!8986 = !{!8987}
!8987 = distinct !{!8987, !8988, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake: argument 0"}
!8988 = distinct !{!8988, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake"}
!8989 = !{!8990}
!8990 = distinct !{!8990, !8991, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake: argument 0"}
!8991 = distinct !{!8991, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake"}
!8992 = !{!8993, !8995}
!8993 = distinct !{!8993, !8994, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!8994 = distinct !{!8994, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!8995 = distinct !{!8995, !8996, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!8996 = distinct !{!8996, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!8997 = !{!8998}
!8998 = distinct !{!8998, !8999, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake: argument 0"}
!8999 = distinct !{!8999, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8Cs7p2uQeJxui2_9deltalake"}
!9000 = !{!9001, !9003}
!9001 = distinct !{!9001, !9002, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9002 = distinct !{!9002, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!9003 = distinct !{!9003, !9004, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9004 = distinct !{!9004, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!9005 = !{!9006, !9008}
!9006 = distinct !{!9006, !9007, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9007 = distinct !{!9007, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!9008 = distinct !{!9008, !9009, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9009 = distinct !{!9009, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!9010 = !{!9011}
!9011 = distinct !{!9011, !9012, !"_RINvXs13_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9012 = distinct !{!9012, !"_RINvXs13_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9013 = !{!9014}
!9014 = distinct !{!9014, !9012, !"_RINvXs13_NtCs6Po7BT7Nknu_5alloc4syncINtB7_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 1"}
!9015 = distinct !{null}
!9016 = !{!9017}
!9017 = distinct !{!9017, !9018, !"_RNvXse_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB7_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1u_5error15DataFusionErrorEEBx_ENtNtB7_7default7Default7defaultCs7p2uQeJxui2_9deltalake: argument 0"}
!9018 = distinct !{!9018, !"_RNvXse_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB7_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1u_5error15DataFusionErrorEEBx_ENtNtB7_7default7Default7defaultCs7p2uQeJxui2_9deltalake"}
!9019 = !{!9020}
!9020 = distinct !{!9020, !9021, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9021 = distinct !{!9021, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9022 = !{!9023}
!9023 = distinct !{!9023, !9024, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtBK_6string6StringEEENtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9024 = distinct !{!9024, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtBK_6string6StringEEENtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9025 = !{!9026, !9028, !9030, !9023}
!9026 = distinct !{!9026, !9027, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9027 = distinct !{!9027, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!9028 = distinct !{!9028, !9029, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!9029 = distinct !{!9029, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!9030 = distinct !{!9030, !9031, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringEEENtNtBO_4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9031 = distinct !{!9031, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringEEENtNtBO_4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9032 = !{!9033, !9035}
!9033 = distinct !{!9033, !9034, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9034 = distinct !{!9034, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9035 = distinct !{!9035, !9036, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9036 = distinct !{!9036, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9037 = !{!9038}
!9038 = distinct !{!9038, !9039, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9039 = distinct !{!9039, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9040 = !{i64 1, i64 0}
!9041 = !{!9042}
!9042 = distinct !{!9042, !9043, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9043 = distinct !{!9043, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9044 = !{!9045, !9047, !9042}
!9045 = distinct !{!9045, !9046, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64Cs7p2uQeJxui2_9deltalake: argument 0"}
!9046 = distinct !{!9046, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_u64Cs7p2uQeJxui2_9deltalake"}
!9047 = distinct !{!9047, !9048, !"_RINvXsc_NtCs2y6mmZ7bjoM_12tracing_core4spanNtB6_2IdNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9048 = distinct !{!9048, !"_RINvXsc_NtCs2y6mmZ7bjoM_12tracing_core4spanNtB6_2IdNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9049 = !{!9050, !9052}
!9050 = distinct !{!9050, !9051, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9051 = distinct !{!9051, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9052 = distinct !{!9052, !9053, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9053 = distinct !{!9053, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9054 = !{!9055}
!9055 = distinct !{!9055, !9056, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9056 = distinct !{!9056, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9057 = !{!9058, !9060}
!9058 = distinct !{!9058, !9059, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9059 = distinct !{!9059, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9060 = distinct !{!9060, !9061, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9061 = distinct !{!9061, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9062 = !{!9063}
!9063 = distinct !{!9063, !9064, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9064 = distinct !{!9064, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9065 = !{!9066}
!9066 = distinct !{!9066, !9067, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9067 = distinct !{!9067, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9068 = !{!9069, !9071, !9072, !9074, !9075, !9066}
!9069 = distinct !{!9069, !9070, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!9070 = distinct !{!9070, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!9071 = distinct !{!9071, !9070, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!9072 = distinct !{!9072, !9073, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!9073 = distinct !{!9073, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!9074 = distinct !{!9074, !9073, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!9075 = distinct !{!9075, !9076, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9076 = distinct !{!9076, !"_RINvXss_NtCs6Po7BT7Nknu_5alloc6stringNtB6_6StringNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9077 = !{!9071, !9074}
!9078 = !{!9079, !9081}
!9079 = distinct !{!9079, !9080, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9080 = distinct !{!9080, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9081 = distinct !{!9081, !9082, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9082 = distinct !{!9082, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9083 = !{!9084}
!9084 = distinct !{!9084, !9085, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9085 = distinct !{!9085, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9086 = !{!9087, !9089}
!9087 = distinct !{!9087, !9088, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9088 = distinct !{!9088, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9089 = distinct !{!9089, !9090, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9090 = distinct !{!9090, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9091 = !{!9092}
!9092 = distinct !{!9092, !9093, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9093 = distinct !{!9093, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9094 = !{!9095}
!9095 = distinct !{!9095, !9096, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9096 = distinct !{!9096, !"_RINvXs3_NtNtCsbvkFyIu7lgC_4core4hash5implsRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecNtB8_4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9097 = !{!9098, !9100, !9102, !9095}
!9098 = distinct !{!9098, !9099, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9099 = distinct !{!9099, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!9100 = distinct !{!9100, !9101, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!9101 = distinct !{!9101, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!9102 = distinct !{!9102, !9103, !"_RINvXsV_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_18MetadataColumnSpecNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9103 = distinct !{!9103, !"_RINvXsV_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_18MetadataColumnSpecNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!9104 = !{!9105, !9107}
!9105 = distinct !{!9105, !9106, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake: argument 0"}
!9106 = distinct !{!9106, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCs7p2uQeJxui2_9deltalake"}
!9107 = distinct !{!9107, !9108, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish: argument 0"}
!9108 = distinct !{!9108, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish"}
!9109 = !{!9110}
!9110 = distinct !{!9110, !9111, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher: argument 0"}
!9111 = distinct !{!9111, !"_RNvXs_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB4_11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher12build_hasher"}
!9112 = !{!9113}
!9113 = distinct !{!9113, !9114, !"_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_22ResolvedTableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!9114 = distinct !{!9114, !"_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB6_22ResolvedTableReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
end_hunk_1
