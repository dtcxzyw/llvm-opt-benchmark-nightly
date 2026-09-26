Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArrayPosition?download=true
inline.NumInlined: 10110
inline.NumDeleted: 2827
loop-unroll.NumCompletelyUnrolled: 120
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.hq:                                            ; preds = %bb.hp
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awh, i64 64
  %i.aws = load i32, ptr %i.awr, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hp
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awh, i64 8
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !283
  %sext.i.i.i.i.i.i.i.i.i24 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.awv = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i24, 30
  %i.aww = getelementptr inbounds i8, ptr %i.awu, i64 %i.awv
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.hr, %bb.hq, %bb.ho
  %.0.i.i.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.awx, %bb.hr ], [ %i.aws, %bb.hq ], [ %i.awi, %bb.ho ]
  %i.awy = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i25 to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.awk, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !98 ; 6 uses
  %i.axb = load ptr, ptr %.sroa.649.0..sroa_idx.i, align 8, !tbaa !902, !nonnull !114, !align !267 ; 5 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !329
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axb, i64 58
  %i.axf = load i8, ptr %i.axe, align 2, !tbaa !287, !range !113, !noundef !114
  %i.axg = trunc nuw i8 %i.axf to i1
  br i1 %i.axg, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27, label %bb.hs

bb.hs:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axb, i64 59
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !288, !range !113, !noundef !114
  %i.axj = trunc nuw i8 %i.axi to i1
  br i1 %i.axj, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axb, i64 64
  %i.axl = load i32, ptr %i.axk, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27

bb.hu:                                            ; preds = %bb.hs
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axb, i64 8
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !283
  %sext38.i.i.i.i.i.i.i.i.i26 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.axo = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i26, 30
  %i.axp = getelementptr inbounds i8, ptr %i.axn, i64 %i.axo
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27: ; preds = %bb.hu, %bb.ht, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i28 = phi i32 [ %i.axq, %bb.hu ], [ %i.axl, %bb.ht ], [ %i.awi, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.axr = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i28 to i64
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.axd, i64 %i.axr
  %i.axt = load i64, ptr %i.axs, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i64 %i.axt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.hv, label %bb.hy, !prof !105

bb.hv:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #35, !noalias !3342
  store i64 0, ptr %191, align 16, !tbaa !87, !noalias !3342
  store i32 0, ptr %i.avm, align 16, !tbaa !87, !alias.scope !3343, !noalias !3342
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %192, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %191)
          to label %.noexc.i.i.i.i.i.i.i.i108 unwind label %bb.il

.noexc.i.i.i.i.i.i.i.i108:                        ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %191) #35, !noalias !3342
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %192, ptr nonnull @.str.178) #38
          to label %bb.hw unwind label %bb.hx

bb.hw:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  unreachable

bb.hx:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i108
  %i.axu = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.axv = load ptr, ptr %192, align 8, !tbaa !106 ; 2 uses
  %i.axw = icmp eq ptr %i.axv, %i.avn
  br i1 %i.axw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109: ; preds = %bb.hx
  %i.axx = load i64, ptr %i.avn, align 8, !tbaa !87
  %i.axy = add i64 %i.axx, 1
  call void @_ZdlPvm(ptr noundef %i.axv, i64 noundef %i.axy) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i110: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %192) #35
  br label %.body.i.i.i.i.i.i.i.i52

bb.hy:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i27
  %i.axz = load ptr, ptr %.sroa.750.0..sroa_idx.i, align 8, !tbaa !903, !nonnull !114, !align !267
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !281
  %i.ayb = load ptr, ptr %.sroa.851.0..sroa_idx.i, align 8, !tbaa !904, !nonnull !114, !align !333 ; 2 uses
  %i.ayc = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !905, !nonnull !114, !align !333 ; 2 uses
  %i.ayd = load ptr, ptr %.sroa.1053.0..sroa_idx.i, align 8, !tbaa !906, !nonnull !114, !align !333
  %sext39.i.i.i.i.i.i.i.i.i30 = shl i64 %.074.i.i.i.i.i.i.i.i, 32
  %i.aye = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i30, 32 ; 3 uses
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.awb, i64 %i.aye
  %i.ayg = load i32, ptr %i.ayf, align 4, !tbaa !98
  %i.ayh = sext i32 %i.ayg to i64
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.aya, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !98 ; 2 uses
  %i.ayk = icmp sgt i64 %i.axt, 0                 ; 3 uses
  %i.ayl = add nsw i32 %i.ayj, -1
  %i.aym = select i1 %i.ayk, i32 0, i32 %i.ayl
  store i32 %i.aym, ptr %i.ayb, align 4, !tbaa !98
  %i.ayn = select i1 %i.ayk, i32 %i.ayj, i32 -1
  store i32 %i.ayn, ptr %i.ayc, align 4, !tbaa !98
  %i.ayo = select i1 %i.ayk, i32 1, i32 -1        ; 15 uses
  store i32 %i.ayo, ptr %i.ayd, align 4, !tbaa !98
  %i.ayp = call noundef i64 @llvm.abs.i64(i64 %i.axt, i1 true) ; 10 uses
  %i.ayq = load i32, ptr %i.ayb, align 4, !tbaa !98 ; 14 uses
  %i.ayr = load i32, ptr %i.ayc, align 4, !tbaa !98 ; 20 uses
  %.not1642.i.i.i.i.i.i.i.i.i31 = icmp eq i32 %i.ayq, %i.ayr
  br i1 %.not1642.i.i.i.i.i.i.i.i.i31, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i.i.i.i32:                       ; preds = %bb.hy
  %i.ays = load ptr, ptr %.sroa.11.0..sroa_idx.i4, align 8, !tbaa !907, !nonnull !114, !align !267 ; 7 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 24
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i33 = icmp eq ptr %i.ayu, null
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ays, i64 59 ; 3 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ays, i64 8 ; 3 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ays, i64 16 ; 4 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ays, i64 58
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ays, i64 64 ; 3 uses
  %i.aza = load i8, ptr %i.ayy, align 2, !tbaa !287, !range !113, !noundef !114
  %i.azb = trunc nuw i8 %i.aza to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i33, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102, label %.lr.ph.split.i.i.i.i.i.i.i.i.i34

.lr.ph.split.us.i.i.i.i.i.i.i.i.i102:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i32
  %i.azc = load ptr, ptr %i.ayx, align 8, !tbaa !329 ; 3 uses
  br i1 %i.azb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azd = sext i32 %i.ayq to i64
  %i.aze = sext i32 %i.ayo to i64
  %i.azf = sext i32 %i.awg to i64
  %invariant.gep198.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.azc, i64 %i.azf
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv160.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next161.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03543.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ayp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.us.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep199.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep198.i.i.i.i.i.i.i.i.i, i64 %indvars.iv160.i.i.i.i.i.i.i.i.i
  %i.azg = load i32, ptr %gep199.i.i.i.i.i.i.i.i.i, align 4, !tbaa !98
  %i.azh = icmp eq i32 %i.azg, %i.axa
  br i1 %i.azh, label %bb.hz, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

bb.hz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %i.azi = add nsw i64 %.03543.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.azj = icmp eq i64 %i.azi, 0
  br i1 %i.azj, label %.split46.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.us.i.i.i.i.i.i.i.i.i

.critedge.us.us.i.i.i.i.i.i.i.i.i:                ; preds = %bb.hz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i
  %.1.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.03543.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i ], [ %i.azi, %bb.hz ]
  %indvars.iv.next161.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i, %i.aze ; 2 uses
  %i.azk = trunc nsw i64 %indvars.iv.next161.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ayr, %i.azk
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3090

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i102
  %i.azl = load i8, ptr %i.ayv, align 1, !tbaa !288, !range !113, !noundef !114
  %i.azm = trunc nuw i8 %i.azl to i1
  br i1 %i.azm, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.azn = load i32, ptr %i.ayz, align 8, !tbaa !330
  %i.azo = sext i32 %i.azn to i64
  %i.azp = getelementptr inbounds [4 x i8], ptr %i.azc, i64 %i.azo
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !98
  %i.azr = icmp eq i32 %i.azq, %i.axa
  br i1 %i.azr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i
  %i.azs = trunc i64 %i.ayp to i32
  %i.azt = add i32 %i.azs, -1
  %i.azu = mul i32 %i.azt, %i.ayo
  %i.azv = add i32 %i.ayq, %i.azu                 ; 3 uses
  %i.azw = add nsw i64 %i.ayp, -1                 ; 5 uses
  %i.azx = icmp eq i64 %i.azw, 0
  br i1 %i.azx, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5751 = icmp samesign ult i64 %i.ayp, 33
  br i1 %min.iters.check5751, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5752

vector.ph5752:                                    ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5753 = and i64 %i.azw, -32                ; 3 uses
  %i.azy = and i64 %i.azw, 31
  %i.azz = trunc i64 %n.vec5753 to i32
  %i.baa = mul i32 %i.ayo, %i.azz
  %i.bab = add i32 %i.ayq, %i.baa
  %broadcast.splatinsert5754 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5755 = shufflevector <32 x i32> %broadcast.splatinsert5754, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5756 = insertelement <32 x i32> poison, i32 %i.ayo, i64 0
  %broadcast.splat5757 = shufflevector <32 x i32> %broadcast.splatinsert5756, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5758 = insertelement <32 x i32> poison, i32 %i.ayq, i64 0
  %broadcast.splat5759 = shufflevector <32 x i32> %broadcast.splatinsert5758, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bac = mul nsw <32 x i32> %broadcast.splat5757, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5760 = add nsw <32 x i32> %broadcast.splat5759, %i.bac
  %i.bad = shl nsw i32 %i.ayo, 5
  %broadcast.splatinsert5761 = insertelement <32 x i32> poison, i32 %i.bad, i64 0
  %broadcast.splat5762 = shufflevector <32 x i32> %broadcast.splatinsert5761, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5763

vector.body5763:                                  ; preds = %vector.body.interim5768, %vector.ph5752
  %index5764 = phi i64 [ 0, %vector.ph5752 ], [ %index.next5766, %vector.body.interim5768 ]
  %vec.ind5765 = phi <32 x i32> [ %induction5760, %vector.ph5752 ], [ %vec.ind.next5767, %vector.body.interim5768 ] ; 2 uses
  %i.bae = add nsw <32 x i32> %vec.ind5765, %broadcast.splat5757
  %i.baf = icmp eq <32 x i32> %i.bae, %broadcast.splat5755
  %i.bag = freeze <32 x i1> %i.baf
  %i.bah = bitcast <32 x i1> %i.bag to i32
  %.not5836 = icmp eq i32 %i.bah, 0
  br i1 %.not5836, label %vector.body.interim5768, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5768:                          ; preds = %vector.body5763
  %vec.ind.next5767 = add nsw <32 x i32> %vec.ind5765, %broadcast.splat5762
  %index.next5766 = add nuw i64 %index5764, 32    ; 2 uses
  %i.bai = icmp eq i64 %index.next5766, %n.vec5753
  br i1 %i.bai, label %middle.block5769, label %vector.body5763, !llvm.loop !3091

middle.block5769:                                 ; preds = %vector.body.interim5768
  %cmp.n5770 = icmp eq i64 %i.azw, %n.vec5753
  br i1 %cmp.n5770, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5769
  %.ph5869 = phi i64 [ %i.azw, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.azy, %middle.block5769 ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i5423.ph = phi i32 [ %i.ayq, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bab, %middle.block5769 ]
  br label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i
  %i.baj = add nsw i64 %i.bal, -1                 ; 2 uses
  %i.bak = icmp eq i64 %i.baj, 0
  br i1 %i.bak, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3092

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i
  %i.bal = phi i64 [ %i.baj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i ], [ %.ph5869, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i5423 = phi i32 [ %i.bam, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i ], [ %.044.us.us99.us.i.i.i.i.i.i.i.i.i5423.ph, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bam = add nsw i32 %.044.us.us99.us.i.i.i.i.i.i.i.i.i5423, %i.ayo ; 2 uses
  %.not16.us.us105.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bam, %i.ayr
  br i1 %.not16.us.us105.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3090

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i:    ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i
  %i.ban = load ptr, ptr %i.ayw, align 8, !tbaa !283
  %i.bao = sext i32 %i.ayq to i64
  %i.bap = sext i32 %i.ayo to i64
  %i.baq = sext i32 %i.awg to i64
  %invariant.gep196.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.ban, i64 %i.baq
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i105, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i
  %indvars.iv157.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.bao, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03543.us.i.i.i.i.i.i.i.i.i104 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i106, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ayp, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %gep197.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i.i.i.i.i.i.i, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i
  %i.bar = load i32, ptr %gep197.i.i.i.i.i.i.i.i.i, align 4, !tbaa !98
  %i.bas = sext i32 %i.bar to i64
  %i.bat = getelementptr inbounds [4 x i8], ptr %i.azc, i64 %i.bas
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !98
  %i.bav = icmp eq i32 %i.bau, %i.axa
  br i1 %i.bav, label %bb.ia, label %.critedge.us.i.i.i.i.i.i.i.i.i105

bb.ia:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %i.baw = add nsw i64 %.03543.us.i.i.i.i.i.i.i.i.i104, -1 ; 2 uses
  %i.bax = icmp eq i64 %i.baw, 0
  br i1 %i.bax, label %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i105

.critedge.us.i.i.i.i.i.i.i.i.i105:                ; preds = %bb.ia, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103
  %.1.us.i.i.i.i.i.i.i.i.i106 = phi i64 [ %.03543.us.i.i.i.i.i.i.i.i.i104, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103 ], [ %i.baw, %bb.ia ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i, %i.bap ; 2 uses
  %i.bay = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i107 = icmp eq i32 %i.ayr, %i.bay
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i107, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i103, !llvm.loop !3090

.lr.ph.split.i.i.i.i.i.i.i.i.i34:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i32
  %i.baz = getelementptr inbounds nuw i8, ptr %i.ays, i64 57
  %i.bba = load i8, ptr %i.baz, align 1, !range !113
  %i.bbb = trunc nuw i8 %i.bba to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i35 = select i1 %i.azb, i1 true, i1 %i.bbb
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i35, label %.split.us.preheader.i.i.i.i.i.i.i.i.i93, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i36

.split.us.preheader.i.i.i.i.i.i.i.i.i93:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i34
  %i.bbc = sext i32 %i.ayq to i64
  %i.bbd = sext i32 %i.ayo to i64
  %i.bbe = sext i32 %i.awg to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i94

.split.us.i.i.i.i.i.i.i.i.i94:                    ; preds = %.critedge.us53.i.i.i.i.i.i.i.i.i99, %.split.us.preheader.i.i.i.i.i.i.i.i.i93
  %indvars.iv154.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbc, %.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i, %.critedge.us53.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %.03543.us49.i.i.i.i.i.i.i.i.i95 = phi i64 [ %i.ayp, %.split.us.preheader.i.i.i.i.i.i.i.i.i93 ], [ %.1.us54.i.i.i.i.i.i.i.i.i100, %.critedge.us53.i.i.i.i.i.i.i.i.i99 ] ; 3 uses
  %i.bbf = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i, %i.bbe ; 4 uses
  %i.bbg = lshr i64 %i.bbf, 6
  %i.bbh = and i64 %i.bbg, 67108863
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.bbh
  %i.bbj = load i64, ptr %i.bbi, align 8, !tbaa !147
  %i.bbk = and i64 %i.bbf, 63
  %i.bbl = shl nuw i64 1, %i.bbk
  %i.bbm = and i64 %i.bbl, %i.bbj
  %.not.i.i.us.i.i.i.i.i.i.i.i.i96 = icmp eq i64 %i.bbm, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i96, label %.critedge.us53.i.i.i.i.i.i.i.i.i99, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i97

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i97: ; preds = %.split.us.i.i.i.i.i.i.i.i.i94
  %i.bbn = trunc nsw i64 %i.bbf to i32
  %i.bbo = load ptr, ptr %i.ayx, align 8, !tbaa !329
  br i1 %i.azb, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i97
  %i.bbp = load i8, ptr %i.ayv, align 1, !tbaa !288, !range !113, !noundef !114
  %i.bbq = trunc nuw i8 %i.bbp to i1
  br i1 %i.bbq, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.bbr = load ptr, ptr %i.ayw, align 8, !tbaa !283
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bbf
  %i.bbt = load i32, ptr %i.bbs, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

bb.id:                                            ; preds = %bb.ib
  %i.bbu = load i32, ptr %i.ayz, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i: ; preds = %bb.id, %bb.ic, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i97
  %.0.i.i19.us52.i.i.i.i.i.i.i.i.i98 = phi i32 [ %i.bbt, %bb.ic ], [ %i.bbu, %bb.id ], [ %i.bbn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i97 ]
  %i.bbv = sext i32 %.0.i.i19.us52.i.i.i.i.i.i.i.i.i98 to i64
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.bbo, i64 %i.bbv
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !98
  %i.bby = icmp eq i32 %i.bbx, %i.axa
  br i1 %i.bby, label %bb.ie, label %.critedge.us53.i.i.i.i.i.i.i.i.i99

bb.ie:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i
  %i.bbz = add nsw i64 %.03543.us49.i.i.i.i.i.i.i.i.i95, -1 ; 2 uses
  %i.bca = icmp eq i64 %i.bbz, 0
  br i1 %i.bca, label %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i, label %.critedge.us53.i.i.i.i.i.i.i.i.i99

.critedge.us53.i.i.i.i.i.i.i.i.i99:               ; preds = %bb.ie, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i94
  %.1.us54.i.i.i.i.i.i.i.i.i100 = phi i64 [ %.03543.us49.i.i.i.i.i.i.i.i.i95, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us51.i.i.i.i.i.i.i.i.i ], [ %i.bbz, %bb.ie ], [ %.03543.us49.i.i.i.i.i.i.i.i.i95, %.split.us.i.i.i.i.i.i.i.i.i94 ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i, %i.bbd ; 2 uses
  %i.bcb = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i to i32
  %.not16.us55.i.i.i.i.i.i.i.i.i101 = icmp eq i32 %i.ayr, %i.bcb
  br i1 %.not16.us55.i.i.i.i.i.i.i.i.i101, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.split.us.i.i.i.i.i.i.i.i.i94, !llvm.loop !3090

.lr.ph.split.split.i.i.i.i.i.i.i.i.i36:           ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i34
  %i.bcc = load i8, ptr %i.ayv, align 1, !tbaa !288, !range !113, !noundef !114
  %i.bcd = trunc nuw i8 %i.bcc to i1
  br i1 %i.bcd, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i37

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91:  ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i36
  %i.bce = load i64, ptr %i.ayu, align 8, !tbaa !147
  %i.bcf = and i64 %i.bce, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i92 = icmp eq i64 %i.bcf, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i92, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91
  %i.bcg = load ptr, ptr %i.ayx, align 8, !tbaa !329
  %i.bch = load i32, ptr %i.ayz, align 8, !tbaa !330
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = getelementptr inbounds [4 x i8], ptr %i.bcg, i64 %i.bci
  %i.bck = load i32, ptr %i.bcj, align 4, !tbaa !98
  %i.bcl = icmp eq i32 %i.bck, %i.axa
  br i1 %i.bcl, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i
  %i.bcm = trunc i64 %i.ayp to i32
  %i.bcn = add i32 %i.bcm, -1
  %i.bco = mul i32 %i.bcn, %i.ayo
  %i.bcp = add i32 %i.ayq, %i.bco                 ; 3 uses
  %i.bcq = add nsw i64 %i.ayp, -1                 ; 5 uses
  %i.bcr = icmp eq i64 %i.bcq, 0
  br i1 %i.bcr, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5775 = icmp samesign ult i64 %i.ayp, 33
  br i1 %min.iters.check5775, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5776

vector.ph5776:                                    ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5777 = and i64 %i.bcq, -32                ; 3 uses
  %i.bcs = and i64 %i.bcq, 31
  %i.bct = trunc i64 %n.vec5777 to i32
  %i.bcu = mul i32 %i.ayo, %i.bct
  %i.bcv = add i32 %i.ayq, %i.bcu
  %broadcast.splatinsert5778 = insertelement <32 x i32> poison, i32 %i.ayr, i64 0
  %broadcast.splat5779 = shufflevector <32 x i32> %broadcast.splatinsert5778, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5780 = insertelement <32 x i32> poison, i32 %i.ayo, i64 0
  %broadcast.splat5781 = shufflevector <32 x i32> %broadcast.splatinsert5780, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5782 = insertelement <32 x i32> poison, i32 %i.ayq, i64 0
  %broadcast.splat5783 = shufflevector <32 x i32> %broadcast.splatinsert5782, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.bcw = mul nsw <32 x i32> %broadcast.splat5781, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5784 = add nsw <32 x i32> %broadcast.splat5783, %i.bcw
  %i.bcx = shl nsw i32 %i.ayo, 5
  %broadcast.splatinsert5785 = insertelement <32 x i32> poison, i32 %i.bcx, i64 0
  %broadcast.splat5786 = shufflevector <32 x i32> %broadcast.splatinsert5785, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5787

vector.body5787:                                  ; preds = %vector.body.interim5792, %vector.ph5776
  %index5788 = phi i64 [ 0, %vector.ph5776 ], [ %index.next5790, %vector.body.interim5792 ]
  %vec.ind5789 = phi <32 x i32> [ %induction5784, %vector.ph5776 ], [ %vec.ind.next5791, %vector.body.interim5792 ] ; 2 uses
  %i.bcy = add nsw <32 x i32> %vec.ind5789, %broadcast.splat5781
  %i.bcz = icmp eq <32 x i32> %i.bcy, %broadcast.splat5779
  %i.bda = freeze <32 x i1> %i.bcz
  %i.bdb = bitcast <32 x i1> %i.bda to i32
  %.not5835 = icmp eq i32 %i.bdb, 0
  br i1 %.not5835, label %vector.body.interim5792, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

vector.body.interim5792:                          ; preds = %vector.body5787
  %vec.ind.next5791 = add nsw <32 x i32> %vec.ind5789, %broadcast.splat5786
  %index.next5790 = add nuw i64 %index5788, 32    ; 2 uses
  %i.bdc = icmp eq i64 %index.next5790, %n.vec5777
  br i1 %i.bdc, label %middle.block5793, label %vector.body5787, !llvm.loop !3093

middle.block5793:                                 ; preds = %vector.body.interim5792
  %cmp.n5794 = icmp eq i64 %i.bcq, %n.vec5777
  br i1 %cmp.n5794, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5793
  %.ph5874 = phi i64 [ %i.bcq, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcs, %middle.block5793 ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i5422.ph = phi i32 [ %i.ayq, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.bcv, %middle.block5793 ]
  br label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i
  %i.bdd = add nsw i64 %i.bdf, -1                 ; 2 uses
  %i.bde = icmp eq i64 %i.bdd, 0
  br i1 %i.bde, label %.split46.us.i.i.i.i.i.i.i.i.i82, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3094

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i
  %i.bdf = phi i64 [ %i.bdd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.ph5874, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i5422 = phi i32 [ %i.bdg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ], [ %.044.us60.us83.us.i.i.i.i.i.i.i.i.i5422.ph, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bdg = add nsw i32 %.044.us60.us83.us.i.i.i.i.i.i.i.i.i5422, %i.ayo ; 2 uses
  %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bdg, %i.ayr
  br i1 %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3090

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i37:     ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i36
  %i.bdh = load ptr, ptr %i.ayw, align 8, !tbaa !283
  %i.bdi = sext i32 %i.ayq to i64
  %i.bdj = sext i32 %i.ayo to i64
  %i.bdk = sext i32 %i.awg to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i38 = getelementptr [4 x i8], ptr %i.bdh, i64 %i.bdk
  br label %.split37.i.i.i.i.i.i.i.i.i39

.split37.i.i.i.i.i.i.i.i.i39:                     ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i37
  %indvars.iv.i.i.i.i.i.i.i.i.i40 = phi i64 [ %i.bdi, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i37 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i46, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %.03543.i.i.i.i.i.i.i.i.i41 = phi i64 [ %i.ayp, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i37 ], [ %.1.i.i.i.i.i.i.i.i.i45, %.critedge.i.i.i.i.i.i.i.i.i44 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i42 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i38, i64 %indvars.iv.i.i.i.i.i.i.i.i.i40
  %i.bdl = load i32, ptr %gep.i.i.i.i.i.i.i.i.i42, align 4, !tbaa !98 ; 2 uses
  %i.bdm = zext i32 %i.bdl to i64                 ; 2 uses
  %i.bdn = lshr i64 %i.bdm, 6
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.ayu, i64 %i.bdn
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !147
  %i.bdq = and i64 %i.bdm, 63
  %i.bdr = shl nuw i64 1, %i.bdq
  %i.bds = and i64 %i.bdr, %i.bdp
  %.not.i7.i.i.i.i.i.i.i.i.i.i43 = icmp eq i64 %i.bds, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i43, label %.critedge.i.i.i.i.i.i.i.i.i44, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %.split37.i.i.i.i.i.i.i.i.i39
  %i.bdt = load ptr, ptr %i.ayx, align 8, !tbaa !329
  %i.bdu = sext i32 %i.bdl to i64
  %i.bdv = getelementptr inbounds [4 x i8], ptr %i.bdt, i64 %i.bdu
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !98
  %i.bdx = icmp eq i32 %i.bdw, %i.axa
  br i1 %i.bdx, label %bb.if, label %.critedge.i.i.i.i.i.i.i.i.i44

bb.if:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.bdy = add nsw i64 %.03543.i.i.i.i.i.i.i.i.i41, -1 ; 2 uses
  %i.bdz = icmp eq i64 %i.bdy, 0
  br i1 %i.bdz, label %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i44

.split46.us.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.hz
  %i.bea = trunc nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i82

.split46.us.loopexit115.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ia
  %i.beb = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i82

.split46.us.loopexit117.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ie
  %i.bec = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i82

.split46.us.loopexit127.i.i.i.i.i.i.i.i.i:        ; preds = %bb.if
  %i.bed = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i82

.split46.us.i.i.i.i.i.i.i.i.i82:                  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5793, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5769, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i83 = phi i32 [ %i.bec, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i ], [ %i.bed, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i ], [ %i.bea, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.beb, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i ], [ %i.azv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.azv, %middle.block5769 ], [ %i.bcp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.bcp, %middle.block5793 ], [ %i.azv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i ], [ %i.bcp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bee = load ptr, ptr %.sroa.12.0..sroa_idx.i5, align 8, !tbaa !908, !nonnull !114, !align !267 ; 5 uses
  %i.bef = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i83, 1
  %i.beg = sext i32 %i.bef to i64
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bee, i64 144 ; 2 uses
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !309 ; 2 uses
  %i.bej = icmp eq ptr %i.bei, null
  br i1 %i.bej, label %bb.ig, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

bb.ig:                                            ; preds = %.split46.us.i.i.i.i.i.i.i.i.i82
  %i.bek = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bee)
          to label %.noexc19.i.i.i.i.i.i.i.i89 unwind label %bb.il ; 0 uses

.noexc19.i.i.i.i.i.i.i.i89:                       ; preds = %bb.ig
  %.pre.i.i.i.i.i.i.i.i.i.i90 = load ptr, ptr %i.beh, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84: ; preds = %.noexc19.i.i.i.i.i.i.i.i89, %.split46.us.i.i.i.i.i.i.i.i.i82
  %i.bel = phi ptr [ %i.bei, %.split46.us.i.i.i.i.i.i.i.i.i82 ], [ %.pre.i.i.i.i.i.i.i.i.i.i90, %.noexc19.i.i.i.i.i.i.i.i89 ]
  %i.bem = getelementptr inbounds [8 x i8], ptr %i.bel, i64 %i.aye
  store i64 %i.beg, ptr %i.bem, align 8, !tbaa !147
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bee, i64 32 ; 2 uses
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !310
  %.not.i21.i.i.i.i.i.i.i.i.i85 = icmp eq ptr %i.beo, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i85, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %bb.ih

bb.ih:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bee, i64 56
  %i.beq = load i32, ptr %i.bep, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.bee, i32 noundef %i.beq, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i86 unwind label %bb.il

.noexc20.i.i.i.i.i.i.i.i86:                       ; preds = %bb.ih
  %i.ber = load ptr, ptr %i.ben, align 8, !tbaa !310 ; 2 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 44
  %i.bet = load i8, ptr %i.bes, align 4, !tbaa !315
  %i.beu = and i8 %i.bet, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i87 = icmp eq i8 %i.beu, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i87, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, label %.invoke.i.i.i.i.i.i.i.i77, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88: ; preds = %.noexc20.i.i.i.i.i.i.i.i86
  %i.bev = getelementptr inbounds nuw i8, ptr %i.ber, i64 16
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !316
  %i.bex = lshr i64 %.074.i.i.i.i.i.i.i.i, 3
  %i.bey = and i64 %i.bex, 536870911
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.bey ; 2 uses
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !87
  %i.bfb = trunc i64 %.074.i.i.i.i.i.i.i.i to i8
  %i.bfc = and i8 %i.bfb, 7
  %i.bfd = shl nuw i8 1, %i.bfc
  %i.bfe = or i8 %i.bfa, %i.bfd
  store i8 %i.bfe, ptr %i.bez, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48

.critedge.i.i.i.i.i.i.i.i.i44:                    ; preds = %bb.if, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i, %.split37.i.i.i.i.i.i.i.i.i39
  %.1.i.i.i.i.i.i.i.i.i45 = phi i64 [ %.03543.i.i.i.i.i.i.i.i.i41, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.bdy, %bb.if ], [ %.03543.i.i.i.i.i.i.i.i.i41, %.split37.i.i.i.i.i.i.i.i.i39 ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i46 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i40, %i.bdj ; 2 uses
  %i.bff = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i46 to i32
  %.not16.i.i.i.i.i.i.i.i.i47 = icmp eq i32 %i.ayr, %i.bff
  br i1 %.not16.i.i.i.i.i.i.i.i.i47, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48, label %.split37.i.i.i.i.i.i.i.i.i39, !llvm.loop !3090

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48: ; preds = %.critedge.i.i.i.i.i.i.i.i.i44, %vector.body5787, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i, %.critedge.us53.i.i.i.i.i.i.i.i.i99, %.critedge.us.i.i.i.i.i.i.i.i.i105, %vector.body5763, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i, %bb.hy
  %.041.i.i.i.i.i.i.i.i.i49 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i84 ], [ %.us-phi.i.i.i.i.i.i.i.i.i83, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i88 ], [ %i.ayq, %bb.hy ], [ %i.ayr, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i ], [ %i.ayr, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i ], [ %i.ayr, %.critedge.us53.i.i.i.i.i.i.i.i.i99 ], [ %i.ayr, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayr, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i ], [ %i.ayr, %vector.body5763 ], [ %i.ayr, %.critedge.us.us.i.i.i.i.i.i.i.i.i ], [ %i.ayr, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i91 ], [ %i.ayr, %vector.body5787 ], [ %i.ayr, %.critedge.us.i.i.i.i.i.i.i.i.i105 ], [ %i.ayr, %.critedge.i.i.i.i.i.i.i.i.i44 ]
  %i.bfg = load ptr, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !905, !nonnull !114, !align !333
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !98
  %i.bfi = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i49, %i.bfh
  br i1 %i.bfi, label %bb.ii, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.ii:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i48
  %i.bfj = load ptr, ptr %.sroa.12.0..sroa_idx.i5, align 8, !tbaa !908, !nonnull !114, !align !267 ; 5 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfj, i64 144 ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !309 ; 2 uses
  %i.bfm = icmp eq ptr %i.bfl, null
  br i1 %i.bfm, label %bb.ij, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

bb.ij:                                            ; preds = %bb.ii
  %i.bfn = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bfj)
          to label %.noexc22.i.i.i.i.i.i.i.i80 unwind label %bb.il ; 0 uses

.noexc22.i.i.i.i.i.i.i.i80:                       ; preds = %bb.ij
  %.pre.i26.i.i.i.i.i.i.i.i.i81 = load ptr, ptr %i.bfk, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50: ; preds = %.noexc22.i.i.i.i.i.i.i.i80, %bb.ii
  %i.bfo = phi ptr [ %i.bfl, %bb.ii ], [ %.pre.i26.i.i.i.i.i.i.i.i.i81, %.noexc22.i.i.i.i.i.i.i.i80 ]
  %i.bfp = getelementptr inbounds [8 x i8], ptr %i.bfo, i64 %i.aye
  store i64 0, ptr %i.bfp, align 8, !tbaa !147
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfj, i64 32 ; 2 uses
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !310
  %.not.i23.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.bfr, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i51, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i50
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfj, i64 56
  %i.bft = load i32, ptr %i.bfs, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.bfj, i32 noundef %i.bft, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i75 unwind label %bb.il

.noexc23.i.i.i.i.i.i.i.i75:                       ; preds = %bb.ik
  %i.bfu = load ptr, ptr %i.bfq, align 8, !tbaa !310 ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 44
  %i.bfw = load i8, ptr %i.bfv, align 4, !tbaa !315
  %i.bfx = and i8 %i.bfw, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i76 = icmp eq i8 %i.bfx, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i76, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i79, label %.invoke.i.i.i.i.i.i.i.i77, !prof !112

.invoke.i.i.i.i.i.i.i.i77:                        ; preds = %.noexc23.i.i.i.i.i.i.i.i75, %.noexc20.i.i.i.i.i.i.i.i86
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i78 unwind label %bb.il

.cont.i.i.i.i.i.i.i.i78:                          ; preds = %.invoke.i.i.i.i.i.i.i.i77
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i79: ; preds = %.noexc23.i.i.i.i.i.i.i.i75
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfu, i64 16
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !316
  %i.bga = lshr i64 %.074.i.i.i.i.i.i.i.i, 3
  %i.bgb = and i64 %i.bga, 536870911
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgb ; 2 uses
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !87
  %i.bge = trunc i64 %.074.i.i.i.i.i.i.i.i to i8
  %i.bgf = and i8 %i.bge, 7
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.mz:                                            ; preds = %bb.my
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.bzb, i64 64
  %i.bzm = load i32, ptr %i.bzl, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

bb.na:                                            ; preds = %bb.my
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzb, i64 8
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !283
  %sext.i.i.i.i.i.i.i.i.i274 = shl i64 %.074.i.i.i.i.i.i.i.i273, 32
  %i.bzp = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i274, 30
  %i.bzq = getelementptr inbounds i8, ptr %i.bzo, i64 %i.bzp
  %i.bzr = load i32, ptr %i.bzq, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.na, %bb.mz, %bb.mx
  %.0.i.i.i.i.i.i.i.i.i.i.i275 = phi i32 [ %i.bzr, %bb.na ], [ %i.bzm, %bb.mz ], [ %i.bzc, %bb.mx ]
  %i.bzs = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i275 to i64
  %i.bzt = getelementptr inbounds i8, ptr %i.bze, i64 %i.bzs
  %i.bzu = load i8, ptr %i.bzt, align 1, !tbaa !87 ; 6 uses
  %i.bzv = load ptr, ptr %.sroa.649.0..sroa_idx.i244, align 8, !tbaa !913, !nonnull !114, !align !267 ; 5 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.bzv, i64 16
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !329
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzv, i64 58
  %i.bzz = load i8, ptr %i.bzy, align 2, !tbaa !287, !range !113, !noundef !114
  %i.caa = trunc nuw i8 %i.bzz to i1
  br i1 %i.caa, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277, label %bb.nb

bb.nb:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzv, i64 59
  %i.cac = load i8, ptr %i.cab, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cad = trunc nuw i8 %i.cac to i1
  br i1 %i.cad, label %bb.nc, label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  %i.cae = getelementptr inbounds nuw i8, ptr %i.bzv, i64 64
  %i.caf = load i32, ptr %i.cae, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277

bb.nd:                                            ; preds = %bb.nb
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzv, i64 8
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !283
  %sext38.i.i.i.i.i.i.i.i.i276 = shl i64 %.074.i.i.i.i.i.i.i.i273, 32
  %i.cai = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i276, 30
  %i.caj = getelementptr inbounds i8, ptr %i.cah, i64 %i.cai
  %i.cak = load i32, ptr %i.caj, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277: ; preds = %bb.nd, %bb.nc, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i278 = phi i32 [ %i.cak, %bb.nd ], [ %i.caf, %bb.nc ], [ %i.bzc, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.cal = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i278 to i64
  %i.cam = getelementptr inbounds [8 x i8], ptr %i.bzx, i64 %i.cal
  %i.can = load i64, ptr %i.cam, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i279 = icmp eq i64 %i.can, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i279, label %bb.ne, label %bb.nh, !prof !105

bb.ne:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277
  call void @llvm.lifetime.start.p0(ptr nonnull %175) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %174) #35, !noalias !3346
  store i64 0, ptr %174, align 16, !tbaa !87, !noalias !3346
  store i32 0, ptr %i.byg, align 16, !tbaa !87, !alias.scope !3347, !noalias !3346
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %175, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %174)
          to label %.noexc.i.i.i.i.i.i.i.i394 unwind label %bb.nu

.noexc.i.i.i.i.i.i.i.i394:                        ; preds = %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #35, !noalias !3346
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %175, ptr nonnull @.str.178) #38
          to label %bb.nf unwind label %bb.ng

bb.nf:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i394
  unreachable

bb.ng:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i394
  %i.cao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.cap = load ptr, ptr %175, align 8, !tbaa !106 ; 2 uses
  %i.caq = icmp eq ptr %i.cap, %i.byh
  br i1 %i.caq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i395: ; preds = %bb.ng
  %i.car = load i64, ptr %i.byh, align 8, !tbaa !87
  %i.cas = add i64 %i.car, 1
  call void @_ZdlPvm(ptr noundef %i.cap, i64 noundef %i.cas) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i396: ; preds = %bb.ng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i395
  call void @llvm.lifetime.end.p0(ptr nonnull %175) #35
  br label %.body.i.i.i.i.i.i.i.i302

bb.nh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i277
  %i.cat = load ptr, ptr %.sroa.750.0..sroa_idx.i245, align 8, !tbaa !914, !nonnull !114, !align !267
  %i.cau = load ptr, ptr %i.cat, align 8, !tbaa !281
  %i.cav = load ptr, ptr %.sroa.851.0..sroa_idx.i246, align 8, !tbaa !915, !nonnull !114, !align !333 ; 2 uses
  %i.caw = load ptr, ptr %.sroa.952.0..sroa_idx.i247, align 8, !tbaa !916, !nonnull !114, !align !333 ; 2 uses
  %i.cax = load ptr, ptr %.sroa.1053.0..sroa_idx.i248, align 8, !tbaa !917, !nonnull !114, !align !333
  %sext39.i.i.i.i.i.i.i.i.i280 = shl i64 %.074.i.i.i.i.i.i.i.i273, 32
  %i.cay = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i280, 32 ; 3 uses
  %i.caz = getelementptr inbounds [4 x i8], ptr %i.byv, i64 %i.cay
  %i.cba = load i32, ptr %i.caz, align 4, !tbaa !98
  %i.cbb = sext i32 %i.cba to i64
  %i.cbc = getelementptr inbounds [4 x i8], ptr %i.cau, i64 %i.cbb
  %i.cbd = load i32, ptr %i.cbc, align 4, !tbaa !98 ; 2 uses
  %i.cbe = icmp sgt i64 %i.can, 0                 ; 3 uses
  %i.cbf = add nsw i32 %i.cbd, -1
  %i.cbg = select i1 %i.cbe, i32 0, i32 %i.cbf
  store i32 %i.cbg, ptr %i.cav, align 4, !tbaa !98
  %i.cbh = select i1 %i.cbe, i32 %i.cbd, i32 -1
  store i32 %i.cbh, ptr %i.caw, align 4, !tbaa !98
  %i.cbi = select i1 %i.cbe, i32 1, i32 -1        ; 15 uses
  store i32 %i.cbi, ptr %i.cax, align 4, !tbaa !98
  %i.cbj = call noundef i64 @llvm.abs.i64(i64 %i.can, i1 true) ; 10 uses
  %i.cbk = load i32, ptr %i.cav, align 4, !tbaa !98 ; 14 uses
  %i.cbl = load i32, ptr %i.caw, align 4, !tbaa !98 ; 20 uses
  %.not1642.i.i.i.i.i.i.i.i.i281 = icmp eq i32 %i.cbk, %i.cbl
  br i1 %.not1642.i.i.i.i.i.i.i.i.i281, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %.lr.ph.i.i.i.i.i.i.i.i.i282

.lr.ph.i.i.i.i.i.i.i.i.i282:                      ; preds = %bb.nh
  %i.cbm = load ptr, ptr %.sroa.11.0..sroa_idx.i249, align 8, !tbaa !918, !nonnull !114, !align !267 ; 7 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 24
  %i.cbo = load ptr, ptr %i.cbn, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i283 = icmp eq ptr %i.cbo, null
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbm, i64 59 ; 3 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbm, i64 8 ; 3 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbm, i64 16 ; 4 uses
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbm, i64 58
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbm, i64 64 ; 3 uses
  %i.cbu = load i8, ptr %i.cbs, align 2, !tbaa !287, !range !113, !noundef !114
  %i.cbv = trunc nuw i8 %i.cbu to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i283, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i363, label %.lr.ph.split.i.i.i.i.i.i.i.i.i284

.lr.ph.split.us.i.i.i.i.i.i.i.i.i363:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i282
  %i.cbw = load ptr, ptr %i.cbr, align 8, !tbaa !329 ; 3 uses
  br i1 %i.cbv, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i383, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i364

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i383: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i363
  %i.cbx = sext i32 %i.cbk to i64
  %i.cby = sext i32 %i.cbi to i64
  %i.cbz = sext i32 %i.bza to i64
  %invariant.gep198.i.i.i.i.i.i.i.i.i384 = getelementptr i8, ptr %i.cbw, i64 %i.cbz
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i389, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i383
  %indvars.iv160.i.i.i.i.i.i.i.i.i386 = phi i64 [ %i.cbx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i383 ], [ %indvars.iv.next161.i.i.i.i.i.i.i.i.i391, %.critedge.us.us.i.i.i.i.i.i.i.i.i389 ] ; 3 uses
  %.03543.us.us.i.i.i.i.i.i.i.i.i387 = phi i64 [ %i.cbj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i383 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i390, %.critedge.us.us.i.i.i.i.i.i.i.i.i389 ] ; 2 uses
  %gep199.i.i.i.i.i.i.i.i.i388 = getelementptr i8, ptr %invariant.gep198.i.i.i.i.i.i.i.i.i384, i64 %indvars.iv160.i.i.i.i.i.i.i.i.i386
  %i.cca = load i8, ptr %gep199.i.i.i.i.i.i.i.i.i388, align 1, !tbaa !87
  %i.ccb = icmp eq i8 %i.cca, %i.bzu
  br i1 %i.ccb, label %bb.ni, label %.critedge.us.us.i.i.i.i.i.i.i.i.i389

bb.ni:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385
  %i.ccc = add nsw i64 %.03543.us.us.i.i.i.i.i.i.i.i.i387, -1 ; 2 uses
  %i.ccd = icmp eq i64 %i.ccc, 0
  br i1 %i.ccd, label %.split46.us.loopexit.i.i.i.i.i.i.i.i.i393, label %.critedge.us.us.i.i.i.i.i.i.i.i.i389

.critedge.us.us.i.i.i.i.i.i.i.i.i389:             ; preds = %bb.ni, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385
  %.1.us.us.i.i.i.i.i.i.i.i.i390 = phi i64 [ %.03543.us.us.i.i.i.i.i.i.i.i.i387, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385 ], [ %i.ccc, %bb.ni ]
  %indvars.iv.next161.i.i.i.i.i.i.i.i.i391 = add nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i386, %i.cby ; 2 uses
  %i.cce = trunc nsw i64 %indvars.iv.next161.i.i.i.i.i.i.i.i.i391 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i392 = icmp eq i32 %i.cbl, %i.cce
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i392, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i385, !llvm.loop !3113

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i364:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i363
  %i.ccf = load i8, ptr %i.cbp, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ccg = trunc nuw i8 %i.ccf to i1
  br i1 %i.ccg, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i376, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i365

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i376: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i364
  %i.cch = load i32, ptr %i.cbt, align 8, !tbaa !330
  %i.cci = sext i32 %i.cch to i64
  %i.ccj = getelementptr inbounds i8, ptr %i.cbw, i64 %i.cci
  %i.cck = load i8, ptr %i.ccj, align 1, !tbaa !87
  %i.ccl = icmp eq i8 %i.cck, %i.bzu
  br i1 %i.ccl, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i377, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i377: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i376
  %i.ccm = trunc i64 %i.cbj to i32
  %i.ccn = add i32 %i.ccm, -1
  %i.cco = mul i32 %i.ccn, %i.cbi
  %i.ccp = add i32 %i.cbk, %i.cco                 ; 3 uses
  %i.ccq = add nsw i64 %i.cbj, -1                 ; 5 uses
  %i.ccr = icmp eq i64 %i.ccq, 0
  br i1 %i.ccr, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i377
  %min.iters.check5703 = icmp samesign ult i64 %i.cbj, 33
  br i1 %min.iters.check5703, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader, label %vector.ph5704

vector.ph5704:                                    ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph
  %n.vec5705 = and i64 %i.ccq, -32                ; 3 uses
  %i.ccs = and i64 %i.ccq, 31
  %i.cct = trunc i64 %n.vec5705 to i32
  %i.ccu = mul i32 %i.cbi, %i.cct
  %i.ccv = add i32 %i.cbk, %i.ccu
  %broadcast.splatinsert5706 = insertelement <32 x i32> poison, i32 %i.cbl, i64 0
  %broadcast.splat5707 = shufflevector <32 x i32> %broadcast.splatinsert5706, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5708 = insertelement <32 x i32> poison, i32 %i.cbi, i64 0
  %broadcast.splat5709 = shufflevector <32 x i32> %broadcast.splatinsert5708, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5710 = insertelement <32 x i32> poison, i32 %i.cbk, i64 0
  %broadcast.splat5711 = shufflevector <32 x i32> %broadcast.splatinsert5710, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ccw = mul nsw <32 x i32> %broadcast.splat5709, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5712 = add nsw <32 x i32> %broadcast.splat5711, %i.ccw
  %i.ccx = shl nsw i32 %i.cbi, 5
  %broadcast.splatinsert5713 = insertelement <32 x i32> poison, i32 %i.ccx, i64 0
  %broadcast.splat5714 = shufflevector <32 x i32> %broadcast.splatinsert5713, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5715

vector.body5715:                                  ; preds = %vector.body.interim5720, %vector.ph5704
  %index5716 = phi i64 [ 0, %vector.ph5704 ], [ %index.next5718, %vector.body.interim5720 ]
  %vec.ind5717 = phi <32 x i32> [ %induction5712, %vector.ph5704 ], [ %vec.ind.next5719, %vector.body.interim5720 ] ; 2 uses
  %i.ccy = add nsw <32 x i32> %vec.ind5717, %broadcast.splat5709
  %i.ccz = icmp eq <32 x i32> %i.ccy, %broadcast.splat5707
  %i.cda = freeze <32 x i1> %i.ccz
  %i.cdb = bitcast <32 x i1> %i.cda to i32
  %.not5834 = icmp eq i32 %i.cdb, 0
  br i1 %.not5834, label %vector.body.interim5720, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298

vector.body.interim5720:                          ; preds = %vector.body5715
  %vec.ind.next5719 = add nsw <32 x i32> %vec.ind5717, %broadcast.splat5714
  %index.next5718 = add nuw i64 %index5716, 32    ; 2 uses
  %i.cdc = icmp eq i64 %index.next5718, %n.vec5705
  br i1 %i.cdc, label %middle.block5721, label %vector.body5715, !llvm.loop !3114

middle.block5721:                                 ; preds = %vector.body.interim5720
  %cmp.n5722 = icmp eq i64 %i.ccq, %n.vec5705
  br i1 %cmp.n5722, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph, %middle.block5721
  %.ph5901 = phi i64 [ %i.ccq, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph ], [ %i.ccs, %middle.block5721 ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i3795415.ph = phi i32 [ %i.cbk, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.lr.ph ], [ %i.ccv, %middle.block5721 ]
  br label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381
  %i.cdd = add nsw i64 %i.cdf, -1                 ; 2 uses
  %i.cde = icmp eq i64 %i.cdd, 0
  br i1 %i.cde, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381, !llvm.loop !3115

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381:       ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378
  %i.cdf = phi i64 [ %i.cdd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378 ], [ %.ph5901, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i3795415 = phi i32 [ %i.cdg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378 ], [ %.044.us.us99.us.i.i.i.i.i.i.i.i.i3795415.ph, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381.preheader ]
  %i.cdg = add nsw i32 %.044.us.us99.us.i.i.i.i.i.i.i.i.i3795415, %i.cbi ; 2 uses
  %.not16.us.us105.us.i.i.i.i.i.i.i.i.i382 = icmp eq i32 %i.cdg, %i.cbl
  br i1 %.not16.us.us105.us.i.i.i.i.i.i.i.i.i382, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378, !llvm.loop !3113

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i365: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i364
  %i.cdh = load ptr, ptr %i.cbq, align 8, !tbaa !283
  %i.cdi = sext i32 %i.cbk to i64
  %i.cdj = sext i32 %i.cbi to i64
  %i.cdk = sext i32 %i.bza to i64
  %invariant.gep196.i.i.i.i.i.i.i.i.i366 = getelementptr [4 x i8], ptr %i.cdh, i64 %i.cdk
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i371, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i365
  %indvars.iv157.i.i.i.i.i.i.i.i.i368 = phi i64 [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i373, %.critedge.us.i.i.i.i.i.i.i.i.i371 ], [ %i.cdi, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i365 ] ; 3 uses
  %.03543.us.i.i.i.i.i.i.i.i.i369 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i372, %.critedge.us.i.i.i.i.i.i.i.i.i371 ], [ %i.cbj, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i365 ] ; 2 uses
  %gep197.i.i.i.i.i.i.i.i.i370 = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i.i.i.i.i.i.i366, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i368
  %i.cdl = load i32, ptr %gep197.i.i.i.i.i.i.i.i.i370, align 4, !tbaa !98
  %i.cdm = sext i32 %i.cdl to i64
  %i.cdn = getelementptr inbounds i8, ptr %i.cbw, i64 %i.cdm
  %i.cdo = load i8, ptr %i.cdn, align 1, !tbaa !87
  %i.cdp = icmp eq i8 %i.cdo, %i.bzu
  br i1 %i.cdp, label %bb.nj, label %.critedge.us.i.i.i.i.i.i.i.i.i371

bb.nj:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367
  %i.cdq = add nsw i64 %.03543.us.i.i.i.i.i.i.i.i.i369, -1 ; 2 uses
  %i.cdr = icmp eq i64 %i.cdq, 0
  br i1 %i.cdr, label %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i375, label %.critedge.us.i.i.i.i.i.i.i.i.i371

.critedge.us.i.i.i.i.i.i.i.i.i371:                ; preds = %bb.nj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367
  %.1.us.i.i.i.i.i.i.i.i.i372 = phi i64 [ %.03543.us.i.i.i.i.i.i.i.i.i369, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367 ], [ %i.cdq, %bb.nj ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i373 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i368, %i.cdj ; 2 uses
  %i.cds = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i373 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i374 = icmp eq i32 %i.cbl, %i.cds
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i374, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i367, !llvm.loop !3113

.lr.ph.split.i.i.i.i.i.i.i.i.i284:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i282
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.cbm, i64 57
  %i.cdu = load i8, ptr %i.cdt, align 1, !range !113
  %i.cdv = trunc nuw i8 %i.cdu to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i285 = select i1 %i.cbv, i1 true, i1 %i.cdv
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i285, label %.split.us.preheader.i.i.i.i.i.i.i.i.i351, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i286

.split.us.preheader.i.i.i.i.i.i.i.i.i351:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i284
  %i.cdw = sext i32 %i.cbk to i64
  %i.cdx = sext i32 %i.cbi to i64
  %i.cdy = sext i32 %i.bza to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i352

.split.us.i.i.i.i.i.i.i.i.i352:                   ; preds = %.critedge.us53.i.i.i.i.i.i.i.i.i358, %.split.us.preheader.i.i.i.i.i.i.i.i.i351
  %indvars.iv154.i.i.i.i.i.i.i.i.i353 = phi i64 [ %i.cdw, %.split.us.preheader.i.i.i.i.i.i.i.i.i351 ], [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i360, %.critedge.us53.i.i.i.i.i.i.i.i.i358 ] ; 3 uses
  %.03543.us49.i.i.i.i.i.i.i.i.i354 = phi i64 [ %i.cbj, %.split.us.preheader.i.i.i.i.i.i.i.i.i351 ], [ %.1.us54.i.i.i.i.i.i.i.i.i359, %.critedge.us53.i.i.i.i.i.i.i.i.i358 ] ; 3 uses
  %i.cdz = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i353, %i.cdy ; 4 uses
  %i.cea = lshr i64 %i.cdz, 6
  %i.ceb = and i64 %i.cea, 67108863
  %i.cec = getelementptr inbounds nuw [8 x i8], ptr %i.cbo, i64 %i.ceb
  %i.ced = load i64, ptr %i.cec, align 8, !tbaa !147
  %i.cee = and i64 %i.cdz, 63
  %i.cef = shl nuw i64 1, %i.cee
  %i.ceg = and i64 %i.cef, %i.ced
  %.not.i.i.us.i.i.i.i.i.i.i.i.i355 = icmp eq i64 %i.ceg, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i355, label %.critedge.us53.i.i.i.i.i.i.i.i.i358, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i356

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i356: ; preds = %.split.us.i.i.i.i.i.i.i.i.i352
  %i.ceh = trunc nsw i64 %i.cdz to i32
  %i.cei = load ptr, ptr %i.cbr, align 8, !tbaa !329
  br i1 %i.cbv, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, label %bb.nk

bb.nk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i356
  %i.cej = load i8, ptr %i.cbp, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cek = trunc nuw i8 %i.cej to i1
  br i1 %i.cek, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.cel = load ptr, ptr %i.cbq, align 8, !tbaa !283
  %i.cem = getelementptr inbounds [4 x i8], ptr %i.cel, i64 %i.cdz
  %i.cen = load i32, ptr %i.cem, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

bb.nm:                                            ; preds = %bb.nk
  %i.ceo = load i32, ptr %i.cbt, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i: ; preds = %bb.nm, %bb.nl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i356
  %.0.i.i19.us52.i.i.i.i.i.i.i.i.i357 = phi i32 [ %i.cen, %bb.nl ], [ %i.ceo, %bb.nm ], [ %i.ceh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i356 ]
  %i.cep = sext i32 %.0.i.i19.us52.i.i.i.i.i.i.i.i.i357 to i64
  %i.ceq = getelementptr inbounds i8, ptr %i.cei, i64 %i.cep
  %i.cer = load i8, ptr %i.ceq, align 1, !tbaa !87
  %i.ces = icmp eq i8 %i.cer, %i.bzu
  br i1 %i.ces, label %bb.nn, label %.critedge.us53.i.i.i.i.i.i.i.i.i358

bb.nn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i
  %i.cet = add nsw i64 %.03543.us49.i.i.i.i.i.i.i.i.i354, -1 ; 2 uses
  %i.ceu = icmp eq i64 %i.cet, 0
  br i1 %i.ceu, label %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i362, label %.critedge.us53.i.i.i.i.i.i.i.i.i358

.critedge.us53.i.i.i.i.i.i.i.i.i358:              ; preds = %bb.nn, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i352
  %.1.us54.i.i.i.i.i.i.i.i.i359 = phi i64 [ %.03543.us49.i.i.i.i.i.i.i.i.i354, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us51.i.i.i.i.i.i.i.i.i ], [ %i.cet, %bb.nn ], [ %.03543.us49.i.i.i.i.i.i.i.i.i354, %.split.us.i.i.i.i.i.i.i.i.i352 ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i360 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i353, %i.cdx ; 2 uses
  %i.cev = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i360 to i32
  %.not16.us55.i.i.i.i.i.i.i.i.i361 = icmp eq i32 %i.cbl, %i.cev
  br i1 %.not16.us55.i.i.i.i.i.i.i.i.i361, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %.split.us.i.i.i.i.i.i.i.i.i352, !llvm.loop !3113

.lr.ph.split.split.i.i.i.i.i.i.i.i.i286:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i284
  %i.cew = load i8, ptr %i.cbp, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cex = trunc nuw i8 %i.cew to i1
  br i1 %i.cex, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i342, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i287

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i342: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i286
  %i.cey = load i64, ptr %i.cbo, align 8, !tbaa !147
  %i.cez = and i64 %i.cey, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i343 = icmp eq i64 %i.cez, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i343, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i344

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i344: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i342
  %i.cfa = load ptr, ptr %i.cbr, align 8, !tbaa !329
  %i.cfb = load i32, ptr %i.cbt, align 8, !tbaa !330
  %i.cfc = sext i32 %i.cfb to i64
  %i.cfd = getelementptr inbounds i8, ptr %i.cfa, i64 %i.cfc
  %i.cfe = load i8, ptr %i.cfd, align 1, !tbaa !87
  %i.cff = icmp eq i8 %i.cfe, %i.bzu
  br i1 %i.cff, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i345, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i345: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i344
  %i.cfg = trunc i64 %i.cbj to i32
  %i.cfh = add i32 %i.cfg, -1
  %i.cfi = mul i32 %i.cfh, %i.cbi
  %i.cfj = add i32 %i.cbk, %i.cfi                 ; 3 uses
  %i.cfk = add nsw i64 %i.cbj, -1                 ; 5 uses
  %i.cfl = icmp eq i64 %i.cfk, 0
  br i1 %i.cfl, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i345
  %min.iters.check5727 = icmp samesign ult i64 %i.cbj, 33
  br i1 %min.iters.check5727, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader, label %vector.ph5728

vector.ph5728:                                    ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph
  %n.vec5729 = and i64 %i.cfk, -32                ; 3 uses
  %i.cfm = and i64 %i.cfk, 31
  %i.cfn = trunc i64 %n.vec5729 to i32
  %i.cfo = mul i32 %i.cbi, %i.cfn
  %i.cfp = add i32 %i.cbk, %i.cfo
  %broadcast.splatinsert5730 = insertelement <32 x i32> poison, i32 %i.cbl, i64 0
  %broadcast.splat5731 = shufflevector <32 x i32> %broadcast.splatinsert5730, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5732 = insertelement <32 x i32> poison, i32 %i.cbi, i64 0
  %broadcast.splat5733 = shufflevector <32 x i32> %broadcast.splatinsert5732, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5734 = insertelement <32 x i32> poison, i32 %i.cbk, i64 0
  %broadcast.splat5735 = shufflevector <32 x i32> %broadcast.splatinsert5734, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.cfq = mul nsw <32 x i32> %broadcast.splat5733, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5736 = add nsw <32 x i32> %broadcast.splat5735, %i.cfq
  %i.cfr = shl nsw i32 %i.cbi, 5
  %broadcast.splatinsert5737 = insertelement <32 x i32> poison, i32 %i.cfr, i64 0
  %broadcast.splat5738 = shufflevector <32 x i32> %broadcast.splatinsert5737, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5739

vector.body5739:                                  ; preds = %vector.body.interim5744, %vector.ph5728
  %index5740 = phi i64 [ 0, %vector.ph5728 ], [ %index.next5742, %vector.body.interim5744 ]
  %vec.ind5741 = phi <32 x i32> [ %induction5736, %vector.ph5728 ], [ %vec.ind.next5743, %vector.body.interim5744 ] ; 2 uses
  %i.cfs = add nsw <32 x i32> %vec.ind5741, %broadcast.splat5733
  %i.cft = icmp eq <32 x i32> %i.cfs, %broadcast.splat5731
  %i.cfu = freeze <32 x i1> %i.cft
  %i.cfv = bitcast <32 x i1> %i.cfu to i32
  %.not5833 = icmp eq i32 %i.cfv, 0
  br i1 %.not5833, label %vector.body.interim5744, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298

vector.body.interim5744:                          ; preds = %vector.body5739
  %vec.ind.next5743 = add nsw <32 x i32> %vec.ind5741, %broadcast.splat5738
  %index.next5742 = add nuw i64 %index5740, 32    ; 2 uses
  %i.cfw = icmp eq i64 %index.next5742, %n.vec5729
  br i1 %i.cfw, label %middle.block5745, label %vector.body5739, !llvm.loop !3116

middle.block5745:                                 ; preds = %vector.body.interim5744
  %cmp.n5746 = icmp eq i64 %i.cfk, %n.vec5729
  br i1 %cmp.n5746, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph, %middle.block5745
  %.ph5906 = phi i64 [ %i.cfk, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph ], [ %i.cfm, %middle.block5745 ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i3475414.ph = phi i32 [ %i.cbk, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.lr.ph ], [ %i.cfp, %middle.block5745 ]
  br label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349
  %i.cfx = add nsw i64 %i.cfz, -1                 ; 2 uses
  %i.cfy = icmp eq i64 %i.cfx, 0
  br i1 %i.cfy, label %.split46.us.i.i.i.i.i.i.i.i.i333, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349, !llvm.loop !3117

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349:      ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346
  %i.cfz = phi i64 [ %i.cfx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346 ], [ %.ph5906, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i3475414 = phi i32 [ %i.cga, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346 ], [ %.044.us60.us83.us.i.i.i.i.i.i.i.i.i3475414.ph, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349.preheader ]
  %i.cga = add nsw i32 %.044.us60.us83.us.i.i.i.i.i.i.i.i.i3475414, %i.cbi ; 2 uses
  %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i350 = icmp eq i32 %i.cga, %i.cbl
  br i1 %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i350, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346, !llvm.loop !3113

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i287:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i286
  %i.cgb = load ptr, ptr %i.cbq, align 8, !tbaa !283
  %i.cgc = sext i32 %i.cbk to i64
  %i.cgd = sext i32 %i.cbi to i64
  %i.cge = sext i32 %i.bza to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i288 = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cge
  br label %.split37.i.i.i.i.i.i.i.i.i289

.split37.i.i.i.i.i.i.i.i.i289:                    ; preds = %.critedge.i.i.i.i.i.i.i.i.i294, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i287
  %indvars.iv.i.i.i.i.i.i.i.i.i290 = phi i64 [ %i.cgc, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i287 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i296, %.critedge.i.i.i.i.i.i.i.i.i294 ] ; 3 uses
  %.03543.i.i.i.i.i.i.i.i.i291 = phi i64 [ %i.cbj, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i287 ], [ %.1.i.i.i.i.i.i.i.i.i295, %.critedge.i.i.i.i.i.i.i.i.i294 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i292 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i288, i64 %indvars.iv.i.i.i.i.i.i.i.i.i290
  %i.cgf = load i32, ptr %gep.i.i.i.i.i.i.i.i.i292, align 4, !tbaa !98 ; 2 uses
  %i.cgg = zext i32 %i.cgf to i64                 ; 2 uses
  %i.cgh = lshr i64 %i.cgg, 6
  %i.cgi = getelementptr inbounds nuw [8 x i8], ptr %i.cbo, i64 %i.cgh
  %i.cgj = load i64, ptr %i.cgi, align 8, !tbaa !147
  %i.cgk = and i64 %i.cgg, 63
  %i.cgl = shl nuw i64 1, %i.cgk
  %i.cgm = and i64 %i.cgl, %i.cgj
  %.not.i7.i.i.i.i.i.i.i.i.i.i293 = icmp eq i64 %i.cgm, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i293, label %.critedge.i.i.i.i.i.i.i.i.i294, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %.split37.i.i.i.i.i.i.i.i.i289
  %i.cgn = load ptr, ptr %i.cbr, align 8, !tbaa !329
  %i.cgo = sext i32 %i.cgf to i64
  %i.cgp = getelementptr inbounds i8, ptr %i.cgn, i64 %i.cgo
  %i.cgq = load i8, ptr %i.cgp, align 1, !tbaa !87
  %i.cgr = icmp eq i8 %i.cgq, %i.bzu
  br i1 %i.cgr, label %bb.no, label %.critedge.i.i.i.i.i.i.i.i.i294

bb.no:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.cgs = add nsw i64 %.03543.i.i.i.i.i.i.i.i.i291, -1 ; 2 uses
  %i.cgt = icmp eq i64 %i.cgs, 0
  br i1 %i.cgt, label %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i332, label %.critedge.i.i.i.i.i.i.i.i.i294

.split46.us.loopexit.i.i.i.i.i.i.i.i.i393:        ; preds = %bb.ni
  %i.cgu = trunc nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i386 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i333

.split46.us.loopexit115.i.i.i.i.i.i.i.i.i375:     ; preds = %bb.nj
  %i.cgv = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i368 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i333

.split46.us.loopexit117.i.i.i.i.i.i.i.i.i362:     ; preds = %bb.nn
  %i.cgw = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i353 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i333

.split46.us.loopexit127.i.i.i.i.i.i.i.i.i332:     ; preds = %bb.no
  %i.cgx = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i290 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i333

.split46.us.i.i.i.i.i.i.i.i.i333:                 ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i345, %middle.block5745, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i377, %middle.block5721, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i332, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i362, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i375, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i393
  %.us-phi.i.i.i.i.i.i.i.i.i334 = phi i32 [ %i.cgw, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i362 ], [ %i.cgx, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i332 ], [ %i.cgu, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i393 ], [ %i.cgv, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i375 ], [ %i.ccp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i377 ], [ %i.ccp, %middle.block5721 ], [ %i.cfj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i345 ], [ %i.cfj, %middle.block5745 ], [ %i.ccp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i378 ], [ %i.cfj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i346 ] ; 3 uses
  %i.cgy = load ptr, ptr %.sroa.12.0..sroa_idx.i250, align 8, !tbaa !919, !nonnull !114, !align !267 ; 5 uses
  %i.cgz = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i334, 1
  %i.cha = sext i32 %i.cgz to i64
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgy, i64 144 ; 2 uses
  %i.chc = load ptr, ptr %i.chb, align 8, !tbaa !309 ; 2 uses
  %i.chd = icmp eq ptr %i.chc, null
  br i1 %i.chd, label %bb.np, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335

bb.np:                                            ; preds = %.split46.us.i.i.i.i.i.i.i.i.i333
  %i.che = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cgy)
          to label %.noexc19.i.i.i.i.i.i.i.i340 unwind label %bb.nu ; 0 uses

.noexc19.i.i.i.i.i.i.i.i340:                      ; preds = %bb.np
  %.pre.i.i.i.i.i.i.i.i.i.i341 = load ptr, ptr %i.chb, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335: ; preds = %.noexc19.i.i.i.i.i.i.i.i340, %.split46.us.i.i.i.i.i.i.i.i.i333
  %i.chf = phi ptr [ %i.chc, %.split46.us.i.i.i.i.i.i.i.i.i333 ], [ %.pre.i.i.i.i.i.i.i.i.i.i341, %.noexc19.i.i.i.i.i.i.i.i340 ]
  %i.chg = getelementptr inbounds [8 x i8], ptr %i.chf, i64 %i.cay
  store i64 %i.cha, ptr %i.chg, align 8, !tbaa !147
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cgy, i64 32 ; 2 uses
  %i.chi = load ptr, ptr %i.chh, align 8, !tbaa !310
  %.not.i21.i.i.i.i.i.i.i.i.i336 = icmp eq ptr %i.chi, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i336, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %bb.nq

bb.nq:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335
  %i.chj = getelementptr inbounds nuw i8, ptr %i.cgy, i64 56
  %i.chk = load i32, ptr %i.chj, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cgy, i32 noundef %i.chk, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i337 unwind label %bb.nu

.noexc20.i.i.i.i.i.i.i.i337:                      ; preds = %bb.nq
  %i.chl = load ptr, ptr %i.chh, align 8, !tbaa !310 ; 2 uses
  %i.chm = getelementptr inbounds nuw i8, ptr %i.chl, i64 44
  %i.chn = load i8, ptr %i.chm, align 4, !tbaa !315
  %i.cho = and i8 %i.chn, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i338 = icmp eq i8 %i.cho, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i338, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i339, label %.invoke.i.i.i.i.i.i.i.i327, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i339: ; preds = %.noexc20.i.i.i.i.i.i.i.i337
  %i.chp = getelementptr inbounds nuw i8, ptr %i.chl, i64 16
  %i.chq = load ptr, ptr %i.chp, align 8, !tbaa !316
  %i.chr = lshr i64 %.074.i.i.i.i.i.i.i.i273, 3
  %i.chs = and i64 %i.chr, 536870911
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chq, i64 %i.chs ; 2 uses
  %i.chu = load i8, ptr %i.cht, align 1, !tbaa !87
  %i.chv = trunc i64 %.074.i.i.i.i.i.i.i.i273 to i8
  %i.chw = and i8 %i.chv, 7
  %i.chx = shl nuw i8 1, %i.chw
  %i.chy = or i8 %i.chu, %i.chx
  store i8 %i.chy, ptr %i.cht, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298

.critedge.i.i.i.i.i.i.i.i.i294:                   ; preds = %bb.no, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i, %.split37.i.i.i.i.i.i.i.i.i289
  %.1.i.i.i.i.i.i.i.i.i295 = phi i64 [ %.03543.i.i.i.i.i.i.i.i.i291, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.cgs, %bb.no ], [ %.03543.i.i.i.i.i.i.i.i.i291, %.split37.i.i.i.i.i.i.i.i.i289 ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i296 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i290, %i.cgd ; 2 uses
  %i.chz = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i296 to i32
  %.not16.i.i.i.i.i.i.i.i.i297 = icmp eq i32 %i.cbl, %i.chz
  br i1 %.not16.i.i.i.i.i.i.i.i.i297, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298, label %.split37.i.i.i.i.i.i.i.i.i289, !llvm.loop !3113

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298: ; preds = %.critedge.i.i.i.i.i.i.i.i.i294, %vector.body5739, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349, %.critedge.us53.i.i.i.i.i.i.i.i.i358, %.critedge.us.i.i.i.i.i.i.i.i.i371, %vector.body5715, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381, %.critedge.us.us.i.i.i.i.i.i.i.i.i389, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i339, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i344, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i342, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i376, %bb.nh
  %.041.i.i.i.i.i.i.i.i.i299 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i334, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i335 ], [ %.us-phi.i.i.i.i.i.i.i.i.i334, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i339 ], [ %i.cbk, %bb.nh ], [ %i.cbl, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i349 ], [ %i.cbl, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i381 ], [ %i.cbl, %.critedge.us53.i.i.i.i.i.i.i.i.i358 ], [ %i.cbl, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i344 ], [ %i.cbl, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i376 ], [ %i.cbl, %vector.body5715 ], [ %i.cbl, %.critedge.us.us.i.i.i.i.i.i.i.i.i389 ], [ %i.cbl, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i342 ], [ %i.cbl, %vector.body5739 ], [ %i.cbl, %.critedge.us.i.i.i.i.i.i.i.i.i371 ], [ %i.cbl, %.critedge.i.i.i.i.i.i.i.i.i294 ]
  %i.cia = load ptr, ptr %.sroa.952.0..sroa_idx.i247, align 8, !tbaa !916, !nonnull !114, !align !333
  %i.cib = load i32, ptr %i.cia, align 4, !tbaa !98
  %i.cic = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i299, %i.cib
  br i1 %i.cic, label %bb.nr, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.nr:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i298
  %i.cid = load ptr, ptr %.sroa.12.0..sroa_idx.i250, align 8, !tbaa !919, !nonnull !114, !align !267 ; 5 uses
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cid, i64 144 ; 2 uses
  %i.cif = load ptr, ptr %i.cie, align 8, !tbaa !309 ; 2 uses
  %i.cig = icmp eq ptr %i.cif, null
  br i1 %i.cig, label %bb.ns, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i300

bb.ns:                                            ; preds = %bb.nr
  %i.cih = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.cid)
          to label %.noexc22.i.i.i.i.i.i.i.i330 unwind label %bb.nu ; 0 uses

.noexc22.i.i.i.i.i.i.i.i330:                      ; preds = %bb.ns
  %.pre.i26.i.i.i.i.i.i.i.i.i331 = load ptr, ptr %i.cie, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i300

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i300: ; preds = %.noexc22.i.i.i.i.i.i.i.i330, %bb.nr
  %i.cii = phi ptr [ %i.cif, %bb.nr ], [ %.pre.i26.i.i.i.i.i.i.i.i.i331, %.noexc22.i.i.i.i.i.i.i.i330 ]
  %i.cij = getelementptr inbounds [8 x i8], ptr %i.cii, i64 %i.cay
  store i64 0, ptr %i.cij, align 8, !tbaa !147
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cid, i64 32 ; 2 uses
  %i.cil = load ptr, ptr %i.cik, align 8, !tbaa !310
  %.not.i23.i.i.i.i.i.i.i.i.i301 = icmp eq ptr %i.cil, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i301, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.nt

bb.nt:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i300
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cid, i64 56
  %i.cin = load i32, ptr %i.cim, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.cid, i32 noundef %i.cin, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i325 unwind label %bb.nu

.noexc23.i.i.i.i.i.i.i.i325:                      ; preds = %bb.nt
  %i.cio = load ptr, ptr %i.cik, align 8, !tbaa !310 ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cio, i64 44
  %i.ciq = load i8, ptr %i.cip, align 4, !tbaa !315
  %i.cir = and i8 %i.ciq, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i326 = icmp eq i8 %i.cir, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i326, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i329, label %.invoke.i.i.i.i.i.i.i.i327, !prof !112

.invoke.i.i.i.i.i.i.i.i327:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i325, %.noexc20.i.i.i.i.i.i.i.i337
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i328 unwind label %bb.nu

.cont.i.i.i.i.i.i.i.i328:                         ; preds = %.invoke.i.i.i.i.i.i.i.i327
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i329: ; preds = %.noexc23.i.i.i.i.i.i.i.i325
  %i.cis = getelementptr inbounds nuw i8, ptr %i.cio, i64 16
  %i.cit = load ptr, ptr %i.cis, align 8, !tbaa !316
  %i.ciu = lshr i64 %.074.i.i.i.i.i.i.i.i273, 3
  %i.civ = and i64 %i.ciu, 536870911
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.cit, i64 %i.civ ; 2 uses
  %i.cix = load i8, ptr %i.ciw, align 1, !tbaa !87
  %i.ciy = trunc i64 %.074.i.i.i.i.i.i.i.i273 to i8
  %i.ciz = and i8 %i.ciy, 7
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.si:                                            ; preds = %bb.sh
  %i.dcf = getelementptr inbounds nuw i8, ptr %i.dbv, i64 64
  %i.dcg = load i32, ptr %i.dcf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

bb.sj:                                            ; preds = %bb.sh
  %i.dch = getelementptr inbounds nuw i8, ptr %i.dbv, i64 8
  %i.dci = load ptr, ptr %i.dch, align 8, !tbaa !283
  %sext.i.i.i.i.i.i.i.i.i589 = shl i64 %.074.i.i.i.i.i.i.i.i588, 32
  %i.dcj = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i589, 30
  %i.dck = getelementptr inbounds i8, ptr %i.dci, i64 %i.dcj
  %i.dcl = load i32, ptr %i.dck, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.sj, %bb.si, %bb.sg
  %.0.i.i.i.i.i.i.i.i.i.i.i590 = phi i32 [ %i.dcl, %bb.sj ], [ %i.dcg, %bb.si ], [ %i.dbw, %bb.sg ]
  %i.dcm = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i590 to i64
  %i.dcn = getelementptr inbounds [2 x i8], ptr %i.dby, i64 %i.dcm
  %i.dco = load i16, ptr %i.dcn, align 2, !tbaa !815 ; 6 uses
  %i.dcp = load ptr, ptr %.sroa.649.0..sroa_idx.i559, align 8, !tbaa !924, !nonnull !114, !align !267 ; 5 uses
  %i.dcq = getelementptr inbounds nuw i8, ptr %i.dcp, i64 16
  %i.dcr = load ptr, ptr %i.dcq, align 8, !tbaa !329
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcp, i64 58
  %i.dct = load i8, ptr %i.dcs, align 2, !tbaa !287, !range !113, !noundef !114
  %i.dcu = trunc nuw i8 %i.dct to i1
  br i1 %i.dcu, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592, label %bb.sk

bb.sk:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %i.dcv = getelementptr inbounds nuw i8, ptr %i.dcp, i64 59
  %i.dcw = load i8, ptr %i.dcv, align 1, !tbaa !288, !range !113, !noundef !114
  %i.dcx = trunc nuw i8 %i.dcw to i1
  br i1 %i.dcx, label %bb.sl, label %bb.sm

bb.sl:                                            ; preds = %bb.sk
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dcp, i64 64
  %i.dcz = load i32, ptr %i.dcy, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592

bb.sm:                                            ; preds = %bb.sk
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcp, i64 8
  %i.ddb = load ptr, ptr %i.dda, align 8, !tbaa !283
  %sext38.i.i.i.i.i.i.i.i.i591 = shl i64 %.074.i.i.i.i.i.i.i.i588, 32
  %i.ddc = ashr exact i64 %sext38.i.i.i.i.i.i.i.i.i591, 30
  %i.ddd = getelementptr inbounds i8, ptr %i.ddb, i64 %i.ddc
  %i.dde = load i32, ptr %i.ddd, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592: ; preds = %bb.sm, %bb.sl, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i18.i.i.i.i.i.i.i.i.i593 = phi i32 [ %i.dde, %bb.sm ], [ %i.dcz, %bb.sl ], [ %i.dbw, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i.i.i.i.i.i.i.i.i ]
  %i.ddf = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i593 to i64
  %i.ddg = getelementptr inbounds [8 x i8], ptr %i.dcr, i64 %i.ddf
  %i.ddh = load i64, ptr %i.ddg, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i594 = icmp eq i64 %i.ddh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i594, label %bb.sn, label %bb.sq, !prof !105

bb.sn:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %157) #35, !noalias !3350
  store i64 0, ptr %157, align 16, !tbaa !87, !noalias !3350
  store i32 0, ptr %i.dba, align 16, !tbaa !87, !alias.scope !3351, !noalias !3350
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %158, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %157)
          to label %.noexc.i.i.i.i.i.i.i.i709 unwind label %bb.td

.noexc.i.i.i.i.i.i.i.i709:                        ; preds = %bb.sn
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #35, !noalias !3350
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %158, ptr nonnull @.str.178) #38
          to label %bb.so unwind label %bb.sp

bb.so:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i709
  unreachable

bb.sp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i709
  %i.ddi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.ddj = load ptr, ptr %158, align 8, !tbaa !106 ; 2 uses
  %i.ddk = icmp eq ptr %i.ddj, %i.dbb
  br i1 %i.ddk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i711, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i710

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i710: ; preds = %bb.sp
  %i.ddl = load i64, ptr %i.dbb, align 8, !tbaa !87
  %i.ddm = add i64 %i.ddl, 1
  call void @_ZdlPvm(ptr noundef %i.ddj, i64 noundef %i.ddm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i711

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i711: ; preds = %bb.sp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i710
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #35
  br label %.body.i.i.i.i.i.i.i.i617

bb.sq:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i592
  %i.ddn = load ptr, ptr %.sroa.750.0..sroa_idx.i560, align 8, !tbaa !925, !nonnull !114, !align !267
  %i.ddo = load ptr, ptr %i.ddn, align 8, !tbaa !281
  %i.ddp = load ptr, ptr %.sroa.851.0..sroa_idx.i561, align 8, !tbaa !926, !nonnull !114, !align !333 ; 2 uses
  %i.ddq = load ptr, ptr %.sroa.952.0..sroa_idx.i562, align 8, !tbaa !927, !nonnull !114, !align !333 ; 2 uses
  %i.ddr = load ptr, ptr %.sroa.1053.0..sroa_idx.i563, align 8, !tbaa !928, !nonnull !114, !align !333
  %sext39.i.i.i.i.i.i.i.i.i595 = shl i64 %.074.i.i.i.i.i.i.i.i588, 32
  %i.dds = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i595, 32 ; 3 uses
  %i.ddt = getelementptr inbounds [4 x i8], ptr %i.dbp, i64 %i.dds
  %i.ddu = load i32, ptr %i.ddt, align 4, !tbaa !98
  %i.ddv = sext i32 %i.ddu to i64
  %i.ddw = getelementptr inbounds [4 x i8], ptr %i.ddo, i64 %i.ddv
  %i.ddx = load i32, ptr %i.ddw, align 4, !tbaa !98 ; 2 uses
  %i.ddy = icmp sgt i64 %i.ddh, 0                 ; 3 uses
  %i.ddz = add nsw i32 %i.ddx, -1
  %i.dea = select i1 %i.ddy, i32 0, i32 %i.ddz
  store i32 %i.dea, ptr %i.ddp, align 4, !tbaa !98
  %i.deb = select i1 %i.ddy, i32 %i.ddx, i32 -1
  store i32 %i.deb, ptr %i.ddq, align 4, !tbaa !98
  %i.dec = select i1 %i.ddy, i32 1, i32 -1        ; 15 uses
  store i32 %i.dec, ptr %i.ddr, align 4, !tbaa !98
  %i.ded = call noundef i64 @llvm.abs.i64(i64 %i.ddh, i1 true) ; 10 uses
  %i.dee = load i32, ptr %i.ddp, align 4, !tbaa !98 ; 14 uses
  %i.def = load i32, ptr %i.ddq, align 4, !tbaa !98 ; 20 uses
  %.not1642.i.i.i.i.i.i.i.i.i596 = icmp eq i32 %i.dee, %i.def
  br i1 %.not1642.i.i.i.i.i.i.i.i.i596, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %.lr.ph.i.i.i.i.i.i.i.i.i597

.lr.ph.i.i.i.i.i.i.i.i.i597:                      ; preds = %bb.sq
  %i.deg = load ptr, ptr %.sroa.11.0..sroa_idx.i564, align 8, !tbaa !929, !nonnull !114, !align !267 ; 7 uses
  %i.deh = getelementptr inbounds nuw i8, ptr %i.deg, i64 24
  %i.dei = load ptr, ptr %i.deh, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i598 = icmp eq ptr %i.dei, null
  %i.dej = getelementptr inbounds nuw i8, ptr %i.deg, i64 59 ; 3 uses
  %i.dek = getelementptr inbounds nuw i8, ptr %i.deg, i64 8 ; 3 uses
  %i.del = getelementptr inbounds nuw i8, ptr %i.deg, i64 16 ; 4 uses
  %i.dem = getelementptr inbounds nuw i8, ptr %i.deg, i64 58
  %i.den = getelementptr inbounds nuw i8, ptr %i.deg, i64 64 ; 3 uses
  %i.deo = load i8, ptr %i.dem, align 2, !tbaa !287, !range !113, !noundef !114
  %i.dep = trunc nuw i8 %i.deo to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i598, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i678, label %.lr.ph.split.i.i.i.i.i.i.i.i.i599

.lr.ph.split.us.i.i.i.i.i.i.i.i.i678:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i597
  %i.deq = load ptr, ptr %i.del, align 8, !tbaa !329 ; 3 uses
  br i1 %i.dep, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i698, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i679

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i698: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i678
  %i.der = sext i32 %i.dee to i64
  %i.des = sext i32 %i.dec to i64
  %i.det = sext i32 %i.dbu to i64
  %invariant.gep198.i.i.i.i.i.i.i.i.i699 = getelementptr [2 x i8], ptr %i.deq, i64 %i.det
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i704, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i698
  %indvars.iv160.i.i.i.i.i.i.i.i.i701 = phi i64 [ %i.der, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i698 ], [ %indvars.iv.next161.i.i.i.i.i.i.i.i.i706, %.critedge.us.us.i.i.i.i.i.i.i.i.i704 ] ; 3 uses
  %.03543.us.us.i.i.i.i.i.i.i.i.i702 = phi i64 [ %i.ded, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i698 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i705, %.critedge.us.us.i.i.i.i.i.i.i.i.i704 ] ; 2 uses
  %gep199.i.i.i.i.i.i.i.i.i703 = getelementptr [2 x i8], ptr %invariant.gep198.i.i.i.i.i.i.i.i.i699, i64 %indvars.iv160.i.i.i.i.i.i.i.i.i701
  %i.deu = load i16, ptr %gep199.i.i.i.i.i.i.i.i.i703, align 2, !tbaa !815
  %i.dev = icmp eq i16 %i.deu, %i.dco
  br i1 %i.dev, label %bb.sr, label %.critedge.us.us.i.i.i.i.i.i.i.i.i704

bb.sr:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700
  %i.dew = add nsw i64 %.03543.us.us.i.i.i.i.i.i.i.i.i702, -1 ; 2 uses
  %i.dex = icmp eq i64 %i.dew, 0
  br i1 %i.dex, label %.split46.us.loopexit.i.i.i.i.i.i.i.i.i708, label %.critedge.us.us.i.i.i.i.i.i.i.i.i704

.critedge.us.us.i.i.i.i.i.i.i.i.i704:             ; preds = %bb.sr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700
  %.1.us.us.i.i.i.i.i.i.i.i.i705 = phi i64 [ %.03543.us.us.i.i.i.i.i.i.i.i.i702, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700 ], [ %i.dew, %bb.sr ]
  %indvars.iv.next161.i.i.i.i.i.i.i.i.i706 = add nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i701, %i.des ; 2 uses
  %i.dey = trunc nsw i64 %indvars.iv.next161.i.i.i.i.i.i.i.i.i706 to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i707 = icmp eq i32 %i.def, %i.dey
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i707, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i700, !llvm.loop !3136

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i679:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i678
  %i.dez = load i8, ptr %i.dej, align 1, !tbaa !288, !range !113, !noundef !114
  %i.dfa = trunc nuw i8 %i.dez to i1
  br i1 %i.dfa, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i691, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i680

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i691: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i679
  %i.dfb = load i32, ptr %i.den, align 8, !tbaa !330
  %i.dfc = sext i32 %i.dfb to i64
  %i.dfd = getelementptr inbounds [2 x i8], ptr %i.deq, i64 %i.dfc
  %i.dfe = load i16, ptr %i.dfd, align 2, !tbaa !815
  %i.dff = icmp eq i16 %i.dfe, %i.dco
  br i1 %i.dff, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i692, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i692: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i691
  %i.dfg = trunc i64 %i.ded to i32
  %i.dfh = add i32 %i.dfg, -1
  %i.dfi = mul i32 %i.dfh, %i.dec
  %i.dfj = add i32 %i.dee, %i.dfi                 ; 3 uses
  %i.dfk = add nsw i64 %i.ded, -1                 ; 5 uses
  %i.dfl = icmp eq i64 %i.dfk, 0
  br i1 %i.dfl, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i692
  %min.iters.check5655 = icmp samesign ult i64 %i.ded, 33
  br i1 %min.iters.check5655, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader, label %vector.ph5656

vector.ph5656:                                    ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph
  %n.vec5657 = and i64 %i.dfk, -32                ; 3 uses
  %i.dfm = and i64 %i.dfk, 31
  %i.dfn = trunc i64 %n.vec5657 to i32
  %i.dfo = mul i32 %i.dec, %i.dfn
  %i.dfp = add i32 %i.dee, %i.dfo
  %broadcast.splatinsert5658 = insertelement <32 x i32> poison, i32 %i.def, i64 0
  %broadcast.splat5659 = shufflevector <32 x i32> %broadcast.splatinsert5658, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5660 = insertelement <32 x i32> poison, i32 %i.dec, i64 0
  %broadcast.splat5661 = shufflevector <32 x i32> %broadcast.splatinsert5660, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5662 = insertelement <32 x i32> poison, i32 %i.dee, i64 0
  %broadcast.splat5663 = shufflevector <32 x i32> %broadcast.splatinsert5662, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dfq = mul nsw <32 x i32> %broadcast.splat5661, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5664 = add nsw <32 x i32> %broadcast.splat5663, %i.dfq
  %i.dfr = shl nsw i32 %i.dec, 5
  %broadcast.splatinsert5665 = insertelement <32 x i32> poison, i32 %i.dfr, i64 0
  %broadcast.splat5666 = shufflevector <32 x i32> %broadcast.splatinsert5665, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5667

vector.body5667:                                  ; preds = %vector.body.interim5672, %vector.ph5656
  %index5668 = phi i64 [ 0, %vector.ph5656 ], [ %index.next5670, %vector.body.interim5672 ]
  %vec.ind5669 = phi <32 x i32> [ %induction5664, %vector.ph5656 ], [ %vec.ind.next5671, %vector.body.interim5672 ] ; 2 uses
  %i.dfs = add nsw <32 x i32> %vec.ind5669, %broadcast.splat5661
  %i.dft = icmp eq <32 x i32> %i.dfs, %broadcast.splat5659
  %i.dfu = freeze <32 x i1> %i.dft
  %i.dfv = bitcast <32 x i1> %i.dfu to i32
  %.not5832 = icmp eq i32 %i.dfv, 0
  br i1 %.not5832, label %vector.body.interim5672, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613

vector.body.interim5672:                          ; preds = %vector.body5667
  %vec.ind.next5671 = add nsw <32 x i32> %vec.ind5669, %broadcast.splat5666
  %index.next5670 = add nuw i64 %index5668, 32    ; 2 uses
  %i.dfw = icmp eq i64 %index.next5670, %n.vec5657
  br i1 %i.dfw, label %middle.block5673, label %vector.body5667, !llvm.loop !3137

middle.block5673:                                 ; preds = %vector.body.interim5672
  %cmp.n5674 = icmp eq i64 %i.dfk, %n.vec5657
  br i1 %cmp.n5674, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph, %middle.block5673
  %.ph5933 = phi i64 [ %i.dfk, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph ], [ %i.dfm, %middle.block5673 ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i6945407.ph = phi i32 [ %i.dee, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.lr.ph ], [ %i.dfp, %middle.block5673 ]
  br label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693: ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696
  %i.dfx = add nsw i64 %i.dfz, -1                 ; 2 uses
  %i.dfy = icmp eq i64 %i.dfx, 0
  br i1 %i.dfy, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696, !llvm.loop !3138

.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696:       ; preds = %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693
  %i.dfz = phi i64 [ %i.dfx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693 ], [ %.ph5933, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader ]
  %.044.us.us99.us.i.i.i.i.i.i.i.i.i6945407 = phi i32 [ %i.dga, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693 ], [ %.044.us.us99.us.i.i.i.i.i.i.i.i.i6945407.ph, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696.preheader ]
  %i.dga = add nsw i32 %.044.us.us99.us.i.i.i.i.i.i.i.i.i6945407, %i.dec ; 2 uses
  %.not16.us.us105.us.i.i.i.i.i.i.i.i.i697 = icmp eq i32 %i.dga, %i.def
  br i1 %.not16.us.us105.us.i.i.i.i.i.i.i.i.i697, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693, !llvm.loop !3136

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i680: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i679
  %i.dgb = load ptr, ptr %i.dek, align 8, !tbaa !283
  %i.dgc = sext i32 %i.dee to i64
  %i.dgd = sext i32 %i.dec to i64
  %i.dge = sext i32 %i.dbu to i64
  %invariant.gep196.i.i.i.i.i.i.i.i.i681 = getelementptr [4 x i8], ptr %i.dgb, i64 %i.dge
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i686, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i680
  %indvars.iv157.i.i.i.i.i.i.i.i.i683 = phi i64 [ %indvars.iv.next158.i.i.i.i.i.i.i.i.i688, %.critedge.us.i.i.i.i.i.i.i.i.i686 ], [ %i.dgc, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i680 ] ; 3 uses
  %.03543.us.i.i.i.i.i.i.i.i.i684 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i687, %.critedge.us.i.i.i.i.i.i.i.i.i686 ], [ %i.ded, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i680 ] ; 2 uses
  %gep197.i.i.i.i.i.i.i.i.i685 = getelementptr [4 x i8], ptr %invariant.gep196.i.i.i.i.i.i.i.i.i681, i64 %indvars.iv157.i.i.i.i.i.i.i.i.i683
  %i.dgf = load i32, ptr %gep197.i.i.i.i.i.i.i.i.i685, align 4, !tbaa !98
  %i.dgg = sext i32 %i.dgf to i64
  %i.dgh = getelementptr inbounds [2 x i8], ptr %i.deq, i64 %i.dgg
  %i.dgi = load i16, ptr %i.dgh, align 2, !tbaa !815
  %i.dgj = icmp eq i16 %i.dgi, %i.dco
  br i1 %i.dgj, label %bb.ss, label %.critedge.us.i.i.i.i.i.i.i.i.i686

bb.ss:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682
  %i.dgk = add nsw i64 %.03543.us.i.i.i.i.i.i.i.i.i684, -1 ; 2 uses
  %i.dgl = icmp eq i64 %i.dgk, 0
  br i1 %i.dgl, label %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i690, label %.critedge.us.i.i.i.i.i.i.i.i.i686

.critedge.us.i.i.i.i.i.i.i.i.i686:                ; preds = %bb.ss, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682
  %.1.us.i.i.i.i.i.i.i.i.i687 = phi i64 [ %.03543.us.i.i.i.i.i.i.i.i.i684, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682 ], [ %i.dgk, %bb.ss ]
  %indvars.iv.next158.i.i.i.i.i.i.i.i.i688 = add nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i683, %i.dgd ; 2 uses
  %i.dgm = trunc nsw i64 %indvars.iv.next158.i.i.i.i.i.i.i.i.i688 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i689 = icmp eq i32 %i.def, %i.dgm
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i689, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i682, !llvm.loop !3136

.lr.ph.split.i.i.i.i.i.i.i.i.i599:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i597
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.deg, i64 57
  %i.dgo = load i8, ptr %i.dgn, align 1, !range !113
  %i.dgp = trunc nuw i8 %i.dgo to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i600 = select i1 %i.dep, i1 true, i1 %i.dgp
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i600, label %.split.us.preheader.i.i.i.i.i.i.i.i.i666, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i601

.split.us.preheader.i.i.i.i.i.i.i.i.i666:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i599
  %i.dgq = sext i32 %i.dee to i64
  %i.dgr = sext i32 %i.dec to i64
  %i.dgs = sext i32 %i.dbu to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i667

.split.us.i.i.i.i.i.i.i.i.i667:                   ; preds = %.critedge.us53.i.i.i.i.i.i.i.i.i673, %.split.us.preheader.i.i.i.i.i.i.i.i.i666
  %indvars.iv154.i.i.i.i.i.i.i.i.i668 = phi i64 [ %i.dgq, %.split.us.preheader.i.i.i.i.i.i.i.i.i666 ], [ %indvars.iv.next155.i.i.i.i.i.i.i.i.i675, %.critedge.us53.i.i.i.i.i.i.i.i.i673 ] ; 3 uses
  %.03543.us49.i.i.i.i.i.i.i.i.i669 = phi i64 [ %i.ded, %.split.us.preheader.i.i.i.i.i.i.i.i.i666 ], [ %.1.us54.i.i.i.i.i.i.i.i.i674, %.critedge.us53.i.i.i.i.i.i.i.i.i673 ] ; 3 uses
  %i.dgt = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i668, %i.dgs ; 4 uses
  %i.dgu = lshr i64 %i.dgt, 6
  %i.dgv = and i64 %i.dgu, 67108863
  %i.dgw = getelementptr inbounds nuw [8 x i8], ptr %i.dei, i64 %i.dgv
  %i.dgx = load i64, ptr %i.dgw, align 8, !tbaa !147
  %i.dgy = and i64 %i.dgt, 63
  %i.dgz = shl nuw i64 1, %i.dgy
  %i.dha = and i64 %i.dgz, %i.dgx
  %.not.i.i.us.i.i.i.i.i.i.i.i.i670 = icmp eq i64 %i.dha, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i670, label %.critedge.us53.i.i.i.i.i.i.i.i.i673, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i671

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i671: ; preds = %.split.us.i.i.i.i.i.i.i.i.i667
  %i.dhb = trunc nsw i64 %i.dgt to i32
  %i.dhc = load ptr, ptr %i.del, align 8, !tbaa !329
  br i1 %i.dep, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, label %bb.st

bb.st:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i671
  %i.dhd = load i8, ptr %i.dej, align 1, !tbaa !288, !range !113, !noundef !114
  %i.dhe = trunc nuw i8 %i.dhd to i1
  br i1 %i.dhe, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.dhf = load ptr, ptr %i.dek, align 8, !tbaa !283
  %i.dhg = getelementptr inbounds [4 x i8], ptr %i.dhf, i64 %i.dgt
  %i.dhh = load i32, ptr %i.dhg, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

bb.sv:                                            ; preds = %bb.st
  %i.dhi = load i32, ptr %i.den, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i: ; preds = %bb.sv, %bb.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i671
  %.0.i.i19.us52.i.i.i.i.i.i.i.i.i672 = phi i32 [ %i.dhh, %bb.su ], [ %i.dhi, %bb.sv ], [ %i.dhb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us50.i.i.i.i.i.i.i.i.i671 ]
  %i.dhj = sext i32 %.0.i.i19.us52.i.i.i.i.i.i.i.i.i672 to i64
  %i.dhk = getelementptr inbounds [2 x i8], ptr %i.dhc, i64 %i.dhj
  %i.dhl = load i16, ptr %i.dhk, align 2, !tbaa !815
  %i.dhm = icmp eq i16 %i.dhl, %i.dco
  br i1 %i.dhm, label %bb.sw, label %.critedge.us53.i.i.i.i.i.i.i.i.i673

bb.sw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i
  %i.dhn = add nsw i64 %.03543.us49.i.i.i.i.i.i.i.i.i669, -1 ; 2 uses
  %i.dho = icmp eq i64 %i.dhn, 0
  br i1 %i.dho, label %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i677, label %.critedge.us53.i.i.i.i.i.i.i.i.i673

.critedge.us53.i.i.i.i.i.i.i.i.i673:              ; preds = %bb.sw, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i667
  %.1.us54.i.i.i.i.i.i.i.i.i674 = phi i64 [ %.03543.us49.i.i.i.i.i.i.i.i.i669, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us51.i.i.i.i.i.i.i.i.i ], [ %i.dhn, %bb.sw ], [ %.03543.us49.i.i.i.i.i.i.i.i.i669, %.split.us.i.i.i.i.i.i.i.i.i667 ]
  %indvars.iv.next155.i.i.i.i.i.i.i.i.i675 = add nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i668, %i.dgr ; 2 uses
  %i.dhp = trunc nsw i64 %indvars.iv.next155.i.i.i.i.i.i.i.i.i675 to i32
  %.not16.us55.i.i.i.i.i.i.i.i.i676 = icmp eq i32 %i.def, %i.dhp
  br i1 %.not16.us55.i.i.i.i.i.i.i.i.i676, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %.split.us.i.i.i.i.i.i.i.i.i667, !llvm.loop !3136

.lr.ph.split.split.i.i.i.i.i.i.i.i.i601:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i599
  %i.dhq = load i8, ptr %i.dej, align 1, !tbaa !288, !range !113, !noundef !114
  %i.dhr = trunc nuw i8 %i.dhq to i1
  br i1 %i.dhr, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i657, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i602

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i657: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i601
  %i.dhs = load i64, ptr %i.dei, align 8, !tbaa !147
  %i.dht = and i64 %i.dhs, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i658 = icmp eq i64 %i.dht, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i658, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i659

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i659: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i657
  %i.dhu = load ptr, ptr %i.del, align 8, !tbaa !329
  %i.dhv = load i32, ptr %i.den, align 8, !tbaa !330
  %i.dhw = sext i32 %i.dhv to i64
  %i.dhx = getelementptr inbounds [2 x i8], ptr %i.dhu, i64 %i.dhw
  %i.dhy = load i16, ptr %i.dhx, align 2, !tbaa !815
  %i.dhz = icmp eq i16 %i.dhy, %i.dco
  br i1 %i.dhz, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i660, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i660: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i659
  %i.dia = trunc i64 %i.ded to i32
  %i.dib = add i32 %i.dia, -1
  %i.dic = mul i32 %i.dib, %i.dec
  %i.did = add i32 %i.dee, %i.dic                 ; 3 uses
  %i.die = add nsw i64 %i.ded, -1                 ; 5 uses
  %i.dif = icmp eq i64 %i.die, 0
  br i1 %i.dif, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i660
  %min.iters.check5679 = icmp samesign ult i64 %i.ded, 33
  br i1 %min.iters.check5679, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader, label %vector.ph5680

vector.ph5680:                                    ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph
  %n.vec5681 = and i64 %i.die, -32                ; 3 uses
  %i.dig = and i64 %i.die, 31
  %i.dih = trunc i64 %n.vec5681 to i32
  %i.dii = mul i32 %i.dec, %i.dih
  %i.dij = add i32 %i.dee, %i.dii
  %broadcast.splatinsert5682 = insertelement <32 x i32> poison, i32 %i.def, i64 0
  %broadcast.splat5683 = shufflevector <32 x i32> %broadcast.splatinsert5682, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5684 = insertelement <32 x i32> poison, i32 %i.dec, i64 0
  %broadcast.splat5685 = shufflevector <32 x i32> %broadcast.splatinsert5684, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5686 = insertelement <32 x i32> poison, i32 %i.dee, i64 0
  %broadcast.splat5687 = shufflevector <32 x i32> %broadcast.splatinsert5686, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.dik = mul nsw <32 x i32> %broadcast.splat5685, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5688 = add nsw <32 x i32> %broadcast.splat5687, %i.dik
  %i.dil = shl nsw i32 %i.dec, 5
  %broadcast.splatinsert5689 = insertelement <32 x i32> poison, i32 %i.dil, i64 0
  %broadcast.splat5690 = shufflevector <32 x i32> %broadcast.splatinsert5689, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5691

vector.body5691:                                  ; preds = %vector.body.interim5696, %vector.ph5680
  %index5692 = phi i64 [ 0, %vector.ph5680 ], [ %index.next5694, %vector.body.interim5696 ]
  %vec.ind5693 = phi <32 x i32> [ %induction5688, %vector.ph5680 ], [ %vec.ind.next5695, %vector.body.interim5696 ] ; 2 uses
  %i.dim = add nsw <32 x i32> %vec.ind5693, %broadcast.splat5685
  %i.din = icmp eq <32 x i32> %i.dim, %broadcast.splat5683
  %i.dio = freeze <32 x i1> %i.din
  %i.dip = bitcast <32 x i1> %i.dio to i32
  %.not5831 = icmp eq i32 %i.dip, 0
  br i1 %.not5831, label %vector.body.interim5696, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613

vector.body.interim5696:                          ; preds = %vector.body5691
  %vec.ind.next5695 = add nsw <32 x i32> %vec.ind5693, %broadcast.splat5690
  %index.next5694 = add nuw i64 %index5692, 32    ; 2 uses
  %i.diq = icmp eq i64 %index.next5694, %n.vec5681
  br i1 %i.diq, label %middle.block5697, label %vector.body5691, !llvm.loop !3139

middle.block5697:                                 ; preds = %vector.body.interim5696
  %cmp.n5698 = icmp eq i64 %i.die, %n.vec5681
  br i1 %cmp.n5698, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph, %middle.block5697
  %.ph5938 = phi i64 [ %i.die, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph ], [ %i.dig, %middle.block5697 ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i6625406.ph = phi i32 [ %i.dee, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.lr.ph ], [ %i.dij, %middle.block5697 ]
  br label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661: ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664
  %i.dir = add nsw i64 %i.dit, -1                 ; 2 uses
  %i.dis = icmp eq i64 %i.dir, 0
  br i1 %i.dis, label %.split46.us.i.i.i.i.i.i.i.i.i648, label %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664, !llvm.loop !3140

.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664:      ; preds = %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661
  %i.dit = phi i64 [ %i.dir, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661 ], [ %.ph5938, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader ]
  %.044.us60.us83.us.i.i.i.i.i.i.i.i.i6625406 = phi i32 [ %i.diu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661 ], [ %.044.us60.us83.us.i.i.i.i.i.i.i.i.i6625406.ph, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664.preheader ]
  %i.diu = add nsw i32 %.044.us60.us83.us.i.i.i.i.i.i.i.i.i6625406, %i.dec ; 2 uses
  %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i665 = icmp eq i32 %i.diu, %i.def
  br i1 %.not16.us67.us89.us.i.i.i.i.i.i.i.i.i665, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661, !llvm.loop !3136

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i602:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i601
  %i.div = load ptr, ptr %i.dek, align 8, !tbaa !283
  %i.diw = sext i32 %i.dee to i64
  %i.dix = sext i32 %i.dec to i64
  %i.diy = sext i32 %i.dbu to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i603 = getelementptr [4 x i8], ptr %i.div, i64 %i.diy
  br label %.split37.i.i.i.i.i.i.i.i.i604

.split37.i.i.i.i.i.i.i.i.i604:                    ; preds = %.critedge.i.i.i.i.i.i.i.i.i609, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i602
  %indvars.iv.i.i.i.i.i.i.i.i.i605 = phi i64 [ %i.diw, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i602 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i611, %.critedge.i.i.i.i.i.i.i.i.i609 ] ; 3 uses
  %.03543.i.i.i.i.i.i.i.i.i606 = phi i64 [ %i.ded, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i602 ], [ %.1.i.i.i.i.i.i.i.i.i610, %.critedge.i.i.i.i.i.i.i.i.i609 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i607 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i603, i64 %indvars.iv.i.i.i.i.i.i.i.i.i605
  %i.diz = load i32, ptr %gep.i.i.i.i.i.i.i.i.i607, align 4, !tbaa !98 ; 2 uses
  %i.dja = zext i32 %i.diz to i64                 ; 2 uses
  %i.djb = lshr i64 %i.dja, 6
  %i.djc = getelementptr inbounds nuw [8 x i8], ptr %i.dei, i64 %i.djb
  %i.djd = load i64, ptr %i.djc, align 8, !tbaa !147
  %i.dje = and i64 %i.dja, 63
  %i.djf = shl nuw i64 1, %i.dje
  %i.djg = and i64 %i.djf, %i.djd
  %.not.i7.i.i.i.i.i.i.i.i.i.i608 = icmp eq i64 %i.djg, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i608, label %.critedge.i.i.i.i.i.i.i.i.i609, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %.split37.i.i.i.i.i.i.i.i.i604
  %i.djh = load ptr, ptr %i.del, align 8, !tbaa !329
  %i.dji = sext i32 %i.diz to i64
  %i.djj = getelementptr inbounds [2 x i8], ptr %i.djh, i64 %i.dji
  %i.djk = load i16, ptr %i.djj, align 2, !tbaa !815
  %i.djl = icmp eq i16 %i.djk, %i.dco
  br i1 %i.djl, label %bb.sx, label %.critedge.i.i.i.i.i.i.i.i.i609

bb.sx:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.djm = add nsw i64 %.03543.i.i.i.i.i.i.i.i.i606, -1 ; 2 uses
  %i.djn = icmp eq i64 %i.djm, 0
  br i1 %i.djn, label %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i647, label %.critedge.i.i.i.i.i.i.i.i.i609

.split46.us.loopexit.i.i.i.i.i.i.i.i.i708:        ; preds = %bb.sr
  %i.djo = trunc nsw i64 %indvars.iv160.i.i.i.i.i.i.i.i.i701 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i648

.split46.us.loopexit115.i.i.i.i.i.i.i.i.i690:     ; preds = %bb.ss
  %i.djp = trunc nsw i64 %indvars.iv157.i.i.i.i.i.i.i.i.i683 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i648

.split46.us.loopexit117.i.i.i.i.i.i.i.i.i677:     ; preds = %bb.sw
  %i.djq = trunc nsw i64 %indvars.iv154.i.i.i.i.i.i.i.i.i668 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i648

.split46.us.loopexit127.i.i.i.i.i.i.i.i.i647:     ; preds = %bb.sx
  %i.djr = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i605 to i32
  br label %.split46.us.i.i.i.i.i.i.i.i.i648

.split46.us.i.i.i.i.i.i.i.i.i648:                 ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i660, %middle.block5697, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i692, %middle.block5673, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i647, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i677, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i690, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i708
  %.us-phi.i.i.i.i.i.i.i.i.i649 = phi i32 [ %i.djq, %.split46.us.loopexit117.i.i.i.i.i.i.i.i.i677 ], [ %i.djr, %.split46.us.loopexit127.i.i.i.i.i.i.i.i.i647 ], [ %i.djo, %.split46.us.loopexit.i.i.i.i.i.i.i.i.i708 ], [ %i.djp, %.split46.us.loopexit115.i.i.i.i.i.i.i.i.i690 ], [ %i.dfj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.preheader.i.i.i.i.i.i.i.i.i692 ], [ %i.dfj, %middle.block5673 ], [ %i.did, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.preheader.i.i.i.i.i.i.i.i.i660 ], [ %i.did, %middle.block5697 ], [ %i.dfj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us98.us.i.i.i.i.i.i.i.i.i693 ], [ %i.did, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us82.us.i.i.i.i.i.i.i.i.i661 ] ; 3 uses
  %i.djs = load ptr, ptr %.sroa.12.0..sroa_idx.i565, align 8, !tbaa !930, !nonnull !114, !align !267 ; 5 uses
  %i.djt = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i649, 1
  %i.dju = sext i32 %i.djt to i64
  %i.djv = getelementptr inbounds nuw i8, ptr %i.djs, i64 144 ; 2 uses
  %i.djw = load ptr, ptr %i.djv, align 8, !tbaa !309 ; 2 uses
  %i.djx = icmp eq ptr %i.djw, null
  br i1 %i.djx, label %bb.sy, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650

bb.sy:                                            ; preds = %.split46.us.i.i.i.i.i.i.i.i.i648
  %i.djy = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.djs)
          to label %.noexc19.i.i.i.i.i.i.i.i655 unwind label %bb.td ; 0 uses

.noexc19.i.i.i.i.i.i.i.i655:                      ; preds = %bb.sy
  %.pre.i.i.i.i.i.i.i.i.i.i656 = load ptr, ptr %i.djv, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650: ; preds = %.noexc19.i.i.i.i.i.i.i.i655, %.split46.us.i.i.i.i.i.i.i.i.i648
  %i.djz = phi ptr [ %i.djw, %.split46.us.i.i.i.i.i.i.i.i.i648 ], [ %.pre.i.i.i.i.i.i.i.i.i.i656, %.noexc19.i.i.i.i.i.i.i.i655 ]
  %i.dka = getelementptr inbounds [8 x i8], ptr %i.djz, i64 %i.dds
  store i64 %i.dju, ptr %i.dka, align 8, !tbaa !147
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.djs, i64 32 ; 2 uses
  %i.dkc = load ptr, ptr %i.dkb, align 8, !tbaa !310
  %.not.i21.i.i.i.i.i.i.i.i.i651 = icmp eq ptr %i.dkc, null
  br i1 %.not.i21.i.i.i.i.i.i.i.i.i651, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %bb.sz

bb.sz:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.djs, i64 56
  %i.dke = load i32, ptr %i.dkd, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.djs, i32 noundef %i.dke, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i652 unwind label %bb.td

.noexc20.i.i.i.i.i.i.i.i652:                      ; preds = %bb.sz
  %i.dkf = load ptr, ptr %i.dkb, align 8, !tbaa !310 ; 2 uses
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.dkf, i64 44
  %i.dkh = load i8, ptr %i.dkg, align 4, !tbaa !315
  %i.dki = and i8 %i.dkh, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i653 = icmp eq i8 %i.dki, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i653, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i654, label %.invoke.i.i.i.i.i.i.i.i642, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i654: ; preds = %.noexc20.i.i.i.i.i.i.i.i652
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dkf, i64 16
  %i.dkk = load ptr, ptr %i.dkj, align 8, !tbaa !316
  %i.dkl = lshr i64 %.074.i.i.i.i.i.i.i.i588, 3
  %i.dkm = and i64 %i.dkl, 536870911
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkk, i64 %i.dkm ; 2 uses
  %i.dko = load i8, ptr %i.dkn, align 1, !tbaa !87
  %i.dkp = trunc i64 %.074.i.i.i.i.i.i.i.i588 to i8
  %i.dkq = and i8 %i.dkp, 7
  %i.dkr = shl nuw i8 1, %i.dkq
  %i.dks = or i8 %i.dko, %i.dkr
  store i8 %i.dks, ptr %i.dkn, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613

.critedge.i.i.i.i.i.i.i.i.i609:                   ; preds = %bb.sx, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i, %.split37.i.i.i.i.i.i.i.i.i604
  %.1.i.i.i.i.i.i.i.i.i610 = phi i64 [ %.03543.i.i.i.i.i.i.i.i.i606, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.djm, %bb.sx ], [ %.03543.i.i.i.i.i.i.i.i.i606, %.split37.i.i.i.i.i.i.i.i.i604 ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i611 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i605, %i.dix ; 2 uses
  %i.dkt = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i611 to i32
  %.not16.i.i.i.i.i.i.i.i.i612 = icmp eq i32 %i.def, %i.dkt
  br i1 %.not16.i.i.i.i.i.i.i.i.i612, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613, label %.split37.i.i.i.i.i.i.i.i.i604, !llvm.loop !3136

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613: ; preds = %.critedge.i.i.i.i.i.i.i.i.i609, %vector.body5691, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664, %.critedge.us53.i.i.i.i.i.i.i.i.i673, %.critedge.us.i.i.i.i.i.i.i.i.i686, %vector.body5667, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696, %.critedge.us.us.i.i.i.i.i.i.i.i.i704, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i654, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i659, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i657, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i691, %bb.sq
  %.041.i.i.i.i.i.i.i.i.i614 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i649, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i650 ], [ %.us-phi.i.i.i.i.i.i.i.i.i649, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i654 ], [ %i.dee, %bb.sq ], [ %i.def, %.critedge.us65.us87.us.i.i.i.i.i.i.i.i.i664 ], [ %i.def, %.critedge.us.us103.us.i.i.i.i.i.i.i.i.i696 ], [ %i.def, %.critedge.us53.i.i.i.i.i.i.i.i.i673 ], [ %i.def, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i659 ], [ %i.def, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i691 ], [ %i.def, %vector.body5667 ], [ %i.def, %.critedge.us.us.i.i.i.i.i.i.i.i.i704 ], [ %i.def, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i657 ], [ %i.def, %vector.body5691 ], [ %i.def, %.critedge.us.i.i.i.i.i.i.i.i.i686 ], [ %i.def, %.critedge.i.i.i.i.i.i.i.i.i609 ]
  %i.dku = load ptr, ptr %.sroa.952.0..sroa_idx.i562, align 8, !tbaa !927, !nonnull !114, !align !333
  %i.dkv = load i32, ptr %i.dku, align 4, !tbaa !98
  %i.dkw = icmp eq i32 %.041.i.i.i.i.i.i.i.i.i614, %i.dkv
  br i1 %i.dkw, label %bb.ta, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.ta:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i613
  %i.dkx = load ptr, ptr %.sroa.12.0..sroa_idx.i565, align 8, !tbaa !930, !nonnull !114, !align !267 ; 5 uses
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkx, i64 144 ; 2 uses
  %i.dkz = load ptr, ptr %i.dky, align 8, !tbaa !309 ; 2 uses
  %i.dla = icmp eq ptr %i.dkz, null
  br i1 %i.dla, label %bb.tb, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i615

bb.tb:                                            ; preds = %bb.ta
  %i.dlb = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dkx)
          to label %.noexc22.i.i.i.i.i.i.i.i645 unwind label %bb.td ; 0 uses

.noexc22.i.i.i.i.i.i.i.i645:                      ; preds = %bb.tb
  %.pre.i26.i.i.i.i.i.i.i.i.i646 = load ptr, ptr %i.dky, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i615

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i615: ; preds = %.noexc22.i.i.i.i.i.i.i.i645, %bb.ta
  %i.dlc = phi ptr [ %i.dkz, %bb.ta ], [ %.pre.i26.i.i.i.i.i.i.i.i.i646, %.noexc22.i.i.i.i.i.i.i.i645 ]
  %i.dld = getelementptr inbounds [8 x i8], ptr %i.dlc, i64 %i.dds
  store i64 0, ptr %i.dld, align 8, !tbaa !147
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dkx, i64 32 ; 2 uses
  %i.dlf = load ptr, ptr %i.dle, align 8, !tbaa !310
  %.not.i23.i.i.i.i.i.i.i.i.i616 = icmp eq ptr %i.dlf, null
  br i1 %.not.i23.i.i.i.i.i.i.i.i.i616, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.tc

bb.tc:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22.i.i.i.i.i.i.i.i.i615
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dkx, i64 56
  %i.dlh = load i32, ptr %i.dlg, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.dkx, i32 noundef %i.dlh, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i640 unwind label %bb.td

.noexc23.i.i.i.i.i.i.i.i640:                      ; preds = %bb.tc
  %i.dli = load ptr, ptr %i.dle, align 8, !tbaa !310 ; 2 uses
  %i.dlj = getelementptr inbounds nuw i8, ptr %i.dli, i64 44
  %i.dlk = load i8, ptr %i.dlj, align 4, !tbaa !315
  %i.dll = and i8 %i.dlk, 2
  %.not.i3.i24.i.i.i.i.i.i.i.i.i641 = icmp eq i8 %i.dll, 0
  br i1 %.not.i3.i24.i.i.i.i.i.i.i.i.i641, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i644, label %.invoke.i.i.i.i.i.i.i.i642, !prof !112

.invoke.i.i.i.i.i.i.i.i642:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i640, %.noexc20.i.i.i.i.i.i.i.i652
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i643 unwind label %bb.td

.cont.i.i.i.i.i.i.i.i643:                         ; preds = %.invoke.i.i.i.i.i.i.i.i642
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25.i.i.i.i.i.i.i.i.i644: ; preds = %.noexc23.i.i.i.i.i.i.i.i640
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dli, i64 16
  %i.dln = load ptr, ptr %i.dlm, align 8, !tbaa !316
  %i.dlo = lshr i64 %.074.i.i.i.i.i.i.i.i588, 3
  %i.dlp = and i64 %i.dlo, 536870911
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.dln, i64 %i.dlp ; 2 uses
  %i.dlr = load i8, ptr %i.dlq, align 1, !tbaa !87
  %i.dls = trunc i64 %.074.i.i.i.i.i.i.i.i588 to i8
  %i.dlt = and i8 %i.dls, 7
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
bb.xr:                                            ; preds = %bb.xq
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eep, i64 64
  %i.efa = load i32, ptr %i.eez, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896

bb.xs:                                            ; preds = %bb.xq
  %i.efb = getelementptr inbounds nuw i8, ptr %i.eep, i64 8
  %i.efc = load ptr, ptr %i.efb, align 8, !tbaa !283
  %sext.i.i.i.i.i.i.i.i.i895 = shl i64 %.074.i.i.i.i.i.i.i.i894, 32
  %i.efd = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i895, 30
  %i.efe = getelementptr inbounds i8, ptr %i.efc, i64 %i.efd
  %i.eff = load i32, ptr %i.efe, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896: ; preds = %bb.xs, %bb.xr, %bb.xp
  %.0.i.i.i.i.i.i.i.i.i.i.i897 = phi i32 [ %i.eff, %bb.xs ], [ %i.efa, %bb.xr ], [ %i.eeq, %bb.xp ]
  %i.efg = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i897 to i64
  %i.efh = getelementptr inbounds [8 x i8], ptr %i.ees, i64 %i.efg
  %i.efi = load i64, ptr %i.efh, align 8, !tbaa !147 ; 6 uses
  %i.efj = load ptr, ptr %.sroa.650.0..sroa_idx.i, align 8, !tbaa !935, !nonnull !114, !align !267 ; 5 uses
  %i.efk = getelementptr inbounds nuw i8, ptr %i.efj, i64 16
  %i.efl = load ptr, ptr %i.efk, align 8, !tbaa !329
  %i.efm = getelementptr inbounds nuw i8, ptr %i.efj, i64 58
  %i.efn = load i8, ptr %i.efm, align 2, !tbaa !287, !range !113, !noundef !114
  %i.efo = trunc nuw i8 %i.efn to i1
  br i1 %i.efo, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i, label %bb.xt

bb.xt:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896
  %i.efp = getelementptr inbounds nuw i8, ptr %i.efj, i64 59
  %i.efq = load i8, ptr %i.efp, align 1, !tbaa !288, !range !113, !noundef !114
  %i.efr = trunc nuw i8 %i.efq to i1
  br i1 %i.efr, label %bb.xu, label %bb.xv

bb.xu:                                            ; preds = %bb.xt
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efj, i64 64
  %i.eft = load i32, ptr %i.efs, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

bb.xv:                                            ; preds = %bb.xt
  %i.efu = getelementptr inbounds nuw i8, ptr %i.efj, i64 8
  %i.efv = load ptr, ptr %i.efu, align 8, !tbaa !283
  %sext39.i.i.i.i.i.i.i.i.i898 = shl i64 %.074.i.i.i.i.i.i.i.i894, 32
  %i.efw = ashr exact i64 %sext39.i.i.i.i.i.i.i.i.i898, 30
  %i.efx = getelementptr inbounds i8, ptr %i.efv, i64 %i.efw
  %i.efy = load i32, ptr %i.efx, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i: ; preds = %bb.xv, %bb.xu, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896
  %.0.i.i18.i.i.i.i.i.i.i.i.i899 = phi i32 [ %i.efy, %bb.xv ], [ %i.eft, %bb.xu ], [ %i.eeq, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i.i.i.i.i.i.i.i.i896 ]
  %i.efz = sext i32 %.0.i.i18.i.i.i.i.i.i.i.i.i899 to i64
  %i.ega = getelementptr inbounds [8 x i8], ptr %i.efl, i64 %i.efz
  %i.egb = load i64, ptr %i.ega, align 8, !tbaa !147 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i900 = icmp eq i64 %i.egb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i900, label %bb.xw, label %bb.xz, !prof !105

bb.xw:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #35, !noalias !3354
  store i64 0, ptr %140, align 16, !tbaa !87, !noalias !3354
  store i32 0, ptr %i.edu, align 16, !tbaa !87, !alias.scope !3355, !noalias !3354
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %141, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %140)
          to label %.noexc.i.i.i.i.i.i.i.i969 unwind label %bb.ym

.noexc.i.i.i.i.i.i.i.i969:                        ; preds = %bb.xw
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #35, !noalias !3354
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clImEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %141, ptr nonnull @.str.178) #38
          to label %bb.xx unwind label %bb.xy

bb.xx:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i969
  unreachable

bb.xy:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i969
  %i.egc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.egd = load ptr, ptr %141, align 8, !tbaa !106 ; 2 uses
  %i.ege = icmp eq ptr %i.egd, %i.edv
  br i1 %i.ege, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i971, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i970: ; preds = %bb.xy
  %i.egf = load i64, ptr %i.edv, align 8, !tbaa !87
  %i.egg = add i64 %i.egf, 1
  call void @_ZdlPvm(ptr noundef %i.egd, i64 noundef %i.egg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i971

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i971: ; preds = %bb.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i970
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #35
  br label %.body.i.i.i.i.i.i.i.i916

bb.xz:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19.i.i.i.i.i.i.i.i.i
  %i.egh = load ptr, ptr %.sroa.751.0..sroa_idx.i, align 8, !tbaa !936, !nonnull !114, !align !267
  %i.egi = load ptr, ptr %i.egh, align 8, !tbaa !281
  %i.egj = load ptr, ptr %.sroa.852.0..sroa_idx.i, align 8, !tbaa !937, !nonnull !114, !align !333 ; 2 uses
  %i.egk = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !938, !nonnull !114, !align !333 ; 2 uses
  %i.egl = load ptr, ptr %.sroa.1054.0..sroa_idx.i, align 8, !tbaa !939, !nonnull !114, !align !333
  %sext40.i.i.i.i.i.i.i.i.i = shl i64 %.074.i.i.i.i.i.i.i.i894, 32
  %i.egm = ashr exact i64 %sext40.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.egn = getelementptr inbounds [4 x i8], ptr %i.eej, i64 %i.egm
  %i.ego = load i32, ptr %i.egn, align 4, !tbaa !98
  %i.egp = sext i32 %i.ego to i64
  %i.egq = getelementptr inbounds [4 x i8], ptr %i.egi, i64 %i.egp
  %i.egr = load i32, ptr %i.egq, align 4, !tbaa !98 ; 2 uses
  %i.egs = icmp sgt i64 %i.egb, 0                 ; 3 uses
  %i.egt = add nsw i32 %i.egr, -1
  %i.egu = select i1 %i.egs, i32 0, i32 %i.egt
  store i32 %i.egu, ptr %i.egj, align 4, !tbaa !98
  %i.egv = select i1 %i.egs, i32 %i.egr, i32 -1
  store i32 %i.egv, ptr %i.egk, align 4, !tbaa !98
  %i.egw = select i1 %i.egs, i32 1, i32 -1        ; 15 uses
  store i32 %i.egw, ptr %i.egl, align 4, !tbaa !98
  %i.egx = call noundef i64 @llvm.abs.i64(i64 %i.egb, i1 true) ; 10 uses
  %i.egy = load i32, ptr %i.egj, align 4, !tbaa !98 ; 14 uses
  %i.egz = load i32, ptr %i.egk, align 4, !tbaa !98 ; 20 uses
  %.not1643.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.egy, %i.egz
  br i1 %.not1643.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %.lr.ph.i.i.i.i.i.i.i.i.i901

.lr.ph.i.i.i.i.i.i.i.i.i901:                      ; preds = %bb.xz
  %i.eha = load ptr, ptr %.sroa.11.0..sroa_idx.i872, align 8, !tbaa !940, !nonnull !114, !align !267 ; 7 uses
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.eha, i64 24
  %i.ehc = load ptr, ptr %i.ehb, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i902 = icmp eq ptr %i.ehc, null
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.eha, i64 59 ; 3 uses
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.eha, i64 8 ; 3 uses
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.eha, i64 16 ; 4 uses
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.eha, i64 58
  %i.ehh = getelementptr inbounds nuw i8, ptr %i.eha, i64 64 ; 3 uses
  %i.ehi = load i8, ptr %i.ehg, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ehj = trunc nuw i8 %i.ehi to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i902, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i956, label %.lr.ph.split.i.i.i.i.i.i.i.i.i903

.lr.ph.split.us.i.i.i.i.i.i.i.i.i956:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i901
  %i.ehk = load ptr, ptr %i.ehf, align 8, !tbaa !329 ; 3 uses
  br i1 %i.ehj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i964, label %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i957

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i964: ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i956
  %i.ehl = sext i32 %i.egy to i64
  %i.ehm = sext i32 %i.egw to i64
  %i.ehn = sext i32 %i.eeo to i64
  %invariant.gep199.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ehk, i64 %i.ehn
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965: ; preds = %.critedge.us.us.i.i.i.i.i.i.i.i.i966, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i964
  %indvars.iv161.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ehl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i964 ], [ %indvars.iv.next162.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i966 ] ; 3 uses
  %.03644.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.egx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader.i.i.i.i.i.i.i.i.i964 ], [ %.1.us.us.i.i.i.i.i.i.i.i.i967, %.critedge.us.us.i.i.i.i.i.i.i.i.i966 ] ; 2 uses
  %gep200.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep199.i.i.i.i.i.i.i.i.i, i64 %indvars.iv161.i.i.i.i.i.i.i.i.i
  %i.eho = load i64, ptr %gep200.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.ehp = icmp eq i64 %i.eho, %i.efi
  br i1 %i.ehp, label %bb.ya, label %.critedge.us.us.i.i.i.i.i.i.i.i.i966

bb.ya:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965
  %i.ehq = add nsw i64 %.03644.us.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ehr = icmp eq i64 %i.ehq, 0
  br i1 %i.ehr, label %.split47.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.us.i.i.i.i.i.i.i.i.i966

.critedge.us.us.i.i.i.i.i.i.i.i.i966:             ; preds = %bb.ya, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965
  %.1.us.us.i.i.i.i.i.i.i.i.i967 = phi i64 [ %.03644.us.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965 ], [ %i.ehq, %bb.ya ]
  %indvars.iv.next162.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv161.i.i.i.i.i.i.i.i.i, %i.ehm ; 2 uses
  %i.ehs = trunc nsw i64 %indvars.iv.next162.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.us.i.i.i.i.i.i.i.i.i968 = icmp eq i32 %i.egz, %i.ehs
  br i1 %.not16.us.us.i.i.i.i.i.i.i.i.i968, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.i.i.i.i.i.i.i.i.i965, !llvm.loop !3159

.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i957:       ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i956
  %i.eht = load i8, ptr %i.ehd, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ehu = trunc nuw i8 %i.eht to i1
  br i1 %i.ehu, label %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i963, label %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i958

.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i963: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i957
  %i.ehv = load i32, ptr %i.ehh, align 8, !tbaa !330
  %i.ehw = sext i32 %i.ehv to i64
  %i.ehx = getelementptr inbounds [8 x i8], ptr %i.ehk, i64 %i.ehw
  %i.ehy = load i64, ptr %i.ehx, align 8, !tbaa !147
  %i.ehz = icmp eq i64 %i.ehy, %i.efi
  br i1 %i.ehz, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i963
  %i.eia = trunc i64 %i.egx to i32
  %i.eib = add i32 %i.eia, -1
  %i.eic = mul i32 %i.eib, %i.egw
  %i.eid = add i32 %i.egy, %i.eic                 ; 3 uses
  %i.eie = add nsw i64 %i.egx, -1                 ; 5 uses
  %i.eif = icmp eq i64 %i.eie, 0
  br i1 %i.eif, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph:    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5607 = icmp samesign ult i64 %i.egx, 33
  br i1 %min.iters.check5607, label %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5608

vector.ph5608:                                    ; preds = %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5609 = and i64 %i.eie, -32                ; 3 uses
  %i.eig = and i64 %i.eie, 31
  %i.eih = trunc i64 %n.vec5609 to i32
  %i.eii = mul i32 %i.egw, %i.eih
  %i.eij = add i32 %i.egy, %i.eii
  %broadcast.splatinsert5610 = insertelement <32 x i32> poison, i32 %i.egz, i64 0
  %broadcast.splat5611 = shufflevector <32 x i32> %broadcast.splatinsert5610, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5612 = insertelement <32 x i32> poison, i32 %i.egw, i64 0
  %broadcast.splat5613 = shufflevector <32 x i32> %broadcast.splatinsert5612, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5614 = insertelement <32 x i32> poison, i32 %i.egy, i64 0
  %broadcast.splat5615 = shufflevector <32 x i32> %broadcast.splatinsert5614, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.eik = mul nsw <32 x i32> %broadcast.splat5613, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5616 = add nsw <32 x i32> %broadcast.splat5615, %i.eik
  %i.eil = shl nsw i32 %i.egw, 5
  %broadcast.splatinsert5617 = insertelement <32 x i32> poison, i32 %i.eil, i64 0
  %broadcast.splat5618 = shufflevector <32 x i32> %broadcast.splatinsert5617, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5619

vector.body5619:                                  ; preds = %vector.body.interim5624, %vector.ph5608
  %index5620 = phi i64 [ 0, %vector.ph5608 ], [ %index.next5622, %vector.body.interim5624 ]
  %vec.ind5621 = phi <32 x i32> [ %induction5616, %vector.ph5608 ], [ %vec.ind.next5623, %vector.body.interim5624 ] ; 2 uses
  %i.eim = add nsw <32 x i32> %vec.ind5621, %broadcast.splat5613
  %i.ein = icmp eq <32 x i32> %i.eim, %broadcast.splat5611
  %i.eio = freeze <32 x i1> %i.ein
  %i.eip = bitcast <32 x i1> %i.eio to i32
  %.not5830 = icmp eq i32 %i.eip, 0
  br i1 %.not5830, label %vector.body.interim5624, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915

vector.body.interim5624:                          ; preds = %vector.body5619
  %vec.ind.next5623 = add nsw <32 x i32> %vec.ind5621, %broadcast.splat5618
  %index.next5622 = add nuw i64 %index5620, 32    ; 2 uses
  %i.eiq = icmp eq i64 %index.next5622, %n.vec5609
  br i1 %i.eiq, label %middle.block5625, label %vector.body5619, !llvm.loop !3160

middle.block5625:                                 ; preds = %vector.body.interim5624
  %cmp.n5626 = icmp eq i64 %i.eie, %n.vec5609
  br i1 %cmp.n5626, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5625
  %.ph5965 = phi i64 [ %i.eie, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eig, %middle.block5625 ]
  %.045.us.us100.us.i.i.i.i.i.i.i.i.i5399.ph = phi i32 [ %i.egy, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eij, %middle.block5625 ]
  br label %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i
  %i.eir = add nsw i64 %i.eit, -1                 ; 2 uses
  %i.eis = icmp eq i64 %i.eir, 0
  br i1 %i.eis, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3161

.critedge.us.us104.us.i.i.i.i.i.i.i.i.i:          ; preds = %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i
  %i.eit = phi i64 [ %i.eir, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i ], [ %.ph5965, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.045.us.us100.us.i.i.i.i.i.i.i.i.i5399 = phi i32 [ %i.eiu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i ], [ %.045.us.us100.us.i.i.i.i.i.i.i.i.i5399.ph, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.eiu = add nsw i32 %.045.us.us100.us.i.i.i.i.i.i.i.i.i5399, %i.egw ; 2 uses
  %.not16.us.us106.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.eiu, %i.egz
  br i1 %.not16.us.us106.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3159

.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i958: ; preds = %.lr.ph.split.us.split.i.i.i.i.i.i.i.i.i957
  %i.eiv = load ptr, ptr %i.ehe, align 8, !tbaa !283
  %i.eiw = sext i32 %i.egy to i64
  %i.eix = sext i32 %i.egw to i64
  %i.eiy = sext i32 %i.eeo to i64
  %invariant.gep197.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %i.eiv, i64 %i.eiy
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i960, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i958
  %indvars.iv158.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next159.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i960 ], [ %i.eiw, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i958 ] ; 3 uses
  %.03644.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i961, %.critedge.us.i.i.i.i.i.i.i.i.i960 ], [ %i.egx, %.lr.ph.split.us.split.split.i.i.i.i.i.i.i.i.i958 ] ; 2 uses
  %gep198.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep197.i.i.i.i.i.i.i.i.i, i64 %indvars.iv158.i.i.i.i.i.i.i.i.i
  %i.eiz = load i32, ptr %gep198.i.i.i.i.i.i.i.i.i, align 4, !tbaa !98
  %i.eja = sext i32 %i.eiz to i64
  %i.ejb = getelementptr inbounds [8 x i8], ptr %i.ehk, i64 %i.eja
  %i.ejc = load i64, ptr %i.ejb, align 8, !tbaa !147
  %i.ejd = icmp eq i64 %i.ejc, %i.efi
  br i1 %i.ejd, label %bb.yb, label %.critedge.us.i.i.i.i.i.i.i.i.i960

bb.yb:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959
  %i.eje = add nsw i64 %.03644.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ejf = icmp eq i64 %i.eje, 0
  br i1 %i.ejf, label %.split47.us.loopexit116.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i960

.critedge.us.i.i.i.i.i.i.i.i.i960:                ; preds = %bb.yb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959
  %.1.us.i.i.i.i.i.i.i.i.i961 = phi i64 [ %.03644.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959 ], [ %i.eje, %bb.yb ]
  %indvars.iv.next159.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i, %i.eix ; 2 uses
  %i.ejg = trunc nsw i64 %indvars.iv.next159.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i962 = icmp eq i32 %i.egz, %i.ejg
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i962, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i959, !llvm.loop !3159

.lr.ph.split.i.i.i.i.i.i.i.i.i903:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i901
  %i.ejh = getelementptr inbounds nuw i8, ptr %i.eha, i64 57
  %i.eji = load i8, ptr %i.ejh, align 1, !range !113
  %i.ejj = trunc nuw i8 %i.eji to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i904 = select i1 %i.ehj, i1 true, i1 %i.ejj
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i904, label %.split.us.preheader.i.i.i.i.i.i.i.i.i953, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i905

.split.us.preheader.i.i.i.i.i.i.i.i.i953:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i903
  %i.ejk = sext i32 %i.egy to i64
  %i.ejl = sext i32 %i.egw to i64
  %i.ejm = sext i32 %i.eeo to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i954

.split.us.i.i.i.i.i.i.i.i.i954:                   ; preds = %.critedge.us54.i.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i.i953
  %indvars.iv155.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ejk, %.split.us.preheader.i.i.i.i.i.i.i.i.i953 ], [ %indvars.iv.next156.i.i.i.i.i.i.i.i.i, %.critedge.us54.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03644.us50.i.i.i.i.i.i.i.i.i = phi i64 [ %i.egx, %.split.us.preheader.i.i.i.i.i.i.i.i.i953 ], [ %.1.us55.i.i.i.i.i.i.i.i.i, %.critedge.us54.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ejn = add nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i, %i.ejm ; 4 uses
  %i.ejo = lshr i64 %i.ejn, 6
  %i.ejp = and i64 %i.ejo, 67108863
  %i.ejq = getelementptr inbounds nuw [8 x i8], ptr %i.ehc, i64 %i.ejp
  %i.ejr = load i64, ptr %i.ejq, align 8, !tbaa !147
  %i.ejs = and i64 %i.ejn, 63
  %i.ejt = shl nuw i64 1, %i.ejs
  %i.eju = and i64 %i.ejt, %i.ejr
  %.not.i.i.us.i.i.i.i.i.i.i.i.i955 = icmp eq i64 %i.eju, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i955, label %.critedge.us54.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i954
  %i.ejv = trunc nsw i64 %i.ejn to i32
  %i.ejw = load ptr, ptr %i.ehf, align 8, !tbaa !329
  br i1 %i.ehj, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i, label %bb.yc

bb.yc:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i
  %i.ejx = load i8, ptr %i.ehd, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ejy = trunc nuw i8 %i.ejx to i1
  br i1 %i.ejy, label %bb.ye, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.ejz = load ptr, ptr %i.ehe, align 8, !tbaa !283
  %i.eka = getelementptr inbounds [4 x i8], ptr %i.ejz, i64 %i.ejn
  %i.ekb = load i32, ptr %i.eka, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i

bb.ye:                                            ; preds = %bb.yc
  %i.ekc = load i32, ptr %i.ehh, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i: ; preds = %bb.ye, %bb.yd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i
  %.0.i.i20.us53.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ekb, %bb.yd ], [ %i.ekc, %bb.ye ], [ %i.ejv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i ]
  %i.ekd = sext i32 %.0.i.i20.us53.i.i.i.i.i.i.i.i.i to i64
  %i.eke = getelementptr inbounds [8 x i8], ptr %i.ejw, i64 %i.ekd
  %i.ekf = load i64, ptr %i.eke, align 8, !tbaa !147
  %i.ekg = icmp eq i64 %i.ekf, %i.efi
  br i1 %i.ekg, label %bb.yf, label %.critedge.us54.i.i.i.i.i.i.i.i.i

bb.yf:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i
  %i.ekh = add nsw i64 %.03644.us50.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.eki = icmp eq i64 %i.ekh, 0
  br i1 %i.eki, label %.split47.us.loopexit118.i.i.i.i.i.i.i.i.i, label %.critedge.us54.i.i.i.i.i.i.i.i.i

.critedge.us54.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.yf, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i954
  %.1.us55.i.i.i.i.i.i.i.i.i = phi i64 [ %.03644.us50.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us52.i.i.i.i.i.i.i.i.i ], [ %i.ekh, %bb.yf ], [ %.03644.us50.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i954 ]
  %indvars.iv.next156.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i, %i.ejl ; 2 uses
  %i.ekj = trunc nsw i64 %indvars.iv.next156.i.i.i.i.i.i.i.i.i to i32
  %.not16.us56.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.egz, %i.ekj
  br i1 %.not16.us56.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %.split.us.i.i.i.i.i.i.i.i.i954, !llvm.loop !3159

.lr.ph.split.split.i.i.i.i.i.i.i.i.i905:          ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i903
  %i.ekk = load i8, ptr %i.ehd, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ekl = trunc nuw i8 %i.ekk to i1
  br i1 %i.ekl, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i950, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i906

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i950: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i905
  %i.ekm = load i64, ptr %i.ehc, align 8, !tbaa !147
  %i.ekn = and i64 %i.ekm, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i951 = icmp eq i64 %i.ekn, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i951, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i952

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i952: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i950
  %i.eko = load ptr, ptr %i.ehf, align 8, !tbaa !329
  %i.ekp = load i32, ptr %i.ehh, align 8, !tbaa !330
  %i.ekq = sext i32 %i.ekp to i64
  %i.ekr = getelementptr inbounds [8 x i8], ptr %i.eko, i64 %i.ekq
  %i.eks = load i64, ptr %i.ekr, align 8, !tbaa !147
  %i.ekt = icmp eq i64 %i.eks, %i.efi
  br i1 %i.ekt, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i952
  %i.eku = trunc i64 %i.egx to i32
  %i.ekv = add i32 %i.eku, -1
  %i.ekw = mul i32 %i.ekv, %i.egw
  %i.ekx = add i32 %i.egy, %i.ekw                 ; 3 uses
  %i.eky = add nsw i64 %i.egx, -1                 ; 5 uses
  %i.ekz = icmp eq i64 %i.eky, 0
  br i1 %i.ekz, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5631 = icmp samesign ult i64 %i.egx, 33
  br i1 %min.iters.check5631, label %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5632

vector.ph5632:                                    ; preds = %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5633 = and i64 %i.eky, -32                ; 3 uses
  %i.ela = and i64 %i.eky, 31
  %i.elb = trunc i64 %n.vec5633 to i32
  %i.elc = mul i32 %i.egw, %i.elb
  %i.eld = add i32 %i.egy, %i.elc
  %broadcast.splatinsert5634 = insertelement <32 x i32> poison, i32 %i.egz, i64 0
  %broadcast.splat5635 = shufflevector <32 x i32> %broadcast.splatinsert5634, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5636 = insertelement <32 x i32> poison, i32 %i.egw, i64 0
  %broadcast.splat5637 = shufflevector <32 x i32> %broadcast.splatinsert5636, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5638 = insertelement <32 x i32> poison, i32 %i.egy, i64 0
  %broadcast.splat5639 = shufflevector <32 x i32> %broadcast.splatinsert5638, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ele = mul nsw <32 x i32> %broadcast.splat5637, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5640 = add nsw <32 x i32> %broadcast.splat5639, %i.ele
  %i.elf = shl nsw i32 %i.egw, 5
  %broadcast.splatinsert5641 = insertelement <32 x i32> poison, i32 %i.elf, i64 0
  %broadcast.splat5642 = shufflevector <32 x i32> %broadcast.splatinsert5641, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5643

vector.body5643:                                  ; preds = %vector.body.interim5648, %vector.ph5632
  %index5644 = phi i64 [ 0, %vector.ph5632 ], [ %index.next5646, %vector.body.interim5648 ]
  %vec.ind5645 = phi <32 x i32> [ %induction5640, %vector.ph5632 ], [ %vec.ind.next5647, %vector.body.interim5648 ] ; 2 uses
  %i.elg = add nsw <32 x i32> %vec.ind5645, %broadcast.splat5637
  %i.elh = icmp eq <32 x i32> %i.elg, %broadcast.splat5635
  %i.eli = freeze <32 x i1> %i.elh
  %i.elj = bitcast <32 x i1> %i.eli to i32
  %.not5829 = icmp eq i32 %i.elj, 0
  br i1 %.not5829, label %vector.body.interim5648, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915

vector.body.interim5648:                          ; preds = %vector.body5643
  %vec.ind.next5647 = add nsw <32 x i32> %vec.ind5645, %broadcast.splat5642
  %index.next5646 = add nuw i64 %index5644, 32    ; 2 uses
  %i.elk = icmp eq i64 %index.next5646, %n.vec5633
  br i1 %i.elk, label %middle.block5649, label %vector.body5643, !llvm.loop !3162

middle.block5649:                                 ; preds = %vector.body.interim5648
  %cmp.n5650 = icmp eq i64 %i.eky, %n.vec5633
  br i1 %cmp.n5650, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5649
  %.ph5970 = phi i64 [ %i.eky, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.ela, %middle.block5649 ]
  %.045.us61.us84.us.i.i.i.i.i.i.i.i.i5398.ph = phi i32 [ %i.egy, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.eld, %middle.block5649 ]
  br label %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i
  %i.ell = add nsw i64 %i.eln, -1                 ; 2 uses
  %i.elm = icmp eq i64 %i.ell, 0
  br i1 %i.elm, label %.split47.us.i.i.i.i.i.i.i.i.i, label %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3163

.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i
  %i.eln = phi i64 [ %i.ell, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i ], [ %.ph5970, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.045.us61.us84.us.i.i.i.i.i.i.i.i.i5398 = phi i32 [ %i.elo, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i ], [ %.045.us61.us84.us.i.i.i.i.i.i.i.i.i5398.ph, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.elo = add nsw i32 %.045.us61.us84.us.i.i.i.i.i.i.i.i.i5398, %i.egw ; 2 uses
  %.not16.us68.us90.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.elo, %i.egz
  br i1 %.not16.us68.us90.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3159

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i906:    ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i905
  %i.elp = load ptr, ptr %i.ehe, align 8, !tbaa !283
  %i.elq = sext i32 %i.egy to i64
  %i.elr = sext i32 %i.egw to i64
  %i.els = sext i32 %i.eeo to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i907 = getelementptr [4 x i8], ptr %i.elp, i64 %i.els
  br label %.split38.i.i.i.i.i.i.i.i.i

.split38.i.i.i.i.i.i.i.i.i:                       ; preds = %.critedge.i.i.i.i.i.i.i.i.i911, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i906
  %indvars.iv.i.i.i.i.i.i.i.i.i908 = phi i64 [ %i.elq, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i906 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i913, %.critedge.i.i.i.i.i.i.i.i.i911 ] ; 3 uses
  %.03644.i.i.i.i.i.i.i.i.i = phi i64 [ %i.egx, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i906 ], [ %.1.i.i.i.i.i.i.i.i.i912, %.critedge.i.i.i.i.i.i.i.i.i911 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i909 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i907, i64 %indvars.iv.i.i.i.i.i.i.i.i.i908
  %i.elt = load i32, ptr %gep.i.i.i.i.i.i.i.i.i909, align 4, !tbaa !98 ; 2 uses
  %i.elu = zext i32 %i.elt to i64                 ; 2 uses
  %i.elv = lshr i64 %i.elu, 6
  %i.elw = getelementptr inbounds nuw [8 x i8], ptr %i.ehc, i64 %i.elv
  %i.elx = load i64, ptr %i.elw, align 8, !tbaa !147
  %i.ely = and i64 %i.elu, 63
  %i.elz = shl nuw i64 1, %i.ely
  %i.ema = and i64 %i.elz, %i.elx
  %.not.i7.i.i.i.i.i.i.i.i.i.i910 = icmp eq i64 %i.ema, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i910, label %.critedge.i.i.i.i.i.i.i.i.i911, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %.split38.i.i.i.i.i.i.i.i.i
  %i.emb = load ptr, ptr %i.ehf, align 8, !tbaa !329
  %i.emc = sext i32 %i.elt to i64
  %i.emd = getelementptr inbounds [8 x i8], ptr %i.emb, i64 %i.emc
  %i.eme = load i64, ptr %i.emd, align 8, !tbaa !147
  %i.emf = icmp eq i64 %i.eme, %i.efi
  br i1 %i.emf, label %bb.yg, label %.critedge.i.i.i.i.i.i.i.i.i911

bb.yg:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.emg = add nsw i64 %.03644.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.emh = icmp eq i64 %i.emg, 0
  br i1 %i.emh, label %.split47.us.loopexit128.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i911

.split47.us.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.ya
  %i.emi = trunc nsw i64 %indvars.iv161.i.i.i.i.i.i.i.i.i to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i

.split47.us.loopexit116.i.i.i.i.i.i.i.i.i:        ; preds = %bb.yb
  %i.emj = trunc nsw i64 %indvars.iv158.i.i.i.i.i.i.i.i.i to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i

.split47.us.loopexit118.i.i.i.i.i.i.i.i.i:        ; preds = %bb.yf
  %i.emk = trunc nsw i64 %indvars.iv155.i.i.i.i.i.i.i.i.i to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i

.split47.us.loopexit128.i.i.i.i.i.i.i.i.i:        ; preds = %bb.yg
  %i.eml = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i908 to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i

.split47.us.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5649, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5625, %.split47.us.loopexit128.i.i.i.i.i.i.i.i.i, %.split47.us.loopexit118.i.i.i.i.i.i.i.i.i, %.split47.us.loopexit116.i.i.i.i.i.i.i.i.i, %.split47.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i943 = phi i32 [ %i.emk, %.split47.us.loopexit118.i.i.i.i.i.i.i.i.i ], [ %i.eml, %.split47.us.loopexit128.i.i.i.i.i.i.i.i.i ], [ %i.emi, %.split47.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.emj, %.split47.us.loopexit116.i.i.i.i.i.i.i.i.i ], [ %i.eid, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.eid, %middle.block5625 ], [ %i.ekx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ekx, %middle.block5649 ], [ %i.eid, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us99.us.i.i.i.i.i.i.i.i.i ], [ %i.ekx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.emm = load ptr, ptr %.sroa.12.0..sroa_idx.i873, align 8, !tbaa !941, !nonnull !114, !align !267 ; 5 uses
  %i.emn = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i943, 1
  %i.emo = sext i32 %i.emn to i64
  %i.emp = getelementptr inbounds nuw i8, ptr %i.emm, i64 144 ; 2 uses
  %i.emq = load ptr, ptr %i.emp, align 8, !tbaa !309 ; 2 uses
  %i.emr = icmp eq ptr %i.emq, null
  br i1 %i.emr, label %bb.yh, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944

bb.yh:                                            ; preds = %.split47.us.i.i.i.i.i.i.i.i.i
  %i.ems = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.emm)
          to label %.noexc19.i.i.i.i.i.i.i.i948 unwind label %bb.ym ; 0 uses

.noexc19.i.i.i.i.i.i.i.i948:                      ; preds = %bb.yh
  %.pre.i.i.i.i.i.i.i.i.i.i949 = load ptr, ptr %i.emp, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944: ; preds = %.noexc19.i.i.i.i.i.i.i.i948, %.split47.us.i.i.i.i.i.i.i.i.i
  %i.emt = phi ptr [ %i.emq, %.split47.us.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i949, %.noexc19.i.i.i.i.i.i.i.i948 ]
  %i.emu = getelementptr inbounds [8 x i8], ptr %i.emt, i64 %i.egm
  store i64 %i.emo, ptr %i.emu, align 8, !tbaa !147
  %i.emv = getelementptr inbounds nuw i8, ptr %i.emm, i64 32 ; 2 uses
  %i.emw = load ptr, ptr %i.emv, align 8, !tbaa !310
  %.not.i22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.emw, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %bb.yi

bb.yi:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944
  %i.emx = getelementptr inbounds nuw i8, ptr %i.emm, i64 56
  %i.emy = load i32, ptr %i.emx, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.emm, i32 noundef %i.emy, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i945 unwind label %bb.ym

.noexc20.i.i.i.i.i.i.i.i945:                      ; preds = %bb.yi
  %i.emz = load ptr, ptr %i.emv, align 8, !tbaa !310 ; 2 uses
  %i.ena = getelementptr inbounds nuw i8, ptr %i.emz, i64 44
  %i.enb = load i8, ptr %i.ena, align 4, !tbaa !315
  %i.enc = and i8 %i.enb, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i946 = icmp eq i8 %i.enc, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i946, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i947, label %.invoke.i.i.i.i.i.i.i.i940, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i947: ; preds = %.noexc20.i.i.i.i.i.i.i.i945
  %i.end = getelementptr inbounds nuw i8, ptr %i.emz, i64 16
  %i.ene = load ptr, ptr %i.end, align 8, !tbaa !316
  %i.enf = lshr i64 %.074.i.i.i.i.i.i.i.i894, 3
  %i.eng = and i64 %i.enf, 536870911
  %i.enh = getelementptr inbounds nuw i8, ptr %i.ene, i64 %i.eng ; 2 uses
  %i.eni = load i8, ptr %i.enh, align 1, !tbaa !87
  %i.enj = trunc i64 %.074.i.i.i.i.i.i.i.i894 to i8
  %i.enk = and i8 %i.enj, 7
  %i.enl = shl nuw i8 1, %i.enk
  %i.enm = or i8 %i.eni, %i.enl
  store i8 %i.enm, ptr %i.enh, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915

.critedge.i.i.i.i.i.i.i.i.i911:                   ; preds = %bb.yg, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i, %.split38.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i912 = phi i64 [ %.03644.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.emg, %bb.yg ], [ %.03644.i.i.i.i.i.i.i.i.i, %.split38.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i913 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i908, %i.elr ; 2 uses
  %i.enn = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i913 to i32
  %.not16.i.i.i.i.i.i.i.i.i914 = icmp eq i32 %i.egz, %i.enn
  br i1 %.not16.i.i.i.i.i.i.i.i.i914, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915, label %.split38.i.i.i.i.i.i.i.i.i, !llvm.loop !3159

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915: ; preds = %.critedge.i.i.i.i.i.i.i.i.i911, %vector.body5643, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i, %.critedge.us54.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i960, %vector.body5619, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i, %.critedge.us.us.i.i.i.i.i.i.i.i.i966, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i947, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i952, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i950, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i963, %bb.xz
  %.042.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i943, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i944 ], [ %.us-phi.i.i.i.i.i.i.i.i.i943, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i947 ], [ %i.egy, %bb.xz ], [ %i.egz, %.critedge.us66.us88.us.i.i.i.i.i.i.i.i.i ], [ %i.egz, %.critedge.us.us104.us.i.i.i.i.i.i.i.i.i ], [ %i.egz, %.critedge.us54.i.i.i.i.i.i.i.i.i ], [ %i.egz, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i952 ], [ %i.egz, %.lr.ph.split.us.split.split.us.i.i.i.i.i.i.i.i.i963 ], [ %i.egz, %vector.body5619 ], [ %i.egz, %.critedge.us.us.i.i.i.i.i.i.i.i.i966 ], [ %i.egz, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i950 ], [ %i.egz, %vector.body5643 ], [ %i.egz, %.critedge.us.i.i.i.i.i.i.i.i.i960 ], [ %i.egz, %.critedge.i.i.i.i.i.i.i.i.i911 ]
  %i.eno = load ptr, ptr %.sroa.953.0..sroa_idx.i, align 8, !tbaa !938, !nonnull !114, !align !333
  %i.enp = load i32, ptr %i.eno, align 4, !tbaa !98
  %i.enq = icmp eq i32 %.042.i.i.i.i.i.i.i.i.i, %i.enp
  br i1 %i.enq, label %bb.yj, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.yj:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i915
  %i.enr = load ptr, ptr %.sroa.12.0..sroa_idx.i873, align 8, !tbaa !941, !nonnull !114, !align !267 ; 5 uses
  %i.ens = getelementptr inbounds nuw i8, ptr %i.enr, i64 144 ; 2 uses
  %i.ent = load ptr, ptr %i.ens, align 8, !tbaa !309 ; 2 uses
  %i.enu = icmp eq ptr %i.ent, null
  br i1 %i.enu, label %bb.yk, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

bb.yk:                                            ; preds = %bb.yj
  %i.env = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.enr)
          to label %.noexc22.i.i.i.i.i.i.i.i942 unwind label %bb.ym ; 0 uses

.noexc22.i.i.i.i.i.i.i.i942:                      ; preds = %bb.yk
  %.pre.i27.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ens, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i942, %bb.yj
  %i.enw = phi ptr [ %i.ent, %bb.yj ], [ %.pre.i27.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i942 ]
  %i.enx = getelementptr inbounds [8 x i8], ptr %i.enw, i64 %i.egm
  store i64 0, ptr %i.enx, align 8, !tbaa !147
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enr, i64 32 ; 2 uses
  %i.enz = load ptr, ptr %i.eny, align 8, !tbaa !310
  %.not.i24.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.enz, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.yl

bb.yl:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enr, i64 56
  %i.eob = load i32, ptr %i.eoa, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.enr, i32 noundef %i.eob, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i939 unwind label %bb.ym

.noexc23.i.i.i.i.i.i.i.i939:                      ; preds = %bb.yl
  %i.eoc = load ptr, ptr %i.eny, align 8, !tbaa !310 ; 2 uses
  %i.eod = getelementptr inbounds nuw i8, ptr %i.eoc, i64 44
  %i.eoe = load i8, ptr %i.eod, align 4, !tbaa !315
  %i.eof = and i8 %i.eoe, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eof, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i940, !prof !112

.invoke.i.i.i.i.i.i.i.i940:                       ; preds = %.noexc23.i.i.i.i.i.i.i.i939, %.noexc20.i.i.i.i.i.i.i.i945
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i941 unwind label %bb.ym

.cont.i.i.i.i.i.i.i.i941:                         ; preds = %.invoke.i.i.i.i.i.i.i.i940
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i939
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eoc, i64 16
  %i.eoh = load ptr, ptr %i.eog, align 8, !tbaa !316
  %i.eoi = lshr i64 %.074.i.i.i.i.i.i.i.i894, 3
  %i.eoj = and i64 %i.eoi, 536870911
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eoh, i64 %i.eoj ; 2 uses
  %i.eol = load i8, ptr %i.eok, align 1, !tbaa !87
  %i.eom = trunc i64 %.074.i.i.i.i.i.i.i.i894 to i8
  %i.eon = and i8 %i.eom, 7
end_hunk_3
begin_hunk_4_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.fjf = load ptr, ptr %.sroa.1053.0..sroa_idx.i1125, align 8, !tbaa !950, !nonnull !114, !align !333
  %sext40.i.i.i.i.i.i.i.i.i1152 = shl i64 %.069.i.i.i.i.i.i.i.i, 32
  %i.fjg = ashr exact i64 %sext40.i.i.i.i.i.i.i.i.i1152, 32 ; 3 uses
  %i.fjh = getelementptr inbounds [4 x i8], ptr %i.fhd, i64 %i.fjg
  %i.fji = load i32, ptr %i.fjh, align 4, !tbaa !98
  %i.fjj = sext i32 %i.fji to i64
  %i.fjk = getelementptr inbounds [4 x i8], ptr %i.fjc, i64 %i.fjj
  %i.fjl = load i32, ptr %i.fjk, align 4, !tbaa !98 ; 2 uses
  %i.fjm = icmp sgt i64 %i.fiv, 0                 ; 3 uses
  %i.fjn = add nsw i32 %i.fjl, -1
  %i.fjo = select i1 %i.fjm, i32 0, i32 %i.fjn
  store i32 %i.fjo, ptr %i.fjd, align 4, !tbaa !98
  %i.fjp = select i1 %i.fjm, i32 %i.fjl, i32 -1
  store i32 %i.fjp, ptr %i.fje, align 4, !tbaa !98
  %i.fjq = select i1 %i.fjm, i32 1, i32 -1        ; 9 uses
  store i32 %i.fjq, ptr %i.fjf, align 4, !tbaa !98
  %i.fjr = call noundef i64 @llvm.abs.i64(i64 %i.fiv, i1 true) ; 6 uses
  %i.fjs = load i32, ptr %i.fjd, align 4, !tbaa !98 ; 9 uses
  %i.fjt = load i32, ptr %i.fje, align 4, !tbaa !98 ; 13 uses
  %.not1643.i.i.i.i.i.i.i.i.i1153 = icmp eq i32 %i.fjs, %i.fjt
  br i1 %.not1643.i.i.i.i.i.i.i.i.i1153, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %.lr.ph.i.i.i.i.i.i.i.i.i1154

.lr.ph.i.i.i.i.i.i.i.i.i1154:                     ; preds = %bb.adi
  %i.fju = load ptr, ptr %.sroa.11.0..sroa_idx.i1126, align 8, !tbaa !951, !nonnull !114, !align !267 ; 7 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %i.fju, i64 24
  %i.fjw = load ptr, ptr %i.fjv, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1155 = icmp eq ptr %i.fjw, null
  %i.fjx = getelementptr inbounds nuw i8, ptr %i.fju, i64 59 ; 3 uses
  %i.fjy = getelementptr inbounds nuw i8, ptr %i.fju, i64 8 ; 3 uses
  %i.fjz = getelementptr inbounds nuw i8, ptr %i.fju, i64 16 ; 4 uses
  %i.fka = getelementptr inbounds nuw i8, ptr %i.fju, i64 58
  %i.fkb = getelementptr inbounds nuw i8, ptr %i.fju, i64 64 ; 3 uses
  %i.fkc = load i8, ptr %i.fka, align 2, !tbaa !287, !range !113, !noundef !114
  %i.fkd = trunc nuw i8 %i.fkc to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1155, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1221, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1156

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1221:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1154
  %i.fke = load ptr, ptr %i.fjz, align 8, !tbaa !329
  %i.fkf = sext i32 %i.fjs to i64
  %i.fkg = sext i32 %i.fjq to i64
  %i.fkh = sext i32 %i.fhi to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1225, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1221
  %indvars.iv135.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next136.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1225 ], [ %i.fkf, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1221 ] ; 3 uses
  %.03644.us.i.i.i.i.i.i.i.i.i1223 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1226, %.critedge.us.i.i.i.i.i.i.i.i.i1225 ], [ %i.fjr, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1221 ] ; 2 uses
  %i.fki = add nsw i64 %indvars.iv135.i.i.i.i.i.i.i.i.i, %i.fkh ; 2 uses
  %i.fkj = trunc nsw i64 %i.fki to i32
  br i1 %i.fkd, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i, label %bb.adj

bb.adj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222
  %i.fkk = load i8, ptr %i.fjx, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fkl = trunc nuw i8 %i.fkk to i1
  br i1 %i.fkl, label %bb.adl, label %bb.adk

bb.adk:                                           ; preds = %bb.adj
  %i.fkm = load ptr, ptr %i.fjy, align 8, !tbaa !283
  %i.fkn = getelementptr inbounds [4 x i8], ptr %i.fkm, i64 %i.fki
  %i.fko = load i32, ptr %i.fkn, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

bb.adl:                                           ; preds = %bb.adj
  %i.fkp = load i32, ptr %i.fkb, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.adl, %bb.adk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1224 = phi i32 [ %i.fko, %bb.adk ], [ %i.fkp, %bb.adl ], [ %i.fkj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222 ]
  %i.fkq = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1224 to i64
  %i.fkr = shl nsw i64 %i.fkq, 4
  %i.fks = getelementptr inbounds nuw i8, ptr %i.fke, i64 %i.fkr
  %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fks, align 1
  %i.fkt = icmp eq i128 %.0.copyload.i.i20.us.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fkt, label %bb.adm, label %.critedge.us.i.i.i.i.i.i.i.i.i1225

bb.adm:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %i.fku = add nsw i64 %.03644.us.i.i.i.i.i.i.i.i.i1223, -1 ; 2 uses
  %i.fkv = icmp eq i64 %i.fku, 0
  br i1 %i.fkv, label %.split47.us.loopexit.i.i.i.i.i.i.i.i.i1228, label %.critedge.us.i.i.i.i.i.i.i.i.i1225

.critedge.us.i.i.i.i.i.i.i.i.i1225:               ; preds = %bb.adm, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1226 = phi i64 [ %.03644.us.i.i.i.i.i.i.i.i.i1223, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us.i.i.i.i.i.i.i.i.i ], [ %i.fku, %bb.adm ]
  %indvars.iv.next136.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv135.i.i.i.i.i.i.i.i.i, %i.fkg ; 2 uses
  %i.fkw = trunc nsw i64 %indvars.iv.next136.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1227 = icmp eq i32 %i.fjt, %i.fkw
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1227, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1222, !llvm.loop !3182

.lr.ph.split.i.i.i.i.i.i.i.i.i1156:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1154
  %i.fkx = getelementptr inbounds nuw i8, ptr %i.fju, i64 57
  %i.fky = load i8, ptr %i.fkx, align 1, !range !113
  %i.fkz = trunc nuw i8 %i.fky to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1157 = select i1 %i.fkd, i1 true, i1 %i.fkz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1157, label %.split.us.preheader.i.i.i.i.i.i.i.i.i1216, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1158

.split.us.preheader.i.i.i.i.i.i.i.i.i1216:        ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1156
  %i.fla = sext i32 %i.fjs to i64
  %i.flb = sext i32 %i.fjq to i64
  %i.flc = sext i32 %i.fhi to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i1217

.split.us.i.i.i.i.i.i.i.i.i1217:                  ; preds = %.critedge.us55.i.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i.i1216
  %indvars.iv132.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fla, %.split.us.preheader.i.i.i.i.i.i.i.i.i1216 ], [ %indvars.iv.next133.i.i.i.i.i.i.i.i.i, %.critedge.us55.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.03644.us50.i.i.i.i.i.i.i.i.i1218 = phi i64 [ %i.fjr, %.split.us.preheader.i.i.i.i.i.i.i.i.i1216 ], [ %.1.us56.i.i.i.i.i.i.i.i.i, %.critedge.us55.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fld = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.flc ; 4 uses
  %i.fle = lshr i64 %i.fld, 6
  %i.flf = and i64 %i.fle, 67108863
  %i.flg = getelementptr inbounds nuw [8 x i8], ptr %i.fjw, i64 %i.flf
  %i.flh = load i64, ptr %i.flg, align 8, !tbaa !147
  %i.fli = and i64 %i.fld, 63
  %i.flj = shl nuw i64 1, %i.fli
  %i.flk = and i64 %i.flj, %i.flh
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1219 = icmp eq i64 %i.flk, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1219, label %.critedge.us55.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i1220

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i1220: ; preds = %.split.us.i.i.i.i.i.i.i.i.i1217
  %i.fll = trunc nsw i64 %i.fld to i32
  %i.flm = load ptr, ptr %i.fjz, align 8, !tbaa !329
  br i1 %i.fkd, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i, label %bb.adn

bb.adn:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i1220
  %i.fln = load i8, ptr %i.fjx, align 1, !tbaa !288, !range !113, !noundef !114
  %i.flo = trunc nuw i8 %i.fln to i1
  br i1 %i.flo, label %bb.adp, label %bb.ado

bb.ado:                                           ; preds = %bb.adn
  %i.flp = load ptr, ptr %i.fjy, align 8, !tbaa !283
  %i.flq = getelementptr inbounds [4 x i8], ptr %i.flp, i64 %i.fld
  %i.flr = load i32, ptr %i.flq, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i

bb.adp:                                           ; preds = %bb.adn
  %i.fls = load i32, ptr %i.fkb, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i: ; preds = %bb.adp, %bb.ado, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i1220
  %.0.i.i19.us53.i.i.i.i.i.i.i.i.i = phi i32 [ %i.flr, %bb.ado ], [ %i.fls, %bb.adp ], [ %i.fll, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us51.i.i.i.i.i.i.i.i.i1220 ]
  %i.flt = sext i32 %.0.i.i19.us53.i.i.i.i.i.i.i.i.i to i64
  %i.flu = shl nsw i64 %i.flt, 4
  %i.flv = getelementptr inbounds nuw i8, ptr %i.flm, i64 %i.flu
  %.0.copyload.i.i20.us54.i.i.i.i.i.i.i.i.i = load i128, ptr %i.flv, align 1
  %i.flw = icmp eq i128 %.0.copyload.i.i20.us54.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.flw, label %bb.adq, label %.critedge.us55.i.i.i.i.i.i.i.i.i

bb.adq:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i
  %i.flx = add nsw i64 %.03644.us50.i.i.i.i.i.i.i.i.i1218, -1 ; 2 uses
  %i.fly = icmp eq i64 %i.flx, 0
  br i1 %i.fly, label %.split47.us.loopexit100.i.i.i.i.i.i.i.i.i, label %.critedge.us55.i.i.i.i.i.i.i.i.i

.critedge.us55.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.adq, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i1217
  %.1.us56.i.i.i.i.i.i.i.i.i = phi i64 [ %.03644.us50.i.i.i.i.i.i.i.i.i1218, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us52.i.i.i.i.i.i.i.i.i ], [ %i.flx, %bb.adq ], [ %.03644.us50.i.i.i.i.i.i.i.i.i1218, %.split.us.i.i.i.i.i.i.i.i.i1217 ]
  %indvars.iv.next133.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i, %i.flb ; 2 uses
  %i.flz = trunc nsw i64 %indvars.iv.next133.i.i.i.i.i.i.i.i.i to i32
  %.not16.us57.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fjt, %i.flz
  br i1 %.not16.us57.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %.split.us.i.i.i.i.i.i.i.i.i1217, !llvm.loop !3182

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1158:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1156
  %i.fma = load i8, ptr %i.fjx, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fmb = trunc nuw i8 %i.fma to i1
  br i1 %i.fmb, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1213, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1159

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1213: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1158
  %i.fmc = load i64, ptr %i.fjw, align 8, !tbaa !147
  %i.fmd = and i64 %i.fmc, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1214 = icmp eq i64 %i.fmd, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1214, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1215

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1215: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1213
  %i.fme = load ptr, ptr %i.fjz, align 8, !tbaa !329
  %i.fmf = load i32, ptr %i.fkb, align 8, !tbaa !330
  %i.fmg = sext i32 %i.fmf to i64
  %i.fmh = shl nsw i64 %i.fmg, 4
  %i.fmi = getelementptr inbounds nuw i8, ptr %i.fme, i64 %i.fmh
  %.0.copyload.i.i20.us67.us90.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fmi, align 1
  %i.fmj = icmp eq i128 %.0.copyload.i.i20.us67.us90.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fmj, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1215
  %i.fmk = trunc i64 %i.fjr to i32
  %i.fml = add i32 %i.fmk, -1
  %i.fmm = mul i32 %i.fml, %i.fjq
  %i.fmn = add i32 %i.fjs, %i.fmm                 ; 3 uses
  %i.fmo = add nsw i64 %i.fjr, -1                 ; 5 uses
  %i.fmp = icmp eq i64 %i.fmo, 0
  br i1 %i.fmp, label %.split47.us.i.i.i.i.i.i.i.i.i1204, label %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check5583 = icmp samesign ult i64 %i.fjr, 33
  br i1 %min.iters.check5583, label %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5584

vector.ph5584:                                    ; preds = %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5585 = and i64 %i.fmo, -32                ; 3 uses
  %i.fmq = and i64 %i.fmo, 31
  %i.fmr = trunc i64 %n.vec5585 to i32
  %i.fms = mul i32 %i.fjq, %i.fmr
  %i.fmt = add i32 %i.fjs, %i.fms
  %broadcast.splatinsert5586 = insertelement <32 x i32> poison, i32 %i.fjt, i64 0
  %broadcast.splat5587 = shufflevector <32 x i32> %broadcast.splatinsert5586, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5588 = insertelement <32 x i32> poison, i32 %i.fjq, i64 0
  %broadcast.splat5589 = shufflevector <32 x i32> %broadcast.splatinsert5588, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5590 = insertelement <32 x i32> poison, i32 %i.fjs, i64 0
  %broadcast.splat5591 = shufflevector <32 x i32> %broadcast.splatinsert5590, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fmu = mul nsw <32 x i32> %broadcast.splat5589, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5592 = add nsw <32 x i32> %broadcast.splat5591, %i.fmu
  %i.fmv = shl nsw i32 %i.fjq, 5
  %broadcast.splatinsert5593 = insertelement <32 x i32> poison, i32 %i.fmv, i64 0
  %broadcast.splat5594 = shufflevector <32 x i32> %broadcast.splatinsert5593, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5595

vector.body5595:                                  ; preds = %vector.body.interim5600, %vector.ph5584
  %index5596 = phi i64 [ 0, %vector.ph5584 ], [ %index.next5598, %vector.body.interim5600 ]
  %vec.ind5597 = phi <32 x i32> [ %induction5592, %vector.ph5584 ], [ %vec.ind.next5599, %vector.body.interim5600 ] ; 2 uses
  %i.fmw = add nsw <32 x i32> %vec.ind5597, %broadcast.splat5589
  %i.fmx = icmp eq <32 x i32> %i.fmw, %broadcast.splat5587
  %i.fmy = freeze <32 x i1> %i.fmx
  %i.fmz = bitcast <32 x i1> %i.fmy to i32
  %.not5828 = icmp eq i32 %i.fmz, 0
  br i1 %.not5828, label %vector.body.interim5600, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170

vector.body.interim5600:                          ; preds = %vector.body5595
  %vec.ind.next5599 = add nsw <32 x i32> %vec.ind5597, %broadcast.splat5594
  %index.next5598 = add nuw i64 %index5596, 32    ; 2 uses
  %i.fna = icmp eq i64 %index.next5598, %n.vec5585
  br i1 %i.fna, label %middle.block5601, label %vector.body5595, !llvm.loop !3183

middle.block5601:                                 ; preds = %vector.body.interim5600
  %cmp.n5602 = icmp eq i64 %i.fmo, %n.vec5585
  br i1 %cmp.n5602, label %.split47.us.i.i.i.i.i.i.i.i.i1204, label %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5601
  %.ph5998 = phi i64 [ %i.fmo, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fmq, %middle.block5601 ]
  %.045.us62.us86.us.i.i.i.i.i.i.i.i.i5391.ph = phi i32 [ %i.fjs, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.fmt, %middle.block5601 ]
  br label %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i
  %i.fnb = add nsw i64 %i.fnd, -1                 ; 2 uses
  %i.fnc = icmp eq i64 %i.fnb, 0
  br i1 %i.fnc, label %.split47.us.i.i.i.i.i.i.i.i.i1204, label %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3184

.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i
  %i.fnd = phi i64 [ %i.fnb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i ], [ %.ph5998, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.045.us62.us86.us.i.i.i.i.i.i.i.i.i5391 = phi i32 [ %i.fne, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i ], [ %.045.us62.us86.us.i.i.i.i.i.i.i.i.i5391.ph, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.fne = add nsw i32 %.045.us62.us86.us.i.i.i.i.i.i.i.i.i5391, %i.fjq ; 2 uses
  %.not16.us70.us93.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fne, %i.fjt
  br i1 %.not16.us70.us93.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3182

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1159:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1158
  %i.fnf = load ptr, ptr %i.fjy, align 8, !tbaa !283
  %i.fng = sext i32 %i.fjs to i64
  %i.fnh = sext i32 %i.fjq to i64
  %i.fni = sext i32 %i.fhi to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1160 = getelementptr [4 x i8], ptr %i.fnf, i64 %i.fni
  br label %.split38.i.i.i.i.i.i.i.i.i1161

.split38.i.i.i.i.i.i.i.i.i1161:                   ; preds = %.critedge.i.i.i.i.i.i.i.i.i1166, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1159
  %indvars.iv.i.i.i.i.i.i.i.i.i1162 = phi i64 [ %i.fng, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1159 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1168, %.critedge.i.i.i.i.i.i.i.i.i1166 ] ; 3 uses
  %.03644.i.i.i.i.i.i.i.i.i1163 = phi i64 [ %i.fjr, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1159 ], [ %.1.i.i.i.i.i.i.i.i.i1167, %.critedge.i.i.i.i.i.i.i.i.i1166 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1164 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1160, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1162
  %i.fnj = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1164, align 4, !tbaa !98 ; 2 uses
  %i.fnk = zext i32 %i.fnj to i64                 ; 2 uses
  %i.fnl = lshr i64 %i.fnk, 6
  %i.fnm = getelementptr inbounds nuw [8 x i8], ptr %i.fjw, i64 %i.fnl
  %i.fnn = load i64, ptr %i.fnm, align 8, !tbaa !147
  %i.fno = and i64 %i.fnk, 63
  %i.fnp = shl nuw i64 1, %i.fno
  %i.fnq = and i64 %i.fnp, %i.fnn
  %.not.i7.i.i.i.i.i.i.i.i.i.i1165 = icmp eq i64 %i.fnq, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1165, label %.critedge.i.i.i.i.i.i.i.i.i1166, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i: ; preds = %.split38.i.i.i.i.i.i.i.i.i1161
  %i.fnr = load ptr, ptr %i.fjz, align 8, !tbaa !329
  %i.fns = sext i32 %i.fnj to i64
  %i.fnt = shl nsw i64 %i.fns, 4
  %i.fnu = getelementptr inbounds nuw i8, ptr %i.fnr, i64 %i.fnt
  %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i = load i128, ptr %i.fnu, align 1
  %i.fnv = icmp eq i128 %.0.copyload.i.i20.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fnv, label %bb.adr, label %.critedge.i.i.i.i.i.i.i.i.i1166

bb.adr:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i
  %i.fnw = add nsw i64 %.03644.i.i.i.i.i.i.i.i.i1163, -1 ; 2 uses
  %i.fnx = icmp eq i64 %i.fnw, 0
  br i1 %i.fnx, label %.split47.us.loopexit110.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1166

.split47.us.loopexit.i.i.i.i.i.i.i.i.i1228:       ; preds = %bb.adm
  %i.fny = trunc nsw i64 %indvars.iv135.i.i.i.i.i.i.i.i.i to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i1204

.split47.us.loopexit100.i.i.i.i.i.i.i.i.i:        ; preds = %bb.adq
  %i.fnz = trunc nsw i64 %indvars.iv132.i.i.i.i.i.i.i.i.i to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i1204

.split47.us.loopexit110.i.i.i.i.i.i.i.i.i:        ; preds = %bb.adr
  %i.foa = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1162 to i32
  br label %.split47.us.i.i.i.i.i.i.i.i.i1204

.split47.us.i.i.i.i.i.i.i.i.i1204:                ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block5601, %.split47.us.loopexit110.i.i.i.i.i.i.i.i.i, %.split47.us.loopexit100.i.i.i.i.i.i.i.i.i, %.split47.us.loopexit.i.i.i.i.i.i.i.i.i1228
  %.us-phi.i.i.i.i.i.i.i.i.i1205 = phi i32 [ %i.foa, %.split47.us.loopexit110.i.i.i.i.i.i.i.i.i ], [ %i.fny, %.split47.us.loopexit.i.i.i.i.i.i.i.i.i1228 ], [ %i.fnz, %.split47.us.loopexit100.i.i.i.i.i.i.i.i.i ], [ %i.fmn, %middle.block5601 ], [ %i.fmn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.fmn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fob = load ptr, ptr %.sroa.12.0..sroa_idx.i1127, align 8, !tbaa !952, !nonnull !114, !align !267 ; 5 uses
  %i.foc = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1205, 1
  %i.fod = sext i32 %i.foc to i64
  %i.foe = getelementptr inbounds nuw i8, ptr %i.fob, i64 144 ; 2 uses
  %i.fof = load ptr, ptr %i.foe, align 8, !tbaa !309 ; 2 uses
  %i.fog = icmp eq ptr %i.fof, null
  br i1 %i.fog, label %bb.ads, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206

bb.ads:                                           ; preds = %.split47.us.i.i.i.i.i.i.i.i.i1204
  %i.foh = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fob)
          to label %.noexc19.i.i.i.i.i.i.i.i1211 unwind label %bb.adx ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1211:                     ; preds = %bb.ads
  %.pre.i.i.i.i.i.i.i.i.i.i1212 = load ptr, ptr %i.foe, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206: ; preds = %.noexc19.i.i.i.i.i.i.i.i1211, %.split47.us.i.i.i.i.i.i.i.i.i1204
  %i.foi = phi ptr [ %i.fof, %.split47.us.i.i.i.i.i.i.i.i.i1204 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1212, %.noexc19.i.i.i.i.i.i.i.i1211 ]
  %i.foj = getelementptr inbounds [8 x i8], ptr %i.foi, i64 %i.fjg
  store i64 %i.fod, ptr %i.foj, align 8, !tbaa !147
  %i.fok = getelementptr inbounds nuw i8, ptr %i.fob, i64 32 ; 2 uses
  %i.fol = load ptr, ptr %i.fok, align 8, !tbaa !310
  %.not.i22.i.i.i.i.i.i.i.i.i1207 = icmp eq ptr %i.fol, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1207, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %bb.adt

bb.adt:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206
  %i.fom = getelementptr inbounds nuw i8, ptr %i.fob, i64 56
  %i.fon = load i32, ptr %i.fom, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fob, i32 noundef %i.fon, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1208 unwind label %bb.adx

.noexc20.i.i.i.i.i.i.i.i1208:                     ; preds = %bb.adt
  %i.foo = load ptr, ptr %i.fok, align 8, !tbaa !310 ; 2 uses
  %i.fop = getelementptr inbounds nuw i8, ptr %i.foo, i64 44
  %i.foq = load i8, ptr %i.fop, align 4, !tbaa !315
  %i.for = and i8 %i.foq, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1209 = icmp eq i8 %i.for, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1209, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1210, label %.invoke.i.i.i.i.i.i.i.i1199, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1210: ; preds = %.noexc20.i.i.i.i.i.i.i.i1208
  %i.fos = getelementptr inbounds nuw i8, ptr %i.foo, i64 16
  %i.fot = load ptr, ptr %i.fos, align 8, !tbaa !316
  %i.fou = lshr i64 %.069.i.i.i.i.i.i.i.i, 3
  %i.fov = and i64 %i.fou, 536870911
  %i.fow = getelementptr inbounds nuw i8, ptr %i.fot, i64 %i.fov ; 2 uses
  %i.fox = load i8, ptr %i.fow, align 1, !tbaa !87
  %i.foy = trunc i64 %.069.i.i.i.i.i.i.i.i to i8
  %i.foz = and i8 %i.foy, 7
  %i.fpa = shl nuw i8 1, %i.foz
  %i.fpb = or i8 %i.fox, %i.fpa
  store i8 %i.fpb, ptr %i.fow, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170

.critedge.i.i.i.i.i.i.i.i.i1166:                  ; preds = %bb.adr, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i, %.split38.i.i.i.i.i.i.i.i.i1161
  %.1.i.i.i.i.i.i.i.i.i1167 = phi i64 [ %.03644.i.i.i.i.i.i.i.i.i1163, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.i.i.i.i.i.i.i.i.i ], [ %i.fnw, %bb.adr ], [ %.03644.i.i.i.i.i.i.i.i.i1163, %.split38.i.i.i.i.i.i.i.i.i1161 ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1168 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1162, %i.fnh ; 2 uses
  %i.fpc = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1168 to i32
  %.not16.i.i.i.i.i.i.i.i.i1169 = icmp eq i32 %i.fjt, %i.fpc
  br i1 %.not16.i.i.i.i.i.i.i.i.i1169, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170, label %.split38.i.i.i.i.i.i.i.i.i1161, !llvm.loop !3182

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1166, %vector.body5595, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i, %.critedge.us55.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1225, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1210, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1215, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1213, %bb.adi
  %.042.i.i.i.i.i.i.i.i.i1171 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1205, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1206 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1205, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1210 ], [ %i.fjs, %bb.adi ], [ %i.fjt, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1213 ], [ %i.fjt, %vector.body5595 ], [ %i.fjt, %.critedge.us68.us91.us.i.i.i.i.i.i.i.i.i ], [ %i.fjt, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1215 ], [ %i.fjt, %.critedge.us55.i.i.i.i.i.i.i.i.i ], [ %i.fjt, %.critedge.us.i.i.i.i.i.i.i.i.i1225 ], [ %i.fjt, %.critedge.i.i.i.i.i.i.i.i.i1166 ]
  %i.fpd = load ptr, ptr %.sroa.952.0..sroa_idx.i1124, align 8, !tbaa !949, !nonnull !114, !align !333
  %i.fpe = load i32, ptr %i.fpd, align 4, !tbaa !98
  %i.fpf = icmp eq i32 %.042.i.i.i.i.i.i.i.i.i1171, %i.fpe
  br i1 %i.fpf, label %bb.adu, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.adu:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1170
  %i.fpg = load ptr, ptr %.sroa.12.0..sroa_idx.i1127, align 8, !tbaa !952, !nonnull !114, !align !267 ; 5 uses
  %i.fph = getelementptr inbounds nuw i8, ptr %i.fpg, i64 144 ; 2 uses
  %i.fpi = load ptr, ptr %i.fph, align 8, !tbaa !309 ; 2 uses
  %i.fpj = icmp eq ptr %i.fpi, null
  br i1 %i.fpj, label %bb.adv, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1172

bb.adv:                                           ; preds = %bb.adu
  %i.fpk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.fpg)
          to label %.noexc22.i.i.i.i.i.i.i.i1202 unwind label %bb.adx ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1202:                     ; preds = %bb.adv
  %.pre.i27.i.i.i.i.i.i.i.i.i1203 = load ptr, ptr %i.fph, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1172

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1172: ; preds = %.noexc22.i.i.i.i.i.i.i.i1202, %bb.adu
  %i.fpl = phi ptr [ %i.fpi, %bb.adu ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1203, %.noexc22.i.i.i.i.i.i.i.i1202 ]
  %i.fpm = getelementptr inbounds [8 x i8], ptr %i.fpl, i64 %i.fjg
  store i64 0, ptr %i.fpm, align 8, !tbaa !147
  %i.fpn = getelementptr inbounds nuw i8, ptr %i.fpg, i64 32 ; 2 uses
  %i.fpo = load ptr, ptr %i.fpn, align 8, !tbaa !310
  %.not.i24.i.i.i.i.i.i.i.i.i1173 = icmp eq ptr %i.fpo, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1173, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.adw

bb.adw:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1172
  %i.fpp = getelementptr inbounds nuw i8, ptr %i.fpg, i64 56
  %i.fpq = load i32, ptr %i.fpp, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.fpg, i32 noundef %i.fpq, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1197 unwind label %bb.adx

.noexc23.i.i.i.i.i.i.i.i1197:                     ; preds = %bb.adw
  %i.fpr = load ptr, ptr %i.fpn, align 8, !tbaa !310 ; 2 uses
  %i.fps = getelementptr inbounds nuw i8, ptr %i.fpr, i64 44
  %i.fpt = load i8, ptr %i.fps, align 4, !tbaa !315
  %i.fpu = and i8 %i.fpt, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1198 = icmp eq i8 %i.fpu, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1198, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1201, label %.invoke.i.i.i.i.i.i.i.i1199, !prof !112

.invoke.i.i.i.i.i.i.i.i1199:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1197, %.noexc20.i.i.i.i.i.i.i.i1208
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1200 unwind label %bb.adx

.cont.i.i.i.i.i.i.i.i1200:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1199
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1201: ; preds = %.noexc23.i.i.i.i.i.i.i.i1197
  %i.fpv = getelementptr inbounds nuw i8, ptr %i.fpr, i64 16
  %i.fpw = load ptr, ptr %i.fpv, align 8, !tbaa !316
  %i.fpx = lshr i64 %.069.i.i.i.i.i.i.i.i, 3
  %i.fpy = and i64 %i.fpx, 536870911
  %i.fpz = getelementptr inbounds nuw i8, ptr %i.fpw, i64 %i.fpy ; 2 uses
  %i.fqa = load i8, ptr %i.fpz, align 1, !tbaa !87
  %i.fqb = trunc i64 %.069.i.i.i.i.i.i.i.i to i8
  %i.fqc = and i8 %i.fqb, 7
  %i.fqd = shl nuw i8 1, %i.fqc
  %i.fqe = or i8 %i.fqa, %i.fqd
  store i8 %i.fqe, ptr %i.fpz, align 1, !tbaa !87
end_hunk_4
begin_hunk_5_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.glc = load i32, ptr %i.glb, align 4, !tbaa !98 ; 2 uses
  %i.gld = icmp sgt i64 %i.gkm, 0                 ; 3 uses
  %i.gle = add nsw i32 %i.glc, -1
  %i.glf = select i1 %i.gld, i32 0, i32 %i.gle
  store i32 %i.glf, ptr %i.gku, align 4, !tbaa !98
  %i.glg = select i1 %i.gld, i32 %i.glc, i32 -1
  store i32 %i.glg, ptr %i.gkv, align 4, !tbaa !98
  %i.glh = select i1 %i.gld, i32 1, i32 -1        ; 9 uses
  store i32 %i.glh, ptr %i.gkw, align 4, !tbaa !98
  %i.gli = call noundef i64 @llvm.abs.i64(i64 %i.gkm, i1 true) ; 6 uses
  %i.glj = load i32, ptr %i.gku, align 4, !tbaa !98 ; 9 uses
  %i.glk = load i32, ptr %i.gkv, align 4, !tbaa !98 ; 13 uses
  %.not1641.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.glj, %i.glk
  br i1 %.not1641.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %.lr.ph.i.i.i.i.i.i.i.i.i1427

.lr.ph.i.i.i.i.i.i.i.i.i1427:                     ; preds = %bb.ait
  %i.gll = load ptr, ptr %.sroa.11.0..sroa_idx.i1396, align 8, !tbaa !962, !nonnull !114, !align !267 ; 7 uses
  %i.glm = getelementptr inbounds nuw i8, ptr %i.gll, i64 24
  %i.gln = load ptr, ptr %i.glm, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1428 = icmp eq ptr %i.gln, null
  %i.glo = getelementptr inbounds nuw i8, ptr %i.gll, i64 59 ; 3 uses
  %i.glp = getelementptr inbounds nuw i8, ptr %i.gll, i64 8 ; 3 uses
  %i.glq = getelementptr inbounds nuw i8, ptr %i.gll, i64 16 ; 4 uses
  %i.glr = getelementptr inbounds nuw i8, ptr %i.gll, i64 58
  %i.gls = getelementptr inbounds nuw i8, ptr %i.gll, i64 64 ; 3 uses
  %i.glt = fcmp uno float %i.gjt, 0.000000e+00    ; 4 uses
  %i.glu = load i8, ptr %i.glr, align 2, !tbaa !287, !range !113, !noundef !114
  %i.glv = trunc nuw i8 %i.glu to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1428, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1493, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1429

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1493:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1427
  %i.glw = load ptr, ptr %i.glq, align 8, !tbaa !329
  %i.glx = sext i32 %i.glj to i64
  %i.gly = sext i32 %i.glh to i64
  %i.glz = sext i32 %i.giz to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1496, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1493
  %indvars.iv136.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next137.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i1496 ], [ %i.glx, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1493 ] ; 3 uses
  %.03442.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1497, %.critedge.us.i.i.i.i.i.i.i.i.i1496 ], [ %i.gli, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1493 ] ; 2 uses
  %i.gma = add nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i, %i.glz ; 2 uses
  %i.gmb = trunc nsw i64 %i.gma to i32
  br i1 %i.glv, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.aiu

bb.aiu:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494
  %i.gmc = load i8, ptr %i.glo, align 1, !tbaa !288, !range !113, !noundef !114
  %i.gmd = trunc nuw i8 %i.gmc to i1
  br i1 %i.gmd, label %bb.aiw, label %bb.aiv

bb.aiv:                                           ; preds = %bb.aiu
  %i.gme = load ptr, ptr %i.glp, align 8, !tbaa !283
  %i.gmf = getelementptr inbounds [4 x i8], ptr %i.gme, i64 %i.gma
  %i.gmg = load i32, ptr %i.gmf, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.aiw:                                           ; preds = %bb.aiu
  %i.gmh = load i32, ptr %i.gls, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.aiw, %bb.aiv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1495 = phi i32 [ %i.gmg, %bb.aiv ], [ %i.gmh, %bb.aiw ], [ %i.gmb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494 ]
  %i.gmi = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1495 to i64
  %i.gmj = getelementptr inbounds [4 x i8], ptr %i.glw, i64 %i.gmi
  %i.gmk = load float, ptr %i.gmj, align 4, !tbaa !878 ; 2 uses
  %i.gml = fcmp uno float %i.gmk, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i = select i1 %i.gml, i1 %i.glt, i1 false
  %i.gmm = fcmp oeq float %i.gmk, %i.gjt
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gmm
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i, label %bb.aix, label %.critedge.us.i.i.i.i.i.i.i.i.i1496

bb.aix:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.gmn = add nsw i64 %.03442.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gmo = icmp eq i64 %i.gmn, 0
  br i1 %i.gmo, label %.split45.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i1496

.critedge.us.i.i.i.i.i.i.i.i.i1496:               ; preds = %bb.aix, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1497 = phi i64 [ %.03442.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.gmn, %bb.aix ]
  %indvars.iv.next137.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i, %i.gly ; 2 uses
  %i.gmp = trunc nsw i64 %indvars.iv.next137.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1498 = icmp eq i32 %i.glk, %i.gmp
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1498, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1494, !llvm.loop !3203

.lr.ph.split.i.i.i.i.i.i.i.i.i1429:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1427
  %i.gmq = getelementptr inbounds nuw i8, ptr %i.gll, i64 57
  %i.gmr = load i8, ptr %i.gmq, align 1, !range !113
  %i.gms = trunc nuw i8 %i.gmr to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1430 = select i1 %i.glv, i1 true, i1 %i.gms
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1430, label %.split.us.preheader.i.i.i.i.i.i.i.i.i1487, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1431

.split.us.preheader.i.i.i.i.i.i.i.i.i1487:        ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1429
  %i.gmt = sext i32 %i.glj to i64
  %i.gmu = sext i32 %i.glh to i64
  %i.gmv = sext i32 %i.giz to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i1488

.split.us.i.i.i.i.i.i.i.i.i1488:                  ; preds = %.critedge.us54.i.i.i.i.i.i.i.i.i1490, %.split.us.preheader.i.i.i.i.i.i.i.i.i1487
  %indvars.iv133.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gmt, %.split.us.preheader.i.i.i.i.i.i.i.i.i1487 ], [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i, %.critedge.us54.i.i.i.i.i.i.i.i.i1490 ] ; 3 uses
  %.03442.us48.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gli, %.split.us.preheader.i.i.i.i.i.i.i.i.i1487 ], [ %.1.us55.i.i.i.i.i.i.i.i.i1491, %.critedge.us54.i.i.i.i.i.i.i.i.i1490 ] ; 3 uses
  %i.gmw = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gmv ; 4 uses
  %i.gmx = lshr i64 %i.gmw, 6
  %i.gmy = and i64 %i.gmx, 67108863
  %i.gmz = getelementptr inbounds nuw [8 x i8], ptr %i.gln, i64 %i.gmy
  %i.gna = load i64, ptr %i.gmz, align 8, !tbaa !147
  %i.gnb = and i64 %i.gmw, 63
  %i.gnc = shl nuw i64 1, %i.gnb
  %i.gnd = and i64 %i.gnc, %i.gna
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1489 = icmp eq i64 %i.gnd, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1489, label %.critedge.us54.i.i.i.i.i.i.i.i.i1490, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i1488
  %i.gne = trunc nsw i64 %i.gmw to i32
  %i.gnf = load ptr, ptr %i.glq, align 8, !tbaa !329
  br i1 %i.glv, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i, label %bb.aiy

bb.aiy:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i
  %i.gng = load i8, ptr %i.glo, align 1, !tbaa !288, !range !113, !noundef !114
  %i.gnh = trunc nuw i8 %i.gng to i1
  br i1 %i.gnh, label %bb.aja, label %bb.aiz

bb.aiz:                                           ; preds = %bb.aiy
  %i.gni = load ptr, ptr %i.glp, align 8, !tbaa !283
  %i.gnj = getelementptr inbounds [4 x i8], ptr %i.gni, i64 %i.gmw
  %i.gnk = load i32, ptr %i.gnj, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i

bb.aja:                                           ; preds = %bb.aiy
  %i.gnl = load i32, ptr %i.gls, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i: ; preds = %bb.aja, %bb.aiz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i
  %.0.i.i19.us51.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gnk, %bb.aiz ], [ %i.gnl, %bb.aja ], [ %i.gne, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i ]
  %i.gnm = sext i32 %.0.i.i19.us51.i.i.i.i.i.i.i.i.i to i64
  %i.gnn = getelementptr inbounds [4 x i8], ptr %i.gnf, i64 %i.gnm
  %i.gno = load float, ptr %i.gnn, align 4, !tbaa !878 ; 2 uses
  %i.gnp = fcmp uno float %i.gno, 0.000000e+00
  %or.cond.i.i.us52.i.i.i.i.i.i.i.i.i = select i1 %i.gnp, i1 %i.glt, i1 false
  %i.gnq = fcmp oeq float %i.gno, %i.gjt
  %.0.i.i21.us53.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us52.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gnq
  br i1 %.0.i.i21.us53.i.i.i.i.i.i.i.i.i, label %bb.ajb, label %.critedge.us54.i.i.i.i.i.i.i.i.i1490

bb.ajb:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i
  %i.gnr = add nsw i64 %.03442.us48.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gns = icmp eq i64 %i.gnr, 0
  br i1 %i.gns, label %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i, label %.critedge.us54.i.i.i.i.i.i.i.i.i1490

.critedge.us54.i.i.i.i.i.i.i.i.i1490:             ; preds = %bb.ajb, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i1488
  %.1.us55.i.i.i.i.i.i.i.i.i1491 = phi i64 [ %.03442.us48.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us50.i.i.i.i.i.i.i.i.i ], [ %i.gnr, %bb.ajb ], [ %.03442.us48.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i1488 ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i, %i.gmu ; 2 uses
  %i.gnt = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i to i32
  %.not16.us56.i.i.i.i.i.i.i.i.i1492 = icmp eq i32 %i.glk, %i.gnt
  br i1 %.not16.us56.i.i.i.i.i.i.i.i.i1492, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %.split.us.i.i.i.i.i.i.i.i.i1488, !llvm.loop !3203

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1431:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1429
  %i.gnu = load i8, ptr %i.glo, align 1, !tbaa !288, !range !113, !noundef !114
  %i.gnv = trunc nuw i8 %i.gnu to i1
  br i1 %i.gnv, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1482, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1432

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1482: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1431
  %i.gnw = load i64, ptr %i.gln, align 8, !tbaa !147
  %i.gnx = and i64 %i.gnw, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1483 = icmp eq i64 %i.gnx, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1483, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1484

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1484: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1482
  %i.gny = load ptr, ptr %i.glq, align 8, !tbaa !329
  %i.gnz = load i32, ptr %i.gls, align 8, !tbaa !330
  %i.goa = sext i32 %i.gnz to i64
  %i.gob = getelementptr inbounds [4 x i8], ptr %i.gny, i64 %i.goa
  %i.goc = load float, ptr %i.gob, align 4, !tbaa !878 ; 2 uses
  %i.god = fcmp uno float %i.goc, 0.000000e+00
  %or.cond.i.i.us66.us90.i.i.i.i.i.i.i.i.i = select i1 %i.god, i1 %i.glt, i1 false
  %i.goe = fcmp oeq float %i.goc, %i.gjt
  %.0.i.i21.us67.us91.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.us66.us90.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.goe
  br i1 %.0.i.i21.us67.us91.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1485, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1485: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1484
  %i.gof = trunc i64 %i.gli to i32
  %i.gog = add i32 %i.gof, -1
  %i.goh = mul i32 %i.gog, %i.glh
  %i.goi = add i32 %i.glj, %i.goh                 ; 3 uses
  %i.goj = add nsw i64 %i.gli, -1                 ; 5 uses
  %i.gok = icmp eq i64 %i.goj, 0
  br i1 %i.gok, label %.split45.us.i.i.i.i.i.i.i.i.i, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph:   ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1485
  %min.iters.check5559 = icmp samesign ult i64 %i.gli, 33
  br i1 %min.iters.check5559, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph5560

vector.ph5560:                                    ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec5561 = and i64 %i.goj, -32                ; 3 uses
  %i.gol = and i64 %i.goj, 31
  %i.gom = trunc i64 %n.vec5561 to i32
  %i.gon = mul i32 %i.glh, %i.gom
  %i.goo = add i32 %i.glj, %i.gon
  %broadcast.splatinsert5562 = insertelement <32 x i32> poison, i32 %i.glk, i64 0
  %broadcast.splat5563 = shufflevector <32 x i32> %broadcast.splatinsert5562, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5564 = insertelement <32 x i32> poison, i32 %i.glh, i64 0
  %broadcast.splat5565 = shufflevector <32 x i32> %broadcast.splatinsert5564, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5566 = insertelement <32 x i32> poison, i32 %i.glj, i64 0
  %broadcast.splat5567 = shufflevector <32 x i32> %broadcast.splatinsert5566, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gop = mul nsw <32 x i32> %broadcast.splat5565, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5568 = add nsw <32 x i32> %broadcast.splat5567, %i.gop
  %i.goq = shl nsw i32 %i.glh, 5
  %broadcast.splatinsert5569 = insertelement <32 x i32> poison, i32 %i.goq, i64 0
  %broadcast.splat5570 = shufflevector <32 x i32> %broadcast.splatinsert5569, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5571

vector.body5571:                                  ; preds = %vector.body.interim5576, %vector.ph5560
  %index5572 = phi i64 [ 0, %vector.ph5560 ], [ %index.next5574, %vector.body.interim5576 ]
  %vec.ind5573 = phi <32 x i32> [ %induction5568, %vector.ph5560 ], [ %vec.ind.next5575, %vector.body.interim5576 ] ; 2 uses
  %i.gor = add nsw <32 x i32> %vec.ind5573, %broadcast.splat5565
  %i.gos = icmp eq <32 x i32> %i.gor, %broadcast.splat5563
  %i.got = freeze <32 x i1> %i.gos
  %i.gou = bitcast <32 x i1> %i.got to i32
  %.not5827 = icmp eq i32 %i.gou, 0
  br i1 %.not5827, label %vector.body.interim5576, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441

vector.body.interim5576:                          ; preds = %vector.body5571
  %vec.ind.next5575 = add nsw <32 x i32> %vec.ind5573, %broadcast.splat5570
  %index.next5574 = add nuw i64 %index5572, 32    ; 2 uses
  %i.gov = icmp eq i64 %index.next5574, %n.vec5561
  br i1 %i.gov, label %middle.block5577, label %vector.body5571, !llvm.loop !3204

middle.block5577:                                 ; preds = %vector.body.interim5576
  %cmp.n5578 = icmp eq i64 %i.goj, %n.vec5561
  br i1 %cmp.n5578, label %.split45.us.i.i.i.i.i.i.i.i.i, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block5577
  %.ph6024 = phi i64 [ %i.goj, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.gol, %middle.block5577 ]
  %.043.us61.us86.us.i.i.i.i.i.i.i.i.i5384.ph = phi i32 [ %i.glj, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.goo, %middle.block5577 ]
  br label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486: ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i
  %i.gow = add nsw i64 %i.goy, -1                 ; 2 uses
  %i.gox = icmp eq i64 %i.gow, 0
  br i1 %i.gox, label %.split45.us.i.i.i.i.i.i.i.i.i, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3205

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i:         ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486
  %i.goy = phi i64 [ %i.gow, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486 ], [ %.ph6024, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.043.us61.us86.us.i.i.i.i.i.i.i.i.i5384 = phi i32 [ %i.goz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486 ], [ %.043.us61.us86.us.i.i.i.i.i.i.i.i.i5384.ph, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.goz = add nsw i32 %.043.us61.us86.us.i.i.i.i.i.i.i.i.i5384, %i.glh ; 2 uses
  %.not16.us70.us94.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.goz, %i.glk
  br i1 %.not16.us70.us94.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486, !llvm.loop !3203

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1432:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1431
  %i.gpa = load ptr, ptr %i.glp, align 8, !tbaa !283
  %i.gpb = sext i32 %i.glj to i64
  %i.gpc = sext i32 %i.glh to i64
  %i.gpd = sext i32 %i.giz to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1433 = getelementptr [4 x i8], ptr %i.gpa, i64 %i.gpd
  br label %.split36.i.i.i.i.i.i.i.i.i

.split36.i.i.i.i.i.i.i.i.i:                       ; preds = %.critedge.i.i.i.i.i.i.i.i.i1437, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1432
  %indvars.iv.i.i.i.i.i.i.i.i.i1434 = phi i64 [ %i.gpb, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1432 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1439, %.critedge.i.i.i.i.i.i.i.i.i1437 ] ; 3 uses
  %.03442.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gli, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1432 ], [ %.1.i.i.i.i.i.i.i.i.i1438, %.critedge.i.i.i.i.i.i.i.i.i1437 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1435 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1433, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1434
  %i.gpe = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1435, align 4, !tbaa !98 ; 2 uses
  %i.gpf = zext i32 %i.gpe to i64                 ; 2 uses
  %i.gpg = lshr i64 %i.gpf, 6
  %i.gph = getelementptr inbounds nuw [8 x i8], ptr %i.gln, i64 %i.gpg
  %i.gpi = load i64, ptr %i.gph, align 8, !tbaa !147
  %i.gpj = and i64 %i.gpf, 63
  %i.gpk = shl nuw i64 1, %i.gpj
  %i.gpl = and i64 %i.gpk, %i.gpi
  %.not.i7.i.i.i.i.i.i.i.i.i.i1436 = icmp eq i64 %i.gpl, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1436, label %.critedge.i.i.i.i.i.i.i.i.i1437, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %.split36.i.i.i.i.i.i.i.i.i
  %i.gpm = load ptr, ptr %i.glq, align 8, !tbaa !329
  %i.gpn = sext i32 %i.gpe to i64
  %i.gpo = getelementptr inbounds [4 x i8], ptr %i.gpm, i64 %i.gpn
  %i.gpp = load float, ptr %i.gpo, align 4, !tbaa !878 ; 2 uses
  %i.gpq = fcmp uno float %i.gpp, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.gpq, i1 %i.glt, i1 false
  %i.gpr = fcmp oeq float %i.gpp, %i.gjt
  %.0.i.i21.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.gpr
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i, label %bb.ajc, label %.critedge.i.i.i.i.i.i.i.i.i1437

bb.ajc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.gps = add nsw i64 %.03442.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.gpt = icmp eq i64 %i.gps, 0
  br i1 %i.gpt, label %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i1437

.split45.us.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.aix
  %i.gpu = trunc nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i

.split45.us.loopexit101.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ajb
  %i.gpv = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i

.split45.us.loopexit111.i.i.i.i.i.i.i.i.i:        ; preds = %bb.ajc
  %i.gpw = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1434 to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i

.split45.us.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1485, %middle.block5577, %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i, %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i, %.split45.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i1474 = phi i32 [ %i.gpw, %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i ], [ %i.gpu, %.split45.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.gpv, %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i ], [ %i.goi, %middle.block5577 ], [ %i.goi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1485 ], [ %i.goi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1486 ] ; 3 uses
  %i.gpx = load ptr, ptr %.sroa.12.0..sroa_idx.i1397, align 8, !tbaa !963, !nonnull !114, !align !267 ; 5 uses
  %i.gpy = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1474, 1
  %i.gpz = sext i32 %i.gpy to i64
  %i.gqa = getelementptr inbounds nuw i8, ptr %i.gpx, i64 144 ; 2 uses
  %i.gqb = load ptr, ptr %i.gqa, align 8, !tbaa !309 ; 2 uses
  %i.gqc = icmp eq ptr %i.gqb, null
  br i1 %i.gqc, label %bb.ajd, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475

bb.ajd:                                           ; preds = %.split45.us.i.i.i.i.i.i.i.i.i
  %i.gqd = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gpx)
          to label %.noexc19.i.i.i.i.i.i.i.i1480 unwind label %bb.aji ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1480:                     ; preds = %bb.ajd
  %.pre.i.i.i.i.i.i.i.i.i.i1481 = load ptr, ptr %i.gqa, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475: ; preds = %.noexc19.i.i.i.i.i.i.i.i1480, %.split45.us.i.i.i.i.i.i.i.i.i
  %i.gqe = phi ptr [ %i.gqb, %.split45.us.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i1481, %.noexc19.i.i.i.i.i.i.i.i1480 ]
  %i.gqf = getelementptr inbounds [8 x i8], ptr %i.gqe, i64 %i.gkx
  store i64 %i.gpz, ptr %i.gqf, align 8, !tbaa !147
  %i.gqg = getelementptr inbounds nuw i8, ptr %i.gpx, i64 32 ; 2 uses
  %i.gqh = load ptr, ptr %i.gqg, align 8, !tbaa !310
  %.not.i22.i.i.i.i.i.i.i.i.i1476 = icmp eq ptr %i.gqh, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1476, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %bb.aje

bb.aje:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475
  %i.gqi = getelementptr inbounds nuw i8, ptr %i.gpx, i64 56
  %i.gqj = load i32, ptr %i.gqi, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gpx, i32 noundef %i.gqj, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1477 unwind label %bb.aji

.noexc20.i.i.i.i.i.i.i.i1477:                     ; preds = %bb.aje
  %i.gqk = load ptr, ptr %i.gqg, align 8, !tbaa !310 ; 2 uses
  %i.gql = getelementptr inbounds nuw i8, ptr %i.gqk, i64 44
  %i.gqm = load i8, ptr %i.gql, align 4, !tbaa !315
  %i.gqn = and i8 %i.gqm, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1478 = icmp eq i8 %i.gqn, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1478, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1479, label %.invoke.i.i.i.i.i.i.i.i1469, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1479: ; preds = %.noexc20.i.i.i.i.i.i.i.i1477
  %i.gqo = getelementptr inbounds nuw i8, ptr %i.gqk, i64 16
  %i.gqp = load ptr, ptr %i.gqo, align 8, !tbaa !316
  %i.gqq = lshr i64 %.069.i.i.i.i.i.i.i.i1420, 3
  %i.gqr = and i64 %i.gqq, 536870911
  %i.gqs = getelementptr inbounds nuw i8, ptr %i.gqp, i64 %i.gqr ; 2 uses
  %i.gqt = load i8, ptr %i.gqs, align 1, !tbaa !87
  %i.gqu = trunc i64 %.069.i.i.i.i.i.i.i.i1420 to i8
  %i.gqv = and i8 %i.gqu, 7
  %i.gqw = shl nuw i8 1, %i.gqv
  %i.gqx = or i8 %i.gqt, %i.gqw
  store i8 %i.gqx, ptr %i.gqs, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441

.critedge.i.i.i.i.i.i.i.i.i1437:                  ; preds = %bb.ajc, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i, %.split36.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i1438 = phi i64 [ %.03442.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.gps, %bb.ajc ], [ %.03442.i.i.i.i.i.i.i.i.i, %.split36.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1439 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1434, %i.gpc ; 2 uses
  %i.gqy = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1439 to i32
  %.not16.i.i.i.i.i.i.i.i.i1440 = icmp eq i32 %i.glk, %i.gqy
  br i1 %.not16.i.i.i.i.i.i.i.i.i1440, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441, label %.split36.i.i.i.i.i.i.i.i.i, !llvm.loop !3203

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1437, %vector.body5571, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i, %.critedge.us54.i.i.i.i.i.i.i.i.i1490, %.critedge.us.i.i.i.i.i.i.i.i.i1496, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1479, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1484, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1482, %bb.ait
  %.040.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1474, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1475 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1474, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1479 ], [ %i.glj, %bb.ait ], [ %i.glk, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1482 ], [ %i.glk, %vector.body5571 ], [ %i.glk, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i ], [ %i.glk, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1484 ], [ %i.glk, %.critedge.us54.i.i.i.i.i.i.i.i.i1490 ], [ %i.glk, %.critedge.us.i.i.i.i.i.i.i.i.i1496 ], [ %i.glk, %.critedge.i.i.i.i.i.i.i.i.i1437 ]
  %i.gqz = load ptr, ptr %.sroa.952.0..sroa_idx.i1394, align 8, !tbaa !960, !nonnull !114, !align !333
  %i.gra = load i32, ptr %i.gqz, align 4, !tbaa !98
  %i.grb = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i, %i.gra
  br i1 %i.grb, label %bb.ajf, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.ajf:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1441
  %i.grc = load ptr, ptr %.sroa.12.0..sroa_idx.i1397, align 8, !tbaa !963, !nonnull !114, !align !267 ; 5 uses
  %i.grd = getelementptr inbounds nuw i8, ptr %i.grc, i64 144 ; 2 uses
  %i.gre = load ptr, ptr %i.grd, align 8, !tbaa !309 ; 2 uses
  %i.grf = icmp eq ptr %i.gre, null
  br i1 %i.grf, label %bb.ajg, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1442

bb.ajg:                                           ; preds = %bb.ajf
  %i.grg = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.grc)
          to label %.noexc22.i.i.i.i.i.i.i.i1472 unwind label %bb.aji ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1472:                     ; preds = %bb.ajg
  %.pre.i27.i.i.i.i.i.i.i.i.i1473 = load ptr, ptr %i.grd, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1442

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1442: ; preds = %.noexc22.i.i.i.i.i.i.i.i1472, %bb.ajf
  %i.grh = phi ptr [ %i.gre, %bb.ajf ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1473, %.noexc22.i.i.i.i.i.i.i.i1472 ]
  %i.gri = getelementptr inbounds [8 x i8], ptr %i.grh, i64 %i.gkx
  store i64 0, ptr %i.gri, align 8, !tbaa !147
  %i.grj = getelementptr inbounds nuw i8, ptr %i.grc, i64 32 ; 2 uses
  %i.grk = load ptr, ptr %i.grj, align 8, !tbaa !310
  %.not.i24.i.i.i.i.i.i.i.i.i1443 = icmp eq ptr %i.grk, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1443, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.ajh

bb.ajh:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1442
  %i.grl = getelementptr inbounds nuw i8, ptr %i.grc, i64 56
  %i.grm = load i32, ptr %i.grl, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.grc, i32 noundef %i.grm, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1467 unwind label %bb.aji

.noexc23.i.i.i.i.i.i.i.i1467:                     ; preds = %bb.ajh
  %i.grn = load ptr, ptr %i.grj, align 8, !tbaa !310 ; 2 uses
  %i.gro = getelementptr inbounds nuw i8, ptr %i.grn, i64 44
  %i.grp = load i8, ptr %i.gro, align 4, !tbaa !315
  %i.grq = and i8 %i.grp, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1468 = icmp eq i8 %i.grq, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1468, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1471, label %.invoke.i.i.i.i.i.i.i.i1469, !prof !112

.invoke.i.i.i.i.i.i.i.i1469:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1467, %.noexc20.i.i.i.i.i.i.i.i1477
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1470 unwind label %bb.aji

.cont.i.i.i.i.i.i.i.i1470:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1469
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1471: ; preds = %.noexc23.i.i.i.i.i.i.i.i1467
  %i.grr = getelementptr inbounds nuw i8, ptr %i.grn, i64 16
  %i.grs = load ptr, ptr %i.grr, align 8, !tbaa !316
  %i.grt = lshr i64 %.069.i.i.i.i.i.i.i.i1420, 3
  %i.gru = and i64 %i.grt, 536870911
  %i.grv = getelementptr inbounds nuw i8, ptr %i.grs, i64 %i.gru ; 2 uses
  %i.grw = load i8, ptr %i.grv, align 1, !tbaa !87
  %i.grx = trunc i64 %.069.i.i.i.i.i.i.i.i1420 to i8
  %i.gry = and i8 %i.grx, 7
  %i.grz = shl nuw i8 1, %i.gry
end_hunk_5
begin_hunk_6_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.hmy = load i32, ptr %i.hmx, align 4, !tbaa !98 ; 2 uses
  %i.hmz = icmp sgt i64 %i.hmi, 0                 ; 3 uses
  %i.hna = add nsw i32 %i.hmy, -1
  %i.hnb = select i1 %i.hmz, i32 0, i32 %i.hna
  store i32 %i.hnb, ptr %i.hmq, align 4, !tbaa !98
  %i.hnc = select i1 %i.hmz, i32 %i.hmy, i32 -1
  store i32 %i.hnc, ptr %i.hmr, align 4, !tbaa !98
  %i.hnd = select i1 %i.hmz, i32 1, i32 -1        ; 9 uses
  store i32 %i.hnd, ptr %i.hms, align 4, !tbaa !98
  %i.hne = call noundef i64 @llvm.abs.i64(i64 %i.hmi, i1 true) ; 6 uses
  %i.hnf = load i32, ptr %i.hmq, align 4, !tbaa !98 ; 9 uses
  %i.hng = load i32, ptr %i.hmr, align 4, !tbaa !98 ; 13 uses
  %.not1641.i.i.i.i.i.i.i.i.i1701 = icmp eq i32 %i.hnf, %i.hng
  br i1 %.not1641.i.i.i.i.i.i.i.i.i1701, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %.lr.ph.i.i.i.i.i.i.i.i.i1702

.lr.ph.i.i.i.i.i.i.i.i.i1702:                     ; preds = %bb.aoe
  %i.hnh = load ptr, ptr %.sroa.11.0..sroa_idx.i1669, align 8, !tbaa !973, !nonnull !114, !align !267 ; 7 uses
  %i.hni = getelementptr inbounds nuw i8, ptr %i.hnh, i64 24
  %i.hnj = load ptr, ptr %i.hni, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i1703 = icmp eq ptr %i.hnj, null
  %i.hnk = getelementptr inbounds nuw i8, ptr %i.hnh, i64 59 ; 3 uses
  %i.hnl = getelementptr inbounds nuw i8, ptr %i.hnh, i64 8 ; 3 uses
  %i.hnm = getelementptr inbounds nuw i8, ptr %i.hnh, i64 16 ; 4 uses
  %i.hnn = getelementptr inbounds nuw i8, ptr %i.hnh, i64 58
  %i.hno = getelementptr inbounds nuw i8, ptr %i.hnh, i64 64 ; 3 uses
  %i.hnp = fcmp uno double %i.hlp, 0.000000e+00   ; 4 uses
  %i.hnq = load i8, ptr %i.hnn, align 2, !tbaa !287, !range !113, !noundef !114
  %i.hnr = trunc nuw i8 %i.hnq to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i1703, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1789, label %.lr.ph.split.i.i.i.i.i.i.i.i.i1704

.lr.ph.split.us.i.i.i.i.i.i.i.i.i1789:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1702
  %i.hns = load ptr, ptr %i.hnm, align 8, !tbaa !329
  %i.hnt = sext i32 %i.hnf to i64
  %i.hnu = sext i32 %i.hnd to i64
  %i.hnv = sext i32 %i.hkv to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i1796, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1789
  %indvars.iv136.i.i.i.i.i.i.i.i.i1791 = phi i64 [ %indvars.iv.next137.i.i.i.i.i.i.i.i.i1798, %.critedge.us.i.i.i.i.i.i.i.i.i1796 ], [ %i.hnt, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1789 ] ; 3 uses
  %.03442.us.i.i.i.i.i.i.i.i.i1792 = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i1797, %.critedge.us.i.i.i.i.i.i.i.i.i1796 ], [ %i.hne, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i1789 ] ; 2 uses
  %i.hnw = add nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i1791, %i.hnv ; 2 uses
  %i.hnx = trunc nsw i64 %i.hnw to i32
  br i1 %i.hnr, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i, label %bb.aof

bb.aof:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790
  %i.hny = load i8, ptr %i.hnk, align 1, !tbaa !288, !range !113, !noundef !114
  %i.hnz = trunc nuw i8 %i.hny to i1
  br i1 %i.hnz, label %bb.aoh, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  %i.hoa = load ptr, ptr %i.hnl, align 8, !tbaa !283
  %i.hob = getelementptr inbounds [4 x i8], ptr %i.hoa, i64 %i.hnw
  %i.hoc = load i32, ptr %i.hob, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

bb.aoh:                                           ; preds = %bb.aof
  %i.hod = load i32, ptr %i.hno, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.aoh, %bb.aog, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790
  %.0.i.i19.us.i.i.i.i.i.i.i.i.i1793 = phi i32 [ %i.hoc, %bb.aog ], [ %i.hod, %bb.aoh ], [ %i.hnx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790 ]
  %i.hoe = sext i32 %.0.i.i19.us.i.i.i.i.i.i.i.i.i1793 to i64
  %i.hof = getelementptr inbounds [8 x i8], ptr %i.hns, i64 %i.hoe
  %i.hog = load double, ptr %i.hof, align 8, !tbaa !882 ; 2 uses
  %i.hoh = fcmp uno double %i.hog, 0.000000e+00
  %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1794 = select i1 %i.hoh, i1 %i.hnp, i1 false
  %i.hoi = fcmp oeq double %i.hog, %i.hlp
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i1795 = select i1 %or.cond.i.i.us.i.i.i.i.i.i.i.i.i1794, i1 true, i1 %i.hoi
  br i1 %.0.i.i21.us.i.i.i.i.i.i.i.i.i1795, label %bb.aoi, label %.critedge.us.i.i.i.i.i.i.i.i.i1796

bb.aoi:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %i.hoj = add nsw i64 %.03442.us.i.i.i.i.i.i.i.i.i1792, -1 ; 2 uses
  %i.hok = icmp eq i64 %i.hoj, 0
  br i1 %i.hok, label %.split45.us.loopexit.i.i.i.i.i.i.i.i.i1800, label %.critedge.us.i.i.i.i.i.i.i.i.i1796

.critedge.us.i.i.i.i.i.i.i.i.i1796:               ; preds = %bb.aoi, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i1797 = phi i64 [ %.03442.us.i.i.i.i.i.i.i.i.i1792, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us.i.i.i.i.i.i.i.i.i ], [ %i.hoj, %bb.aoi ]
  %indvars.iv.next137.i.i.i.i.i.i.i.i.i1798 = add nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i1791, %i.hnu ; 2 uses
  %i.hol = trunc nsw i64 %indvars.iv.next137.i.i.i.i.i.i.i.i.i1798 to i32
  %.not16.us.i.i.i.i.i.i.i.i.i1799 = icmp eq i32 %i.hng, %i.hol
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i1799, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i1790, !llvm.loop !3224

.lr.ph.split.i.i.i.i.i.i.i.i.i1704:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i1702
  %i.hom = getelementptr inbounds nuw i8, ptr %i.hnh, i64 57
  %i.hon = load i8, ptr %i.hom, align 1, !range !113
  %i.hoo = trunc nuw i8 %i.hon to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i1705 = select i1 %i.hnr, i1 true, i1 %i.hoo
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i1705, label %.split.us.preheader.i.i.i.i.i.i.i.i.i1775, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1706

.split.us.preheader.i.i.i.i.i.i.i.i.i1775:        ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1704
  %i.hop = sext i32 %i.hnf to i64
  %i.hoq = sext i32 %i.hnd to i64
  %i.hor = sext i32 %i.hkv to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i1776

.split.us.i.i.i.i.i.i.i.i.i1776:                  ; preds = %.critedge.us54.i.i.i.i.i.i.i.i.i1784, %.split.us.preheader.i.i.i.i.i.i.i.i.i1775
  %indvars.iv133.i.i.i.i.i.i.i.i.i1777 = phi i64 [ %i.hop, %.split.us.preheader.i.i.i.i.i.i.i.i.i1775 ], [ %indvars.iv.next134.i.i.i.i.i.i.i.i.i1786, %.critedge.us54.i.i.i.i.i.i.i.i.i1784 ] ; 3 uses
  %.03442.us48.i.i.i.i.i.i.i.i.i1778 = phi i64 [ %i.hne, %.split.us.preheader.i.i.i.i.i.i.i.i.i1775 ], [ %.1.us55.i.i.i.i.i.i.i.i.i1785, %.critedge.us54.i.i.i.i.i.i.i.i.i1784 ] ; 3 uses
  %i.hos = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1777, %i.hor ; 4 uses
  %i.hot = lshr i64 %i.hos, 6
  %i.hou = and i64 %i.hot, 67108863
  %i.hov = getelementptr inbounds nuw [8 x i8], ptr %i.hnj, i64 %i.hou
  %i.how = load i64, ptr %i.hov, align 8, !tbaa !147
  %i.hox = and i64 %i.hos, 63
  %i.hoy = shl nuw i64 1, %i.hox
  %i.hoz = and i64 %i.hoy, %i.how
  %.not.i.i.us.i.i.i.i.i.i.i.i.i1779 = icmp eq i64 %i.hoz, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i1779, label %.critedge.us54.i.i.i.i.i.i.i.i.i1784, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i1780

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i1780: ; preds = %.split.us.i.i.i.i.i.i.i.i.i1776
  %i.hpa = trunc nsw i64 %i.hos to i32
  %i.hpb = load ptr, ptr %i.hnm, align 8, !tbaa !329
  br i1 %i.hnr, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i, label %bb.aoj

bb.aoj:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i1780
  %i.hpc = load i8, ptr %i.hnk, align 1, !tbaa !288, !range !113, !noundef !114
  %i.hpd = trunc nuw i8 %i.hpc to i1
  br i1 %i.hpd, label %bb.aol, label %bb.aok

bb.aok:                                           ; preds = %bb.aoj
  %i.hpe = load ptr, ptr %i.hnl, align 8, !tbaa !283
  %i.hpf = getelementptr inbounds [4 x i8], ptr %i.hpe, i64 %i.hos
  %i.hpg = load i32, ptr %i.hpf, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i

bb.aol:                                           ; preds = %bb.aoj
  %i.hph = load i32, ptr %i.hno, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i: ; preds = %bb.aol, %bb.aok, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i1780
  %.0.i.i19.us51.i.i.i.i.i.i.i.i.i1781 = phi i32 [ %i.hpg, %bb.aok ], [ %i.hph, %bb.aol ], [ %i.hpa, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49.i.i.i.i.i.i.i.i.i1780 ]
  %i.hpi = sext i32 %.0.i.i19.us51.i.i.i.i.i.i.i.i.i1781 to i64
  %i.hpj = getelementptr inbounds [8 x i8], ptr %i.hpb, i64 %i.hpi
  %i.hpk = load double, ptr %i.hpj, align 8, !tbaa !882 ; 2 uses
  %i.hpl = fcmp uno double %i.hpk, 0.000000e+00
  %or.cond.i.i.us52.i.i.i.i.i.i.i.i.i1782 = select i1 %i.hpl, i1 %i.hnp, i1 false
  %i.hpm = fcmp oeq double %i.hpk, %i.hlp
  %.0.i.i21.us53.i.i.i.i.i.i.i.i.i1783 = select i1 %or.cond.i.i.us52.i.i.i.i.i.i.i.i.i1782, i1 true, i1 %i.hpm
  br i1 %.0.i.i21.us53.i.i.i.i.i.i.i.i.i1783, label %bb.aom, label %.critedge.us54.i.i.i.i.i.i.i.i.i1784

bb.aom:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i
  %i.hpn = add nsw i64 %.03442.us48.i.i.i.i.i.i.i.i.i1778, -1 ; 2 uses
  %i.hpo = icmp eq i64 %i.hpn, 0
  br i1 %i.hpo, label %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i1788, label %.critedge.us54.i.i.i.i.i.i.i.i.i1784

.critedge.us54.i.i.i.i.i.i.i.i.i1784:             ; preds = %bb.aom, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i1776
  %.1.us55.i.i.i.i.i.i.i.i.i1785 = phi i64 [ %.03442.us48.i.i.i.i.i.i.i.i.i1778, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us50.i.i.i.i.i.i.i.i.i ], [ %i.hpn, %bb.aom ], [ %.03442.us48.i.i.i.i.i.i.i.i.i1778, %.split.us.i.i.i.i.i.i.i.i.i1776 ]
  %indvars.iv.next134.i.i.i.i.i.i.i.i.i1786 = add nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1777, %i.hoq ; 2 uses
  %i.hpp = trunc nsw i64 %indvars.iv.next134.i.i.i.i.i.i.i.i.i1786 to i32
  %.not16.us56.i.i.i.i.i.i.i.i.i1787 = icmp eq i32 %i.hng, %i.hpp
  br i1 %.not16.us56.i.i.i.i.i.i.i.i.i1787, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %.split.us.i.i.i.i.i.i.i.i.i1776, !llvm.loop !3224

.lr.ph.split.split.i.i.i.i.i.i.i.i.i1706:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i1704
  %i.hpq = load i8, ptr %i.hnk, align 1, !tbaa !288, !range !113, !noundef !114
  %i.hpr = trunc nuw i8 %i.hpq to i1
  br i1 %i.hpr, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1764, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1707

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1764: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1706
  %i.hps = load i64, ptr %i.hnj, align 8, !tbaa !147
  %i.hpt = and i64 %i.hps, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i1765 = icmp eq i64 %i.hpt, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i1765, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1766

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1766: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1764
  %i.hpu = load ptr, ptr %i.hnm, align 8, !tbaa !329
  %i.hpv = load i32, ptr %i.hno, align 8, !tbaa !330
  %i.hpw = sext i32 %i.hpv to i64
  %i.hpx = getelementptr inbounds [8 x i8], ptr %i.hpu, i64 %i.hpw
  %i.hpy = load double, ptr %i.hpx, align 8, !tbaa !882 ; 2 uses
  %i.hpz = fcmp uno double %i.hpy, 0.000000e+00
  %or.cond.i.i.us66.us90.i.i.i.i.i.i.i.i.i1767 = select i1 %i.hpz, i1 %i.hnp, i1 false
  %i.hqa = fcmp oeq double %i.hpy, %i.hlp
  %.0.i.i21.us67.us91.i.i.i.i.i.i.i.i.i1768 = select i1 %or.cond.i.i.us66.us90.i.i.i.i.i.i.i.i.i1767, i1 true, i1 %i.hqa
  br i1 %.0.i.i21.us67.us91.i.i.i.i.i.i.i.i.i1768, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1769, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1769: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1766
  %i.hqb = trunc i64 %i.hne to i32
  %i.hqc = add i32 %i.hqb, -1
  %i.hqd = mul i32 %i.hqc, %i.hnd
  %i.hqe = add i32 %i.hnf, %i.hqd                 ; 3 uses
  %i.hqf = add nsw i64 %i.hne, -1                 ; 5 uses
  %i.hqg = icmp eq i64 %i.hqf, 0
  br i1 %i.hqg, label %.split45.us.i.i.i.i.i.i.i.i.i1755, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1769
  %min.iters.check5535 = icmp samesign ult i64 %i.hne, 33
  br i1 %min.iters.check5535, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader, label %vector.ph5536

vector.ph5536:                                    ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph
  %n.vec5537 = and i64 %i.hqf, -32                ; 3 uses
  %i.hqh = and i64 %i.hqf, 31
  %i.hqi = trunc i64 %n.vec5537 to i32
  %i.hqj = mul i32 %i.hnd, %i.hqi
  %i.hqk = add i32 %i.hnf, %i.hqj
  %broadcast.splatinsert5538 = insertelement <32 x i32> poison, i32 %i.hng, i64 0
  %broadcast.splat5539 = shufflevector <32 x i32> %broadcast.splatinsert5538, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5540 = insertelement <32 x i32> poison, i32 %i.hnd, i64 0
  %broadcast.splat5541 = shufflevector <32 x i32> %broadcast.splatinsert5540, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5542 = insertelement <32 x i32> poison, i32 %i.hnf, i64 0
  %broadcast.splat5543 = shufflevector <32 x i32> %broadcast.splatinsert5542, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.hql = mul nsw <32 x i32> %broadcast.splat5541, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction5544 = add nsw <32 x i32> %broadcast.splat5543, %i.hql
  %i.hqm = shl nsw i32 %i.hnd, 5
  %broadcast.splatinsert5545 = insertelement <32 x i32> poison, i32 %i.hqm, i64 0
  %broadcast.splat5546 = shufflevector <32 x i32> %broadcast.splatinsert5545, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body5547

vector.body5547:                                  ; preds = %vector.body.interim5552, %vector.ph5536
  %index5548 = phi i64 [ 0, %vector.ph5536 ], [ %index.next5550, %vector.body.interim5552 ]
  %vec.ind5549 = phi <32 x i32> [ %induction5544, %vector.ph5536 ], [ %vec.ind.next5551, %vector.body.interim5552 ] ; 2 uses
  %i.hqn = add nsw <32 x i32> %vec.ind5549, %broadcast.splat5541
  %i.hqo = icmp eq <32 x i32> %i.hqn, %broadcast.splat5539
  %i.hqp = freeze <32 x i1> %i.hqo
  %i.hqq = bitcast <32 x i1> %i.hqp to i32
  %.not5826 = icmp eq i32 %i.hqq, 0
  br i1 %.not5826, label %vector.body.interim5552, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720

vector.body.interim5552:                          ; preds = %vector.body5547
  %vec.ind.next5551 = add nsw <32 x i32> %vec.ind5549, %broadcast.splat5546
  %index.next5550 = add nuw i64 %index5548, 32    ; 2 uses
  %i.hqr = icmp eq i64 %index.next5550, %n.vec5537
  br i1 %i.hqr, label %middle.block5553, label %vector.body5547, !llvm.loop !3225

middle.block5553:                                 ; preds = %vector.body.interim5552
  %cmp.n5554 = icmp eq i64 %i.hqf, %n.vec5537
  br i1 %cmp.n5554, label %.split45.us.i.i.i.i.i.i.i.i.i1755, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader: ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph, %middle.block5553
  %.ph6050 = phi i64 [ %i.hqf, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph ], [ %i.hqh, %middle.block5553 ]
  %.043.us61.us86.us.i.i.i.i.i.i.i.i.i17715377.ph = phi i32 [ %i.hnf, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.lr.ph ], [ %i.hqk, %middle.block5553 ]
  br label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770: ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773
  %i.hqs = add nsw i64 %i.hqu, -1                 ; 2 uses
  %i.hqt = icmp eq i64 %i.hqs, 0
  br i1 %i.hqt, label %.split45.us.i.i.i.i.i.i.i.i.i1755, label %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773, !llvm.loop !3226

.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773:     ; preds = %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770
  %i.hqu = phi i64 [ %i.hqs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770 ], [ %.ph6050, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader ]
  %.043.us61.us86.us.i.i.i.i.i.i.i.i.i17715377 = phi i32 [ %i.hqv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770 ], [ %.043.us61.us86.us.i.i.i.i.i.i.i.i.i17715377.ph, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773.preheader ]
  %i.hqv = add nsw i32 %.043.us61.us86.us.i.i.i.i.i.i.i.i.i17715377, %i.hnd ; 2 uses
  %.not16.us70.us94.us.i.i.i.i.i.i.i.i.i1774 = icmp eq i32 %i.hqv, %i.hng
  br i1 %.not16.us70.us94.us.i.i.i.i.i.i.i.i.i1774, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770, !llvm.loop !3224

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1707:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i1706
  %i.hqw = load ptr, ptr %i.hnl, align 8, !tbaa !283
  %i.hqx = sext i32 %i.hnf to i64
  %i.hqy = sext i32 %i.hnd to i64
  %i.hqz = sext i32 %i.hkv to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i1708 = getelementptr [4 x i8], ptr %i.hqw, i64 %i.hqz
  br label %.split36.i.i.i.i.i.i.i.i.i1709

.split36.i.i.i.i.i.i.i.i.i1709:                   ; preds = %.critedge.i.i.i.i.i.i.i.i.i1716, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1707
  %indvars.iv.i.i.i.i.i.i.i.i.i1710 = phi i64 [ %i.hqx, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1707 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i1718, %.critedge.i.i.i.i.i.i.i.i.i1716 ] ; 3 uses
  %.03442.i.i.i.i.i.i.i.i.i1711 = phi i64 [ %i.hne, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i1707 ], [ %.1.i.i.i.i.i.i.i.i.i1717, %.critedge.i.i.i.i.i.i.i.i.i1716 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i1712 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i1708, i64 %indvars.iv.i.i.i.i.i.i.i.i.i1710
  %i.hra = load i32, ptr %gep.i.i.i.i.i.i.i.i.i1712, align 4, !tbaa !98 ; 2 uses
  %i.hrb = zext i32 %i.hra to i64                 ; 2 uses
  %i.hrc = lshr i64 %i.hrb, 6
  %i.hrd = getelementptr inbounds nuw [8 x i8], ptr %i.hnj, i64 %i.hrc
  %i.hre = load i64, ptr %i.hrd, align 8, !tbaa !147
  %i.hrf = and i64 %i.hrb, 63
  %i.hrg = shl nuw i64 1, %i.hrf
  %i.hrh = and i64 %i.hrg, %i.hre
  %.not.i7.i.i.i.i.i.i.i.i.i.i1713 = icmp eq i64 %i.hrh, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i1713, label %.critedge.i.i.i.i.i.i.i.i.i1716, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i: ; preds = %.split36.i.i.i.i.i.i.i.i.i1709
  %i.hri = load ptr, ptr %i.hnm, align 8, !tbaa !329
  %i.hrj = sext i32 %i.hra to i64
  %i.hrk = getelementptr inbounds [8 x i8], ptr %i.hri, i64 %i.hrj
  %i.hrl = load double, ptr %i.hrk, align 8, !tbaa !882 ; 2 uses
  %i.hrm = fcmp uno double %i.hrl, 0.000000e+00
  %or.cond.i.i.i.i.i.i.i.i.i.i.i1714 = select i1 %i.hrm, i1 %i.hnp, i1 false
  %i.hrn = fcmp oeq double %i.hrl, %i.hlp
  %.0.i.i21.i.i.i.i.i.i.i.i.i1715 = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i1714, i1 true, i1 %i.hrn
  br i1 %.0.i.i21.i.i.i.i.i.i.i.i.i1715, label %bb.aon, label %.critedge.i.i.i.i.i.i.i.i.i1716

bb.aon:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i
  %i.hro = add nsw i64 %.03442.i.i.i.i.i.i.i.i.i1711, -1 ; 2 uses
  %i.hrp = icmp eq i64 %i.hro, 0
  br i1 %i.hrp, label %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i1754, label %.critedge.i.i.i.i.i.i.i.i.i1716

.split45.us.loopexit.i.i.i.i.i.i.i.i.i1800:       ; preds = %bb.aoi
  %i.hrq = trunc nsw i64 %indvars.iv136.i.i.i.i.i.i.i.i.i1791 to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i1755

.split45.us.loopexit101.i.i.i.i.i.i.i.i.i1788:    ; preds = %bb.aom
  %i.hrr = trunc nsw i64 %indvars.iv133.i.i.i.i.i.i.i.i.i1777 to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i1755

.split45.us.loopexit111.i.i.i.i.i.i.i.i.i1754:    ; preds = %bb.aon
  %i.hrs = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1710 to i32
  br label %.split45.us.i.i.i.i.i.i.i.i.i1755

.split45.us.i.i.i.i.i.i.i.i.i1755:                ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1769, %middle.block5553, %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i1754, %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i1788, %.split45.us.loopexit.i.i.i.i.i.i.i.i.i1800
  %.us-phi.i.i.i.i.i.i.i.i.i1756 = phi i32 [ %i.hrs, %.split45.us.loopexit111.i.i.i.i.i.i.i.i.i1754 ], [ %i.hrq, %.split45.us.loopexit.i.i.i.i.i.i.i.i.i1800 ], [ %i.hrr, %.split45.us.loopexit101.i.i.i.i.i.i.i.i.i1788 ], [ %i.hqe, %middle.block5553 ], [ %i.hqe, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.preheader.i.i.i.i.i.i.i.i.i1769 ], [ %i.hqe, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us85.us.i.i.i.i.i.i.i.i.i1770 ] ; 3 uses
  %i.hrt = load ptr, ptr %.sroa.12.0..sroa_idx.i1670, align 8, !tbaa !974, !nonnull !114, !align !267 ; 5 uses
  %i.hru = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i1756, 1
  %i.hrv = sext i32 %i.hru to i64
  %i.hrw = getelementptr inbounds nuw i8, ptr %i.hrt, i64 144 ; 2 uses
  %i.hrx = load ptr, ptr %i.hrw, align 8, !tbaa !309 ; 2 uses
  %i.hry = icmp eq ptr %i.hrx, null
  br i1 %i.hry, label %bb.aoo, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757

bb.aoo:                                           ; preds = %.split45.us.i.i.i.i.i.i.i.i.i1755
  %i.hrz = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hrt)
          to label %.noexc19.i.i.i.i.i.i.i.i1762 unwind label %bb.aot ; 0 uses

.noexc19.i.i.i.i.i.i.i.i1762:                     ; preds = %bb.aoo
  %.pre.i.i.i.i.i.i.i.i.i.i1763 = load ptr, ptr %i.hrw, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757: ; preds = %.noexc19.i.i.i.i.i.i.i.i1762, %.split45.us.i.i.i.i.i.i.i.i.i1755
  %i.hsa = phi ptr [ %i.hrx, %.split45.us.i.i.i.i.i.i.i.i.i1755 ], [ %.pre.i.i.i.i.i.i.i.i.i.i1763, %.noexc19.i.i.i.i.i.i.i.i1762 ]
  %i.hsb = getelementptr inbounds [8 x i8], ptr %i.hsa, i64 %i.hmt
  store i64 %i.hrv, ptr %i.hsb, align 8, !tbaa !147
  %i.hsc = getelementptr inbounds nuw i8, ptr %i.hrt, i64 32 ; 2 uses
  %i.hsd = load ptr, ptr %i.hsc, align 8, !tbaa !310
  %.not.i22.i.i.i.i.i.i.i.i.i1758 = icmp eq ptr %i.hsd, null
  br i1 %.not.i22.i.i.i.i.i.i.i.i.i1758, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %bb.aop

bb.aop:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757
  %i.hse = getelementptr inbounds nuw i8, ptr %i.hrt, i64 56
  %i.hsf = load i32, ptr %i.hse, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hrt, i32 noundef %i.hsf, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i1759 unwind label %bb.aot

.noexc20.i.i.i.i.i.i.i.i1759:                     ; preds = %bb.aop
  %i.hsg = load ptr, ptr %i.hsc, align 8, !tbaa !310 ; 2 uses
  %i.hsh = getelementptr inbounds nuw i8, ptr %i.hsg, i64 44
  %i.hsi = load i8, ptr %i.hsh, align 4, !tbaa !315
  %i.hsj = and i8 %i.hsi, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i1760 = icmp eq i8 %i.hsj, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i1760, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1761, label %.invoke.i.i.i.i.i.i.i.i1749, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1761: ; preds = %.noexc20.i.i.i.i.i.i.i.i1759
  %i.hsk = getelementptr inbounds nuw i8, ptr %i.hsg, i64 16
  %i.hsl = load ptr, ptr %i.hsk, align 8, !tbaa !316
  %i.hsm = lshr i64 %.069.i.i.i.i.i.i.i.i1693, 3
  %i.hsn = and i64 %i.hsm, 536870911
  %i.hso = getelementptr inbounds nuw i8, ptr %i.hsl, i64 %i.hsn ; 2 uses
  %i.hsp = load i8, ptr %i.hso, align 1, !tbaa !87
  %i.hsq = trunc i64 %.069.i.i.i.i.i.i.i.i1693 to i8
  %i.hsr = and i8 %i.hsq, 7
  %i.hss = shl nuw i8 1, %i.hsr
  %i.hst = or i8 %i.hsp, %i.hss
  store i8 %i.hst, ptr %i.hso, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720

.critedge.i.i.i.i.i.i.i.i.i1716:                  ; preds = %bb.aon, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i, %.split36.i.i.i.i.i.i.i.i.i1709
  %.1.i.i.i.i.i.i.i.i.i1717 = phi i64 [ %.03442.i.i.i.i.i.i.i.i.i1711, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.i.i.i.i.i.i.i.i.i ], [ %i.hro, %bb.aon ], [ %.03442.i.i.i.i.i.i.i.i.i1711, %.split36.i.i.i.i.i.i.i.i.i1709 ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i1718 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i1710, %i.hqy ; 2 uses
  %i.hsu = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i1718 to i32
  %.not16.i.i.i.i.i.i.i.i.i1719 = icmp eq i32 %i.hng, %i.hsu
  br i1 %.not16.i.i.i.i.i.i.i.i.i1719, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720, label %.split36.i.i.i.i.i.i.i.i.i1709, !llvm.loop !3224

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720: ; preds = %.critedge.i.i.i.i.i.i.i.i.i1716, %vector.body5547, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773, %.critedge.us54.i.i.i.i.i.i.i.i.i1784, %.critedge.us.i.i.i.i.i.i.i.i.i1796, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1761, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1766, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1764, %bb.aoe
  %.040.i.i.i.i.i.i.i.i.i1721 = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i1756, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i1757 ], [ %.us-phi.i.i.i.i.i.i.i.i.i1756, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i1761 ], [ %i.hnf, %bb.aoe ], [ %i.hng, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i1764 ], [ %i.hng, %vector.body5547 ], [ %i.hng, %.critedge.us68.us92.us.i.i.i.i.i.i.i.i.i1773 ], [ %i.hng, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i1766 ], [ %i.hng, %.critedge.us54.i.i.i.i.i.i.i.i.i1784 ], [ %i.hng, %.critedge.us.i.i.i.i.i.i.i.i.i1796 ], [ %i.hng, %.critedge.i.i.i.i.i.i.i.i.i1716 ]
  %i.hsv = load ptr, ptr %.sroa.952.0..sroa_idx.i1667, align 8, !tbaa !971, !nonnull !114, !align !333
  %i.hsw = load i32, ptr %i.hsv, align 4, !tbaa !98
  %i.hsx = icmp eq i32 %.040.i.i.i.i.i.i.i.i.i1721, %i.hsw
  br i1 %i.hsx, label %bb.aoq, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.aoq:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i1720
  %i.hsy = load ptr, ptr %.sroa.12.0..sroa_idx.i1670, align 8, !tbaa !974, !nonnull !114, !align !267 ; 5 uses
  %i.hsz = getelementptr inbounds nuw i8, ptr %i.hsy, i64 144 ; 2 uses
  %i.hta = load ptr, ptr %i.hsz, align 8, !tbaa !309 ; 2 uses
  %i.htb = icmp eq ptr %i.hta, null
  br i1 %i.htb, label %bb.aor, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1722

bb.aor:                                           ; preds = %bb.aoq
  %i.htc = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hsy)
          to label %.noexc22.i.i.i.i.i.i.i.i1752 unwind label %bb.aot ; 0 uses

.noexc22.i.i.i.i.i.i.i.i1752:                     ; preds = %bb.aor
  %.pre.i27.i.i.i.i.i.i.i.i.i1753 = load ptr, ptr %i.hsz, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1722

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1722: ; preds = %.noexc22.i.i.i.i.i.i.i.i1752, %bb.aoq
  %i.htd = phi ptr [ %i.hta, %bb.aoq ], [ %.pre.i27.i.i.i.i.i.i.i.i.i1753, %.noexc22.i.i.i.i.i.i.i.i1752 ]
  %i.hte = getelementptr inbounds [8 x i8], ptr %i.htd, i64 %i.hmt
  store i64 0, ptr %i.hte, align 8, !tbaa !147
  %i.htf = getelementptr inbounds nuw i8, ptr %i.hsy, i64 32 ; 2 uses
  %i.htg = load ptr, ptr %i.htf, align 8, !tbaa !310
  %.not.i24.i.i.i.i.i.i.i.i.i1723 = icmp eq ptr %i.htg, null
  br i1 %.not.i24.i.i.i.i.i.i.i.i.i1723, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.aos

bb.aos:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23.i.i.i.i.i.i.i.i.i1722
  %i.hth = getelementptr inbounds nuw i8, ptr %i.hsy, i64 56
  %i.hti = load i32, ptr %i.hth, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hsy, i32 noundef %i.hti, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i1747 unwind label %bb.aot

.noexc23.i.i.i.i.i.i.i.i1747:                     ; preds = %bb.aos
  %i.htj = load ptr, ptr %i.htf, align 8, !tbaa !310 ; 2 uses
  %i.htk = getelementptr inbounds nuw i8, ptr %i.htj, i64 44
  %i.htl = load i8, ptr %i.htk, align 4, !tbaa !315
  %i.htm = and i8 %i.htl, 2
  %.not.i3.i25.i.i.i.i.i.i.i.i.i1748 = icmp eq i8 %i.htm, 0
  br i1 %.not.i3.i25.i.i.i.i.i.i.i.i.i1748, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1751, label %.invoke.i.i.i.i.i.i.i.i1749, !prof !112

.invoke.i.i.i.i.i.i.i.i1749:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i1747, %.noexc20.i.i.i.i.i.i.i.i1759
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i1750 unwind label %bb.aot

.cont.i.i.i.i.i.i.i.i1750:                        ; preds = %.invoke.i.i.i.i.i.i.i.i1749
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26.i.i.i.i.i.i.i.i.i1751: ; preds = %.noexc23.i.i.i.i.i.i.i.i1747
  %i.htn = getelementptr inbounds nuw i8, ptr %i.htj, i64 16
  %i.hto = load ptr, ptr %i.htn, align 8, !tbaa !316
  %i.htp = lshr i64 %.069.i.i.i.i.i.i.i.i1693, 3
  %i.htq = and i64 %i.htp, 536870911
  %i.htr = getelementptr inbounds nuw i8, ptr %i.hto, i64 %i.htq ; 2 uses
  %i.hts = load i8, ptr %i.htr, align 1, !tbaa !87
  %i.htt = trunc i64 %.069.i.i.i.i.i.i.i.i1693 to i8
  %i.htu = and i8 %i.htt, 7
  %i.htv = shl nuw i8 1, %i.htu
end_hunk_6
begin_hunk_7_@_ZZN8facebook5velox9functions12_GLOBAL__N_113applyInternalILb0EEEvRKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISA_EERNS0_4exec7EvalCtxERSA_ENKUlvE0_clEv:bb.a
  %i.kwm = add nsw i32 %i.kwk, -1
  %i.kwn = select i1 %i.kwl, i32 0, i32 %i.kwm
  store i32 %i.kwn, ptr %i.kwc, align 4, !tbaa !98
  %i.kwo = select i1 %i.kwl, i32 %i.kwk, i32 -1
  store i32 %i.kwo, ptr %i.kwd, align 4, !tbaa !98
  %i.kwp = select i1 %i.kwl, i32 1, i32 -1        ; 9 uses
  store i32 %i.kwp, ptr %i.kwe, align 4, !tbaa !98
  %i.kwq = call noundef i64 @llvm.abs.i64(i64 %i.kvu, i1 true) ; 6 uses
  %i.kwr = load i32, ptr %i.kwc, align 4, !tbaa !98 ; 9 uses
  %i.kws = load i32, ptr %i.kwd, align 4, !tbaa !98 ; 13 uses
  %.not1650.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kwr, %i.kws
  br i1 %.not1650.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %.lr.ph.i.i.i.i.i.i.i.i.i2602

.lr.ph.i.i.i.i.i.i.i.i.i2602:                     ; preds = %bb.ber
  %i.kwt = load ptr, ptr %.sroa.11.0..sroa_idx.i2570, align 8, !tbaa !1006, !nonnull !114, !align !267 ; 7 uses
  %i.kwu = getelementptr inbounds nuw i8, ptr %i.kwt, i64 24
  %i.kwv = load ptr, ptr %i.kwu, align 8, !tbaa !286 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i2603 = icmp eq ptr %i.kwv, null
  %i.kww = getelementptr inbounds nuw i8, ptr %i.kwt, i64 59 ; 3 uses
  %i.kwx = getelementptr inbounds nuw i8, ptr %i.kwt, i64 8 ; 3 uses
  %i.kwy = getelementptr inbounds nuw i8, ptr %i.kwt, i64 16 ; 4 uses
  %i.kwz = getelementptr inbounds nuw i8, ptr %i.kwt, i64 58
  %i.kxa = getelementptr inbounds nuw i8, ptr %i.kwt, i64 64 ; 3 uses
  %i.kxb = load i8, ptr %i.kwz, align 2, !tbaa !287, !range !113, !noundef !114
  %i.kxc = trunc nuw i8 %i.kxb to i1              ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i2603, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2657, label %.lr.ph.split.i.i.i.i.i.i.i.i.i2604

.lr.ph.split.us.i.i.i.i.i.i.i.i.i2657:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2602
  %i.kxd = load ptr, ptr %i.kwy, align 8, !tbaa !329
  %i.kxe = sext i32 %i.kwr to i64
  %i.kxf = sext i32 %i.kwp to i64
  %i.kxg = sext i32 %i.kui to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658: ; preds = %.critedge.us.i.i.i.i.i.i.i.i.i2660, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2657
  %indvars.iv148.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next149.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2660 ], [ %i.kxe, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2657 ] ; 3 uses
  %.04351.us.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.us.i.i.i.i.i.i.i.i.i2661, %.critedge.us.i.i.i.i.i.i.i.i.i2660 ], [ %i.kwq, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i2657 ] ; 2 uses
  %i.kxh = add nsw i64 %indvars.iv148.i.i.i.i.i.i.i.i.i, %i.kxg ; 2 uses
  %i.kxi = trunc nsw i64 %i.kxh to i32
  br i1 %i.kxc, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i, label %bb.bes

bb.bes:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658
  %i.kxj = load i8, ptr %i.kww, align 1, !tbaa !288, !range !113, !noundef !114
  %i.kxk = trunc nuw i8 %i.kxj to i1
  br i1 %i.kxk, label %bb.beu, label %bb.bet

bb.bet:                                           ; preds = %bb.bes
  %i.kxl = load ptr, ptr %i.kwx, align 8, !tbaa !283
  %i.kxm = getelementptr inbounds [4 x i8], ptr %i.kxl, i64 %i.kxh
  %i.kxn = load i32, ptr %i.kxm, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

bb.beu:                                           ; preds = %bb.bes
  %i.kxo = load i32, ptr %i.kxa, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i: ; preds = %bb.beu, %bb.bet, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658
  %.0.i.i21.us.i.i.i.i.i.i.i.i.i2659 = phi i32 [ %i.kxn, %bb.bet ], [ %i.kxo, %bb.beu ], [ %i.kxi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658 ]
  %i.kxp = sext i32 %.0.i.i21.us.i.i.i.i.i.i.i.i.i2659 to i64
  %i.kxq = getelementptr inbounds [16 x i8], ptr %i.kxd, i64 %i.kxp ; 2 uses
  %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kxq, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kxq, i64 8
  %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.kxr = icmp eq i64 %.sroa.0.0.copyload.i22.us.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2597
  %i.kxs = icmp eq i64 %.sroa.2.0.copyload.i24.us.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2599
  %i.kxt = select i1 %i.kxr, i1 %i.kxs, i1 false
  br i1 %i.kxt, label %bb.bev, label %.critedge.us.i.i.i.i.i.i.i.i.i2660

bb.bev:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %i.kxu = add nsw i64 %.04351.us.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kxv = icmp eq i64 %i.kxu, 0
  br i1 %i.kxv, label %.split54.us.loopexit.i.i.i.i.i.i.i.i.i, label %.critedge.us.i.i.i.i.i.i.i.i.i2660

.critedge.us.i.i.i.i.i.i.i.i.i2660:               ; preds = %bb.bev, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i
  %.1.us.i.i.i.i.i.i.i.i.i2661 = phi i64 [ %.04351.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us.i.i.i.i.i.i.i.i.i ], [ %i.kxu, %bb.bev ]
  %indvars.iv.next149.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv148.i.i.i.i.i.i.i.i.i, %i.kxf ; 2 uses
  %i.kxw = trunc nsw i64 %indvars.iv.next149.i.i.i.i.i.i.i.i.i to i32
  %.not16.us.i.i.i.i.i.i.i.i.i2662 = icmp eq i32 %i.kws, %i.kxw
  br i1 %.not16.us.i.i.i.i.i.i.i.i.i2662, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.i.i.i.i.i.i.i.i.i2658, !llvm.loop !3291

.lr.ph.split.i.i.i.i.i.i.i.i.i2604:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i2602
  %i.kxx = getelementptr inbounds nuw i8, ptr %i.kwt, i64 57
  %i.kxy = load i8, ptr %i.kxx, align 1, !range !113
  %i.kxz = trunc nuw i8 %i.kxy to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i2605 = select i1 %i.kxc, i1 true, i1 %i.kxz
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i2605, label %.split.us.preheader.i.i.i.i.i.i.i.i.i2654, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2606

.split.us.preheader.i.i.i.i.i.i.i.i.i2654:        ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2604
  %i.kya = sext i32 %i.kwr to i64
  %i.kyb = sext i32 %i.kwp to i64
  %i.kyc = sext i32 %i.kui to i64
  br label %.split.us.i.i.i.i.i.i.i.i.i2655

.split.us.i.i.i.i.i.i.i.i.i2655:                  ; preds = %.critedge.us64.i.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i.i2654
  %indvars.iv145.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kya, %.split.us.preheader.i.i.i.i.i.i.i.i.i2654 ], [ %indvars.iv.next146.i.i.i.i.i.i.i.i.i, %.critedge.us64.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.04351.us57.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kwq, %.split.us.preheader.i.i.i.i.i.i.i.i.i2654 ], [ %.1.us65.i.i.i.i.i.i.i.i.i, %.critedge.us64.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.kyd = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kyc ; 4 uses
  %i.kye = lshr i64 %i.kyd, 6
  %i.kyf = and i64 %i.kye, 67108863
  %i.kyg = getelementptr inbounds nuw [8 x i8], ptr %i.kwv, i64 %i.kyf
  %i.kyh = load i64, ptr %i.kyg, align 8, !tbaa !147
  %i.kyi = and i64 %i.kyd, 63
  %i.kyj = shl nuw i64 1, %i.kyi
  %i.kyk = and i64 %i.kyj, %i.kyh
  %.not.i.i.us.i.i.i.i.i.i.i.i.i2656 = icmp eq i64 %i.kyk, 0
  br i1 %.not.i.i.us.i.i.i.i.i.i.i.i.i2656, label %.critedge.us64.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us58.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us58.i.i.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i.i.i2655
  %i.kyl = trunc nsw i64 %i.kyd to i32
  %i.kym = load ptr, ptr %i.kwy, align 8, !tbaa !329
  br i1 %i.kxc, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i, label %bb.bew

bb.bew:                                           ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us58.i.i.i.i.i.i.i.i.i
  %i.kyn = load i8, ptr %i.kww, align 1, !tbaa !288, !range !113, !noundef !114
  %i.kyo = trunc nuw i8 %i.kyn to i1
  br i1 %i.kyo, label %bb.bey, label %bb.bex

bb.bex:                                           ; preds = %bb.bew
  %i.kyp = load ptr, ptr %i.kwx, align 8, !tbaa !283
  %i.kyq = getelementptr inbounds [4 x i8], ptr %i.kyp, i64 %i.kyd
  %i.kyr = load i32, ptr %i.kyq, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i

bb.bey:                                           ; preds = %bb.bew
  %i.kys = load i32, ptr %i.kxa, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i: ; preds = %bb.bey, %bb.bex, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us58.i.i.i.i.i.i.i.i.i
  %.0.i.i21.us60.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kyr, %bb.bex ], [ %i.kys, %bb.bey ], [ %i.kyl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us58.i.i.i.i.i.i.i.i.i ]
  %i.kyt = sext i32 %.0.i.i21.us60.i.i.i.i.i.i.i.i.i to i64
  %i.kyu = getelementptr inbounds [16 x i8], ptr %i.kym, i64 %i.kyt ; 2 uses
  %.sroa.0.0.copyload.i22.us61.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kyu, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us62.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kyu, i64 8
  %.sroa.2.0.copyload.i24.us63.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us62.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.kyv = icmp eq i64 %.sroa.0.0.copyload.i22.us61.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2597
  %i.kyw = icmp eq i64 %.sroa.2.0.copyload.i24.us63.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2599
  %i.kyx = select i1 %i.kyv, i1 %i.kyw, i1 false
  br i1 %i.kyx, label %bb.bez, label %.critedge.us64.i.i.i.i.i.i.i.i.i

bb.bez:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i
  %i.kyy = add nsw i64 %.04351.us57.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.kyz = icmp eq i64 %i.kyy, 0
  br i1 %i.kyz, label %.split54.us.loopexit113.i.i.i.i.i.i.i.i.i, label %.critedge.us64.i.i.i.i.i.i.i.i.i

.critedge.us64.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.bez, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i2655
  %.1.us65.i.i.i.i.i.i.i.i.i = phi i64 [ %.04351.us57.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us59.i.i.i.i.i.i.i.i.i ], [ %i.kyy, %bb.bez ], [ %.04351.us57.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i2655 ]
  %indvars.iv.next146.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i, %i.kyb ; 2 uses
  %i.kza = trunc nsw i64 %indvars.iv.next146.i.i.i.i.i.i.i.i.i to i32
  %.not16.us66.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kws, %i.kza
  br i1 %.not16.us66.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %.split.us.i.i.i.i.i.i.i.i.i2655, !llvm.loop !3291

.lr.ph.split.split.i.i.i.i.i.i.i.i.i2606:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i2604
  %i.kzb = load i8, ptr %i.kww, align 1, !tbaa !288, !range !113, !noundef !114
  %i.kzc = trunc nuw i8 %i.kzb to i1
  br i1 %i.kzc, label %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2651, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2607

.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2651: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2606
  %i.kzd = load i64, ptr %i.kwv, align 8, !tbaa !147
  %i.kze = and i64 %i.kzd, 1
  %.not.i6.i.us.i.i.i.i.i.i.i.i.i2652 = icmp eq i64 %i.kze, 0
  br i1 %.not.i6.i.us.i.i.i.i.i.i.i.i.i2652, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2653

.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2653: ; preds = %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2651
  %i.kzf = load ptr, ptr %i.kwy, align 8, !tbaa !329
  %i.kzg = load i32, ptr %i.kxa, align 8, !tbaa !330
  %i.kzh = sext i32 %i.kzg to i64
  %i.kzi = getelementptr inbounds [16 x i8], ptr %i.kzf, i64 %i.kzh ; 2 uses
  %.sroa.0.0.copyload.i22.us76.us101.i.i.i.i.i.i.i.i.i = load i64, ptr %i.kzi, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us77.us102.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kzi, i64 8
  %.sroa.2.0.copyload.i24.us78.us103.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.us77.us102.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.kzj = icmp eq i64 %.sroa.0.0.copyload.i22.us76.us101.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2597
  %i.kzk = icmp eq i64 %.sroa.2.0.copyload.i24.us78.us103.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2599
  %i.kzl = select i1 %i.kzj, i1 %i.kzk, i1 false
  br i1 %i.kzl, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.preheader.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2653
  %i.kzm = trunc i64 %i.kwq to i32
  %i.kzn = add i32 %i.kzm, -1
  %i.kzo = mul i32 %i.kzn, %i.kwp
  %i.kzp = add i32 %i.kwr, %i.kzo                 ; 3 uses
  %i.kzq = add nsw i64 %i.kwq, -1                 ; 5 uses
  %i.kzr = icmp eq i64 %i.kzq, 0
  br i1 %i.kzr, label %.split54.us.i.i.i.i.i.i.i.i.i, label %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph

.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph:  ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.preheader.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp samesign ult i64 %i.kwq, 33
  br i1 %min.iters.check, label %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph
  %n.vec = and i64 %i.kzq, -32                    ; 3 uses
  %i.kzs = and i64 %i.kzq, 31
  %i.kzt = trunc i64 %n.vec to i32
  %i.kzu = mul i32 %i.kwp, %i.kzt
  %i.kzv = add i32 %i.kwr, %i.kzu
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.kws, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert5431 = insertelement <32 x i32> poison, i32 %i.kwp, i64 0
  %broadcast.splat5432 = shufflevector <32 x i32> %broadcast.splatinsert5431, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5433 = insertelement <32 x i32> poison, i32 %i.kwr, i64 0
  %broadcast.splat5434 = shufflevector <32 x i32> %broadcast.splatinsert5433, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.kzw = mul nsw <32 x i32> %broadcast.splat5432, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat5434, %i.kzw
  %i.kzx = shl nsw i32 %i.kwp, 5
  %broadcast.splatinsert5435 = insertelement <32 x i32> poison, i32 %i.kzx, i64 0
  %broadcast.splat5436 = shufflevector <32 x i32> %broadcast.splatinsert5435, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.kzy = add nsw <32 x i32> %vec.ind, %broadcast.splat5432
  %i.kzz = icmp eq <32 x i32> %i.kzy, %broadcast.splat
  %i.laa = freeze <32 x i1> %i.kzz
  %i.lab = bitcast <32 x i1> %i.laa to i32
  %.not = icmp eq i32 %i.lab, 0
  br i1 %.not, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat5436
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lac = icmp eq i64 %index.next, %n.vec
  br i1 %i.lac, label %middle.block, label %vector.body, !llvm.loop !3292

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.kzq, %n.vec
  br i1 %cmp.n, label %.split54.us.i.i.i.i.i.i.i.i.i, label %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader

.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block
  %.ph6142 = phi i64 [ %i.kzq, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.kzs, %middle.block ]
  %.052.us71.us97.us.i.i.i.i.i.i.i.i.i5354.ph = phi i32 [ %i.kwr, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.kzv, %middle.block ]
  br label %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i: ; preds = %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i
  %i.lad = add nsw i64 %i.laf, -1                 ; 2 uses
  %i.lae = icmp eq i64 %i.lad, 0
  br i1 %i.lae, label %.split54.us.i.i.i.i.i.i.i.i.i, label %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3293

.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i:        ; preds = %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i
  %i.laf = phi i64 [ %i.lad, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.ph6142, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader ]
  %.052.us71.us97.us.i.i.i.i.i.i.i.i.i5354 = phi i32 [ %i.lag, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i ], [ %.052.us71.us97.us.i.i.i.i.i.i.i.i.i5354.ph, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i.preheader ]
  %i.lag = add nsw i32 %.052.us71.us97.us.i.i.i.i.i.i.i.i.i5354, %i.kwp ; 2 uses
  %.not16.us81.us106.us.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.lag, %i.kws
  br i1 %.not16.us81.us106.us.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i, !llvm.loop !3291

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2607:   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i2606
  %i.lah = load ptr, ptr %i.kwx, align 8, !tbaa !283
  %i.lai = sext i32 %i.kwr to i64
  %i.laj = sext i32 %i.kwp to i64
  %i.lak = sext i32 %i.kui to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i2608 = getelementptr [4 x i8], ptr %i.lah, i64 %i.lak
  br label %.split45.i.i.i.i.i.i.i.i.i

.split45.i.i.i.i.i.i.i.i.i:                       ; preds = %.critedge.i.i.i.i.i.i.i.i.i2612, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2607
  %indvars.iv.i.i.i.i.i.i.i.i.i2609 = phi i64 [ %i.lai, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2607 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i2614, %.critedge.i.i.i.i.i.i.i.i.i2612 ] ; 3 uses
  %.04351.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kwq, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i2607 ], [ %.1.i.i.i.i.i.i.i.i.i2613, %.critedge.i.i.i.i.i.i.i.i.i2612 ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i2610 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i2608, i64 %indvars.iv.i.i.i.i.i.i.i.i.i2609
  %i.lal = load i32, ptr %gep.i.i.i.i.i.i.i.i.i2610, align 4, !tbaa !98 ; 2 uses
  %i.lam = zext i32 %i.lal to i64                 ; 2 uses
  %i.lan = lshr i64 %i.lam, 6
  %i.lao = getelementptr inbounds nuw [8 x i8], ptr %i.kwv, i64 %i.lan
  %i.lap = load i64, ptr %i.lao, align 8, !tbaa !147
  %i.laq = and i64 %i.lam, 63
  %i.lar = shl nuw i64 1, %i.laq
  %i.las = and i64 %i.lar, %i.lap
  %.not.i7.i.i.i.i.i.i.i.i.i.i2611 = icmp eq i64 %i.las, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i2611, label %.critedge.i.i.i.i.i.i.i.i.i2612, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i: ; preds = %.split45.i.i.i.i.i.i.i.i.i
  %i.lat = load ptr, ptr %i.kwy, align 8, !tbaa !329
  %i.lau = sext i32 %i.lal to i64
  %i.lav = getelementptr inbounds [16 x i8], ptr %i.lat, i64 %i.lau ; 2 uses
  %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i = load i64, ptr %i.lav, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lav, i64 8
  %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i23.i.i.i.i.i.i.i.i.i, align 8, !tbaa !147
  %i.law = icmp eq i64 %.sroa.0.0.copyload.i22.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i2597
  %i.lax = icmp eq i64 %.sroa.2.0.copyload.i24.i.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i2599
  %i.lay = select i1 %i.law, i1 %i.lax, i1 false
  br i1 %i.lay, label %bb.bfa, label %.critedge.i.i.i.i.i.i.i.i.i2612

bb.bfa:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i
  %i.laz = add nsw i64 %.04351.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.lba = icmp eq i64 %i.laz, 0
  br i1 %i.lba, label %.split54.us.loopexit123.i.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.i.i.i2612

.split54.us.loopexit.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bev
  %i.lbb = trunc nsw i64 %indvars.iv148.i.i.i.i.i.i.i.i.i to i32
  br label %.split54.us.i.i.i.i.i.i.i.i.i

.split54.us.loopexit113.i.i.i.i.i.i.i.i.i:        ; preds = %bb.bez
  %i.lbc = trunc nsw i64 %indvars.iv145.i.i.i.i.i.i.i.i.i to i32
  br label %.split54.us.i.i.i.i.i.i.i.i.i

.split54.us.loopexit123.i.i.i.i.i.i.i.i.i:        ; preds = %bb.bfa
  %i.lbd = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2609 to i32
  br label %.split54.us.i.i.i.i.i.i.i.i.i

.split54.us.i.i.i.i.i.i.i.i.i:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.preheader.i.i.i.i.i.i.i.i.i, %middle.block, %.split54.us.loopexit123.i.i.i.i.i.i.i.i.i, %.split54.us.loopexit113.i.i.i.i.i.i.i.i.i, %.split54.us.loopexit.i.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i.i2644 = phi i32 [ %i.lbd, %.split54.us.loopexit123.i.i.i.i.i.i.i.i.i ], [ %i.lbb, %.split54.us.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.lbc, %.split54.us.loopexit113.i.i.i.i.i.i.i.i.i ], [ %i.kzp, %middle.block ], [ %i.kzp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.kzp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us96.us.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lbe = load ptr, ptr %.sroa.12.0..sroa_idx.i2571, align 8, !tbaa !1007, !nonnull !114, !align !267 ; 5 uses
  %i.lbf = add nsw i32 %.us-phi.i.i.i.i.i.i.i.i.i2644, 1
  %i.lbg = sext i32 %i.lbf to i64
  %i.lbh = getelementptr inbounds nuw i8, ptr %i.lbe, i64 144 ; 2 uses
  %i.lbi = load ptr, ptr %i.lbh, align 8, !tbaa !309 ; 2 uses
  %i.lbj = icmp eq ptr %i.lbi, null
  br i1 %i.lbj, label %bb.bfb, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645

bb.bfb:                                           ; preds = %.split54.us.i.i.i.i.i.i.i.i.i
  %i.lbk = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lbe)
          to label %.noexc19.i.i.i.i.i.i.i.i2649 unwind label %bb.bfg ; 0 uses

.noexc19.i.i.i.i.i.i.i.i2649:                     ; preds = %bb.bfb
  %.pre.i.i.i.i.i.i.i.i.i.i2650 = load ptr, ptr %i.lbh, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645: ; preds = %.noexc19.i.i.i.i.i.i.i.i2649, %.split54.us.i.i.i.i.i.i.i.i.i
  %i.lbl = phi ptr [ %i.lbi, %.split54.us.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i2650, %.noexc19.i.i.i.i.i.i.i.i2649 ]
  %i.lbm = getelementptr inbounds [8 x i8], ptr %i.lbl, i64 %i.kwf
  store i64 %i.lbg, ptr %i.lbm, align 8, !tbaa !147
  %i.lbn = getelementptr inbounds nuw i8, ptr %i.lbe, i64 32 ; 2 uses
  %i.lbo = load ptr, ptr %i.lbn, align 8, !tbaa !310
  %.not.i28.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lbo, null
  br i1 %.not.i28.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %bb.bfc

bb.bfc:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645
  %i.lbp = getelementptr inbounds nuw i8, ptr %i.lbe, i64 56
  %i.lbq = load i32, ptr %i.lbp, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lbe, i32 noundef %i.lbq, i1 noundef zeroext true)
          to label %.noexc20.i.i.i.i.i.i.i.i2646 unwind label %bb.bfg

.noexc20.i.i.i.i.i.i.i.i2646:                     ; preds = %bb.bfc
  %i.lbr = load ptr, ptr %i.lbn, align 8, !tbaa !310 ; 2 uses
  %i.lbs = getelementptr inbounds nuw i8, ptr %i.lbr, i64 44
  %i.lbt = load i8, ptr %i.lbs, align 4, !tbaa !315
  %i.lbu = and i8 %i.lbt, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i2647 = icmp eq i8 %i.lbu, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i2647, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2648, label %.invoke.i.i.i.i.i.i.i.i2641, !prof !112

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2648: ; preds = %.noexc20.i.i.i.i.i.i.i.i2646
  %i.lbv = getelementptr inbounds nuw i8, ptr %i.lbr, i64 16
  %i.lbw = load ptr, ptr %i.lbv, align 8, !tbaa !316
  %i.lbx = lshr i64 %.069.i.i.i.i.i.i.i.i2594, 3
  %i.lby = and i64 %i.lbx, 536870911
  %i.lbz = getelementptr inbounds nuw i8, ptr %i.lbw, i64 %i.lby ; 2 uses
  %i.lca = load i8, ptr %i.lbz, align 1, !tbaa !87
  %i.lcb = trunc i64 %.069.i.i.i.i.i.i.i.i2594 to i8
  %i.lcc = and i8 %i.lcb, 7
  %i.lcd = shl nuw i8 1, %i.lcc
  %i.lce = or i8 %i.lca, %i.lcd
  store i8 %i.lce, ptr %i.lbz, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616

.critedge.i.i.i.i.i.i.i.i.i2612:                  ; preds = %bb.bfa, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i, %.split45.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i2613 = phi i64 [ %.04351.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.i.i.i.i.i.i.i.i.i ], [ %i.laz, %bb.bfa ], [ %.04351.i.i.i.i.i.i.i.i.i, %.split45.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i2614 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i2609, %i.laj ; 2 uses
  %i.lcf = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i2614 to i32
  %.not16.i.i.i.i.i.i.i.i.i2615 = icmp eq i32 %i.kws, %i.lcf
  br i1 %.not16.i.i.i.i.i.i.i.i.i2615, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616, label %.split45.i.i.i.i.i.i.i.i.i, !llvm.loop !3291

_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616: ; preds = %.critedge.i.i.i.i.i.i.i.i.i2612, %vector.body, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i, %.critedge.us64.i.i.i.i.i.i.i.i.i, %.critedge.us.i.i.i.i.i.i.i.i.i2660, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2648, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2653, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2651, %bb.ber
  %.049.i.i.i.i.i.i.i.i.i = phi i32 [ %.us-phi.i.i.i.i.i.i.i.i.i2644, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i2645 ], [ %.us-phi.i.i.i.i.i.i.i.i.i2644, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i2648 ], [ %i.kwr, %bb.ber ], [ %i.kws, %.lr.ph.split.split.split.us.i.i.i.i.i.i.i.i.i2651 ], [ %i.kws, %vector.body ], [ %i.kws, %.critedge.us79.us104.us.i.i.i.i.i.i.i.i.i ], [ %i.kws, %.lr.ph.split.split.split.us.split.split.split.us.i.i.i.i.i.i.i.i.i2653 ], [ %i.kws, %.critedge.us64.i.i.i.i.i.i.i.i.i ], [ %i.kws, %.critedge.us.i.i.i.i.i.i.i.i.i2660 ], [ %i.kws, %.critedge.i.i.i.i.i.i.i.i.i2612 ]
  %i.lcg = load ptr, ptr %.sroa.952.0..sroa_idx.i2568, align 8, !tbaa !1004, !nonnull !114, !align !333
  %i.lch = load i32, ptr %i.lcg, align 4, !tbaa !98
  %i.lci = icmp eq i32 %.049.i.i.i.i.i.i.i.i.i, %i.lch
  br i1 %i.lci, label %bb.bfd, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i

bb.bfd:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit.i.i.i.i.i.i.i.i.i2616
  %i.lcj = load ptr, ptr %.sroa.12.0..sroa_idx.i2571, align 8, !tbaa !1007, !nonnull !114, !align !267 ; 5 uses
  %i.lck = getelementptr inbounds nuw i8, ptr %i.lcj, i64 144 ; 2 uses
  %i.lcl = load ptr, ptr %i.lck, align 8, !tbaa !309 ; 2 uses
  %i.lcm = icmp eq ptr %i.lcl, null
  br i1 %i.lcm, label %bb.bfe, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

bb.bfe:                                           ; preds = %bb.bfd
  %i.lcn = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.lcj)
          to label %.noexc22.i.i.i.i.i.i.i.i2643 unwind label %bb.bfg ; 0 uses

.noexc22.i.i.i.i.i.i.i.i2643:                     ; preds = %bb.bfe
  %.pre.i33.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.lck, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i: ; preds = %.noexc22.i.i.i.i.i.i.i.i2643, %bb.bfd
  %i.lco = phi ptr [ %i.lcl, %bb.bfd ], [ %.pre.i33.i.i.i.i.i.i.i.i.i, %.noexc22.i.i.i.i.i.i.i.i2643 ]
  %i.lcp = getelementptr inbounds [8 x i8], ptr %i.lco, i64 %i.kwf
  store i64 0, ptr %i.lcp, align 8, !tbaa !147
  %i.lcq = getelementptr inbounds nuw i8, ptr %i.lcj, i64 32 ; 2 uses
  %i.lcr = load ptr, ptr %i.lcq, align 8, !tbaa !310
  %.not.i30.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lcr, null
  br i1 %.not.i30.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS2_RNS0_13DecodedVectorERKSF_SI_SI_RNS0_10FlatVectorIlEEEUlT_E0_ZNS2_22applyToSelectedNoThrowISN_EEvSD_SM_EUlSM_E_EEvSD_SM_T0_ENKUlSM_E_clImEEDaSM_.exit.i.i.i.i.i.i.i.i, label %bb.bff

bb.bff:                                           ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29.i.i.i.i.i.i.i.i.i
  %i.lcs = getelementptr inbounds nuw i8, ptr %i.lcj, i64 56
  %i.lct = load i32, ptr %i.lcs, align 8, !tbaa !233
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.lcj, i32 noundef %i.lct, i1 noundef zeroext true)
          to label %.noexc23.i.i.i.i.i.i.i.i2640 unwind label %bb.bfg

.noexc23.i.i.i.i.i.i.i.i2640:                     ; preds = %bb.bff
  %i.lcu = load ptr, ptr %i.lcq, align 8, !tbaa !310 ; 2 uses
  %i.lcv = getelementptr inbounds nuw i8, ptr %i.lcu, i64 44
  %i.lcw = load i8, ptr %i.lcv, align 4, !tbaa !315
  %i.lcx = and i8 %i.lcw, 2
  %.not.i3.i31.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lcx, 0
  br i1 %.not.i3.i31.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i2641, !prof !112

.invoke.i.i.i.i.i.i.i.i2641:                      ; preds = %.noexc23.i.i.i.i.i.i.i.i2640, %.noexc20.i.i.i.i.i.i.i.i2646
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
          to label %.cont.i.i.i.i.i.i.i.i2642 unwind label %bb.bfg

.cont.i.i.i.i.i.i.i.i2642:                        ; preds = %.invoke.i.i.i.i.i.i.i.i2641
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32.i.i.i.i.i.i.i.i.i: ; preds = %.noexc23.i.i.i.i.i.i.i.i2640
  %i.lcy = getelementptr inbounds nuw i8, ptr %i.lcu, i64 16
  %i.lcz = load ptr, ptr %i.lcy, align 8, !tbaa !316
  %i.lda = lshr i64 %.069.i.i.i.i.i.i.i.i2594, 3
  %i.ldb = and i64 %i.lda, 536870911
  %i.ldc = getelementptr inbounds nuw i8, ptr %i.lcz, i64 %i.ldb ; 2 uses
  %i.ldd = load i8, ptr %i.ldc, align 1, !tbaa !87
  %i.lde = trunc i64 %.069.i.i.i.i.i.i.i.i2594 to i8
  %i.ldf = and i8 %i.lde, 7
end_hunk_7
begin_hunk_8_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !288, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !98 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !902, !nonnull !114, !align !267 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !288, !range !113, !noundef !114
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !283
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !105

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3643
  store i64 0, ptr %2, align 16, !tbaa !87, !noalias !3643
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !87, !alias.scope !3644, !noalias !3643
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3643
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE3ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !903, !nonnull !114, !align !267
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !904, !nonnull !114, !align !333 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !905, !nonnull !114, !align !333 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !906, !nonnull !114, !align !333
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 20 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !907, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !329 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep196 = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv158 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next159, %.critedge.us.us ] ; 3 uses
  %.03541.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep197 = getelementptr [4 x i8], ptr %invariant.gep196, i64 %indvars.iv158
  %i.cm = load i32, ptr %gep197, align 4, !tbaa !98
  %i.cn = icmp eq i32 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03541.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split44.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03541.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next159 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3638

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !98
  %i.cx = icmp eq i32 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split44.us, label %.critedge.us.us101.us.lr.ph

.critedge.us.us101.us.lr.ph:                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader
  %min.iters.check222 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check222, label %.critedge.us.us101.us.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.critedge.us.us101.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul nsw <32 x i32> %broadcast.splat228, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction231 = add nsw <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert232 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat233 = shufflevector <32 x i32> %broadcast.splatinsert232, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body.interim239, %vector.ph223
  %index235 = phi i64 [ 0, %vector.ph223 ], [ %index.next237, %vector.body.interim239 ]
  %vec.ind236 = phi <32 x i32> [ %induction231, %vector.ph223 ], [ %vec.ind.next238, %vector.body.interim239 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind236, %broadcast.splat228
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not246 = icmp eq i32 %i.dn, 0
  br i1 %.not246, label %vector.body.interim239, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim239:                           ; preds = %vector.body234
  %vec.ind.next238 = add nsw <32 x i32> %vec.ind236, %broadcast.splat233
  %index.next237 = add nuw i64 %index235, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next237, %n.vec224
  br i1 %i.do, label %middle.block240, label %vector.body234, !llvm.loop !3639

middle.block240:                                  ; preds = %vector.body.interim239
  %cmp.n241 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n241, label %.split44.us, label %.critedge.us.us101.us.preheader

.critedge.us.us101.us.preheader:                  ; preds = %.critedge.us.us101.us.lr.ph, %middle.block240
  %.ph = phi i64 [ %i.dc, %.critedge.us.us101.us.lr.ph ], [ %i.de, %middle.block240 ]
  %.042.us.us97.us213.ph = phi i32 [ %i.bv, %.critedge.us.us101.us.lr.ph ], [ %i.dh, %middle.block240 ]
  br label %.critedge.us.us101.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us: ; preds = %.critedge.us.us101.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split44.us, label %.critedge.us.us101.us, !llvm.loop !3640

.critedge.us.us101.us:                            ; preds = %.critedge.us.us101.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.ph, %.critedge.us.us101.us.preheader ]
  %.042.us.us97.us213 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.042.us.us97.us213.ph, %.critedge.us.us101.us.preheader ]
  %i.ds = add nsw i32 %.042.us.us97.us213, %i.bt  ; 2 uses
  %.not16.us.us103.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us103.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, !llvm.loop !3638

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep194 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03541.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep195 = getelementptr [4 x i8], ptr %invariant.gep194, i64 %indvars.iv155
  %i.dx = load i32, ptr %gep195, align 4, !tbaa !98
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !98
  %i.eb = icmp eq i32 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03541.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split44.us.loopexit113, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03541.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3638

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !113
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us51
  %indvars.iv152 = phi i64 [ %i.ei, %.split.us.preheader ], [ %indvars.iv.next153, %.critedge.us51 ] ; 3 uses
  %.03541.us47 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us52, %.critedge.us51 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv152, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !147
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us51, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48: ; preds = %.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %.0.i.i19.us50 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48 ]
  %i.fb = sext i32 %.0.i.i19.us50 to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !98
  %i.fe = icmp eq i32 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us51

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49
  %i.ff = add nsw i64 %.03541.us47, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split44.us.loopexit115, label %.critedge.us51

.critedge.us51:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49, %.split.us
  %.1.us52 = phi i64 [ %.03541.us47, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20.us49 ], [ %i.ff, %bb.q ], [ %.03541.us47, %.split.us ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us53 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us53, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3638

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !98
  %i.fr = icmp eq i32 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split44.us, label %.critedge.us63.us85.us.lr.ph

.critedge.us63.us85.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us85.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us85.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat215 = shufflevector <32 x i32> %broadcast.splatinsert214, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat217 = shufflevector <32 x i32> %broadcast.splatinsert216, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul nsw <32 x i32> %broadcast.splat215, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat217, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert218 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat219 = shufflevector <32 x i32> %broadcast.splatinsert218, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat215
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not245 = icmp eq i32 %i.gh, 0
  br i1 %.not245, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3641

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split44.us, label %.critedge.us63.us85.us.preheader

.critedge.us63.us85.us.preheader:                 ; preds = %.critedge.us63.us85.us.lr.ph, %middle.block
  %.ph255 = phi i64 [ %i.fw, %.critedge.us63.us85.us.lr.ph ], [ %i.fy, %middle.block ]
  %.042.us58.us81.us212.ph = phi i32 [ %i.bv, %.critedge.us63.us85.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us63.us85.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us85.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split44.us, label %.critedge.us63.us85.us, !llvm.loop !3642

.critedge.us63.us85.us:                           ; preds = %.critedge.us63.us85.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph255, %.critedge.us63.us85.us.preheader ]
  %.042.us58.us81.us212 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.042.us58.us81.us212.ph, %.critedge.us63.us85.us.preheader ]
  %i.gm = add nsw i32 %.042.us58.us81.us212, %i.bt ; 2 uses
  %.not16.us65.us87.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us65.us87.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3638

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %.split37

.split37:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03541 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !147
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20: ; preds = %.split37
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !98
  %i.hd = icmp eq i32 %i.hc, %i.ad
  br i1 %i.hd, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20
  %i.he = add nsw i64 %.03541, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split44.us.loopexit125, label %.critedge

.split44.us.loopexit:                             ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv158 to i32
  br label %.split44.us

.split44.us.loopexit113:                          ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv155 to i32
  br label %.split44.us

.split44.us.loopexit115:                          ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv152 to i32
  br label %.split44.us

.split44.us.loopexit125:                          ; preds = %bb.r
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split44.us

.split44.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, %middle.block240, %.split44.us.loopexit125, %.split44.us.loopexit115, %.split44.us.loopexit113, %.split44.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split44.us.loopexit115 ], [ %i.hj, %.split44.us.loopexit125 ], [ %i.hg, %.split44.us.loopexit ], [ %i.hh, %.split44.us.loopexit113 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader ], [ %i.db, %middle.block240 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !908, !nonnull !114, !align !267 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !309 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.s, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.s:                                             ; preds = %.split44.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.s, %.split44.us
  %i.hs = phi ptr [ %i.hp, %.split44.us ], [ %.pre.i, %bb.s ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !147
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !310
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !310 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !315
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.u, !prof !112

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !316
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !87
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split37, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20, %bb.r
  %.1 = phi i64 [ %.03541, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit20 ], [ %i.he, %bb.r ], [ %.03541, %.split37 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split37, !llvm.loop !3638

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us85.us, %.critedge.us51, %.critedge.us, %vector.body234, %.critedge.us.us101.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us101.us ], [ %i.bw, %vector.body234 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us51 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us63.us85.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !905, !nonnull !114, !align !333
  %i.io = load i32, ptr %i.in, align 4, !tbaa !98
  %i.ip = icmp eq i32 %.039, %i.io
  br i1 %i.ip, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !908, !nonnull !114, !align !267 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !309 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.w:                                             ; preds = %bb.v
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.w, %bb.v
  %i.iw = phi ptr [ %i.it, %bb.v ], [ %.pre.i26, %bb.w ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !310
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !310 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !315
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.y, !prof !112

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !316
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !87
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

_ZN8facebook5velox10FlatVectorIlE3setEil.exit27:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

end_hunk_8
begin_hunk_9_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !288, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !87  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !913, !nonnull !114, !align !267 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !288, !range !113, !noundef !114
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !283
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !105

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3673
  store i64 0, ptr %2, align 16, !tbaa !87, !noalias !3673
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !87, !alias.scope !3674, !noalias !3673
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3673
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE1ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !914, !nonnull !114, !align !267
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !915, !nonnull !114, !align !333 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !916, !nonnull !114, !align !333 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !917, !nonnull !114, !align !333
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 20 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !918, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !329 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep196 = getelementptr i8, ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv158 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next159, %.critedge.us.us ] ; 3 uses
  %.03541.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep197 = getelementptr i8, ptr %invariant.gep196, i64 %indvars.iv158
  %i.cm = load i8, ptr %gep197, align 1, !tbaa !87
  %i.cn = icmp eq i8 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03541.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split44.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03541.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next159 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3668

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.ci, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !87
  %i.cx = icmp eq i8 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split44.us, label %.critedge.us.us101.us.lr.ph

.critedge.us.us101.us.lr.ph:                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader
  %min.iters.check222 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check222, label %.critedge.us.us101.us.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.critedge.us.us101.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul nsw <32 x i32> %broadcast.splat228, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction231 = add nsw <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert232 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat233 = shufflevector <32 x i32> %broadcast.splatinsert232, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body.interim239, %vector.ph223
  %index235 = phi i64 [ 0, %vector.ph223 ], [ %index.next237, %vector.body.interim239 ]
  %vec.ind236 = phi <32 x i32> [ %induction231, %vector.ph223 ], [ %vec.ind.next238, %vector.body.interim239 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind236, %broadcast.splat228
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not246 = icmp eq i32 %i.dn, 0
  br i1 %.not246, label %vector.body.interim239, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim239:                           ; preds = %vector.body234
  %vec.ind.next238 = add nsw <32 x i32> %vec.ind236, %broadcast.splat233
  %index.next237 = add nuw i64 %index235, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next237, %n.vec224
  br i1 %i.do, label %middle.block240, label %vector.body234, !llvm.loop !3669

middle.block240:                                  ; preds = %vector.body.interim239
  %cmp.n241 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n241, label %.split44.us, label %.critedge.us.us101.us.preheader

.critedge.us.us101.us.preheader:                  ; preds = %.critedge.us.us101.us.lr.ph, %middle.block240
  %.ph = phi i64 [ %i.dc, %.critedge.us.us101.us.lr.ph ], [ %i.de, %middle.block240 ]
  %.042.us.us97.us213.ph = phi i32 [ %i.bv, %.critedge.us.us101.us.lr.ph ], [ %i.dh, %middle.block240 ]
  br label %.critedge.us.us101.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us: ; preds = %.critedge.us.us101.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split44.us, label %.critedge.us.us101.us, !llvm.loop !3670

.critedge.us.us101.us:                            ; preds = %.critedge.us.us101.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.ph, %.critedge.us.us101.us.preheader ]
  %.042.us.us97.us213 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.042.us.us97.us213.ph, %.critedge.us.us101.us.preheader ]
  %i.ds = add nsw i32 %.042.us.us97.us213, %i.bt  ; 2 uses
  %.not16.us.us103.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us103.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, !llvm.loop !3668

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep194 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03541.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep195 = getelementptr [4 x i8], ptr %invariant.gep194, i64 %indvars.iv155
  %i.dx = load i32, ptr %gep195, align 4, !tbaa !98
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.ci, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !87
  %i.eb = icmp eq i8 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03541.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split44.us.loopexit113, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03541.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3668

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !113
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us51
  %indvars.iv152 = phi i64 [ %i.ei, %.split.us.preheader ], [ %indvars.iv.next153, %.critedge.us51 ] ; 3 uses
  %.03541.us47 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us52, %.critedge.us51 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv152, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !147
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us51, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48: ; preds = %.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %.0.i.i19.us50 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48 ]
  %i.fb = sext i32 %.0.i.i19.us50 to i64
  %i.fc = getelementptr inbounds i8, ptr %i.eu, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !87
  %i.fe = icmp eq i8 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us51

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49
  %i.ff = add nsw i64 %.03541.us47, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split44.us.loopexit115, label %.critedge.us51

.critedge.us51:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49, %.split.us
  %.1.us52 = phi i64 [ %.03541.us47, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20.us49 ], [ %i.ff, %bb.q ], [ %.03541.us47, %.split.us ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us53 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us53, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3668

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds i8, ptr %i.fm, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !87
  %i.fr = icmp eq i8 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split44.us, label %.critedge.us63.us85.us.lr.ph

.critedge.us63.us85.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us85.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us85.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat215 = shufflevector <32 x i32> %broadcast.splatinsert214, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat217 = shufflevector <32 x i32> %broadcast.splatinsert216, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul nsw <32 x i32> %broadcast.splat215, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat217, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert218 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat219 = shufflevector <32 x i32> %broadcast.splatinsert218, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat215
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not245 = icmp eq i32 %i.gh, 0
  br i1 %.not245, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3671

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split44.us, label %.critedge.us63.us85.us.preheader

.critedge.us63.us85.us.preheader:                 ; preds = %.critedge.us63.us85.us.lr.ph, %middle.block
  %.ph255 = phi i64 [ %i.fw, %.critedge.us63.us85.us.lr.ph ], [ %i.fy, %middle.block ]
  %.042.us58.us81.us212.ph = phi i32 [ %i.bv, %.critedge.us63.us85.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us63.us85.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us85.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split44.us, label %.critedge.us63.us85.us, !llvm.loop !3672

.critedge.us63.us85.us:                           ; preds = %.critedge.us63.us85.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph255, %.critedge.us63.us85.us.preheader ]
  %.042.us58.us81.us212 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.042.us58.us81.us212.ph, %.critedge.us63.us85.us.preheader ]
  %i.gm = add nsw i32 %.042.us58.us81.us212, %i.bt ; 2 uses
  %.not16.us65.us87.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us65.us87.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3668

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %.split37

.split37:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03541 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !147
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20: ; preds = %.split37
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !87
  %i.hd = icmp eq i8 %i.hc, %i.ad
  br i1 %i.hd, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20
  %i.he = add nsw i64 %.03541, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split44.us.loopexit125, label %.critedge

.split44.us.loopexit:                             ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv158 to i32
  br label %.split44.us

.split44.us.loopexit113:                          ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv155 to i32
  br label %.split44.us

.split44.us.loopexit115:                          ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv152 to i32
  br label %.split44.us

.split44.us.loopexit125:                          ; preds = %bb.r
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split44.us

.split44.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, %middle.block240, %.split44.us.loopexit125, %.split44.us.loopexit115, %.split44.us.loopexit113, %.split44.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split44.us.loopexit115 ], [ %i.hj, %.split44.us.loopexit125 ], [ %i.hg, %.split44.us.loopexit ], [ %i.hh, %.split44.us.loopexit113 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader ], [ %i.db, %middle.block240 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !919, !nonnull !114, !align !267 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !309 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.s, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.s:                                             ; preds = %.split44.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.s, %.split44.us
  %i.hs = phi ptr [ %i.hp, %.split44.us ], [ %.pre.i, %bb.s ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !147
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !310
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !310 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !315
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.u, !prof !112

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !316
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !87
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split37, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20, %bb.r
  %.1 = phi i64 [ %.03541, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit20 ], [ %i.he, %bb.r ], [ %.03541, %.split37 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split37, !llvm.loop !3668

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us85.us, %.critedge.us51, %.critedge.us, %vector.body234, %.critedge.us.us101.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us101.us ], [ %i.bw, %vector.body234 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us51 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us63.us85.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !916, !nonnull !114, !align !333
  %i.io = load i32, ptr %i.in, align 4, !tbaa !98
  %i.ip = icmp eq i32 %.039, %i.io
  br i1 %i.ip, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !919, !nonnull !114, !align !267 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !309 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.w:                                             ; preds = %bb.v
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.w, %bb.v
  %i.iw = phi ptr [ %i.it, %bb.v ], [ %.pre.i26, %bb.w ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !310
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !310 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !315
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.y, !prof !112

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !316
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !87
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

_ZN8facebook5velox10FlatVectorIlE3setEil.exit27:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

end_hunk_9
begin_hunk_10_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !288, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !815 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !924, !nonnull !114, !align !267 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !288, !range !113, !noundef !114
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !283
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !105

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3703
  store i64 0, ptr %2, align 16, !tbaa !87, !noalias !3703
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !87, !alias.scope !3704, !noalias !3703
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3703
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE2ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !925, !nonnull !114, !align !267
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !926, !nonnull !114, !align !333 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !927, !nonnull !114, !align !333 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !928, !nonnull !114, !align !333
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 20 uses
  %.not1640 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1640, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !929, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !329 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep196 = getelementptr [2 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv158 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next159, %.critedge.us.us ] ; 3 uses
  %.03541.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep197 = getelementptr [2 x i8], ptr %invariant.gep196, i64 %indvars.iv158
  %i.cm = load i16, ptr %gep197, align 2, !tbaa !815
  %i.cn = icmp eq i16 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03541.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split44.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03541.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next159 = add nsw i64 %indvars.iv158, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next159 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3698

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !815
  %i.cx = icmp eq i16 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split44.us, label %.critedge.us.us101.us.lr.ph

.critedge.us.us101.us.lr.ph:                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader
  %min.iters.check222 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check222, label %.critedge.us.us101.us.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.critedge.us.us101.us.lr.ph
  %n.vec224 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec224 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert225 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat226 = shufflevector <32 x i32> %broadcast.splatinsert225, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat228 = shufflevector <32 x i32> %broadcast.splatinsert227, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert229 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat230 = shufflevector <32 x i32> %broadcast.splatinsert229, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul nsw <32 x i32> %broadcast.splat228, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction231 = add nsw <32 x i32> %broadcast.splat230, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert232 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat233 = shufflevector <32 x i32> %broadcast.splatinsert232, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body.interim239, %vector.ph223
  %index235 = phi i64 [ 0, %vector.ph223 ], [ %index.next237, %vector.body.interim239 ]
  %vec.ind236 = phi <32 x i32> [ %induction231, %vector.ph223 ], [ %vec.ind.next238, %vector.body.interim239 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind236, %broadcast.splat228
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat226
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not246 = icmp eq i32 %i.dn, 0
  br i1 %.not246, label %vector.body.interim239, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim239:                           ; preds = %vector.body234
  %vec.ind.next238 = add nsw <32 x i32> %vec.ind236, %broadcast.splat233
  %index.next237 = add nuw i64 %index235, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next237, %n.vec224
  br i1 %i.do, label %middle.block240, label %vector.body234, !llvm.loop !3699

middle.block240:                                  ; preds = %vector.body.interim239
  %cmp.n241 = icmp eq i64 %i.dc, %n.vec224
  br i1 %cmp.n241, label %.split44.us, label %.critedge.us.us101.us.preheader

.critedge.us.us101.us.preheader:                  ; preds = %.critedge.us.us101.us.lr.ph, %middle.block240
  %.ph = phi i64 [ %i.dc, %.critedge.us.us101.us.lr.ph ], [ %i.de, %middle.block240 ]
  %.042.us.us97.us213.ph = phi i32 [ %i.bv, %.critedge.us.us101.us.lr.ph ], [ %i.dh, %middle.block240 ]
  br label %.critedge.us.us101.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us: ; preds = %.critedge.us.us101.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split44.us, label %.critedge.us.us101.us, !llvm.loop !3700

.critedge.us.us101.us:                            ; preds = %.critedge.us.us101.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.ph, %.critedge.us.us101.us.preheader ]
  %.042.us.us97.us213 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %.042.us.us97.us213.ph, %.critedge.us.us101.us.preheader ]
  %i.ds = add nsw i32 %.042.us.us97.us213, %i.bt  ; 2 uses
  %.not16.us.us103.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us103.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, !llvm.loop !3698

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep194 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03541.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep195 = getelementptr [4 x i8], ptr %invariant.gep194, i64 %indvars.iv155
  %i.dx = load i32, ptr %gep195, align 4, !tbaa !98
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !815
  %i.eb = icmp eq i16 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03541.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split44.us.loopexit113, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03541.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next156 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3698

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !113
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us51
  %indvars.iv152 = phi i64 [ %i.ei, %.split.us.preheader ], [ %indvars.iv.next153, %.critedge.us51 ] ; 3 uses
  %.03541.us47 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us52, %.critedge.us51 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv152, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !147
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us51, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48: ; preds = %.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48
  %.0.i.i19.us50 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us48 ]
  %i.fb = sext i32 %.0.i.i19.us50 to i64
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !815
  %i.fe = icmp eq i16 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us51

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49
  %i.ff = add nsw i64 %.03541.us47, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split44.us.loopexit115, label %.critedge.us51

.critedge.us51:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49, %.split.us
  %.1.us52 = phi i64 [ %.03541.us47, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20.us49 ], [ %i.ff, %bb.q ], [ %.03541.us47, %.split.us ]
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next153 to i32
  %.not16.us53 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us53, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3698

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [2 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !815
  %i.fr = icmp eq i16 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split44.us, label %.critedge.us63.us85.us.lr.ph

.critedge.us63.us85.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us63.us85.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us63.us85.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat215 = shufflevector <32 x i32> %broadcast.splatinsert214, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert216 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat217 = shufflevector <32 x i32> %broadcast.splatinsert216, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul nsw <32 x i32> %broadcast.splat215, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat217, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert218 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat219 = shufflevector <32 x i32> %broadcast.splatinsert218, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat215
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not245 = icmp eq i32 %i.gh, 0
  br i1 %.not245, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3701

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split44.us, label %.critedge.us63.us85.us.preheader

.critedge.us63.us85.us.preheader:                 ; preds = %.critedge.us63.us85.us.lr.ph, %middle.block
  %.ph255 = phi i64 [ %i.fw, %.critedge.us63.us85.us.lr.ph ], [ %i.fy, %middle.block ]
  %.042.us58.us81.us212.ph = phi i32 [ %i.bv, %.critedge.us63.us85.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us63.us85.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us: ; preds = %.critedge.us63.us85.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split44.us, label %.critedge.us63.us85.us, !llvm.loop !3702

.critedge.us63.us85.us:                           ; preds = %.critedge.us63.us85.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.ph255, %.critedge.us63.us85.us.preheader ]
  %.042.us58.us81.us212 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ], [ %.042.us58.us81.us212.ph, %.critedge.us63.us85.us.preheader ]
  %i.gm = add nsw i32 %.042.us58.us81.us212, %i.bt ; 2 uses
  %.not16.us65.us87.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us65.us87.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, !llvm.loop !3698

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %.split37

.split37:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03541 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !147
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20: ; preds = %.split37
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [2 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !815
  %i.hd = icmp eq i16 %i.hc, %i.ad
  br i1 %i.hd, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20
  %i.he = add nsw i64 %.03541, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split44.us.loopexit125, label %.critedge

.split44.us.loopexit:                             ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv158 to i32
  br label %.split44.us

.split44.us.loopexit113:                          ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv155 to i32
  br label %.split44.us

.split44.us.loopexit115:                          ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv152 to i32
  br label %.split44.us

.split44.us.loopexit125:                          ; preds = %bb.r
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split44.us

.split44.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader, %middle.block240, %.split44.us.loopexit125, %.split44.us.loopexit115, %.split44.us.loopexit113, %.split44.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split44.us.loopexit115 ], [ %i.hj, %.split44.us.loopexit125 ], [ %i.hg, %.split44.us.loopexit ], [ %i.hh, %.split44.us.loopexit113 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us.preheader ], [ %i.db, %middle.block240 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us96.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us80.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !930, !nonnull !114, !align !267 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !309 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.s, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.s:                                             ; preds = %.split44.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.s, %.split44.us
  %i.hs = phi ptr [ %i.hp, %.split44.us ], [ %.pre.i, %bb.s ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !147
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !310
  %.not.i21 = icmp eq ptr %i.hv, null
  br i1 %.not.i21, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !310 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !315
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.u, !prof !112

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !316
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !87
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split37, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20, %bb.r
  %.1 = phi i64 [ %.03541, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit20 ], [ %i.he, %bb.r ], [ %.03541, %.split37 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split37, !llvm.loop !3698

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us63.us85.us, %.critedge.us51, %.critedge.us, %vector.body234, %.critedge.us.us101.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.039 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us101.us ], [ %i.bw, %vector.body234 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us51 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us63.us85.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !927, !nonnull !114, !align !333
  %i.io = load i32, ptr %i.in, align 4, !tbaa !98
  %i.ip = icmp eq i32 %.039, %i.io
  br i1 %i.ip, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !930, !nonnull !114, !align !267 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !309 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

bb.w:                                             ; preds = %bb.v
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i26 = load ptr, ptr %i.is, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22: ; preds = %bb.w, %bb.v
  %i.iw = phi ptr [ %i.it, %bb.v ], [ %.pre.i26, %bb.w ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !310
  %.not.i23 = icmp eq ptr %i.iz, null
  br i1 %.not.i23, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !310 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !315
  %i.jf = and i8 %i.je, 2
  %.not.i3.i24 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i24, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, label %bb.y, !prof !112

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i25: ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !316
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !87
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit27

_ZN8facebook5velox10FlatVectorIlE3setEil.exit27:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i25, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i22, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

end_hunk_10
begin_hunk_11_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 59
  %i.t = load i8, ptr %i.s, align 1, !tbaa !288, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !283
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.w, %bb.c ], [ %1, %bb.a ]
  %i.ab = sext i32 %.0.i.i to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !935, !nonnull !114, !align !267 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !329
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 58
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 59
  %i.am = load i8, ptr %i.al, align 1, !tbaa !288, !range !113, !noundef !114
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !283
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.f
  %i.at = load i32, ptr %i.as, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit, %bb.f, %bb.g
  %.0.i.i18 = phi i32 [ %i.at, %bb.g ], [ %i.ap, %bb.f ], [ %1, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit ]
  %i.au = sext i32 %.0.i.i18 to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !147 ; 3 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.h, label %bb.k, !prof !105

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35, !noalias !3733
  store i64 0, ptr %2, align 16, !tbaa !87, !noalias !3733
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ax, align 16, !tbaa !87, !alias.scope !3734, !noalias !3733
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.178, i64 68, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35, !noalias !3733
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE4ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.178) #38
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %3, align 8, !tbaa !106   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !87
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.ay

bb.k:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !936, !nonnull !114, !align !267
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !281
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !937, !nonnull !114, !align !333 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !938, !nonnull !114, !align !333 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !939, !nonnull !114, !align !333
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 15 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 10 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 14 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 20 uses
  %.not1641 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1641, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !940, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !329 ; 3 uses
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, label %.lr.ph.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader: ; preds = %.lr.ph.split.us
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  %invariant.gep197 = getelementptr [8 x i8], ptr %i.ci, i64 %i.cl
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader, %.critedge.us.us
  %indvars.iv159 = phi i64 [ %i.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %indvars.iv.next160, %.critedge.us.us ] ; 3 uses
  %.03642.us.us = phi i64 [ %i.bu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us.preheader ], [ %.1.us.us, %.critedge.us.us ] ; 2 uses
  %gep198 = getelementptr [8 x i8], ptr %invariant.gep197, i64 %indvars.iv159
  %i.cm = load i64, ptr %gep198, align 8, !tbaa !147
  %i.cn = icmp eq i64 %i.cm, %i.ad
  br i1 %i.cn, label %bb.l, label %.critedge.us.us

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %i.co = add nsw i64 %.03642.us.us, -1           ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.split45.us.loopexit, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.l, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us
  %.1.us.us = phi i64 [ %.03642.us.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us ], [ %i.co, %bb.l ]
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, %i.ck ; 2 uses
  %i.cq = trunc nsw i64 %indvars.iv.next160 to i32
  %.not16.us.us = icmp eq i32 %i.bw, %i.cq
  br i1 %.not16.us.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us, !llvm.loop !3728

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cr = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.cx = icmp eq i64 %i.cw, %i.ad
  br i1 %i.cx, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us.preheader: ; preds = %.lr.ph.split.us.split.split.us
  %i.cy = trunc i64 %i.bu to i32
  %i.cz = add i32 %i.cy, -1
  %i.da = mul i32 %i.bt, %i.cz
  %i.db = add i32 %i.bv, %i.da                    ; 3 uses
  %i.dc = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.split45.us, label %.critedge.us.us102.us.lr.ph

.critedge.us.us102.us.lr.ph:                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us.preheader
  %min.iters.check223 = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check223, label %.critedge.us.us102.us.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.critedge.us.us102.us.lr.ph
  %n.vec225 = and i64 %i.dc, -32                  ; 3 uses
  %i.de = and i64 %i.dc, 31
  %i.df = trunc i64 %n.vec225 to i32
  %i.dg = mul i32 %i.bt, %i.df
  %i.dh = add i32 %i.bv, %i.dg
  %broadcast.splatinsert226 = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat227 = shufflevector <32 x i32> %broadcast.splatinsert226, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert228 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat229 = shufflevector <32 x i32> %broadcast.splatinsert228, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert230 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat231 = shufflevector <32 x i32> %broadcast.splatinsert230, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.di = mul nsw <32 x i32> %broadcast.splat229, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction232 = add nsw <32 x i32> %broadcast.splat231, %i.di
  %i.dj = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert233 = insertelement <32 x i32> poison, i32 %i.dj, i64 0
  %broadcast.splat234 = shufflevector <32 x i32> %broadcast.splatinsert233, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body.interim240, %vector.ph224
  %index236 = phi i64 [ 0, %vector.ph224 ], [ %index.next238, %vector.body.interim240 ]
  %vec.ind237 = phi <32 x i32> [ %induction232, %vector.ph224 ], [ %vec.ind.next239, %vector.body.interim240 ] ; 2 uses
  %i.dk = add nsw <32 x i32> %vec.ind237, %broadcast.splat229
  %i.dl = icmp eq <32 x i32> %i.dk, %broadcast.splat227
  %i.dm = freeze <32 x i1> %i.dl
  %i.dn = bitcast <32 x i1> %i.dm to i32
  %.not247 = icmp eq i32 %i.dn, 0
  br i1 %.not247, label %vector.body.interim240, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim240:                           ; preds = %vector.body235
  %vec.ind.next239 = add nsw <32 x i32> %vec.ind237, %broadcast.splat234
  %index.next238 = add nuw i64 %index236, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next238, %n.vec225
  br i1 %i.do, label %middle.block241, label %vector.body235, !llvm.loop !3729

middle.block241:                                  ; preds = %vector.body.interim240
  %cmp.n242 = icmp eq i64 %i.dc, %n.vec225
  br i1 %cmp.n242, label %.split45.us, label %.critedge.us.us102.us.preheader

.critedge.us.us102.us.preheader:                  ; preds = %.critedge.us.us102.us.lr.ph, %middle.block241
  %.ph = phi i64 [ %i.dc, %.critedge.us.us102.us.lr.ph ], [ %i.de, %middle.block241 ]
  %.043.us.us98.us214.ph = phi i32 [ %i.bv, %.critedge.us.us102.us.lr.ph ], [ %i.dh, %middle.block241 ]
  br label %.critedge.us.us102.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us: ; preds = %.critedge.us.us102.us
  %i.dp = add nsw i64 %i.dr, -1                   ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.split45.us, label %.critedge.us.us102.us, !llvm.loop !3730

.critedge.us.us102.us:                            ; preds = %.critedge.us.us102.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us
  %i.dr = phi i64 [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us ], [ %.ph, %.critedge.us.us102.us.preheader ]
  %.043.us.us98.us214 = phi i32 [ %i.ds, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us ], [ %.043.us.us98.us214.ph, %.critedge.us.us102.us.preheader ]
  %i.ds = add nsw i32 %.043.us.us98.us214, %i.bt  ; 2 uses
  %.not16.us.us104.us = icmp eq i32 %i.ds, %i.bw
  br i1 %.not16.us.us104.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us, !llvm.loop !3728

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.du = sext i32 %i.bv to i64
  %i.dv = sext i32 %i.bt to i64
  %i.dw = sext i32 %i.k to i64
  %invariant.gep195 = getelementptr [4 x i8], ptr %i.dt, i64 %i.dw
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us.split.split
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %.critedge.us ], [ %i.du, %.lr.ph.split.us.split.split ] ; 3 uses
  %.03642.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us.split.split ] ; 2 uses
  %gep196 = getelementptr [4 x i8], ptr %invariant.gep195, i64 %indvars.iv156
  %i.dx = load i32, ptr %gep196, align 4, !tbaa !98
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !147
  %i.eb = icmp eq i64 %i.ea, %i.ad
  br i1 %i.eb, label %bb.m, label %.critedge.us

bb.m:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.ec = add nsw i64 %.03642.us, -1              ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split45.us.loopexit114, label %.critedge.us

.critedge.us:                                     ; preds = %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.1.us = phi i64 [ %.03642.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ], [ %i.ec, %bb.m ]
  %indvars.iv.next157 = add nsw i64 %indvars.iv156, %i.dv ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next157 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.ee
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3728

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ef = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.eg = load i8, ptr %i.ef, align 1, !range !113
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.eh
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.ei = sext i32 %i.bv to i64
  %i.ej = sext i32 %i.bt to i64
  %i.ek = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us52
  %indvars.iv153 = phi i64 [ %i.ei, %.split.us.preheader ], [ %indvars.iv.next154, %.critedge.us52 ] ; 3 uses
  %.03642.us48 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us53, %.critedge.us52 ] ; 3 uses
  %i.el = add nsw i64 %indvars.iv153, %i.ek       ; 4 uses
  %i.em = lshr i64 %i.el, 6
  %i.en = and i64 %i.em, 67108863
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !147
  %i.eq = and i64 %i.el, 63
  %i.er = shl nuw i64 1, %i.eq
  %i.es = and i64 %i.ep, %i.er
  %.not.i.i.us = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.us, label %.critedge.us52, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49: ; preds = %.split.us
  %i.et = trunc nsw i64 %i.el to i32
  %i.eu = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50, label %bb.n

bb.n:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49
  %i.ev = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.el
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50

bb.p:                                             ; preds = %bb.n
  %i.fa = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50: ; preds = %bb.p, %bb.o, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49
  %.0.i.i20.us51 = phi i32 [ %i.ez, %bb.o ], [ %i.fa, %bb.p ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49 ]
  %i.fb = sext i32 %.0.i.i20.us51 to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !147
  %i.fe = icmp eq i64 %i.fd, %i.ad
  br i1 %i.fe, label %bb.q, label %.critedge.us52

bb.q:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50
  %i.ff = add nsw i64 %.03642.us48, -1            ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split45.us.loopexit116, label %.critedge.us52

.critedge.us52:                                   ; preds = %bb.q, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50, %.split.us
  %.1.us53 = phi i64 [ %.03642.us48, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21.us50 ], [ %i.ff, %bb.q ], [ %.03642.us48, %.split.us ]
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, %i.ej ; 2 uses
  %i.fh = trunc nsw i64 %indvars.iv.next154 to i32
  %.not16.us54 = icmp eq i32 %i.bw, %i.fh
  br i1 %.not16.us54, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3728

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.fi = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.fk = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.fl = and i64 %i.fk, 1
  %.not.i6.i.us = icmp eq i64 %i.fl, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.fn = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !147
  %i.fr = icmp eq i64 %i.fq, %i.ad
  br i1 %i.fr, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.fs = trunc i64 %i.bu to i32
  %i.ft = add i32 %i.fs, -1
  %i.fu = mul i32 %i.bt, %i.ft
  %i.fv = add i32 %i.bv, %i.fu                    ; 3 uses
  %i.fw = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.split45.us, label %.critedge.us64.us86.us.lr.ph

.critedge.us64.us86.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us64.us86.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us64.us86.us.lr.ph
  %n.vec = and i64 %i.fw, -32                     ; 3 uses
  %i.fy = and i64 %i.fw, 31
  %i.fz = trunc i64 %n.vec to i32
  %i.ga = mul i32 %i.bt, %i.fz
  %i.gb = add i32 %i.bv, %i.ga
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat216 = shufflevector <32 x i32> %broadcast.splatinsert215, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert217 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat218 = shufflevector <32 x i32> %broadcast.splatinsert217, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.gc = mul nsw <32 x i32> %broadcast.splat216, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat218, %i.gc
  %i.gd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert219 = insertelement <32 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat220 = shufflevector <32 x i32> %broadcast.splatinsert219, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ge = add nsw <32 x i32> %vec.ind, %broadcast.splat216
  %i.gf = icmp eq <32 x i32> %i.ge, %broadcast.splat
  %i.gg = freeze <32 x i1> %i.gf
  %i.gh = bitcast <32 x i1> %i.gg to i32
  %.not246 = icmp eq i32 %i.gh, 0
  br i1 %.not246, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat220
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !3731

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %.split45.us, label %.critedge.us64.us86.us.preheader

.critedge.us64.us86.us.preheader:                 ; preds = %.critedge.us64.us86.us.lr.ph, %middle.block
  %.ph256 = phi i64 [ %i.fw, %.critedge.us64.us86.us.lr.ph ], [ %i.fy, %middle.block ]
  %.043.us59.us82.us213.ph = phi i32 [ %i.bv, %.critedge.us64.us86.us.lr.ph ], [ %i.gb, %middle.block ]
  br label %.critedge.us64.us86.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us: ; preds = %.critedge.us64.us86.us
  %i.gj = add nsw i64 %i.gl, -1                   ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %.split45.us, label %.critedge.us64.us86.us, !llvm.loop !3732

.critedge.us64.us86.us:                           ; preds = %.critedge.us64.us86.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us
  %i.gl = phi i64 [ %i.gj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us ], [ %.ph256, %.critedge.us64.us86.us.preheader ]
  %.043.us59.us82.us213 = phi i32 [ %i.gm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us ], [ %.043.us59.us82.us213.ph, %.critedge.us64.us86.us.preheader ]
  %i.gm = add nsw i32 %.043.us59.us82.us213, %i.bt ; 2 uses
  %.not16.us66.us88.us = icmp eq i32 %i.gm, %i.bw
  br i1 %.not16.us66.us88.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us, !llvm.loop !3728

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.gn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.go = sext i32 %i.bv to i64
  %i.gp = sext i32 %i.bt to i64
  %i.gq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.gn, i64 %i.gq
  br label %.split38

.split38:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.go, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03642 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = lshr i64 %i.gs, 6
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !147
  %i.gw = and i64 %i.gs, 63
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = and i64 %i.gx, %i.gv
  %.not.i7.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21: ; preds = %.split38
  %i.gz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !147
  %i.hd = icmp eq i64 %i.hc, %i.ad
  br i1 %i.hd, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21
  %i.he = add nsw i64 %.03642, -1                 ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  br i1 %i.hf, label %.split45.us.loopexit126, label %.critedge

.split45.us.loopexit:                             ; preds = %bb.l
  %i.hg = trunc nsw i64 %indvars.iv159 to i32
  br label %.split45.us

.split45.us.loopexit114:                          ; preds = %bb.m
  %i.hh = trunc nsw i64 %indvars.iv156 to i32
  br label %.split45.us

.split45.us.loopexit116:                          ; preds = %bb.q
  %i.hi = trunc nsw i64 %indvars.iv153 to i32
  br label %.split45.us

.split45.us.loopexit126:                          ; preds = %bb.r
  %i.hj = trunc nsw i64 %indvars.iv to i32
  br label %.split45.us

.split45.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us.preheader, %middle.block, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us.preheader, %middle.block241, %.split45.us.loopexit126, %.split45.us.loopexit116, %.split45.us.loopexit114, %.split45.us.loopexit
  %.us-phi = phi i32 [ %i.hi, %.split45.us.loopexit116 ], [ %i.hj, %.split45.us.loopexit126 ], [ %i.hg, %.split45.us.loopexit ], [ %i.hh, %.split45.us.loopexit114 ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us.preheader ], [ %i.db, %middle.block241 ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us.preheader ], [ %i.fv, %middle.block ], [ %i.db, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us.us97.us ], [ %i.fv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us81.us ] ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !941, !nonnull !114, !align !267 ; 5 uses
  %i.hm = add nsw i32 %.us-phi, 1
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 144 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !309 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.s, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.s:                                             ; preds = %.split45.us
  %i.hr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hl) ; 0 uses
  %.pre.i = load ptr, ptr %i.ho, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.s, %.split45.us
  %i.hs = phi ptr [ %i.hp, %.split45.us ], [ %.pre.i, %bb.s ]
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %i.f
  store i64 %i.hn, ptr %i.ht, align 8, !tbaa !147
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 32 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !310
  %.not.i22 = icmp eq ptr %i.hv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.t

bb.t:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hl, i32 noundef %i.hx, i1 noundef zeroext true)
  %i.hy = load ptr, ptr %i.hu, align 8, !tbaa !310 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 44
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !315
  %i.ib = and i8 %i.ia, 2
  %.not.i3.i = icmp eq i8 %i.ib, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.u, !prof !112

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.t
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !316
  %i.ie = lshr i32 %1, 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.if ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !87
  %i.ii = trunc i32 %1 to i8
  %i.ij = and i8 %i.ii, 7
  %i.ik = shl nuw i8 1, %i.ij
  %i.il = or i8 %i.ih, %i.ik
  store i8 %i.il, ptr %i.ig, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split38, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21, %bb.r
  %.1 = phi i64 [ %.03642, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit21 ], [ %i.he, %bb.r ], [ %.03642, %.split38 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.gp ; 2 uses
  %i.im = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.im
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split38, !llvm.loop !3728

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us64.us86.us, %.critedge.us52, %.critedge.us, %vector.body235, %.critedge.us.us102.us, %.critedge.us.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.040 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us.us102.us ], [ %i.bw, %vector.body235 ], [ %i.bw, %.critedge.us.us ], [ %i.bw, %.critedge.us52 ], [ %i.bw, %.lr.ph.split.us.split.split.us ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %.critedge.us64.us86.us ], [ %i.bw, %vector.body ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.in = load ptr, ptr %i.bj, align 8, !tbaa !938, !nonnull !114, !align !333
  %i.io = load i32, ptr %i.in, align 4, !tbaa !98
  %i.ip = icmp eq i32 %.040, %i.io
  br i1 %i.ip, label %bb.v, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !941, !nonnull !114, !align !267 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 144 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !309 ; 2 uses
  %i.iu = icmp eq ptr %i.it, null
  br i1 %i.iu, label %bb.w, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.w:                                             ; preds = %bb.v
  %i.iv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ir) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.is, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.w, %bb.v
  %i.iw = phi ptr [ %i.it, %bb.v ], [ %.pre.i27, %bb.w ]
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.f
  store i64 0, ptr %i.ix, align 8, !tbaa !147
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 32 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !310
  %.not.i24 = icmp eq ptr %i.iz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.x

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ir, i32 noundef %i.jb, i1 noundef zeroext true)
  %i.jc = load ptr, ptr %i.iy, align 8, !tbaa !310 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 44
  %i.je = load i8, ptr %i.jd, align 4, !tbaa !315
  %i.jf = and i8 %i.je, 2
  %.not.i3.i25 = icmp eq i8 %i.jf, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.y, !prof !112

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !316
  %i.ji = lshr i32 %1, 3
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !87
  %i.jm = trunc i32 %1 to i8
  %i.jn = and i8 %i.jm, 7
  %i.jo = shl nuw i8 1, %i.jn
  %i.jp = or i8 %i.jl, %i.jo
  store i8 %i.jp, ptr %i.jk, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

_ZN8facebook5velox10FlatVectorIlE3setEil.exit28:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

end_hunk_11
begin_hunk_12_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !948, !nonnull !114, !align !333 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !949, !nonnull !114, !align !333 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !950, !nonnull !114, !align !333
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !98 ; 2 uses
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 13 uses
  %.not1641 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1641, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !951, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ch = trunc nuw i8 %i.cg to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.cj = sext i32 %i.bv to i64
  %i.ck = sext i32 %i.bt to i64
  %i.cl = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %.critedge.us ], [ %i.cj, %.lr.ph.split.us ] ; 3 uses
  %.03642.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cm = add nsw i64 %indvars.iv133, %i.cl       ; 2 uses
  %i.cn = trunc nsw i64 %i.cm to i32
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.co = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cm
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

bb.n:                                             ; preds = %bb.l
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.cs, %bb.m ], [ %i.ct, %bb.n ], [ %i.cn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cu = sext i32 %.0.i.i19.us to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cv
  %.0.copyload.i.i20.us = load i128, ptr %i.cw, align 1
  %i.cx = icmp eq i128 %.0.copyload.i.i20.us, %.0.copyload.i.i
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %i.cy = add nsw i64 %.03642.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split45.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us
  %.1.us = phi i64 [ %.03642.us, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, %i.ck ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next134 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3758

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !113
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.ch, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bv to i64
  %i.df = sext i32 %i.bt to i64
  %i.dg = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us53
  %indvars.iv130 = phi i64 [ %i.de, %.split.us.preheader ], [ %indvars.iv.next131, %.critedge.us53 ] ; 3 uses
  %.03642.us48 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us54, %.critedge.us53 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv130, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !147
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us53, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49: ; preds = %.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ch, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49
  %i.dr = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49
  %.0.i.i19.us51 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us49 ]
  %i.dx = sext i32 %.0.i.i19.us51 to i64
  %i.dy = shl nsw i64 %i.dx, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dy
  %.0.copyload.i.i20.us52 = load i128, ptr %i.dz, align 1
  %i.ea = icmp eq i128 %.0.copyload.i.i20.us52, %.0.copyload.i.i
  br i1 %i.ea, label %bb.s, label %.critedge.us53

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50
  %i.eb = add nsw i64 %.03642.us48, -1            ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.split45.us.loopexit98, label %.critedge.us53

.critedge.us53:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50, %.split.us
  %.1.us54 = phi i64 [ %.03642.us48, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21.us50 ], [ %i.eb, %bb.s ], [ %.03642.us48, %.split.us ]
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, %i.df ; 2 uses
  %i.ed = trunc nsw i64 %indvars.iv.next131 to i32
  %.not16.us55 = icmp eq i32 %i.bw, %i.ed
  br i1 %.not16.us55, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3758

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ee = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eg = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.eh = and i64 %i.eg, 1
  %.not.i6.i.us = icmp eq i64 %i.eh, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ei = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ej = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  %.0.copyload.i.i20.us65.us88 = load i128, ptr %i.em, align 1
  %i.en = icmp eq i128 %.0.copyload.i.i20.us65.us88, %.0.copyload.i.i
  br i1 %i.en, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eo = trunc i64 %i.bu to i32
  %i.ep = add i32 %i.eo, -1
  %i.eq = mul i32 %i.bt, %i.ep
  %i.er = add i32 %i.bv, %i.eq                    ; 3 uses
  %i.es = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %.split45.us, label %.critedge.us66.us89.us.lr.ph

.critedge.us66.us89.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us66.us89.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us66.us89.us.lr.ph
  %n.vec = and i64 %i.es, -32                     ; 3 uses
  %i.eu = and i64 %i.es, 31
  %i.ev = trunc i64 %n.vec to i32
  %i.ew = mul i32 %i.bt, %i.ev
  %i.ex = add i32 %i.bv, %i.ew
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat172 = shufflevector <32 x i32> %broadcast.splatinsert171, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat174 = shufflevector <32 x i32> %broadcast.splatinsert173, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.ey = mul nsw <32 x i32> %broadcast.splat172, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat174, %i.ey
  %i.ez = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert175 = insertelement <32 x i32> poison, i32 %i.ez, i64 0
  %broadcast.splat176 = shufflevector <32 x i32> %broadcast.splatinsert175, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fa = add nsw <32 x i32> %vec.ind, %broadcast.splat172
  %i.fb = icmp eq <32 x i32> %i.fa, %broadcast.splat
  %i.fc = freeze <32 x i1> %i.fb
  %i.fd = bitcast <32 x i1> %i.fc to i32
  %.not178 = icmp eq i32 %i.fd, 0
  br i1 %.not178, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat176
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !3759

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %.split45.us, label %.critedge.us66.us89.us.preheader

.critedge.us66.us89.us.preheader:                 ; preds = %.critedge.us66.us89.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.es, %.critedge.us66.us89.us.lr.ph ], [ %i.eu, %middle.block ]
  %.043.us60.us84.us170.ph = phi i32 [ %i.bv, %.critedge.us66.us89.us.lr.ph ], [ %i.ex, %middle.block ]
  br label %.critedge.us66.us89.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us: ; preds = %.critedge.us66.us89.us
  %i.ff = add nsw i64 %i.fh, -1                   ; 2 uses
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.split45.us, label %.critedge.us66.us89.us, !llvm.loop !3760

.critedge.us66.us89.us:                           ; preds = %.critedge.us66.us89.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us
  %i.fh = phi i64 [ %i.ff, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.ph, %.critedge.us66.us89.us.preheader ]
  %.043.us60.us84.us170 = phi i32 [ %i.fi, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.043.us60.us84.us170.ph, %.critedge.us66.us89.us.preheader ]
  %i.fi = add nsw i32 %.043.us60.us84.us170, %i.bt ; 2 uses
  %.not16.us68.us91.us = icmp eq i32 %i.fi, %i.bw
  br i1 %.not16.us68.us91.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, !llvm.loop !3758

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fj = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.fk = sext i32 %i.bv to i64
  %i.fl = sext i32 %i.bt to i64
  %i.fm = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fj, i64 %i.fm
  br label %.split38

.split38:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fk, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03642 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fn = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !147
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  %.not.i7.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21: ; preds = %.split38
  %i.fv = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.fw = sext i32 %i.fn to i64
  %i.fx = shl nsw i64 %i.fw, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fx
  %.0.copyload.i.i20 = load i128, ptr %i.fy, align 1
  %i.fz = icmp eq i128 %.0.copyload.i.i20, %.0.copyload.i.i
  br i1 %i.fz, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21
  %i.ga = add nsw i64 %.03642, -1                 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %.split45.us.loopexit108, label %.critedge

.split45.us.loopexit:                             ; preds = %bb.o
  %i.gc = trunc nsw i64 %indvars.iv133 to i32
  br label %.split45.us

.split45.us.loopexit98:                           ; preds = %bb.s
  %i.gd = trunc nsw i64 %indvars.iv130 to i32
  br label %.split45.us

.split45.us.loopexit108:                          ; preds = %bb.t
  %i.ge = trunc nsw i64 %indvars.iv to i32
  br label %.split45.us

.split45.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, %middle.block, %.split45.us.loopexit108, %.split45.us.loopexit98, %.split45.us.loopexit
  %.us-phi = phi i32 [ %i.ge, %.split45.us.loopexit108 ], [ %i.gc, %.split45.us.loopexit ], [ %i.gd, %.split45.us.loopexit98 ], [ %i.er, %middle.block ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader ], [ %i.er, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !952, !nonnull !114, !align !267 ; 5 uses
  %i.gh = add nsw i32 %.us-phi, 1
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 144 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !309 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.u:                                             ; preds = %.split45.us
  %i.gm = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gg) ; 0 uses
  %.pre.i = load ptr, ptr %i.gj, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.u, %.split45.us
  %i.gn = phi ptr [ %i.gk, %.split45.us ], [ %.pre.i, %bb.u ]
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.f
  store i64 %i.gi, ptr %i.go, align 8, !tbaa !147
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gg, i64 32 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !310
  %.not.i22 = icmp eq ptr %i.gq, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gg, i32 noundef %i.gs, i1 noundef zeroext true)
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !310 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  %i.gv = load i8, ptr %i.gu, align 4, !tbaa !315
  %i.gw = and i8 %i.gv, 2
  %.not.i3.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.v
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !316
  %i.gz = lshr i32 %1, 3
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !87
  %i.hd = trunc i32 %1 to i8
  %i.he = and i8 %i.hd, 7
  %i.hf = shl nuw i8 1, %i.he
  %i.hg = or i8 %i.hc, %i.hf
  store i8 %i.hg, ptr %i.hb, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split38, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21, %bb.t
  %.1 = phi i64 [ %.03642, %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit21 ], [ %i.ga, %bb.t ], [ %.03642, %.split38 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fl ; 2 uses
  %i.hh = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hh
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split38, !llvm.loop !3758

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us66.us89.us, %.critedge.us53, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.040 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us66.us89.us ], [ %i.bw, %.critedge.us53 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hi = load ptr, ptr %i.bj, align 8, !tbaa !949, !nonnull !114, !align !333
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !98
  %i.hk = icmp eq i32 %.040, %i.hj
  br i1 %i.hk, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !952, !nonnull !114, !align !267 ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 144 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !309 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.y:                                             ; preds = %bb.x
  %i.hq = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hm) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hn, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.y, %bb.x
  %i.hr = phi ptr [ %i.ho, %bb.x ], [ %.pre.i27, %bb.y ]
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.f
  store i64 0, ptr %i.hs, align 8, !tbaa !147
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !310
  %.not.i24 = icmp eq ptr %i.hu, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.z

bb.z:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hm, i32 noundef %i.hw, i1 noundef zeroext true)
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !310 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 44
  %i.hz = load i8, ptr %i.hy, align 4, !tbaa !315
  %i.ia = and i8 %i.hz, 2
  %.not.i3.i25 = icmp eq i8 %i.ia, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !316
  %i.id = lshr i32 %1, 3
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ie ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !87
  %i.ih = trunc i32 %1 to i8
  %i.ii = and i8 %i.ih, 7
  %i.ij = shl nuw i8 1, %i.ii
  %i.ik = or i8 %i.ig, %i.ij
  store i8 %i.ik, ptr %i.if, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

_ZN8facebook5velox10FlatVectorIlE3setEil.exit28:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE10ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERS4_RNS0_13DecodedVectorERKSH_SK_SK_RNS0_10FlatVectorIlEEEUlT_E0_ZNS4_22applyToSelectedNoThrowISP_EEvSF_SO_EUlSO_E_EEvSF_SO_T0_EUlSO_E_EEvPKmiibSO_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_12
begin_hunk_13_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE5ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 13 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !962, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno float %i.ad, 0.000000e+00      ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03440.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv134, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !878 ; 2 uses
  %i.cy = fcmp uno float %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq float %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %i.da = add nsw i64 %.03440.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split43.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us
  %.1.us = phi i64 [ %.03440.us, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next135 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3786

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !113
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us52
  %indvars.iv131 = phi i64 [ %i.dg, %.split.us.preheader ], [ %indvars.iv.next132, %.critedge.us52 ] ; 3 uses
  %.03440.us46 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us53, %.critedge.us52 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv131, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !147
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us52, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47: ; preds = %.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47
  %.0.i.i19.us49 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47 ]
  %i.dz = sext i32 %.0.i.i19.us49 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !878 ; 2 uses
  %i.ec = fcmp uno float %i.eb, 0.000000e+00
  %or.cond.i.i.us50 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq float %i.eb, %i.ad
  %.0.i.i21.us51 = select i1 %or.cond.i.i.us50, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us51, label %bb.s, label %.critedge.us52

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48
  %i.ee = add nsw i64 %.03440.us46, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split43.us.loopexit99, label %.critedge.us52

.critedge.us52:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48, %.split.us
  %.1.us53 = phi i64 [ %.03440.us46, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20.us48 ], [ %i.ee, %bb.s ], [ %.03440.us46, %.split.us ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us54 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us54, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3786

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !878 ; 2 uses
  %i.eq = fcmp uno float %i.ep, 0.000000e+00
  %or.cond.i.i.us64.us88 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq float %i.ep, %i.ad
  %.0.i.i21.us65.us89 = select i1 %or.cond.i.i.us64.us88, i1 true, i1 %i.er
  br i1 %.0.i.i21.us65.us89, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split43.us, label %.critedge.us66.us90.us.lr.ph

.critedge.us66.us90.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us66.us90.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us66.us90.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat173 = shufflevector <32 x i32> %broadcast.splatinsert172, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert174 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat175 = shufflevector <32 x i32> %broadcast.splatinsert174, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul nsw <32 x i32> %broadcast.splat173, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat175, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert176 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat177 = shufflevector <32 x i32> %broadcast.splatinsert176, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat173
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not179 = icmp eq i32 %i.fh, 0
  br i1 %.not179, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat177
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3787

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split43.us, label %.critedge.us66.us90.us.preheader

.critedge.us66.us90.us.preheader:                 ; preds = %.critedge.us66.us90.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us66.us90.us.lr.ph ], [ %i.ey, %middle.block ]
  %.041.us59.us84.us171.ph = phi i32 [ %i.bv, %.critedge.us66.us90.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us66.us90.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us: ; preds = %.critedge.us66.us90.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split43.us, label %.critedge.us66.us90.us, !llvm.loop !3788

.critedge.us66.us90.us:                           ; preds = %.critedge.us66.us90.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.ph, %.critedge.us66.us90.us.preheader ]
  %.041.us59.us84.us171 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.041.us59.us84.us171.ph, %.critedge.us66.us90.us.preheader ]
  %i.fm = add nsw i32 %.041.us59.us84.us171, %i.bt ; 2 uses
  %.not16.us68.us92.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us68.us92.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, !llvm.loop !3786

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %.split36

.split36:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03440 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !147
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20: ; preds = %.split36
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !878 ; 2 uses
  %i.gd = fcmp uno float %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq float %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20
  %i.gf = add nsw i64 %.03440, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split43.us.loopexit109, label %.critedge

.split43.us.loopexit:                             ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv134 to i32
  br label %.split43.us

.split43.us.loopexit99:                           ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv131 to i32
  br label %.split43.us

.split43.us.loopexit109:                          ; preds = %bb.t
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split43.us

.split43.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, %middle.block, %.split43.us.loopexit109, %.split43.us.loopexit99, %.split43.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split43.us.loopexit109 ], [ %i.gh, %.split43.us.loopexit ], [ %i.gi, %.split43.us.loopexit99 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !963, !nonnull !114, !align !267 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !309 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.u:                                             ; preds = %.split43.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.u, %.split43.us
  %i.gs = phi ptr [ %i.gp, %.split43.us ], [ %.pre.i, %bb.u ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !147
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !310
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !310 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !315
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.v
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !316
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !87
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split36, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20, %bb.t
  %.1 = phi i64 [ %.03440, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit20 ], [ %i.gf, %bb.t ], [ %.03440, %.split36 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split36, !llvm.loop !3786

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us66.us90.us, %.critedge.us52, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us66.us90.us ], [ %i.bw, %.critedge.us52 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !960, !nonnull !114, !align !333
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !98
  %i.hp = icmp eq i32 %.038, %i.ho
  br i1 %i.hp, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !963, !nonnull !114, !align !267 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !309 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.y:                                             ; preds = %bb.x
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.y, %bb.x
  %i.hw = phi ptr [ %i.ht, %bb.x ], [ %.pre.i27, %bb.y ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !147
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !310
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.z

bb.z:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !310 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !315
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !316
  %i.ii = lshr i32 %1, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !87
  %i.im = trunc i32 %1 to i8
  %i.in = and i8 %i.im, 7
  %i.io = shl nuw i8 1, %i.in
  %i.ip = or i8 %i.il, %i.io
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

_ZN8facebook5velox10FlatVectorIlE3setEil.exit28:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_13
begin_hunk_14_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE6ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bp = icmp sgt i64 %i.aw, 0                   ; 3 uses
  %i.bq = add nsw i32 %i.bo, -1
  %i.br = select i1 %i.bp, i32 0, i32 %i.bq
  store i32 %i.br, ptr %i.bi, align 4, !tbaa !98
  %i.bs = select i1 %i.bp, i32 %i.bo, i32 -1
  store i32 %i.bs, ptr %i.bk, align 4, !tbaa !98
  %i.bt = select i1 %i.bp, i32 1, i32 -1          ; 9 uses
  store i32 %i.bt, ptr %i.bm, align 4, !tbaa !98
  %i.bu = tail call noundef i64 @llvm.abs.i64(i64 %i.aw, i1 true) ; 6 uses
  %i.bv = load i32, ptr %i.bi, align 4, !tbaa !98 ; 9 uses
  %i.bw = load i32, ptr %i.bk, align 4, !tbaa !98 ; 13 uses
  %.not1639 = icmp eq i32 %i.bv, %i.bw
  br i1 %.not1639, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !973, !nonnull !114, !align !267 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.ca, null
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 59 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.cg = fcmp uno double %i.ad, 0.000000e+00     ; 4 uses
  %i.ch = load i8, ptr %i.ce, align 2, !tbaa !287, !range !113, !noundef !114
  %i.ci = trunc nuw i8 %i.ch to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ck = sext i32 %i.bv to i64
  %i.cl = sext i32 %i.bt to i64
  %i.cm = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %.critedge.us ], [ %i.ck, %.lr.ph.split.us ] ; 3 uses
  %.03440.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bu, %.lr.ph.split.us ] ; 2 uses
  %i.cn = add nsw i64 %indvars.iv134, %i.cm       ; 2 uses
  %i.co = trunc nsw i64 %i.cn to i32
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cn
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

bb.n:                                             ; preds = %bb.l
  %i.cu = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i19.us = phi i32 [ %i.ct, %bb.m ], [ %i.cu, %bb.n ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.cv = sext i32 %.0.i.i19.us to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !882 ; 2 uses
  %i.cy = fcmp uno double %i.cx, 0.000000e+00
  %or.cond.i.i.us = select i1 %i.cy, i1 %i.cg, i1 false
  %i.cz = fcmp oeq double %i.cx, %i.ad
  %.0.i.i21.us = select i1 %or.cond.i.i.us, i1 true, i1 %i.cz
  br i1 %.0.i.i21.us, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %i.da = add nsw i64 %.03440.us, -1              ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.split43.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us
  %.1.us = phi i64 [ %.03440.us, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us ], [ %i.da, %bb.o ]
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, %i.cl ; 2 uses
  %i.dc = trunc nsw i64 %indvars.iv.next135 to i32
  %.not16.us = icmp eq i32 %i.bw, %i.dc
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3814

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 57
  %i.de = load i8, ptr %i.dd, align 1, !range !113
  %i.df = trunc nuw i8 %i.de to i1
  %or.cond.i = select i1 %i.ci, i1 true, i1 %i.df
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.dg = sext i32 %i.bv to i64
  %i.dh = sext i32 %i.bt to i64
  %i.di = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us52
  %indvars.iv131 = phi i64 [ %i.dg, %.split.us.preheader ], [ %indvars.iv.next132, %.critedge.us52 ] ; 3 uses
  %.03440.us46 = phi i64 [ %i.bu, %.split.us.preheader ], [ %.1.us53, %.critedge.us52 ] ; 3 uses
  %i.dj = add nsw i64 %indvars.iv131, %i.di       ; 4 uses
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !147
  %i.do = and i64 %i.dj, 63
  %i.dp = shl nuw i64 1, %i.do
  %i.dq = and i64 %i.dn, %i.dp
  %.not.i.i.us = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.us, label %.critedge.us52, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47: ; preds = %.split.us
  %i.dr = trunc nsw i64 %i.dj to i32
  %i.ds = load ptr, ptr %i.cd, align 8, !tbaa !329
  br i1 %i.ci, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47
  %i.dt = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dj
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48

bb.r:                                             ; preds = %bb.p
  %i.dy = load i32, ptr %i.cf, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47
  %.0.i.i19.us49 = phi i32 [ %i.dx, %bb.q ], [ %i.dy, %bb.r ], [ %i.dr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us47 ]
  %i.dz = sext i32 %.0.i.i19.us49 to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !882 ; 2 uses
  %i.ec = fcmp uno double %i.eb, 0.000000e+00
  %or.cond.i.i.us50 = select i1 %i.ec, i1 %i.cg, i1 false
  %i.ed = fcmp oeq double %i.eb, %i.ad
  %.0.i.i21.us51 = select i1 %or.cond.i.i.us50, i1 true, i1 %i.ed
  br i1 %.0.i.i21.us51, label %bb.s, label %.critedge.us52

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48
  %i.ee = add nsw i64 %.03440.us46, -1            ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.split43.us.loopexit99, label %.critedge.us52

.critedge.us52:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48, %.split.us
  %.1.us53 = phi i64 [ %.03440.us46, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20.us48 ], [ %i.ee, %bb.s ], [ %.03440.us46, %.split.us ]
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, %i.dh ; 2 uses
  %i.eg = trunc nsw i64 %indvars.iv.next132 to i32
  %.not16.us54 = icmp eq i32 %i.bw, %i.eg
  br i1 %.not16.us54, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3814

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.eh = load i8, ptr %i.cb, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.ej = load i64, ptr %i.ca, align 8, !tbaa !147
  %i.ek = and i64 %i.ej, 1
  %.not.i6.i.us = icmp eq i64 %i.ek, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.el = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !330
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !882 ; 2 uses
  %i.eq = fcmp uno double %i.ep, 0.000000e+00
  %or.cond.i.i.us64.us88 = select i1 %i.eq, i1 %i.cg, i1 false
  %i.er = fcmp oeq double %i.ep, %i.ad
  %.0.i.i21.us65.us89 = select i1 %or.cond.i.i.us64.us88, i1 true, i1 %i.er
  br i1 %.0.i.i21.us65.us89, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.es = trunc i64 %i.bu to i32
  %i.et = add i32 %i.es, -1
  %i.eu = mul i32 %i.bt, %i.et
  %i.ev = add i32 %i.bv, %i.eu                    ; 3 uses
  %i.ew = add nsw i64 %i.bu, -1                   ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.split43.us, label %.critedge.us66.us90.us.lr.ph

.critedge.us66.us90.us.lr.ph:                     ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bu, 33
  br i1 %min.iters.check, label %.critedge.us66.us90.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us66.us90.us.lr.ph
  %n.vec = and i64 %i.ew, -32                     ; 3 uses
  %i.ey = and i64 %i.ew, 31
  %i.ez = trunc i64 %n.vec to i32
  %i.fa = mul i32 %i.bt, %i.ez
  %i.fb = add i32 %i.bv, %i.fa
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bw, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <32 x i32> poison, i32 %i.bt, i64 0
  %broadcast.splat173 = shufflevector <32 x i32> %broadcast.splatinsert172, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert174 = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat175 = shufflevector <32 x i32> %broadcast.splatinsert174, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fc = mul nsw <32 x i32> %broadcast.splat173, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat175, %i.fc
  %i.fd = shl nsw i32 %i.bt, 5
  %broadcast.splatinsert176 = insertelement <32 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat177 = shufflevector <32 x i32> %broadcast.splatinsert176, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fe = add nsw <32 x i32> %vec.ind, %broadcast.splat173
  %i.ff = icmp eq <32 x i32> %i.fe, %broadcast.splat
  %i.fg = freeze <32 x i1> %i.ff
  %i.fh = bitcast <32 x i1> %i.fg to i32
  %.not179 = icmp eq i32 %i.fh, 0
  br i1 %.not179, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat177
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3815

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %.split43.us, label %.critedge.us66.us90.us.preheader

.critedge.us66.us90.us.preheader:                 ; preds = %.critedge.us66.us90.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.ew, %.critedge.us66.us90.us.lr.ph ], [ %i.ey, %middle.block ]
  %.041.us59.us84.us171.ph = phi i32 [ %i.bv, %.critedge.us66.us90.us.lr.ph ], [ %i.fb, %middle.block ]
  br label %.critedge.us66.us90.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us: ; preds = %.critedge.us66.us90.us
  %i.fj = add nsw i64 %i.fl, -1                   ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split43.us, label %.critedge.us66.us90.us, !llvm.loop !3816

.critedge.us66.us90.us:                           ; preds = %.critedge.us66.us90.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us
  %i.fl = phi i64 [ %i.fj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.ph, %.critedge.us66.us90.us.preheader ]
  %.041.us59.us84.us171 = phi i32 [ %i.fm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ], [ %.041.us59.us84.us171.ph, %.critedge.us66.us90.us.preheader ]
  %i.fm = add nsw i32 %.041.us59.us84.us171, %i.bt ; 2 uses
  %.not16.us68.us92.us = icmp eq i32 %i.fm, %i.bw
  br i1 %.not16.us68.us92.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, !llvm.loop !3814

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !283
  %i.fo = sext i32 %i.bv to i64
  %i.fp = sext i32 %i.bt to i64
  %i.fq = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fn, i64 %i.fq
  br label %.split36

.split36:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fo, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.03440 = phi i64 [ %i.bu, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fr = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !147
  %i.fw = and i64 %i.fs, 63
  %i.fx = shl nuw i64 1, %i.fw
  %i.fy = and i64 %i.fx, %i.fv
  %.not.i7.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20: ; preds = %.split36
  %i.fz = load ptr, ptr %i.cd, align 8, !tbaa !329
  %i.ga = sext i32 %i.fr to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !882 ; 2 uses
  %i.gd = fcmp uno double %i.gc, 0.000000e+00
  %or.cond.i.i = select i1 %i.gd, i1 %i.cg, i1 false
  %i.ge = fcmp oeq double %i.gc, %i.ad
  %.0.i.i21 = select i1 %or.cond.i.i, i1 true, i1 %i.ge
  br i1 %.0.i.i21, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20
  %i.gf = add nsw i64 %.03440, -1                 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %.split43.us.loopexit109, label %.critedge

.split43.us.loopexit:                             ; preds = %bb.o
  %i.gh = trunc nsw i64 %indvars.iv134 to i32
  br label %.split43.us

.split43.us.loopexit99:                           ; preds = %bb.s
  %i.gi = trunc nsw i64 %indvars.iv131 to i32
  br label %.split43.us

.split43.us.loopexit109:                          ; preds = %bb.t
  %i.gj = trunc nsw i64 %indvars.iv to i32
  br label %.split43.us

.split43.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader, %middle.block, %.split43.us.loopexit109, %.split43.us.loopexit99, %.split43.us.loopexit
  %.us-phi = phi i32 [ %i.gj, %.split43.us.loopexit109 ], [ %i.gh, %.split43.us.loopexit ], [ %i.gi, %.split43.us.loopexit99 ], [ %i.ev, %middle.block ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us.preheader ], [ %i.ev, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us83.us ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !974, !nonnull !114, !align !267 ; 5 uses
  %i.gm = add nsw i32 %.us-phi, 1
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 144 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !309 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.u:                                             ; preds = %.split43.us
  %i.gr = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gl) ; 0 uses
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.u, %.split43.us
  %i.gs = phi ptr [ %i.gp, %.split43.us ], [ %.pre.i, %bb.u ]
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.f
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !147
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !310
  %.not.i22 = icmp eq ptr %i.gv, null
  br i1 %.not.i22, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gl, i32 noundef %i.gx, i1 noundef zeroext true)
  %i.gy = load ptr, ptr %i.gu, align 8, !tbaa !310 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 44
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !315
  %i.hb = and i8 %i.ha, 2
  %.not.i3.i = icmp eq i8 %i.hb, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.v
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !316
  %i.he = lshr i32 %1, 3
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !87
  %i.hi = trunc i32 %1 to i8
  %i.hj = and i8 %i.hi, 7
  %i.hk = shl nuw i8 1, %i.hj
  %i.hl = or i8 %i.hh, %i.hk
  store i8 %i.hl, ptr %i.hg, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split36, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20, %bb.t
  %.1 = phi i64 [ %.03440, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit20 ], [ %i.gf, %bb.t ], [ %.03440, %.split36 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fp ; 2 uses
  %i.hm = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bw, %i.hm
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split36, !llvm.loop !3814

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us66.us90.us, %.critedge.us52, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.038 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bv, %bb.k ], [ %i.bw, %.critedge.us66.us90.us ], [ %i.bw, %.critedge.us52 ], [ %i.bw, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bw, %vector.body ], [ %i.bw, %.lr.ph.split.split.split.us ], [ %i.bw, %.critedge.us ], [ %i.bw, %.critedge ]
  %i.hn = load ptr, ptr %i.bj, align 8, !tbaa !971, !nonnull !114, !align !333
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !98
  %i.hp = icmp eq i32 %.038, %i.ho
  br i1 %i.hp, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !974, !nonnull !114, !align !267 ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 144 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !309 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

bb.y:                                             ; preds = %bb.x
  %i.hv = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hr) ; 0 uses
  %.pre.i27 = load ptr, ptr %i.hs, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23: ; preds = %bb.y, %bb.x
  %i.hw = phi ptr [ %i.ht, %bb.x ], [ %.pre.i27, %bb.y ]
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.f
  store i64 0, ptr %i.hx, align 8, !tbaa !147
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !310
  %.not.i24 = icmp eq ptr %i.hz, null
  br i1 %.not.i24, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28, label %bb.z

bb.z:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hr, i32 noundef %i.ib, i1 noundef zeroext true)
  %i.ic = load ptr, ptr %i.hy, align 8, !tbaa !310 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i8, ptr %i.id, align 4, !tbaa !315
  %i.if = and i8 %i.ie, 2
  %.not.i3.i25 = icmp eq i8 %i.if, 0
  br i1 %.not.i3.i25, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i26: ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !316
  %i.ii = lshr i32 %1, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !87
  %i.im = trunc i32 %1 to i8
  %i.in = and i8 %i.im, 7
  %i.io = shl nuw i8 1, %i.in
  %i.ip = or i8 %i.il, %i.io
  store i8 %i.ip, ptr %i.ik, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit28

_ZN8facebook5velox10FlatVectorIlE3setEil.exit28:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i26, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i23, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_14
begin_hunk_15_@_ZZN8facebook5velox9functions12_GLOBAL__N_122applyTypedWithInstanceILb0ELNS0_8TypeKindE9ETnNSt9enable_ifIXaantT_sr10TypeTraitsIXT0_EEE15isPrimitiveTypeEiE4typeELi0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxERNS0_13DecodedVectorERKSE_SH_SH_RNS0_10FlatVectorIlEEENKUlT_E0_clIiEEDaSL_:bb.a
  %i.bq = select i1 %i.bo, i32 0, i32 %i.bp
  store i32 %i.bq, ptr %i.bh, align 4, !tbaa !98
  %i.br = select i1 %i.bo, i32 %i.bn, i32 -1
  store i32 %i.br, ptr %i.bj, align 4, !tbaa !98
  %i.bs = select i1 %i.bo, i32 1, i32 -1          ; 9 uses
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !98
  %i.bt = tail call noundef i64 @llvm.abs.i64(i64 %i.av, i1 true) ; 6 uses
  %i.bu = load i32, ptr %i.bh, align 4, !tbaa !98 ; 9 uses
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !98 ; 13 uses
  %.not1648 = icmp eq i32 %i.bu, %i.bv
  br i1 %.not1648, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1006, !nonnull !114, !align !267 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !286 ; 4 uses
  %.not.i = icmp eq ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 59 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 64 ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 2, !tbaa !287, !range !113, !noundef !114
  %i.cg = trunc nuw i8 %i.cf to i1                ; 3 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !329
  %i.ci = sext i32 %i.bu to i64
  %i.cj = sext i32 %i.bs to i64
  %i.ck = sext i32 %i.k to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us: ; preds = %.critedge.us, %.lr.ph.split.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.critedge.us ], [ %i.ci, %.lr.ph.split.us ] ; 3 uses
  %.04349.us = phi i64 [ %.1.us, %.critedge.us ], [ %i.bt, %.lr.ph.split.us ] ; 2 uses
  %i.cl = add nsw i64 %indvars.iv146, %i.ck       ; 2 uses
  %i.cm = trunc nsw i64 %i.cl to i32
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us, label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %i.cn = load i8, ptr %i.ca, align 1, !tbaa !288, !range !113, !noundef !114
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !283
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.cl
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

bb.n:                                             ; preds = %bb.l
  %i.cs = load i32, ptr %i.ce, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us: ; preds = %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us
  %.0.i.i21.us = phi i32 [ %i.cr, %bb.m ], [ %i.cs, %bb.n ], [ %i.cm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us ]
  %i.ct = sext i32 %.0.i.i21.us to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.ch, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i22.us = load i64, ptr %i.cu, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.sroa.2.0.copyload.i24.us = load i64, ptr %.sroa.2.0..sroa_idx.i23.us, align 8, !tbaa !147
  %i.cv = icmp eq i64 %.sroa.0.0.copyload.i22.us, %.sroa.0.0.copyload.i
  %i.cw = icmp eq i64 %.sroa.2.0.copyload.i24.us, %.sroa.2.0.copyload.i
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %i.cx, label %bb.o, label %.critedge.us

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %i.cy = add nsw i64 %.04349.us, -1              ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %.split52.us.loopexit, label %.critedge.us

.critedge.us:                                     ; preds = %bb.o, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us
  %.1.us = phi i64 [ %.04349.us, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us ], [ %i.cy, %bb.o ]
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.cj ; 2 uses
  %i.da = trunc nsw i64 %indvars.iv.next147 to i32
  %.not16.us = icmp eq i32 %i.bv, %i.da
  br i1 %.not16.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us, !llvm.loop !3894

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 57
  %i.dc = load i8, ptr %i.db, align 1, !range !113
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond.i = select i1 %i.cg, i1 true, i1 %i.dd
  br i1 %or.cond.i, label %.split.us.preheader, label %.lr.ph.split.split

.split.us.preheader:                              ; preds = %.lr.ph.split
  %i.de = sext i32 %i.bu to i64
  %i.df = sext i32 %i.bs to i64
  %i.dg = sext i32 %i.k to i64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us62
  %indvars.iv143 = phi i64 [ %i.de, %.split.us.preheader ], [ %indvars.iv.next144, %.critedge.us62 ] ; 3 uses
  %.04349.us55 = phi i64 [ %i.bt, %.split.us.preheader ], [ %.1.us63, %.critedge.us62 ] ; 3 uses
  %i.dh = add nsw i64 %indvars.iv143, %i.dg       ; 4 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.di, 67108863
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !147
  %i.dm = and i64 %i.dh, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = and i64 %i.dl, %i.dn
  %.not.i.i.us = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.us, label %.critedge.us62, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us56

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us56: ; preds = %.split.us
  %i.dp = trunc nsw i64 %i.dh to i32
  %i.dq = load ptr, ptr %i.cc, align 8, !tbaa !329
  br i1 %i.cg, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57, label %bb.p

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us56
  %i.dr = load i8, ptr %i.ca, align 1, !tbaa !288, !range !113, !noundef !114
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load ptr, ptr %i.cb, align 8, !tbaa !283
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dh
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !98
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57

bb.r:                                             ; preds = %bb.p
  %i.dw = load i32, ptr %i.ce, align 8, !tbaa !330
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57: ; preds = %bb.r, %bb.q, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us56
  %.0.i.i21.us58 = phi i32 [ %i.dv, %bb.q ], [ %i.dw, %bb.r ], [ %i.dp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.us56 ]
  %i.dx = sext i32 %.0.i.i21.us58 to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dx ; 2 uses
  %.sroa.0.0.copyload.i22.us59 = load i64, ptr %i.dy, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us60 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.2.0.copyload.i24.us61 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us60, align 8, !tbaa !147
  %i.dz = icmp eq i64 %.sroa.0.0.copyload.i22.us59, %.sroa.0.0.copyload.i
  %i.ea = icmp eq i64 %.sroa.2.0.copyload.i24.us61, %.sroa.2.0.copyload.i
  %i.eb = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %i.eb, label %bb.s, label %.critedge.us62

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57
  %i.ec = add nsw i64 %.04349.us55, -1            ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.split52.us.loopexit111, label %.critedge.us62

.critedge.us62:                                   ; preds = %bb.s, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57, %.split.us
  %.1.us63 = phi i64 [ %.04349.us55, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27.us57 ], [ %i.ec, %bb.s ], [ %.04349.us55, %.split.us ]
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, %i.df ; 2 uses
  %i.ee = trunc nsw i64 %indvars.iv.next144 to i32
  %.not16.us64 = icmp eq i32 %i.bv, %i.ee
  br i1 %.not16.us64, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split.us, !llvm.loop !3894

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.ef = load i8, ptr %i.ca, align 1, !tbaa !288, !range !113, !noundef !114
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.eh = load i64, ptr %i.bz, align 8, !tbaa !147
  %i.ei = and i64 %i.eh, 1
  %.not.i6.i.us = icmp eq i64 %i.ei, 0
  br i1 %.not.i6.i.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.lr.ph.split.split.split.us.split.split.split.us

.lr.ph.split.split.split.us.split.split.split.us: ; preds = %.lr.ph.split.split.split.us
  %i.ej = load ptr, ptr %i.cc, align 8, !tbaa !329
  %i.ek = load i32, ptr %i.ce, align 8, !tbaa !330
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [16 x i8], ptr %i.ej, i64 %i.el ; 2 uses
  %.sroa.0.0.copyload.i22.us74.us99 = load i64, ptr %i.em, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23.us75.us100 = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.2.0.copyload.i24.us76.us101 = load i64, ptr %.sroa.2.0..sroa_idx.i23.us75.us100, align 8, !tbaa !147
  %i.en = icmp eq i64 %.sroa.0.0.copyload.i22.us74.us99, %.sroa.0.0.copyload.i
  %i.eo = icmp eq i64 %.sroa.2.0.copyload.i24.us76.us101, %.sroa.2.0.copyload.i
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us.preheader, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us.preheader: ; preds = %.lr.ph.split.split.split.us.split.split.split.us
  %i.eq = trunc i64 %i.bt to i32
  %i.er = add i32 %i.eq, -1
  %i.es = mul i32 %i.bs, %i.er
  %i.et = add i32 %i.bu, %i.es                    ; 3 uses
  %i.eu = add nsw i64 %i.bt, -1                   ; 5 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.split52.us, label %.critedge.us77.us102.us.lr.ph

.critedge.us77.us102.us.lr.ph:                    ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us.preheader
  %min.iters.check = icmp samesign ult i64 %i.bt, 33
  br i1 %min.iters.check, label %.critedge.us77.us102.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.us77.us102.us.lr.ph
  %n.vec = and i64 %i.eu, -32                     ; 3 uses
  %i.ew = and i64 %i.eu, 31
  %i.ex = trunc i64 %n.vec to i32
  %i.ey = mul i32 %i.bs, %i.ex
  %i.ez = add i32 %i.bu, %i.ey
  %broadcast.splatinsert = insertelement <32 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <32 x i32> %broadcast.splatinsert, <32 x i32> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <32 x i32> poison, i32 %i.bs, i64 0
  %broadcast.splat185 = shufflevector <32 x i32> %broadcast.splatinsert184, <32 x i32> poison, <32 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert186 = insertelement <32 x i32> poison, i32 %i.bu, i64 0
  %broadcast.splat187 = shufflevector <32 x i32> %broadcast.splatinsert186, <32 x i32> poison, <32 x i32> zeroinitializer
  %i.fa = mul nsw <32 x i32> %broadcast.splat185, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %induction = add nsw <32 x i32> %broadcast.splat187, %i.fa
  %i.fb = shl nsw i32 %i.bs, 5
  %broadcast.splatinsert188 = insertelement <32 x i32> poison, i32 %i.fb, i64 0
  %broadcast.splat189 = shufflevector <32 x i32> %broadcast.splatinsert188, <32 x i32> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <32 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fc = add nsw <32 x i32> %vec.ind, %broadcast.splat185
  %i.fd = icmp eq <32 x i32> %i.fc, %broadcast.splat
  %i.fe = freeze <32 x i1> %i.fd
  %i.ff = bitcast <32 x i1> %i.fe to i32
  %.not191 = icmp eq i32 %i.ff, 0
  br i1 %.not191, label %vector.body.interim, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <32 x i32> %vec.ind, %broadcast.splat189
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !3895

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %.split52.us, label %.critedge.us77.us102.us.preheader

.critedge.us77.us102.us.preheader:                ; preds = %.critedge.us77.us102.us.lr.ph, %middle.block
  %.ph = phi i64 [ %i.eu, %.critedge.us77.us102.us.lr.ph ], [ %i.ew, %middle.block ]
  %.050.us69.us95.us183.ph = phi i32 [ %i.bu, %.critedge.us77.us102.us.lr.ph ], [ %i.ez, %middle.block ]
  br label %.critedge.us77.us102.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us: ; preds = %.critedge.us77.us102.us
  %i.fh = add nsw i64 %i.fj, -1                   ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %.split52.us, label %.critedge.us77.us102.us, !llvm.loop !3896

.critedge.us77.us102.us:                          ; preds = %.critedge.us77.us102.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us
  %i.fj = phi i64 [ %i.fh, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us ], [ %.ph, %.critedge.us77.us102.us.preheader ]
  %.050.us69.us95.us183 = phi i32 [ %i.fk, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us ], [ %.050.us69.us95.us183.ph, %.critedge.us77.us102.us.preheader ]
  %i.fk = add nsw i32 %.050.us69.us95.us183, %i.bs ; 2 uses
  %.not16.us79.us104.us = icmp eq i32 %i.fk, %i.bv
  br i1 %.not16.us79.us104.us, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us, !llvm.loop !3894

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.fl = load ptr, ptr %i.cb, align 8, !tbaa !283
  %i.fm = sext i32 %i.bu to i64
  %i.fn = sext i32 %i.bs to i64
  %i.fo = sext i32 %i.k to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.fl, i64 %i.fo
  br label %.split45

.split45:                                         ; preds = %.lr.ph.split.split.split, %.critedge
  %indvars.iv = phi i64 [ %i.fm, %.lr.ph.split.split.split ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.04349 = phi i64 [ %i.bt, %.lr.ph.split.split.split ], [ %.1, %.critedge ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fp = load i32, ptr %gep, align 4, !tbaa !98  ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = lshr i64 %i.fq, 6
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !147
  %i.fu = and i64 %i.fq, 63
  %i.fv = shl nuw i64 1, %i.fu
  %i.fw = and i64 %i.fv, %i.ft
  %.not.i7.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i7.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27: ; preds = %.split45
  %i.fx = load ptr, ptr %i.cc, align 8, !tbaa !329
  %i.fy = sext i32 %i.fp to i64
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.fz, align 8, !tbaa !147
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.sroa.2.0.copyload.i24 = load i64, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !147
  %i.ga = icmp eq i64 %.sroa.0.0.copyload.i22, %.sroa.0.0.copyload.i
  %i.gb = icmp eq i64 %.sroa.2.0.copyload.i24, %.sroa.2.0.copyload.i
  %i.gc = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %i.gc, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27
  %i.gd = add nsw i64 %.04349, -1                 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.split52.us.loopexit121, label %.critedge

.split52.us.loopexit:                             ; preds = %bb.o
  %i.gf = trunc nsw i64 %indvars.iv146 to i32
  br label %.split52.us

.split52.us.loopexit111:                          ; preds = %bb.s
  %i.gg = trunc nsw i64 %indvars.iv143 to i32
  br label %.split52.us

.split52.us.loopexit121:                          ; preds = %bb.t
  %i.gh = trunc nsw i64 %indvars.iv to i32
  br label %.split52.us

.split52.us:                                      ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us.preheader, %middle.block, %.split52.us.loopexit121, %.split52.us.loopexit111, %.split52.us.loopexit
  %.us-phi = phi i32 [ %i.gh, %.split52.us.loopexit121 ], [ %i.gf, %.split52.us.loopexit ], [ %i.gg, %.split52.us.loopexit111 ], [ %i.et, %middle.block ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us.preheader ], [ %i.et, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.us.us94.us ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !1007, !nonnull !114, !align !267 ; 5 uses
  %i.gk = add nsw i32 %.us-phi, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 144 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !309 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.u, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

bb.u:                                             ; preds = %.split52.us
  %i.gp = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.gj) ; 0 uses
  %.pre.i = load ptr, ptr %i.gm, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i: ; preds = %bb.u, %.split52.us
  %i.gq = phi ptr [ %i.gn, %.split52.us ], [ %.pre.i, %bb.u ]
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.f
  store i64 %i.gl, ptr %i.gr, align 8, !tbaa !147
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !310
  %.not.i28 = icmp eq ptr %i.gt, null
  br i1 %.not.i28, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.gj, i32 noundef %i.gv, i1 noundef zeroext true)
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !310 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 44
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !315
  %i.gz = and i8 %i.gy, 2
  %.not.i3.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i: ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !316
  %i.hc = lshr i32 %1, 3
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hd ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !87
  %i.hg = trunc i32 %1 to i8
  %i.hh = and i8 %i.hg, 7
  %i.hi = shl nuw i8 1, %i.hh
  %i.hj = or i8 %i.hf, %i.hi
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit

.critedge:                                        ; preds = %.split45, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27, %bb.t
  %.1 = phi i64 [ %.04349, %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit27 ], [ %i.gd, %bb.t ], [ %.04349, %.split45 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.fn ; 2 uses
  %i.hk = trunc nsw i64 %indvars.iv.next to i32
  %.not16 = icmp eq i32 %i.bv, %i.hk
  br i1 %.not16, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit, label %.split45, !llvm.loop !3894

_ZN8facebook5velox10FlatVectorIlE3setEil.exit:    ; preds = %.critedge, %vector.body, %.critedge.us77.us102.us, %.critedge.us62, %.critedge.us, %.lr.ph.split.split.split.us.split.split.split.us, %.lr.ph.split.split.split.us, %bb.k, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i
  %.047 = phi i32 [ %.us-phi, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i ], [ %.us-phi, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i ], [ %i.bu, %bb.k ], [ %i.bv, %.critedge.us77.us102.us ], [ %i.bv, %.critedge.us62 ], [ %i.bv, %.lr.ph.split.split.split.us.split.split.split.us ], [ %i.bv, %vector.body ], [ %i.bv, %.lr.ph.split.split.split.us ], [ %i.bv, %.critedge.us ], [ %i.bv, %.critedge ]
  %i.hl = load ptr, ptr %i.bi, align 8, !tbaa !1004, !nonnull !114, !align !333
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !98
  %i.hn = icmp eq i32 %.047, %i.hm
  br i1 %i.hn, label %bb.x, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34

bb.x:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1007, !nonnull !114, !align !267 ; 5 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 144 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !309 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.y, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

bb.y:                                             ; preds = %bb.x
  %i.ht = tail call noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.hp) ; 0 uses
  %.pre.i33 = load ptr, ptr %i.hq, align 8, !tbaa !309
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29: ; preds = %bb.y, %bb.x
  %i.hu = phi ptr [ %i.hr, %bb.x ], [ %.pre.i33, %bb.y ]
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.f
  store i64 0, ptr %i.hv, align 8, !tbaa !147
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !310
  %.not.i30 = icmp eq ptr %i.hx, null
  br i1 %.not.i30, label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34, label %bb.z

bb.z:                                             ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !233
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.hp, i32 noundef %i.hz, i1 noundef zeroext true)
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !310 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 44
  %i.ic = load i8, ptr %i.ib, align 4, !tbaa !315
  %i.id = and i8 %i.ic, 2
  %.not.i3.i31 = icmp eq i8 %i.id, 0
  br i1 %.not.i3.i31, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i32: ; preds = %bb.z
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !316
  %i.ig = lshr i32 %1, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !87
  %i.ik = trunc i32 %1 to i8
  %i.il = and i8 %i.ik, 7
  %i.im = shl nuw i8 1, %i.il
  %i.in = or i8 %i.ij, %i.im
  store i8 %i.in, ptr %i.ii, align 1, !tbaa !87
  br label %_ZN8facebook5velox10FlatVectorIlE3setEil.exit34

_ZN8facebook5velox10FlatVectorIlE3setEil.exit34:  ; preds = %_ZN8facebook5velox10BaseVector7setNullEib.exit.i32, %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i29, %_ZN8facebook5velox10FlatVectorIlE3setEil.exit
  ret void
}

end_hunk_15
