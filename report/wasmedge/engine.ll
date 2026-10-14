Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/engine?download=true
inline.NumInlined: 11004
inline.NumDeleted: 2646
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZZN8WasmEdge8Executor8Executor7executeERNS_7Runtime12StackManagerEPKNS_3AST11InstructionES8_ENK3$_1clEv":bb.a
  %i.baw = fsub float %i.bav, %.sroa.0.0.copyload.i56210821425
  store float %i.baw, ptr %i.bau, align 16, !tbaa !135, !noalias !1107
  store i64 1, ptr %0, align 4, !alias.scope !1107
  br label %bb.ye

bb.im:                                            ; preds = %bb.a
  %i.bax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 8 ; 2 uses
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !125 ; 2 uses
  %i.bbb = getelementptr inbounds i8, ptr %i.bba, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i56310761424 = load float, ptr %i.bbb, align 16
  store ptr %i.bbb, ptr %i.baz, align 8, !tbaa !99
  %i.bbc = getelementptr inbounds i8, ptr %i.bba, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.bbd = load float, ptr %i.bbc, align 16, !tbaa !135, !noalias !1108
  %i.bbe = fmul float %.sroa.0.0.copyload.i56310761424, %i.bbd
  store float %i.bbe, ptr %i.bbc, align 16, !tbaa !135, !noalias !1108
  store i64 1, ptr %0, align 4, !alias.scope !1108
  br label %bb.ye

bb.in:                                            ; preds = %bb.a
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bbg, i64 8 ; 2 uses
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !125 ; 2 uses
  %i.bbj = getelementptr inbounds i8, ptr %i.bbi, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i56410701423 = load float, ptr %i.bbj, align 16
  store ptr %i.bbj, ptr %i.bbh, align 8, !tbaa !99
  %i.bbk = getelementptr inbounds i8, ptr %i.bbi, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  %i.bbl = load float, ptr %i.bbk, align 16, !tbaa !135, !noalias !1109
  %i.bbm = fdiv float %i.bbl, %.sroa.0.0.copyload.i56410701423
  store float %i.bbm, ptr %i.bbk, align 16, !tbaa !135, !noalias !1109
  store i64 1, ptr %0, align 4, !alias.scope !1109
  br label %bb.ye

bb.io:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.bbn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 8 ; 2 uses
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !125 ; 2 uses
  %i.bbr = getelementptr inbounds i8, ptr %i.bbq, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i565 = load i128, ptr %i.bbr, align 16, !tbaa !93
  store ptr %i.bbr, ptr %i.bbp, align 8, !tbaa !99
  store i128 %.sroa.0.0.copyload.i565, ptr %26, align 16
  %i.bbs = getelementptr inbounds i8, ptr %i.bbq, i64 -32
  call void @_ZNK8WasmEdge8Executor8Executor8runMinOpIfEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.bbs, ptr noundef nonnull align 16 dereferenceable(16) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %bb.ye

bb.ip:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.bbt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 8 ; 2 uses
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !125 ; 2 uses
  %i.bbx = getelementptr inbounds i8, ptr %i.bbw, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i566 = load i128, ptr %i.bbx, align 16, !tbaa !93
  store ptr %i.bbx, ptr %i.bbv, align 8, !tbaa !99
  store i128 %.sroa.0.0.copyload.i566, ptr %27, align 16
  %i.bby = getelementptr inbounds i8, ptr %i.bbw, i64 -32
  call void @_ZNK8WasmEdge8Executor8Executor8runMaxOpIfEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.bby, ptr noundef nonnull align 16 dereferenceable(16) %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.ye

bb.iq:                                            ; preds = %bb.a
  %i.bbz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 8 ; 2 uses
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !125 ; 2 uses
  %i.bcd = getelementptr inbounds i8, ptr %i.bcc, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i56710641422 = load float, ptr %i.bcd, align 16
  store ptr %i.bcd, ptr %i.bcb, align 8, !tbaa !99
  %i.bce = getelementptr inbounds i8, ptr %i.bcc, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  %i.bcf = load float, ptr %i.bce, align 16, !tbaa !135, !noalias !1110
  %i.bcg = tail call noundef float @llvm.copysign.f32(float %i.bcf, float %.sroa.0.0.copyload.i56710641422)
  store float %i.bcg, ptr %i.bce, align 16, !tbaa !135, !noalias !1110
  store i64 1, ptr %0, align 4, !alias.scope !1110
  br label %bb.ye

bb.ir:                                            ; preds = %bb.a
  %i.bch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bci, i64 8 ; 2 uses
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !125 ; 2 uses
  %i.bcl = getelementptr inbounds i8, ptr %i.bck, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i56810581421 = load double, ptr %i.bcl, align 16
  store ptr %i.bcl, ptr %i.bcj, align 8, !tbaa !99
  %i.bcm = getelementptr inbounds i8, ptr %i.bck, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.bcn = load double, ptr %i.bcm, align 16, !tbaa !137, !noalias !1111
  %i.bco = fadd double %.sroa.0.0.copyload.i56810581421, %i.bcn
  store double %i.bco, ptr %i.bcm, align 16, !tbaa !137, !noalias !1111
  store i64 1, ptr %0, align 4, !alias.scope !1111
  br label %bb.ye

bb.is:                                            ; preds = %bb.a
  %i.bcp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8 ; 2 uses
  %i.bcs = load ptr, ptr %i.bcr, align 8, !tbaa !125 ; 2 uses
  %i.bct = getelementptr inbounds i8, ptr %i.bcs, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i56910521420 = load double, ptr %i.bct, align 16
  store ptr %i.bct, ptr %i.bcr, align 8, !tbaa !99
  %i.bcu = getelementptr inbounds i8, ptr %i.bcs, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %i.bcv = load double, ptr %i.bcu, align 16, !tbaa !137, !noalias !1112
  %i.bcw = fsub double %i.bcv, %.sroa.0.0.copyload.i56910521420
  store double %i.bcw, ptr %i.bcu, align 16, !tbaa !137, !noalias !1112
  store i64 1, ptr %0, align 4, !alias.scope !1112
  br label %bb.ye

bb.it:                                            ; preds = %bb.a
  %i.bcx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 8 ; 2 uses
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !125 ; 2 uses
  %i.bdb = getelementptr inbounds i8, ptr %i.bda, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i57010461419 = load double, ptr %i.bdb, align 16
  store ptr %i.bdb, ptr %i.bcz, align 8, !tbaa !99
  %i.bdc = getelementptr inbounds i8, ptr %i.bda, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.bdd = load double, ptr %i.bdc, align 16, !tbaa !137, !noalias !1113
  %i.bde = fmul double %.sroa.0.0.copyload.i57010461419, %i.bdd
  store double %i.bde, ptr %i.bdc, align 16, !tbaa !137, !noalias !1113
  store i64 1, ptr %0, align 4, !alias.scope !1113
  br label %bb.ye

bb.iu:                                            ; preds = %bb.a
  %i.bdf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 8 ; 2 uses
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !125 ; 2 uses
  %i.bdj = getelementptr inbounds i8, ptr %i.bdi, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i57110401418 = load double, ptr %i.bdj, align 16
  store ptr %i.bdj, ptr %i.bdh, align 8, !tbaa !99
  %i.bdk = getelementptr inbounds i8, ptr %i.bdi, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.bdl = load double, ptr %i.bdk, align 16, !tbaa !137, !noalias !1114
  %i.bdm = fdiv double %i.bdl, %.sroa.0.0.copyload.i57110401418
  store double %i.bdm, ptr %i.bdk, align 16, !tbaa !137, !noalias !1114
  store i64 1, ptr %0, align 4, !alias.scope !1114
  br label %bb.ye

bb.iv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  %i.bdn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 8 ; 2 uses
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !125 ; 2 uses
  %i.bdr = getelementptr inbounds i8, ptr %i.bdq, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i572 = load i128, ptr %i.bdr, align 16, !tbaa !93
  store ptr %i.bdr, ptr %i.bdp, align 8, !tbaa !99
  store i128 %.sroa.0.0.copyload.i572, ptr %28, align 16
  %i.bds = getelementptr inbounds i8, ptr %i.bdq, i64 -32
  call void @_ZNK8WasmEdge8Executor8Executor8runMinOpIdEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.bds, ptr noundef nonnull align 16 dereferenceable(16) %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  br label %bb.ye

bb.iw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.bdt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 8 ; 2 uses
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !125 ; 2 uses
  %i.bdx = getelementptr inbounds i8, ptr %i.bdw, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i573 = load i128, ptr %i.bdx, align 16, !tbaa !93
  store ptr %i.bdx, ptr %i.bdv, align 8, !tbaa !99
  store i128 %.sroa.0.0.copyload.i573, ptr %29, align 16
  %i.bdy = getelementptr inbounds i8, ptr %i.bdw, i64 -32
  call void @_ZNK8WasmEdge8Executor8Executor8runMaxOpIdEENSt9enable_ifIX12IsWasmFloatVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSN_(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.bdy, ptr noundef nonnull align 16 dereferenceable(16) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  br label %bb.ye

bb.ix:                                            ; preds = %bb.a
  %i.bdz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 8 ; 2 uses
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !125 ; 2 uses
  %i.bed = getelementptr inbounds i8, ptr %i.bec, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i57410341417 = load double, ptr %i.bed, align 16
  store ptr %i.bed, ptr %i.beb, align 8, !tbaa !99
  %i.bee = getelementptr inbounds i8, ptr %i.bec, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.bef = load double, ptr %i.bee, align 16, !tbaa !137, !noalias !1115
  %i.beg = tail call double @llvm.copysign.f64(double %i.bef, double %.sroa.0.0.copyload.i57410341417)
  store double %i.beg, ptr %i.bee, align 16, !tbaa !137, !noalias !1115
  store i64 1, ptr %0, align 4, !alias.scope !1115
  br label %bb.ye

bb.iy:                                            ; preds = %bb.a
  %i.beh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 8
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !125
  %i.bel = getelementptr inbounds i8, ptr %i.bek, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1116)
  %i.bem = load float, ptr %i.bel, align 4, !tbaa !135, !noalias !1116 ; 4 uses
  %i.ben = fcmp uno float %i.bem, 0.000000e+00
  br i1 %i.ben, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.beo = tail call float @llvm.fabs.f32(float %i.bem)
  %i.bep = fcmp oeq float %i.beo, +inf
  br i1 %i.bep, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.beq = fcmp olt float %i.bem, f0xFF7FFFFF
  %..i = select i1 %i.beq, i32 -2147483648, i32 2147483647
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.jb:                                            ; preds = %bb.iz
  %i.ber = tail call noundef float @llvm.trunc.f32(float %i.bem) ; 3 uses
  %i.bes = fcmp olt float %i.ber, f0xCF000000
  br i1 %i.bes, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bet = fcmp ult float %i.ber, f0x4F000000
  %i.beu = fptosi float %i.ber to i32
  %spec.select.i575 = select i1 %i.bet, i32 %i.beu, i32 2147483647
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.iy, %bb.ja, %bb.jb, %bb.jc
  %.sink.i = phi i32 [ %..i, %bb.ja ], [ %spec.select.i575, %bb.jc ], [ -2147483648, %bb.jb ], [ 0, %bb.iy ]
  store i32 %.sink.i, ptr %i.bel, align 16, !tbaa !98, !noalias !1116
  store i64 1, ptr %0, align 4, !alias.scope !1116
  br label %bb.ye

bb.jd:                                            ; preds = %bb.a
  %i.bev = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 8
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !125
  %i.bez = getelementptr inbounds i8, ptr %i.bey, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.bfa = load float, ptr %i.bez, align 4, !tbaa !135, !noalias !1117 ; 4 uses
  %i.bfb = fcmp uno float %i.bfa, 0.000000e+00
  br i1 %i.bfb, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.bfc = tail call float @llvm.fabs.f32(float %i.bfa)
  %i.bfd = fcmp oeq float %i.bfc, +inf
  br i1 %i.bfd, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.bfe = fcmp uge float %i.bfa, f0xFF7FFFFF
  %..i578 = sext i1 %i.bfe to i32
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.jg:                                            ; preds = %bb.je
  %i.bff = tail call noundef float @llvm.trunc.f32(float %i.bfa) ; 3 uses
  %i.bfg = fcmp olt float %i.bff, 0.000000e+00
  br i1 %i.bfg, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.bfh = fcmp ult float %i.bff, f0x4F800000
  %i.bfi = fptoui float %i.bff to i32
  %spec.select.i576 = select i1 %i.bfh, i32 %i.bfi, i32 -1
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.jd, %bb.jf, %bb.jg, %bb.jh
  %.sink.i577 = phi i32 [ %..i578, %bb.jf ], [ %spec.select.i576, %bb.jh ], [ 0, %bb.jg ], [ 0, %bb.jd ]
  store i32 %.sink.i577, ptr %i.bez, align 16, !tbaa !98, !noalias !1117
  store i64 1, ptr %0, align 4, !alias.scope !1117
  br label %bb.ye

bb.ji:                                            ; preds = %bb.a
  %i.bfj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !125
  %i.bfn = getelementptr inbounds i8, ptr %i.bfm, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  %i.bfo = load double, ptr %i.bfn, align 8, !tbaa !137, !noalias !1118 ; 4 uses
  %i.bfp = fcmp uno double %i.bfo, 0.000000e+00
  br i1 %i.bfp, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bfq = tail call double @llvm.fabs.f64(double %i.bfo)
  %i.bfr = fcmp oeq double %i.bfq, +inf
  br i1 %i.bfr, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.bfs = fcmp olt double %i.bfo, f0xFFEFFFFFFFFFFFFF
  %..i581 = select i1 %i.bfs, i32 -2147483648, i32 2147483647
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.jl:                                            ; preds = %bb.jj
  %i.bft = tail call double @llvm.trunc.f64(double %i.bfo) ; 3 uses
  %i.bfu = fcmp olt double %i.bft, f0xC1E0000000000000
  br i1 %i.bfu, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %.inv.i = fcmp oge double %i.bft, f0x41DFFFFFFFC00000
  %spec.select22.i = select i1 %.inv.i, double f0x41DFFFFFFFC00000, double %i.bft
  %spec.select.i579 = fptosi double %spec.select22.i to i32
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.ji, %bb.jk, %bb.jl, %bb.jm
  %.sink.i580 = phi i32 [ %..i581, %bb.jk ], [ %spec.select.i579, %bb.jm ], [ -2147483648, %bb.jl ], [ 0, %bb.ji ]
  store i32 %.sink.i580, ptr %i.bfn, align 16, !tbaa !98, !noalias !1118
  store i64 1, ptr %0, align 4, !alias.scope !1118
  br label %bb.ye

bb.jn:                                            ; preds = %bb.a
  %i.bfv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 8
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !125
  %i.bfz = getelementptr inbounds i8, ptr %i.bfy, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.bga = load double, ptr %i.bfz, align 8, !tbaa !137, !noalias !1119 ; 4 uses
  %i.bgb = fcmp uno double %i.bga, 0.000000e+00
  br i1 %i.bgb, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.bgc = tail call double @llvm.fabs.f64(double %i.bga)
  %i.bgd = fcmp oeq double %i.bgc, +inf
  br i1 %i.bgd, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.bge = fcmp uge double %i.bga, f0xFFEFFFFFFFFFFFFF
  %..i586 = sext i1 %i.bge to i32
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.jq:                                            ; preds = %bb.jo
  %i.bgf = tail call double @llvm.trunc.f64(double %i.bga) ; 3 uses
  %i.bgg = fcmp olt double %i.bgf, 0.000000e+00
  br i1 %i.bgg, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %.inv.i582 = fcmp oge double %i.bgf, f0x41EFFFFFFFE00000
  %spec.select22.i583 = select i1 %.inv.i582, double f0x41EFFFFFFFE00000, double %i.bgf
  %spec.select.i584 = fptoui double %spec.select22.i583 to i32
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.jn, %bb.jp, %bb.jq, %bb.jr
  %.sink.i585 = phi i32 [ %..i586, %bb.jp ], [ %spec.select.i584, %bb.jr ], [ 0, %bb.jq ], [ 0, %bb.jn ]
  store i32 %.sink.i585, ptr %i.bfz, align 16, !tbaa !98, !noalias !1119
  store i64 1, ptr %0, align 4, !alias.scope !1119
  br label %bb.ye

bb.js:                                            ; preds = %bb.a
  %i.bgh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 8
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !125
  %i.bgl = getelementptr inbounds i8, ptr %i.bgk, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.bgm = load float, ptr %i.bgl, align 4, !tbaa !135, !noalias !1120 ; 4 uses
  %i.bgn = fcmp uno float %i.bgm, 0.000000e+00
  br i1 %i.bgn, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bgo = tail call float @llvm.fabs.f32(float %i.bgm)
  %i.bgp = fcmp oeq float %i.bgo, +inf
  br i1 %i.bgp, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.bgq = fcmp olt float %i.bgm, f0xFF7FFFFF
  %..i589 = select i1 %i.bgq, i64 -9223372036854775808, i64 9223372036854775807
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.jv:                                            ; preds = %bb.jt
  %i.bgr = tail call noundef float @llvm.trunc.f32(float %i.bgm) ; 3 uses
  %i.bgs = fcmp olt float %i.bgr, f0xDF000000
  br i1 %i.bgs, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bgt = fcmp ult float %i.bgr, f0x5F000000
  %i.bgu = fptosi float %i.bgr to i64
  %spec.select.i587 = select i1 %i.bgt, i64 %i.bgu, i64 9223372036854775807
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.js, %bb.ju, %bb.jv, %bb.jw
  %.sink.i588 = phi i64 [ %..i589, %bb.ju ], [ %spec.select.i587, %bb.jw ], [ -9223372036854775808, %bb.jv ], [ 0, %bb.js ]
  store i64 %.sink.i588, ptr %i.bgl, align 16, !tbaa !94, !noalias !1120
  store i64 1, ptr %0, align 4, !alias.scope !1120
  br label %bb.ye

bb.jx:                                            ; preds = %bb.a
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgw, i64 8
  %i.bgy = load ptr, ptr %i.bgx, align 8, !tbaa !125
  %i.bgz = getelementptr inbounds i8, ptr %i.bgy, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.bha = load float, ptr %i.bgz, align 4, !tbaa !135, !noalias !1121 ; 4 uses
  %i.bhb = fcmp uno float %i.bha, 0.000000e+00
  br i1 %i.bhb, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bhc = tail call float @llvm.fabs.f32(float %i.bha)
  %i.bhd = fcmp oeq float %i.bhc, +inf
  br i1 %i.bhd, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.bhe = fcmp uge float %i.bha, f0xFF7FFFFF
  %..i592 = sext i1 %i.bhe to i64
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.ka:                                            ; preds = %bb.jy
  %i.bhf = tail call noundef float @llvm.trunc.f32(float %i.bha) ; 3 uses
  %i.bhg = fcmp olt float %i.bhf, 0.000000e+00
  br i1 %i.bhg, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.bhh = fcmp ult float %i.bhf, f0x5F800000
  %i.bhi = fptoui float %i.bhf to i64
  %spec.select.i590 = select i1 %i.bhh, i64 %i.bhi, i64 -1
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.jx, %bb.jz, %bb.ka, %bb.kb
  %.sink.i591 = phi i64 [ %..i592, %bb.jz ], [ %spec.select.i590, %bb.kb ], [ 0, %bb.ka ], [ 0, %bb.jx ]
  store i64 %.sink.i591, ptr %i.bgz, align 16, !tbaa !94, !noalias !1121
  store i64 1, ptr %0, align 4, !alias.scope !1121
  br label %bb.ye

bb.kc:                                            ; preds = %bb.a
  %i.bhj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 8
  %i.bhm = load ptr, ptr %i.bhl, align 8, !tbaa !125
  %i.bhn = getelementptr inbounds i8, ptr %i.bhm, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.bho = load double, ptr %i.bhn, align 8, !tbaa !137, !noalias !1122 ; 4 uses
  %i.bhp = fcmp uno double %i.bho, 0.000000e+00
  br i1 %i.bhp, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bhq = tail call double @llvm.fabs.f64(double %i.bho)
  %i.bhr = fcmp oeq double %i.bhq, +inf
  br i1 %i.bhr, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.bhs = fcmp olt double %i.bho, f0xFFEFFFFFFFFFFFFF
  %..i595 = select i1 %i.bhs, i64 -9223372036854775808, i64 9223372036854775807
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.kf:                                            ; preds = %bb.kd
  %i.bht = tail call double @llvm.trunc.f64(double %i.bho) ; 3 uses
  %i.bhu = fcmp olt double %i.bht, f0xC3E0000000000000
  br i1 %i.bhu, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bhv = fcmp ult double %i.bht, f0x43E0000000000000
  %i.bhw = fptosi double %i.bht to i64
  %spec.select.i593 = select i1 %i.bhv, i64 %i.bhw, i64 9223372036854775807
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.kc, %bb.ke, %bb.kf, %bb.kg
  %.sink.i594 = phi i64 [ %..i595, %bb.ke ], [ %spec.select.i593, %bb.kg ], [ -9223372036854775808, %bb.kf ], [ 0, %bb.kc ]
  store i64 %.sink.i594, ptr %i.bhn, align 16, !tbaa !94, !noalias !1122
  store i64 1, ptr %0, align 4, !alias.scope !1122
  br label %bb.ye

bb.kh:                                            ; preds = %bb.a
  %i.bhx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !125
  %i.bib = getelementptr inbounds i8, ptr %i.bia, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.bic = load double, ptr %i.bib, align 8, !tbaa !137, !noalias !1123 ; 4 uses
  %i.bid = fcmp uno double %i.bic, 0.000000e+00
  br i1 %i.bid, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bie = tail call double @llvm.fabs.f64(double %i.bic)
  %i.bif = fcmp oeq double %i.bie, +inf
  br i1 %i.bif, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.big = fcmp uge double %i.bic, f0xFFEFFFFFFFFFFFFF
  %..i598 = sext i1 %i.big to i64
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

bb.kk:                                            ; preds = %bb.ki
  %i.bih = tail call double @llvm.trunc.f64(double %i.bic) ; 3 uses
  %i.bii = fcmp olt double %i.bih, 0.000000e+00
  br i1 %i.bii, label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bij = fcmp ult double %i.bih, f0x43F0000000000000
  %i.bik = fptoui double %i.bih to i64
  %spec.select.i596 = select i1 %i.bij, i64 %i.bik, i64 -1
  br label %_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit

_ZNK8WasmEdge8Executor8Executor16runTruncateSatOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE.exit: ; preds = %bb.kh, %bb.kj, %bb.kk, %bb.kl
  %.sink.i597 = phi i64 [ %..i598, %bb.kj ], [ %spec.select.i596, %bb.kl ], [ 0, %bb.kk ], [ 0, %bb.kh ]
  store i64 %.sink.i597, ptr %i.bib, align 16, !tbaa !94, !noalias !1123
  store i64 1, ptr %0, align 4, !alias.scope !1123
  br label %bb.ye

bb.km:                                            ; preds = %bb.a
  %i.bil = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bin = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bio = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bim, i32 noundef %i.bin)
  tail call void @_ZN8WasmEdge8Executor8Executor9runLoadOpIoLj128EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bim, ptr noundef nonnull align 8 dereferenceable(136) %i.bio, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kn:                                            ; preds = %bb.a
  %i.bip = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bir = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bis = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biq, i32 noundef %i.bir)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIasEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biq, ptr noundef nonnull align 8 dereferenceable(136) %i.bis, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.ko:                                            ; preds = %bb.a
  %i.bit = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.biv = load i32, ptr %i.g, align 16, !tbaa !93
  %i.biw = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biu, i32 noundef %i.biv)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIhtEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biu, ptr noundef nonnull align 8 dereferenceable(136) %i.biw, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kp:                                            ; preds = %bb.a
  %i.bix = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.biz = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bja = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biy, i32 noundef %i.biz)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIsiEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.biy, ptr noundef nonnull align 8 dereferenceable(136) %i.bja, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kq:                                            ; preds = %bb.a
  %i.bjb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjd = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bje = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjc, i32 noundef %i.bjd)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpItjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjc, ptr noundef nonnull align 8 dereferenceable(136) %i.bje, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kr:                                            ; preds = %bb.a
  %i.bjf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjg = load ptr, ptr %i.bjf, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjh = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bji = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjg, i32 noundef %i.bjh)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIilEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjg, ptr noundef nonnull align 8 dereferenceable(136) %i.bji, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.ks:                                            ; preds = %bb.a
  %i.bjj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjl = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bjm = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjk, i32 noundef %i.bjl)
  tail call void @_ZN8WasmEdge8Executor8Executor15runLoadExpandOpIjmEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjk, ptr noundef nonnull align 8 dereferenceable(136) %i.bjm, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kt:                                            ; preds = %bb.a
  %i.bjn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjp = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bjq = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjo, i32 noundef %i.bjp)
  tail call void @_ZN8WasmEdge8Executor8Executor14runLoadSplatOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjo, ptr noundef nonnull align 8 dereferenceable(136) %i.bjq, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.ku:                                            ; preds = %bb.a
  %i.bjr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjt = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bju = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjs, i32 noundef %i.bjt)
  tail call void @_ZN8WasmEdge8Executor8Executor14runLoadSplatOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjs, ptr noundef nonnull align 8 dereferenceable(136) %i.bju, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kv:                                            ; preds = %bb.a
  %i.bjv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bjx = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bjy = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjw, i32 noundef %i.bjx)
  tail call void @_ZN8WasmEdge8Executor8Executor14runLoadSplatOpIjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bjw, ptr noundef nonnull align 8 dereferenceable(136) %i.bjy, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kw:                                            ; preds = %bb.a
  %i.bjz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkb = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bkc = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bka, i32 noundef %i.bkb)
  tail call void @_ZN8WasmEdge8Executor8Executor14runLoadSplatOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bka, ptr noundef nonnull align 8 dereferenceable(136) %i.bkc, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kx:                                            ; preds = %bb.a
  %i.bkd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkf = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bkg = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bke, i32 noundef %i.bkf)
  tail call void @_ZN8WasmEdge8Executor8Executor9runLoadOpIoLj32EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bke, ptr noundef nonnull align 8 dereferenceable(136) %i.bkg, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.ky:                                            ; preds = %bb.a
  %i.bkh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkj = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bkk = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bki, i32 noundef %i.bkj)
  tail call void @_ZN8WasmEdge8Executor8Executor9runLoadOpIoLj64EEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bki, ptr noundef nonnull align 8 dereferenceable(136) %i.bkk, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.kz:                                            ; preds = %bb.a
  %i.bkl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkn = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bko = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bkm, i32 noundef %i.bkn)
  tail call void @_ZN8WasmEdge8Executor8Executor10runStoreOpIoLj128EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bkm, ptr noundef nonnull align 8 dereferenceable(136) %i.bko, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.la:                                            ; preds = %bb.a
  %i.bkp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkr = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bks = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bkq, i32 noundef %i.bkr)
  tail call void @_ZN8WasmEdge8Executor8Executor13runLoadLaneOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bkq, ptr noundef nonnull align 8 dereferenceable(136) %i.bks, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.lb:                                            ; preds = %bb.a
  %i.bkt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkv = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bkw = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bku, i32 noundef %i.bkv)
  tail call void @_ZN8WasmEdge8Executor8Executor13runLoadLaneOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bku, ptr noundef nonnull align 8 dereferenceable(136) %i.bkw, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.lc:                                            ; preds = %bb.a
  %i.bkx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bkz = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bla = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bky, i32 noundef %i.bkz)
  tail call void @_ZN8WasmEdge8Executor8Executor13runLoadLaneOpIjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bky, ptr noundef nonnull align 8 dereferenceable(136) %i.bla, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.ld:                                            ; preds = %bb.a
  %i.blb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blc = load ptr, ptr %i.blb, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bld = load i32, ptr %i.g, align 16, !tbaa !93
  %i.ble = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blc, i32 noundef %i.bld)
  tail call void @_ZN8WasmEdge8Executor8Executor13runLoadLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blc, ptr noundef nonnull align 8 dereferenceable(136) %i.ble, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.le:                                            ; preds = %bb.a
  %i.blf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.blh = load i32, ptr %i.g, align 16, !tbaa !93
  %i.bli = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blg, i32 noundef %i.blh)
  tail call void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blg, ptr noundef nonnull align 8 dereferenceable(136) %i.bli, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.lf:                                            ; preds = %bb.a
  %i.blj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.bll = load i32, ptr %i.g, align 16, !tbaa !93
  %i.blm = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blk, i32 noundef %i.bll)
  tail call void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blk, ptr noundef nonnull align 8 dereferenceable(136) %i.blm, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.lg:                                            ; preds = %bb.a
  %i.bln = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.blp = load i32, ptr %i.g, align 16, !tbaa !93
  %i.blq = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blo, i32 noundef %i.blp)
  tail call void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpIjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.blo, ptr noundef nonnull align 8 dereferenceable(136) %i.blq, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.lh:                                            ; preds = %bb.a
  %i.blr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !1007, !nonnull !72, !align !111 ; 2 uses
  %i.blt = load i32, ptr %i.g, align 16, !tbaa !93
  %i.blu = tail call noundef ptr @_ZNK8WasmEdge8Executor8Executor15getMemInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bls, i32 noundef %i.blt)
  tail call void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.bls, ptr noundef nonnull align 8 dereferenceable(136) %i.blu, ptr noundef nonnull align 16 dereferenceable(26) %i.g)
  br label %bb.ye

bb.li:                                            ; preds = %bb.a
  %i.blv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blw = load ptr, ptr %i.blv, align 8, !tbaa !1007, !nonnull !72, !align !111
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.blx = load i128, ptr %i.g, align 16, !tbaa !134
  store i128 %i.blx, ptr %30, align 16
  call void @_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.blw, ptr noundef nonnull align 16 dereferenceable(16) %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  store i64 1, ptr %0, align 4
  br label %bb.ye

bb.lj:                                            ; preds = %bb.a
  %i.bly = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !1007, !nonnull !72, !align !111
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8WasmEdge8Executor8Executor10runStoreOpImLj16EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE:bb.a

bb.d:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor10runStoreOpImLj16EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvS1_EEE4typeERNS0_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlS6_E_JS1_EES6_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj16EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj16EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1521
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj16EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %7 = alloca %class.anon.244, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.d, align 16, !tbaa !93
  store ptr %i.d, ptr %i.b, align 8, !tbaa !99
  %.sroa.016.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64
  store i64 %.sroa.016.0.extract.trunc, ptr %i.a, align 8, !tbaa !94
  %i.e = load i8, ptr %3, align 8, !tbaa !158
  %i.f = icmp ult i8 %i.e, 4
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i13 = load i128, ptr %i.g, align 16, !tbaa !93
  store ptr %i.g, ptr %i.b, align 8, !tbaa !99
  %.sroa.014.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i13 to i64 ; 2 uses
  %.sroa.014.sroa.5.0.insert.shift = and i64 %.sroa.014.sroa.0.0.extract.trunc, -4294967296
  %i.h = and i64 %.sroa.014.sroa.0.0.extract.trunc, 4294967295
  %.sroa.014.sroa.0.0.insert.insert = select i1 %i.f, i64 0, i64 %.sroa.014.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.014.sroa.0.0.insert.insert, %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 4) #25
  %i.i = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %i.m, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %i.p = add i64 %i.o, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueImLj4EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS5_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.p) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.q = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1528, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1528
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit

bb.d:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvS1_EEE4typeERNS0_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlS6_E_JS1_EES6_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.t, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.s)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1528
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor10runStoreOpImLj32EEENSt9enable_ifIX16IsWasmNativeNumVIT_EES3_E4typeERNS1_7Runtime12StackManagerERNSC_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E_EEDaOS9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @_ZN8WasmEdge8Executor8Executor15runMemoryGrowOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor15runMemorySizeOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor15runMemoryInitOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceERNS5_12DataInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 16 dereferenceable(26)) local_unnamed_addr #3

declare noundef ptr @_ZNK8WasmEdge8Executor8Executor16getDataInstByIdxERNS_7Runtime12StackManagerEj(ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor13runDataDropOpERNS_7Runtime8Instance12DataInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor15runMemoryCopyOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceES7_RKNS_3AST11InstructionE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(26)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor15runMemoryFillOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(26)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge7Runtime12StackManager4pushINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !112
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !99
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backEOSD_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !112
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !112, !alias.scope !1532
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE11_S_relocateEPSD_SG_SG_RSE_.exit22.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !89
  store ptr %i.v, ptr %i.a, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !90
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backEOSD_.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE9push_backEOSD_.exit: ; preds = %bb.b, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EE17_M_realloc_insertIJSD_EEEvN9__gnu_cxx17__normal_iteratorIPSD_SF_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIfiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 3 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081933824, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call float @llvm.fabs.f32(float %i.d)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081933824, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call noundef float @llvm.trunc.f32(float %i.d) ; 3 uses
  %i.ca = fcmp uge float %i.bz, f0xCF000000
  %i.cb = fcmp ult float %i.bz, f0x4F000000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081933824, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptosi float %i.bz to i32
  store i32 %i.dl, ptr %3, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIfjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 3 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081933824, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call float @llvm.fabs.f32(float %i.d)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081933824, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call noundef float @llvm.trunc.f32(float %i.d) ; 3 uses
  %i.ca = fcmp uge float %i.bz, 0.000000e+00
  %i.cb = fcmp ult float %i.bz, f0x4F800000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081933824, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptoui float %i.bz to i32
  store i32 %i.dl, ptr %3, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIdiEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 3 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081868288, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.d)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081868288, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call double @llvm.trunc.f64(double %i.d) ; 3 uses
  %i.ca = fcmp olt double %i.bz, f0xC1E0000000000000
  %i.cb = fcmp ogt double %i.bz, f0x41DFFFFFFFC00000
  %or.cond = or i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081868288, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptosi double %i.bz to i32
  store i32 %i.dl, ptr %3, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIdjEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 3 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081868288, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.d)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081868288, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call double @llvm.trunc.f64(double %i.d) ; 3 uses
  %i.ca = fcmp olt double %i.bz, 0.000000e+00
  %i.cb = fcmp ogt double %i.bz, f0x41EFFFFFFFE00000
  %or.cond = or i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081868288, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptoui double %i.bz to i32
  store i32 %i.dl, ptr %3, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIflEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 3 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081933824, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call float @llvm.fabs.f32(float %i.d)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081933824, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call noundef float @llvm.trunc.f32(float %i.d) ; 3 uses
  %i.ca = fcmp uge float %i.bz, f0xDF000000
  %i.cb = fcmp ult float %i.bz, f0x5F000000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081933824, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptosi float %i.bz to i64
  store i64 %i.dl, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIfmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load float, ptr %3, align 16, !tbaa !135 ; 3 uses
  %i.e = fcmp uno float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081933824, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call float @llvm.fabs.f32(float %i.d)
  %i.ap = fcmp oeq float %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081933824, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call noundef float @llvm.trunc.f32(float %i.d) ; 3 uses
  %i.ca = fcmp uge float %i.bz, 0.000000e+00
  %i.cb = fcmp ult float %i.bz, f0x5F800000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081933824, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptoui float %i.bz to i64
  store i64 %i.dl, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIdlEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 3 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081868288, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.d)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081868288, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call double @llvm.trunc.f64(double %i.d) ; 3 uses
  %i.ca = fcmp uge double %i.bz, f0xC3E0000000000000
  %i.cb = fcmp ult double %i.bz, f0x43E0000000000000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081868288, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptosi double %i.bz to i64
  store i64 %i.dl, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor13runTruncateOpIdmEENSt9enable_ifIXaa12IsWasmFloatVIT_E10IsWasmIntVIT0_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %9 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %i.d = load double, ptr %3, align 16, !tbaa !137 ; 3 uses
  %i.e = fcmp uno double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1030, ptr %i.a, align 4, !tbaa !130
  %i.f = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %9, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 16, !tbaa !73
  %.sroa.0179.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.j to i64
  store i128 %.sroa.0179.0.copyload, ptr %i.k, align 16
  store i32 %i.h, ptr %10, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  store i64 1081868288, ptr %i.t, align 4, !tbaa !93
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i8 0, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %10)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1030, ptr %i.al, align 4, !tbaa !93
  br label %bb.z

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %10) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51, %bb.g
  %.pn43.pn = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit51 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.aa

bb.i:                                             ; preds = %bb.a
  %i.ao = tail call double @llvm.fabs.f64(double %i.d)
  %i.ap = fcmp oeq double %i.ao, +inf
  br i1 %i.ap, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.aq = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !73
  %.sroa.0157.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.av = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60 unwind label %bb.o ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60: ; preds = %bb.j
  %i.aw = zext i32 %i.au to i64
  store i128 %.sroa.0157.0.copyload, ptr %i.av, align 16
  store i32 %i.as, ptr %11, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !86
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i61 unwind label %bb.k ; 3 uses

.noexc5.i61:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.az, ptr noundef nonnull align 16 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.be = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74 unwind label %bb.k ; 3 uses

bb.k:                                             ; preds = %.noexc5.i61, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i60
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74: ; preds = %.noexc5.i61
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !88
  store i64 1081868288, ptr %i.be, align 4, !tbaa !93
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !126
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i8 0, ptr %i.bk, align 8, !tbaa !128
  %i.bl = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc75 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

.noexc75:                                         ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %11)
          to label %bb.l unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87

bb.l:                                             ; preds = %.noexc75
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79: ; preds = %bb.m, %bb.l
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i80 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i1.i80, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !90
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i79, %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.bw, align 4, !tbaa !93
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87: ; preds = %.noexc75, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit74
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %11) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 16) #26
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87, %bb.o
  %.pn40.pn = phi { ptr, i32 } [ %i.by, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit87 ], [ %i.bx, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aa

bb.q:                                             ; preds = %bb.i
  %i.bz = tail call double @llvm.trunc.f64(double %i.d) ; 3 uses
  %i.ca = fcmp uge double %i.bz, 0.000000e+00
  %i.cb = fcmp ult double %i.bz, f0x43F0000000000000
  %or.cond = and i1 %i.ca, %i.cb
  br i1 %or.cond, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 1029, ptr %i.c, align 4, !tbaa !130
  %i.cc = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cc, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %5, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !73
  %.sroa.0135.0.copyload = load i128, ptr %3, align 16, !tbaa !93
  %i.ch = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96 unwind label %bb.w ; 4 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96: ; preds = %bb.r
  %i.ci = zext i32 %i.cg to i64
  store i128 %.sroa.0135.0.copyload, ptr %i.ch, align 16
  store i32 %i.ce, ptr %12, align 8, !tbaa !85
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !86
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %.noexc5.i97 unwind label %bb.s ; 3 uses

.noexc5.i97:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !89
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110 unwind label %bb.s ; 3 uses

bb.s:                                             ; preds = %.noexc5.i97, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i96
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110: ; preds = %.noexc5.i97
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !87
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !88
  store i64 1081868288, ptr %i.cq, align 4, !tbaa !93
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !126
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 0, ptr %i.cw, align 8, !tbaa !128
  %i.cx = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc111 unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

.noexc111:                                        ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cx, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %12)
          to label %bb.t unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123

bb.t:                                             ; preds = %.noexc111
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i114, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !88
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dc) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115: ; preds = %bb.u, %bb.t
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i116 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i1.i116, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115
  %i.de = load ptr, ptr %i.co, align 8, !tbaa !90
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dh) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i115, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1029, ptr %i.di, align 4, !tbaa !93
  br label %bb.z

bb.w:                                             ; preds = %bb.r
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123: ; preds = %.noexc111, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit110
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %12) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 16) #26
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.dk, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit123 ], [ %i.dj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.aa

bb.y:                                             ; preds = %bb.q
  %i.dl = fptoui double %i.bz to i64
  store i64 %i.dl, ptr %3, align 16, !tbaa !94
  store i64 1, ptr %0, align 4
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit121, %bb.y, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit85, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void

bb.aa:                                            ; preds = %bb.x, %bb.p, %bb.h
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %bb.h ], [ %.pn40.pn, %bb.p ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn43.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor8runDivOpIiEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKNS_3AST11InstructionERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEERKSR_(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(26) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %10 = alloca [2 x %"class.WasmEdge::Variant"], align 16 ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 14 uses
  %12 = alloca [2 x %"class.WasmEdge::Variant"], align 16 ; 6 uses
  %i.c = load i32, ptr %4, align 16, !tbaa !98    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1028, ptr %i.a, align 4, !tbaa !130
  %i.e = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %8, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i32, ptr %i.h, align 16, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !112
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i unwind label %bb.g ; 5 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  store i64 1082064896, ptr %i.k, align 4
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1082064896, ptr %.sroa.595.0..sroa_idx, align 4
  store i32 %i.g, ptr %9, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc5.i unwind label %bb.c  ; 3 uses

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.o, ptr noundef nonnull align 16 dereferenceable(32) %10, i64 32, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.t = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %.noexc5.i, %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.noexc5.i
  store ptr %i.t, ptr %i.s, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  store ptr %i.x, ptr %i.w, align 8, !tbaa !126
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i8 1, ptr %i.z, align 8, !tbaa !128
  %i.aa = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit36

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.aa, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %9)
          to label %bb.d unwind label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit36

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !87  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !88
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !90
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1028, ptr %i.al, align 4, !tbaa !93
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit38

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit36: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %9) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit38

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit38: ; preds = %bb.g, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit36
  %.pn29 = phi { ptr, i32 } [ %i.an, %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit36 ], [ %i.am, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %3, align 16, !tbaa !98   ; 2 uses
  %i.ap = icmp eq i32 %i.ao, -2147483648
  %i.aq = icmp eq i32 %i.c, -1
  %or.cond = and i1 %i.aq, %i.ap
  br i1 %or.cond, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1029, ptr %i.b, align 4, !tbaa !130
  %i.ar = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load i32, ptr %i.au, align 16, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !112
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aw, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  %i.ax = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30
          to label %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i45 unwind label %bb.n ; 5 uses

_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i45: ; preds = %bb.i
  %i.ay = zext i32 %i.av to i64
  store i64 1082064896, ptr %i.ax, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 1082064896, ptr %.sroa.5.0..sroa_idx, align 4
  store i32 %i.at, ptr %11, align 8, !tbaa !85
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !86
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bb = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30
          to label %.noexc5.i46 unwind label %bb.j ; 3 uses

.noexc5.i46:                                      ; preds = %_ZNSt15__new_allocatorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEEE8allocateEmPKv.exit.i.i.i.i.i45
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !89
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !90
end_hunk_1
begin_hunk_2_@_ZN8WasmEdge8Executor8Executor14runStoreLaneOpIjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE:bb.a
  store i32 %i.h, ptr %i.a, align 4, !tbaa !98
  %i.i = load i8, ptr %3, align 8, !tbaa !158
  %i.j = icmp ult i8 %i.i, 4
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i15 = load i128, ptr %i.k, align 16, !tbaa !93
  store ptr %i.k, ptr %i.e, align 8, !tbaa !99
  %.sroa.016.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i15 to i64 ; 2 uses
  %.sroa.016.sroa.5.0.insert.shift = and i64 %.sroa.016.sroa.0.0.extract.trunc, -4294967296
  %i.l = and i64 %.sroa.016.sroa.0.0.extract.trunc, 4294967295
  %.sroa.016.sroa.0.0.insert.insert = select i1 %i.j, i64 0, i64 %.sroa.016.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.016.sroa.0.0.insert.insert, %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 4) #25
  %i.m = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = add i64 %i.s, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueIKjLj4EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS6_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.u = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1749, !noundef !72
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1749
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor14runStoreLaneOpIjEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.x, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %7 = alloca %class.anon.289, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !138
  %i.d = zext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.g, align 16, !tbaa !93
  store ptr %i.g, ptr %i.e, align 8, !tbaa !99
  %i.h = extractelement <2 x i64> %.sroa.0.0.copyload.i19, i32 %i.d
  store i64 %i.h, ptr %i.a, align 8, !tbaa !94
  %i.i = load i8, ptr %3, align 8, !tbaa !158
  %i.j = icmp ult i8 %i.i, 4
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i15 = load i128, ptr %i.k, align 16, !tbaa !93
  store ptr %i.k, ptr %i.e, align 8, !tbaa !99
  %.sroa.016.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i15 to i64 ; 2 uses
  %.sroa.016.sroa.5.0.insert.shift = and i64 %.sroa.016.sroa.0.0.extract.trunc, -4294967296
  %i.l = and i64 %.sroa.016.sroa.0.0.extract.trunc, 4294967295
  %.sroa.016.sroa.0.0.insert.insert = select i1 %i.j, i64 0, i64 %.sroa.016.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.016.sroa.0.0.insert.insert, %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 8) #25
  %i.m = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = add i64 %i.s, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueIKmLj8EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS6_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.u = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1756, !noundef !72
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1756
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.x, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorAllTrueOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <16 x i8>, ptr %2, align 16, !tbaa !93
  %.fr = freeze <16 x i8> %i.a
  %i.b = icmp eq <16 x i8> %.fr, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = icmp eq i16 %i.c, 0
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorBitMaskOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <16 x i8>, ptr %2, align 16, !tbaa !93
  %isneg = icmp slt <16 x i8> %i.a, zeroinitializer
  %i.b = select <16 x i1> %isneg, <16 x i16> <i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384, i16 -32768>, <16 x i16> zeroinitializer
  %i.c = tail call i16 @llvm.vector.reduce.or.v16i16(<16 x i16> %i.b)
  %i.d = zext i16 %i.c to i32
  store i32 %i.d, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorAllTrueOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !93
  %.fr = freeze <8 x i16> %i.a
  %i.b = icmp eq <8 x i16> %.fr, zeroinitializer
  %i.c = bitcast <8 x i1> %i.b to i8
  %i.d = icmp eq i8 %i.c, 0
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorBitMaskOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !93
  %isneg = icmp slt <8 x i16> %i.a, zeroinitializer
  %i.b = select <8 x i1> %isneg, <8 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <8 x i8> zeroinitializer
  %i.c = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.b)
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor19runVectorTruncSatOpIfiEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 16, !tbaa !93
  %i.b = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.a) ; 4 uses
  %i.c = fptosi <4 x float> %i.b to <4 x i32>
  %i.d = fcmp ord <4 x float> %i.b, zeroinitializer
  %i.e = fcmp ugt <4 x float> %i.b, splat (float f0xCF000000)
  %i.f = select <4 x i1> %i.d, <4 x i32> %i.c, <4 x i32> zeroinitializer
  %i.g = select <4 x i1> %i.e, <4 x i32> %i.f, <4 x i32> splat (i32 -2147483648)
  %i.h = fcmp ult <4 x float> %i.b, splat (float f0x4F000000)
  %i.i = select <4 x i1> %i.h, <4 x i32> %i.g, <4 x i32> splat (i32 2147483647)
  store <4 x i32> %i.i, ptr %2, align 16, !tbaa !93
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor19runVectorTruncSatOpIfjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 16, !tbaa !93
  %i.b = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.a) ; 3 uses
  %i.c = fcmp ogt <4 x float> %i.b, zeroinitializer
  %i.d = select <4 x i1> %i.c, <4 x float> %i.b, <4 x float> zeroinitializer
  %i.e = fptoui <4 x float> %i.d to <4 x i32>
  %i.f = fcmp oge <4 x float> %i.b, splat (float f0x4F800000)
  %i.g = select <4 x i1> %i.f, <4 x i32> splat (i32 -1), <4 x i32> %i.e
  store <4 x i32> %i.g, ptr %2, align 16, !tbaa !93
  store i64 1, ptr %0, align 4
  ret void
}

declare void @_ZN8WasmEdge8Executor8Executor16runMemoryFenceOpEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor17runAtomicNotifyOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(26)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.WasmEdge::ErrCode", align 4 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 11 uses
  %10 = alloca %"class.cxx20::expected.291", align 8 ; 3 uses
  %11 = alloca %"class.cxx20::expected.291", align 8 ; 5 uses
  %12 = alloca %class.anon.305, align 8           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.d, align 16, !tbaa !93
  store ptr %i.d, ptr %i.b, align 8, !tbaa !99
  %.sroa.047.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i21 = load i128, ptr %i.e, align 16, !tbaa !93
  store ptr %i.e, ptr %i.b, align 8, !tbaa !99
  %.sroa.046.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i21 to i32
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -48 ; 3 uses
  %i.g = load i8, ptr %3, align 8, !tbaa !158
  %i.h = icmp ult i8 %i.g, 4                      ; 2 uses
  %i.i = load i32, ptr %i.f, align 16
  %i.j = zext i32 %i.i to i64
  %i.k = load i64, ptr %i.f, align 16
  %.0.i = select i1 %i.h, i64 %i.j, i64 %i.k      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %8, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 4) #25
  %i.l = load i8, ptr %8, align 4, !tbaa !92, !range !71, !noundef !72
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93
  %i.s = add i64 %i.r, %.0.i                      ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.f, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1040, ptr %i.a, align 4, !tbaa !130
  %i.u = call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i32, ptr %i.x, align 16, !tbaa !73
  %i.z = zext i32 %i.y to i64
  store i32 %i.w, ptr %9, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ab, i8 0, i64 49, i1 false)
  %i.af = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %9)
          to label %bb.c unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !88
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1040, ptr %i.aq, align 4, !tbaa !93
  br label %bb.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %i.ar

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN8WasmEdge8Executor8Executor10atomicWaitIiEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.291") align 8 %11, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 noundef %i.s, i32 %.sroa.046.0.extract.trunc, i64 noundef %.sroa.047.0.extract.trunc) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %4, ptr %12, align 8, !tbaa !21
  %i.as = load i8, ptr %11, align 8, !tbaa !160, !range !71, !noalias !1771, !noundef !72
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load i64, ptr %i.au, align 8, !tbaa !94, !noalias !1771 ; 2 uses
  %.sroa.0.sroa.3.0.extract.shift.i.i.i.i.i.i.i = and i64 %i.av, -4294967296
  %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i.i = select i1 %i.h, i64 0, i64 %.sroa.0.sroa.3.0.extract.shift.i.i.i.i.i.i.i
  %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i = and i64 %i.av, 4294967295
  %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i to i128
  store i128 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i, ptr %i.f, align 16, !tbaa !93, !noalias !1772
  store i64 0, ptr %0, align 4, !alias.scope !1772
  br label %_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1773
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !93, !noalias !1774
  store i32 %i.aw, ptr %5, align 4, !tbaa !93, !noalias !1774
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @_ZZN8WasmEdge8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionEENKUlS4_E_clIS7_EEDaS4_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !93, !noalias !1772
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !93, !alias.scope !1772
  br label %_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit

_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i28 = phi i8 [ 1, %bb.g ], [ 0, %bb.h ]
  store i8 %.sink.i.i28, ptr %0, align 4, !tbaa !92, !alias.scope !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.i

end_hunk_2
