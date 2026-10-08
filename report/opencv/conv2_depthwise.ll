Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_depthwise?download=true
inline.NumInlined: 226
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation":bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !129
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !9  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn12cpu_baselineL16depthwiseConv32fEPKvS5_PvRKNS2_14dnn5_v202606059ConvStateES5_PKfSC_E3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !63 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !63
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #16, !inline_history !63
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #17
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !130
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS7_iiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !9     ; 7 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !181, !nonnull !64, !align !182
  %i.b = load i32, ptr %i.a, align 4, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !183, !nonnull !64, !align !182
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 5 uses
  %i.f = lshr i32 %i.b, 5
  %i.g = and i32 %i.f, 127
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = shl i32 %i.b, 2
  %i.j = and i32 %i.i, 124
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 1275511473185297, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 15
  %i.o = mul nuw nsw i32 %i.n, %i.h
  %i.p = zext nneg i32 %i.o to i64                ; 6 uses
  %i.q = lshr i32 %i.e, 5
  %i.r = and i32 %i.q, 127
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = shl i32 %i.e, 2
  %i.u = and i32 %i.t, 124
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 1275511473185297, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 15
  %i.z = mul nuw nsw i32 %i.y, %i.s
  %i.aa = zext nneg i32 %i.z to i64               ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !184, !nonnull !64, !align !182
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21 ; 28 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !185, !nonnull !64, !align !182
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !21 ; 36 uses
  %i.ah = load i32, ptr %1, align 4, !tbaa !35    ; 17 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.ak = icmp slt i32 %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS3_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !186, !nonnull !64, !align !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 2 uses
  %i.aq = mul i32 %i.ag, %i.ad                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = mul nsw i64 %i.aa, %i.as
  %i.au = icmp sgt i32 %i.ag, 0                   ; 9 uses
  %i.av = sext i32 %i.ad to i64                   ; 16 uses
  %i.aw = zext nneg i32 %i.ag to i64              ; 27 uses
  %i.ax = sext i32 %i.ah to i64
  %i.ay = sext i32 %i.ao to i64
  %.pre220.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !187
  %.pre222.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !188
  %2 = mul i32 %i.ag, %i.ad
  %3 = mul i32 %2, %i.ah
  %4 = mul i32 %i.ag, %i.ad
  %i.az = add i32 %i.ag, -1
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = mul nsw i64 %i.av, %i.ba
  %5 = shl i64 %i.bb, 2
  %i.bc = shl nuw nsw i64 %i.ba, 2
  %i.bd = mul i32 %i.ag, %i.ad
  %i.be = mul i32 %i.bd, %i.ah
  %i.bf = mul i32 %i.ag, %i.ad
  %i.bg = add i32 %i.ag, -1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.av, %i.bh
  %6 = shl i64 %i.bi, 1
  %i.bj = shl nuw nsw i64 %i.bh, 1
  %i.bk = mul i32 %i.ag, %i.ad
  %i.bl = mul i32 %i.bk, %i.ah
  %i.bm = mul i32 %i.ag, %i.ad
  %i.bn = add i32 %i.ag, -1
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul nsw i64 %i.av, %i.bo
  %7 = shl i64 %i.bp, 1
  %i.bq = shl nuw nsw i64 %i.bo, 1
  %i.br = mul i32 %i.ag, %i.ad
  %i.bs = mul i32 %i.br, %i.ah
  %i.bt = mul i32 %i.ag, %i.ad
  %i.bu = add i32 %i.ag, -1
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = mul nsw i64 %i.av, %i.bv
  %8 = shl i64 %i.bw, 1
  %i.bx = shl nuw nsw i64 %i.bv, 1
  %i.by = mul i32 %i.ag, %i.ad
  %i.bz = mul i32 %i.by, %i.ah
  %i.ca = mul i32 %i.ag, %i.ad
  %i.cb = add i32 %i.ag, -1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = mul nsw i64 %i.av, %i.cc
  %i.ce = shl i64 %i.cd, 1
  %i.cf = shl nuw nsw i64 %i.cc, 1
  %ident.check195.not = icmp eq i32 %i.ag, 1
  %ident.check169.not = icmp eq i32 %i.ag, 1
  %ident.check155.not = icmp eq i32 %i.ag, 1
  %ident.check129.not = icmp eq i32 %i.ag, 1
  %ident.check98.not = icmp eq i32 %i.ag, 1
  %ident.check83.not = icmp eq i32 %i.ag, 1
  %ident.check69.not = icmp eq i32 %i.ag, 1
  %ident.check55.not = icmp eq i32 %i.ag, 1
  %ident.check.not = icmp eq i32 %i.ag, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, %.lr.ph.i.i.i
  %indvar = phi i32 [ %indvar.next, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 16 uses
  %i.cg = phi ptr [ %i.fk, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ %.pre222.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ch = phi ptr [ %i.fl, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ %.pre220.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i ], [ %i.ax, %.lr.ph.i.i.i ] ; 3 uses
  %i.ci = mul i32 %i.ca, %indvar
  %i.cj = add i32 %i.bz, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i64 %i.aa, %i.ck                ; 2 uses
  %i.cm = add i32 %i.ah, %indvar
  %i.cn = mul i32 %i.ad, %i.cm
  %i.co = sub i32 %i.ao, %i.cn
  %smin199 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.co)
  %i.cp = zext i32 %smin199 to i64
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = add i32 %i.ah, %indvar
  %i.cs = mul i32 %i.ad, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.p, %i.ct                 ; 2 uses
  %i.cv = mul i32 %i.bt, %indvar
  %i.cw = add i32 %i.bs, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.aa, %i.cx                ; 2 uses
  %i.cz = add i32 %i.ah, %indvar
  %i.da = mul i32 %i.ad, %i.cz
  %i.db = sub i32 %i.ao, %i.da
  %smin173 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.db)
  %i.dc = zext i32 %smin173 to i64
  %i.dd = shl nuw nsw i64 %i.dc, 1                ; 2 uses
  %i.de = add i32 %i.ah, %indvar
  %i.df = mul i32 %i.ad, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul nsw i64 %i.p, %i.dg                 ; 2 uses
  %i.di = mul i32 %i.bm, %indvar
  %i.dj = add i32 %i.bl, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.aa, %i.dk                ; 2 uses
  %i.dm = add i32 %i.ah, %indvar
  %i.dn = mul i32 %i.ad, %i.dm
  %i.do = sub i32 %i.ao, %i.dn
  %smin133 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.do)
  %i.dp = zext i32 %smin133 to i64
  %i.dq = shl nuw nsw i64 %i.dp, 1                ; 2 uses
  %i.dr = add i32 %i.ah, %indvar
  %i.ds = mul i32 %i.ad, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul nsw i64 %i.p, %i.dt                 ; 2 uses
  %i.dv = mul i32 %i.bf, %indvar
  %i.dw = add i32 %i.be, %i.dv
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %i.aa, %i.dx                ; 2 uses
  %i.dz = add i32 %i.ah, %indvar
  %i.ea = mul i32 %i.ad, %i.dz
  %i.eb = sub i32 %i.ao, %i.ea
  %smin102 = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.eb)
  %i.ec = zext i32 %smin102 to i64
  %i.ed = shl nuw nsw i64 %i.ec, 1                ; 2 uses
  %i.ee = add i32 %i.ah, %indvar
  %i.ef = mul i32 %i.ad, %i.ee
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul nsw i64 %i.p, %i.eg                 ; 2 uses
  %i.ei = mul i32 %4, %indvar
  %i.ej = add i32 %3, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.aa, %i.ek                ; 2 uses
  %i.em = add i32 %i.ah, %indvar
  %i.en = mul i32 %i.ad, %i.em
  %i.eo = sub i32 %i.ao, %i.en
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.eo)
  %i.ep = zext i32 %smin to i64
  %i.eq = shl nuw nsw i64 %i.ep, 2                ; 2 uses
  %i.er = add i32 %i.ah, %indvar
  %i.es = mul i32 %i.ad, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i64 %i.p, %i.et                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !189 ; 11 uses
  %i.ex = trunc nsw i64 %indvars.iv.i.i.i to i32
  %i.ey = mul i32 %i.aq, %i.ex
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = mul nsw i64 %i.ez, %i.p
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fa ; 9 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !189 ; 11 uses
  %i.fe = mul nsw i64 %i.ez, %i.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fe ; 10 uses
  %i.fg = mul nsw i64 %indvars.iv.i.i.i, %i.av
  %i.fh = sub nsw i64 %i.ay, %i.fg                ; 2 uses
  %i.fi = trunc i64 %i.fh to i32
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.fi) ; 29 uses
  %i.fj = icmp slt i64 %i.fh, %i.av
  br i1 %i.fj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ff, i8 0, i64 %i.at, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !187
  %.pre221.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !188
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fk = phi ptr [ %.pre221.i.i.i, %bb.c ], [ %i.cg, %bb.b ]
  %i.fl = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.ch, %bb.b ]
  switch i32 %i.b, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.e
    i32 7, label %bb.m
    i32 8, label %bb.u
  ]

bb.e:                                             ; preds = %bb.d
  switch i32 %i.e, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %i.fm = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.au, i1 %i.fm, i1 false
  br i1 %or.cond.i.i.i, label %.preheader.preheader.i.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.f
  %wide.trip.count.i.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 5 uses
  %scevgep = getelementptr i8, ptr %i.fd, i64 %i.el
  %scevgep48.a = getelementptr i8, ptr %i.fd, i64 %5
  %i.fn = getelementptr i8, ptr %scevgep48.a, i64 %i.el
  %scevgep49.a = getelementptr i8, ptr %i.fn, i64 %i.eq
  %scevgep50.a = getelementptr i8, ptr %i.ew, i64 %i.eu
  %scevgep51.a = getelementptr i8, ptr %i.ew, i64 %i.bc
  %i.fo = getelementptr i8, ptr %scevgep51.a, i64 %i.eu
  %scevgep52 = getelementptr i8, ptr %i.fo, i64 %i.eq
  %min.iters.check = icmp ugt i32 %.sroa.speculated.i.i.i, 7
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep52
  %bound1 = icmp ult ptr %scevgep50.a, %scevgep49.a
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  %xtraiter259 = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i, %.preheader.preheader.i.i.i.i
  %.01320.i.i.i.i = phi i32 [ %i.ga, %._crit_edge.i.i.i.i ], [ 0, %.preheader.preheader.i.i.i.i ]
  %.01419.i.i.i.i = phi ptr [ %i.gb, %._crit_edge.i.i.i.i ], [ %i.fb, %.preheader.preheader.i.i.i.i ] ; 7 uses
  %.01518.i.i.i.i = phi ptr [ %i.gc, %._crit_edge.i.i.i.i ], [ %i.ff, %.preheader.preheader.i.i.i.i ] ; 7 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load = load <4 x float>, ptr %i.fp, align 4, !tbaa !66, !alias.scope !190
  %wide.load53 = load <4 x float>, ptr %i.fq, align 4, !tbaa !66, !alias.scope !190
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %index ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x float> %wide.load, ptr %i.fr, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  store <4 x float> %wide.load53, ptr %i.fs, align 4, !tbaa !66, !alias.scope !191, !noalias !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod260.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter261 = phi i64 [ %prol.iter261.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fu = mul nuw nsw i64 %indvars.iv.i.i.i.i.prol, %i.aw
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !66
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  store float %i.fw, ptr %i.fx, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter261.next = add i64 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i64 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !135

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.fy = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %._crit_edge.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ga = add nuw nsw i32 %.01320.i.i.i.i, 1      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01419.i.i.i.i, i64 4
  %i.gc = getelementptr inbounds [4 x i8], ptr %.01518.i.i.i.i, i64 %i.av
  %exitcond23.not.i.i.i.i = icmp eq i32 %i.ga, %i.ag
  br i1 %exitcond23.not.i.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !136

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gd = mul nuw nsw i64 %indvars.iv.i.i.i.i, %i.aw
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !66
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.i.i.i.i
  store float %i.gf, ptr %i.gg, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.gh = mul nuw nsw i64 %indvars.iv.next.i.i.i.i, %i.aw
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !66
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  store float %i.gj, ptr %i.gk, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.gl = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.1, %i.aw
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !66
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  store float %i.gn, ptr %i.go, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.gp = mul nuw nsw i64 %indvars.iv.next.i.i.i.i.2, %i.aw
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.01419.i.i.i.i, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !66
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.01518.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  store float %i.gr, ptr %i.gs, align 4, !tbaa !66
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !137

bb.g:                                             ; preds = %bb.e
  %i.gt = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond203.i.i.i = select i1 %i.au, i1 %i.gt, i1 false
  br i1 %or.cond203.i.i.i, label %.preheader.preheader.i84.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i84.i.i.i:                   ; preds = %bb.g
  %wide.trip.count.i85.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %min.iters.check57 = icmp ugt i32 %.sroa.speculated.i.i.i, 3
  %or.cond234.a = select i1 %min.iters.check57, i1 %ident.check55.not, i1 false
  %n.vec59 = and i64 %wide.trip.count.i85.i.i.i, 2147483644 ; 3 uses
  %cmp.n66 = icmp eq i64 %n.vec59, %wide.trip.count.i85.i.i.i
  br label %.preheader.i86.i.i.i

.preheader.i86.i.i.i:                             ; preds = %._crit_edge.i93.i.i.i, %.preheader.preheader.i84.i.i.i
  %.01320.i87.i.i.i = phi i32 [ %i.hp, %._crit_edge.i93.i.i.i ], [ 0, %.preheader.preheader.i84.i.i.i ]
  %.01419.i88.i.i.i = phi ptr [ %i.hq, %._crit_edge.i93.i.i.i ], [ %i.fb, %.preheader.preheader.i84.i.i.i ] ; 3 uses
  %.01518.i89.i.i.i = phi ptr [ %i.hr, %._crit_edge.i93.i.i.i ], [ %i.ff, %.preheader.preheader.i84.i.i.i ] ; 3 uses
  br i1 %or.cond234.a, label %vector.body60, label %scalar.ph56.preheader

vector.body60:                                    ; preds = %.preheader.i86.i.i.i, %vector.body60
  %index61 = phi i64 [ %index.next64, %vector.body60 ], [ 0, %.preheader.i86.i.i.i ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.01419.i88.i.i.i, i64 %index61
  %wide.load62 = load <4 x float>, ptr %i.gu, align 4, !tbaa !66 ; 2 uses
  %i.gv = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load62) ; 2 uses
  %i.gw = bitcast <4 x float> %i.gv to <4 x i32>  ; 5 uses
  %i.gx = icmp samesign ult <4 x i32> %i.gw, splat (i32 1199570944)
  %i.gy = add nuw nsw <4 x i32> %i.gw, splat (i32 134221823)
  %i.gz = lshr <4 x i32> %i.gw, splat (i32 13)
  %i.ha = and <4 x i32> %i.gz, splat (i32 1)
  %i.hb = add nuw nsw <4 x i32> %i.gy, %i.ha
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 13)
  %i.hd = icmp samesign ult <4 x i32> %i.gw, splat (i32 947912704)
  %i.he = fadd <4 x float> %i.gv, splat (float 5.000000e-01)
  %i.hf = bitcast <4 x float> %i.he to <4 x i32>
  %i.hg = icmp samesign ugt <4 x i32> %i.gw, splat (i32 2139095040)
  %i.hh = select <4 x i1> %i.hg, <4 x i16> splat (i16 32256), <4 x i16> splat (i16 31744)
  %predphi.v = select <4 x i1> %i.hd, <4 x i32> %i.hf, <4 x i32> %i.hc
  %predphi = trunc <4 x i32> %predphi.v to <4 x i16>
  %predphi63 = select <4 x i1> %i.gx, <4 x i16> %predphi, <4 x i16> %i.hh
  %i.hi = bitcast <4 x float> %wide.load62 to <4 x i32>
  %i.hj = lshr <4 x i32> %i.hi, splat (i32 16)
  %i.hk = trunc nuw <4 x i32> %i.hj to <4 x i16>
  %i.hl = and <4 x i16> %i.hk, splat (i16 -32768)
  %i.hm = or <4 x i16> %predphi63, %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.01518.i89.i.i.i, i64 %index61
  store <4 x i16> %i.hm, ptr %i.hn, align 2, !tbaa !194
  %index.next64 = add nuw i64 %index61, 4         ; 2 uses
  %i.ho = icmp eq i64 %index.next64, %n.vec59
  br i1 %i.ho, label %middle.block65, label %vector.body60, !llvm.loop !138

middle.block65:                                   ; preds = %vector.body60
  br i1 %cmp.n66, label %._crit_edge.i93.i.i.i, label %scalar.ph56.preheader

scalar.ph56.preheader:                            ; preds = %.preheader.i86.i.i.i, %middle.block65
  %indvars.iv.i90.i.i.i.ph = phi i64 [ 0, %.preheader.i86.i.i.i ], [ %n.vec59, %middle.block65 ]
  br label %scalar.ph56

._crit_edge.i93.i.i.i:                            ; preds = %_ZN2cv6hfloatC2Ef.exit.i.i.i.i, %middle.block65
  %i.hp = add nuw nsw i32 %.01320.i87.i.i.i, 1    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.01419.i88.i.i.i, i64 4
  %i.hr = getelementptr inbounds [2 x i8], ptr %.01518.i89.i.i.i, i64 %i.av
  %exitcond23.not.i94.i.i.i = icmp eq i32 %i.hp, %i.ag
  br i1 %exitcond23.not.i94.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i86.i.i.i, !llvm.loop !139

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %_ZN2cv6hfloatC2Ef.exit.i.i.i.i
  %indvars.iv.i90.i.i.i = phi i64 [ %indvars.iv.next.i91.i.i.i, %_ZN2cv6hfloatC2Ef.exit.i.i.i.i ], [ %indvars.iv.i90.i.i.i.ph, %scalar.ph56.preheader ] ; 3 uses
  %i.hs = mul nuw nsw i64 %indvars.iv.i90.i.i.i, %i.aw
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.01419.i88.i.i.i, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !66 ; 2 uses
  %i.hv = tail call float @llvm.fabs.f32(float %i.hu) ; 2 uses
  %i.hw = bitcast float %i.hv to i32              ; 5 uses
  %i.hx = icmp samesign ugt i32 %i.hw, 1199570943
  br i1 %i.hx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %scalar.ph56
  %i.hy = icmp samesign ugt i32 %i.hw, 2139095040
  %i.hz = select i1 %i.hy, i16 32256, i16 31744
  br label %_ZN2cv6hfloatC2Ef.exit.i.i.i.i

bb.i:                                             ; preds = %scalar.ph56
  %i.ia = icmp samesign ult i32 %i.hw, 947912704
  br i1 %i.ia, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ib = fadd float %i.hv, 5.000000e-01
  %i.ic = bitcast float %i.ib to i32
  %i.id = trunc i32 %i.ic to i16
  br label %_ZN2cv6hfloatC2Ef.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ie = add nuw nsw i32 %i.hw, 134221823
  %i.if = lshr i32 %i.hw, 13
  %i.ig = and i32 %i.if, 1
  %i.ih = add nuw nsw i32 %i.ie, %i.ig
  %i.ii = lshr i32 %i.ih, 13
  %i.ij = trunc i32 %i.ii to i16
  br label %_ZN2cv6hfloatC2Ef.exit.i.i.i.i

_ZN2cv6hfloatC2Ef.exit.i.i.i.i:                   ; preds = %bb.k, %bb.j, %bb.h
  %i.ik = phi i16 [ %i.id, %bb.j ], [ %i.ij, %bb.k ], [ %i.hz, %bb.h ]
  %i.il = bitcast float %i.hu to i32
  %i.im = lshr i32 %i.il, 16
  %i.in = trunc nuw i32 %i.im to i16
  %i.io = and i16 %i.in, -32768
  %i.ip = or i16 %i.ik, %i.io
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.01518.i89.i.i.i, i64 %indvars.iv.i90.i.i.i
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !194
  %indvars.iv.next.i91.i.i.i = add nuw nsw i64 %indvars.iv.i90.i.i.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS7_iiE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.iz = bitcast <4 x float> %i.ix to <4 x i32>
  %i.ja = bitcast <4 x float> %i.iy to <4 x i32>
  %i.jb = icmp samesign ult <4 x i32> %i.iz, splat (i32 2139062272)
  %i.jc = icmp samesign ult <4 x i32> %i.ja, splat (i32 2139062272)
  %i.jd = select <4 x i1> %i.jb, <4 x i32> splat (i32 32768), <4 x i32> zeroinitializer
  %i.je = select <4 x i1> %i.jc, <4 x i32> splat (i32 32768), <4 x i32> zeroinitializer
  %i.jf = add <4 x i32> %i.jd, %i.iv
  %i.jg = add <4 x i32> %i.je, %i.iw
  %i.jh = lshr <4 x i32> %i.jf, splat (i32 16)
  %i.ji = lshr <4 x i32> %i.jg, splat (i32 16)
  %i.jj = trunc nuw <4 x i32> %i.jh to <4 x i16>
  %i.jk = trunc nuw <4 x i32> %i.ji to <4 x i16>
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.01518.i101.i.i.i, i64 %index75 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store <4 x i16> %i.jj, ptr %i.jl, align 2, !tbaa !194
  store <4 x i16> %i.jk, ptr %i.jm, align 2, !tbaa !194
  %index.next78 = add nuw i64 %index75, 8         ; 2 uses
  %i.jn = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.jn, label %middle.block79, label %vector.body74, !llvm.loop !141

middle.block79:                                   ; preds = %vector.body74
  br i1 %cmp.n80, label %._crit_edge.i105.i.i.i, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %.preheader.i98.i.i.i, %middle.block79
  %indvars.iv.i102.i.i.i.ph = phi i64 [ 0, %.preheader.i98.i.i.i ], [ %n.vec73, %middle.block79 ] ; 5 uses
  br i1 %lcmp.mod257.not, label %scalar.ph70.prol.loopexit, label %scalar.ph70.prol

scalar.ph70.prol:                                 ; preds = %scalar.ph70.preheader
  %i.jo = mul nuw nsw i64 %indvars.iv.i102.i.i.i.ph, %i.aw
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.01419.i100.i.i.i, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !66 ; 2 uses
  %i.jr = bitcast float %i.jq to i32
  %i.js = tail call float @llvm.fabs.f32(float %i.jq)
  %i.jt = bitcast float %i.js to i32
  %i.ju = icmp samesign ult i32 %i.jt, 2139062272
  %i.jv = select i1 %i.ju, i32 32768, i32 0
  %i.jw = add i32 %i.jv, %i.jr
  %i.jx = lshr i32 %i.jw, 16
  %i.jy = trunc nuw i32 %i.jx to i16
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %.01518.i101.i.i.i, i64 %indvars.iv.i102.i.i.i.ph
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !194
  %indvars.iv.next.i103.i.i.i.prol = or disjoint i64 %indvars.iv.i102.i.i.i.ph, 1
  br label %scalar.ph70.prol.loopexit

scalar.ph70.prol.loopexit:                        ; preds = %scalar.ph70.prol, %scalar.ph70.preheader
  %indvars.iv.i102.i.i.i.unr = phi i64 [ %indvars.iv.i102.i.i.i.ph, %scalar.ph70.preheader ], [ %indvars.iv.next.i103.i.i.i.prol, %scalar.ph70.prol ]
  %i.ka = icmp eq i64 %indvars.iv.i102.i.i.i.ph, %i.is
  br i1 %i.ka, label %._crit_edge.i105.i.i.i, label %scalar.ph70

._crit_edge.i105.i.i.i:                           ; preds = %scalar.ph70.prol.loopexit, %scalar.ph70, %middle.block79
  %i.kb = add nuw nsw i32 %.01320.i99.i.i.i, 1    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.01419.i100.i.i.i, i64 4
  %i.kd = getelementptr inbounds [2 x i8], ptr %.01518.i101.i.i.i, i64 %i.av
  %exitcond23.not.i106.i.i.i = icmp eq i32 %i.kb, %i.ag
  br i1 %exitcond23.not.i106.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i98.i.i.i, !llvm.loop !142

scalar.ph70:                                      ; preds = %scalar.ph70.prol.loopexit, %scalar.ph70
  %indvars.iv.i102.i.i.i = phi i64 [ %indvars.iv.next.i103.i.i.i.1, %scalar.ph70 ], [ %indvars.iv.i102.i.i.i.unr, %scalar.ph70.prol.loopexit ] ; 4 uses
  %i.ke = mul nuw nsw i64 %indvars.iv.i102.i.i.i, %i.aw
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.01419.i100.i.i.i, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !66 ; 2 uses
  %i.kh = bitcast float %i.kg to i32
  %i.ki = tail call float @llvm.fabs.f32(float %i.kg)
  %i.kj = bitcast float %i.ki to i32
  %i.kk = icmp samesign ult i32 %i.kj, 2139062272
  %i.kl = select i1 %i.kk, i32 32768, i32 0
  %i.km = add i32 %i.kl, %i.kh
  %i.kn = lshr i32 %i.km, 16
  %i.ko = trunc nuw i32 %i.kn to i16
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %.01518.i101.i.i.i, i64 %indvars.iv.i102.i.i.i
  store i16 %i.ko, ptr %i.kp, align 2, !tbaa !194
  %indvars.iv.next.i103.i.i.i = add nuw nsw i64 %indvars.iv.i102.i.i.i, 1 ; 2 uses
  %i.kq = mul nuw nsw i64 %indvars.iv.next.i103.i.i.i, %i.aw
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.01419.i100.i.i.i, i64 %i.kq
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !66 ; 2 uses
  %i.kt = bitcast float %i.ks to i32
  %i.ku = tail call float @llvm.fabs.f32(float %i.ks)
  %i.kv = bitcast float %i.ku to i32
  %i.kw = icmp samesign ult i32 %i.kv, 2139062272
  %i.kx = select i1 %i.kw, i32 32768, i32 0
  %i.ky = add i32 %i.kx, %i.kt
  %i.kz = lshr i32 %i.ky, 16
  %i.la = trunc nuw i32 %i.kz to i16
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.01518.i101.i.i.i, i64 %indvars.iv.next.i103.i.i.i
  store i16 %i.la, ptr %i.lb, align 2, !tbaa !194
  %indvars.iv.next.i103.i.i.i.1 = add nuw nsw i64 %indvars.iv.i102.i.i.i, 2 ; 2 uses
  %exitcond.not.i104.i.i.i.1 = icmp eq i64 %indvars.iv.next.i103.i.i.i.1, %wide.trip.count.i97.i.i.i
  br i1 %exitcond.not.i104.i.i.i.1, label %._crit_edge.i105.i.i.i, label %scalar.ph70, !llvm.loop !143

bb.m:                                             ; preds = %bb.d
  switch i32 %i.e, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.n
    i32 7, label %bb.q
    i32 8, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  %i.lc = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond205.i.i.i = select i1 %i.au, i1 %i.lc, i1 false
  br i1 %or.cond205.i.i.i, label %.preheader.preheader.i108.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i108.i.i.i:                  ; preds = %bb.n
  %wide.trip.count.i109.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %min.iters.check85 = icmp ugt i32 %.sroa.speculated.i.i.i, 3
  %or.cond236.a = select i1 %min.iters.check85, i1 %ident.check83.not, i1 false
  %n.vec87 = and i64 %wide.trip.count.i109.i.i.i, 2147483644 ; 3 uses
  %cmp.n95 = icmp eq i64 %n.vec87, %wide.trip.count.i109.i.i.i
  br label %.preheader.i110.i.i.i

.preheader.i110.i.i.i:                            ; preds = %._crit_edge.i117.i.i.i, %.preheader.preheader.i108.i.i.i
  %.01320.i111.i.i.i = phi i32 [ %i.lv, %._crit_edge.i117.i.i.i ], [ 0, %.preheader.preheader.i108.i.i.i ]
  %.01419.i112.i.i.i = phi ptr [ %i.lw, %._crit_edge.i117.i.i.i ], [ %i.fb, %.preheader.preheader.i108.i.i.i ] ; 3 uses
  %.01518.i113.i.i.i = phi ptr [ %i.lx, %._crit_edge.i117.i.i.i ], [ %i.ff, %.preheader.preheader.i108.i.i.i ] ; 3 uses
  br i1 %or.cond236.a, label %vector.body88, label %scalar.ph84.preheader

vector.body88:                                    ; preds = %.preheader.i110.i.i.i, %vector.body88
  %index89 = phi i64 [ %index.next93, %vector.body88 ], [ 0, %.preheader.i110.i.i.i ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.01419.i112.i.i.i, i64 %index89
  %wide.load90 = load <4 x i16>, ptr %i.ld, align 2, !tbaa !196 ; 2 uses
  %i.le = zext <4 x i16> %wide.load90 to <4 x i32> ; 2 uses
  %i.lf = shl nuw nsw <4 x i32> %i.le, splat (i32 13) ; 2 uses
  %i.lg = and <4 x i32> %i.lf, splat (i32 268427264) ; 2 uses
  %i.lh = add nuw nsw <4 x i32> %i.lg, splat (i32 939524096)
  %i.li = and <4 x i32> %i.le, splat (i32 31744)  ; 2 uses
  %i.lj = icmp eq <4 x i32> %i.li, splat (i32 31744)
  %i.lk = icmp eq <4 x i32> %i.li, zeroinitializer
  %i.ll = add nuw nsw <4 x i32> %i.lg, splat (i32 947912704)
  %i.lm = bitcast <4 x i32> %i.ll to <4 x float>
  %i.ln = fadd <4 x float> %i.lm, splat (float f0xB8800000)
  %i.lo = bitcast <4 x float> %i.ln to <4 x i32>
  %i.lp = or <4 x i32> %i.lf, splat (i32 1879048192)
  %predphi91.a = select <4 x i1> %i.lk, <4 x i32> %i.lo, <4 x i32> %i.lh
  %predphi92 = select <4 x i1> %i.lj, <4 x i32> %i.lp, <4 x i32> %predphi91.a
  %i.lq = sext <4 x i16> %wide.load90 to <4 x i32>
  %i.lr = and <4 x i32> %i.lq, splat (i32 -2147483648)
  %i.ls = or <4 x i32> %predphi92, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.01518.i113.i.i.i, i64 %index89
  store <4 x i32> %i.ls, ptr %i.lt, align 4, !tbaa !66
  %index.next93 = add nuw i64 %index89, 4         ; 2 uses
  %i.lu = icmp eq i64 %index.next93, %n.vec87
  br i1 %i.lu, label %middle.block94, label %vector.body88, !llvm.loop !144

middle.block94:                                   ; preds = %vector.body88
  br i1 %cmp.n95, label %._crit_edge.i117.i.i.i, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %.preheader.i110.i.i.i, %middle.block94
  %indvars.iv.i114.i.i.i.ph = phi i64 [ 0, %.preheader.i110.i.i.i ], [ %n.vec87, %middle.block94 ]
  br label %scalar.ph84

._crit_edge.i117.i.i.i:                           ; preds = %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i, %middle.block94
  %i.lv = add nuw nsw i32 %.01320.i111.i.i.i, 1   ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.01419.i112.i.i.i, i64 2
  %i.lx = getelementptr inbounds [4 x i8], ptr %.01518.i113.i.i.i, i64 %i.av
  %exitcond23.not.i118.i.i.i = icmp eq i32 %i.lv, %i.ag
  br i1 %exitcond23.not.i118.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i110.i.i.i, !llvm.loop !145

scalar.ph84:                                      ; preds = %scalar.ph84.preheader, %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i
  %indvars.iv.i114.i.i.i = phi i64 [ %indvars.iv.next.i115.i.i.i, %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i ], [ %indvars.iv.i114.i.i.i.ph, %scalar.ph84.preheader ] ; 3 uses
  %i.ly = mul nuw nsw i64 %indvars.iv.i114.i.i.i, %i.aw
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %.01419.i112.i.i.i, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !196 ; 2 uses
  %i.mb = zext i16 %i.ma to i32                   ; 2 uses
  %i.mc = shl nuw nsw i32 %i.mb, 13               ; 2 uses
  %i.md = and i32 %i.mc, 268427264                ; 2 uses
  %i.me = add nuw nsw i32 %i.md, 939524096
  %i.mf = and i32 %i.mb, 31744
  switch i32 %i.mf, label %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i [
    i32 31744, label %bb.o
    i32 0, label %bb.p
  ]

bb.o:                                             ; preds = %scalar.ph84
  %i.mg = or i32 %i.mc, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i

bb.p:                                             ; preds = %scalar.ph84
  %i.mh = add nuw nsw i32 %i.md, 947912704
  %i.mi = bitcast i32 %i.mh to float
  %i.mj = fadd float %i.mi, f0xB8800000
  %i.mk = bitcast float %i.mj to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i.i.i.i

_ZNK2cv6hfloatcvfEv.exit.i.i.i.i:                 ; preds = %bb.p, %bb.o, %scalar.ph84
  %i.ml = phi i32 [ %i.mg, %bb.o ], [ %i.mk, %bb.p ], [ %i.me, %scalar.ph84 ]
  %.signext.i.i.i.i.i = sext i16 %i.ma to i32
  %i.mm = and i32 %.signext.i.i.i.i.i, -2147483648
  %i.mn = or i32 %i.ml, %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.01518.i113.i.i.i, i64 %indvars.iv.i114.i.i.i
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !66
  %indvars.iv.next.i115.i.i.i = add nuw nsw i64 %indvars.iv.i114.i.i.i, 1 ; 2 uses
  %exitcond.not.i116.i.i.i = icmp eq i64 %indvars.iv.next.i115.i.i.i, %wide.trip.count.i109.i.i.i
  br i1 %exitcond.not.i116.i.i.i, label %._crit_edge.i117.i.i.i, label %scalar.ph84, !llvm.loop !146

bb.q:                                             ; preds = %bb.m
  %i.mp = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond206.i.i.i = select i1 %i.au, i1 %i.mp, i1 false
  br i1 %or.cond206.i.i.i, label %.preheader.preheader.i120.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i120.i.i.i:                  ; preds = %bb.q
  %wide.trip.count.i121.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 8 uses
  %scevgep100 = getelementptr i8, ptr %i.fd, i64 %i.dy
  %scevgep101.a = getelementptr i8, ptr %i.fd, i64 %6
  %i.mq = getelementptr i8, ptr %scevgep101.a, i64 %i.dy
  %scevgep103.a = getelementptr i8, ptr %i.mq, i64 %i.ed
  %scevgep104.a = getelementptr i8, ptr %i.ew, i64 %i.eh
  %scevgep105 = getelementptr i8, ptr %i.ew, i64 %i.bj
  %i.mr = getelementptr i8, ptr %scevgep105, i64 %i.eh
  %scevgep106 = getelementptr i8, ptr %i.mr, i64 %i.ed
  %min.iters.check111 = icmp ugt i32 %.sroa.speculated.i.i.i, 3
  %or.cond237 = select i1 %min.iters.check111, i1 %ident.check98.not, i1 false
  %bound0107 = icmp ult ptr %scevgep100, %scevgep106
  %bound1108 = icmp ult ptr %scevgep104.a, %scevgep103.a
  %found.conflict109 = and i1 %bound0107, %bound1108
  %min.iters.check112 = icmp ult i32 %.sroa.speculated.i.i.i, 16
  %i.ms = and i64 %wide.trip.count.i121.i.i.i, 12
  %n.vec114 = and i64 %wide.trip.count.i121.i.i.i, 2147483632 ; 4 uses
  %cmp.n121 = icmp eq i64 %n.vec114, %wide.trip.count.i121.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.ms, 0
  %n.vec122 = and i64 %wide.trip.count.i121.i.i.i, 2147483644 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count.i121.i.i.i
  %xtraiter253 = and i64 %wide.trip.count.i121.i.i.i, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i126.i.i.i, %.preheader.preheader.i120.i.i.i
  %.021.i.i.i.i = phi ptr [ %i.nh, %._crit_edge.i126.i.i.i ], [ %i.fb, %.preheader.preheader.i120.i.i.i ] ; 8 uses
  %.01520.i.i.i.i = phi i32 [ %i.ng, %._crit_edge.i126.i.i.i ], [ 0, %.preheader.preheader.i120.i.i.i ]
  %.01619.i.i.i.i = phi ptr [ %i.ni, %._crit_edge.i126.i.i.i ], [ %i.ff, %.preheader.preheader.i120.i.i.i ] ; 8 uses
  %or.cond237.not = xor i1 %or.cond237, true
  %brmerge262 = select i1 %or.cond237.not, i1 true, i1 %found.conflict109
  br i1 %brmerge262, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.body115

vector.body115:                                   ; preds = %vector.main.loop.iter.check, %vector.body115
  %index116 = phi i64 [ %index.next119, %vector.body115 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %index116 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load117 = load <8 x i16>, ptr %i.mt, align 2, !tbaa !194, !alias.scope !197
  %wide.load118 = load <8 x i16>, ptr %i.mu, align 2, !tbaa !194, !alias.scope !197
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %index116 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  store <8 x i16> %wide.load117, ptr %i.mv, align 2, !tbaa !194, !alias.scope !198, !noalias !197
  store <8 x i16> %wide.load118, ptr %i.mw, align 2, !tbaa !194, !alias.scope !198, !noalias !197
  %index.next119 = add nuw i64 %index116, 16      ; 2 uses
  %i.mx = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.mx, label %middle.block120, label %vector.body115, !llvm.loop !150

middle.block120:                                  ; preds = %vector.body115
  br i1 %cmp.n121, label %._crit_edge.i126.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block120
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !199

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec114, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.my, align 2, !tbaa !194, !alias.scope !197
  %i.mz = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.mz, align 2, !tbaa !194, !alias.scope !198, !noalias !197
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.na, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge.i126.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i123.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec122, %vec.epilog.middle.block ], [ %n.vec114, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod254.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i123.i.i.i.prol = phi i64 [ %indvars.iv.next.i124.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i123.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nb = mul nuw nsw i64 %indvars.iv.i123.i.i.i.prol, %i.aw
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %i.nb
  %.sroa.0.0.copyload.i.i.i.i.prol = load i16, ptr %i.nc, align 2, !tbaa !194
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %indvars.iv.i123.i.i.i.prol
  store i16 %.sroa.0.0.copyload.i.i.i.i.prol, ptr %i.nd, align 2, !tbaa !194
  %indvars.iv.next.i124.i.i.i.prol = add nuw nsw i64 %indvars.iv.i123.i.i.i.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !152

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i123.i.i.i.unr = phi i64 [ %indvars.iv.i123.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i124.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ne = sub nsw i64 %indvars.iv.i123.i.i.i.ph, %wide.trip.count.i121.i.i.i
  %i.nf = icmp ugt i64 %i.ne, -4
  br i1 %i.nf, label %._crit_edge.i126.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i126.i.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block120
  %i.ng = add nuw nsw i32 %.01520.i.i.i.i, 1      ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i, i64 2
  %i.ni = getelementptr inbounds [2 x i8], ptr %.01619.i.i.i.i, i64 %i.av
  %exitcond24.not.i.i.i.i = icmp eq i32 %i.ng, %i.ag
  br i1 %exitcond24.not.i.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %iter.check, !llvm.loop !153

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i123.i.i.i = phi i64 [ %indvars.iv.next.i124.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i123.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.nj = mul nuw nsw i64 %indvars.iv.i123.i.i.i, %i.aw
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %i.nj
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.nk, align 2, !tbaa !194
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %indvars.iv.i123.i.i.i
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %i.nl, align 2, !tbaa !194
  %indvars.iv.next.i124.i.i.i = add nuw nsw i64 %indvars.iv.i123.i.i.i, 1 ; 2 uses
  %i.nm = mul nuw nsw i64 %indvars.iv.next.i124.i.i.i, %i.aw
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %i.nm
  %.sroa.0.0.copyload.i.i.i.i.1 = load i16, ptr %i.nn, align 2, !tbaa !194
  %i.no = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %indvars.iv.next.i124.i.i.i
  store i16 %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.no, align 2, !tbaa !194
  %indvars.iv.next.i124.i.i.i.1 = add nuw nsw i64 %indvars.iv.i123.i.i.i, 2 ; 2 uses
  %i.np = mul nuw nsw i64 %indvars.iv.next.i124.i.i.i.1, %i.aw
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %i.np
  %.sroa.0.0.copyload.i.i.i.i.2 = load i16, ptr %i.nq, align 2, !tbaa !194
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %indvars.iv.next.i124.i.i.i.1
  store i16 %.sroa.0.0.copyload.i.i.i.i.2, ptr %i.nr, align 2, !tbaa !194
  %indvars.iv.next.i124.i.i.i.2 = add nuw nsw i64 %indvars.iv.i123.i.i.i, 3 ; 2 uses
  %i.ns = mul nuw nsw i64 %indvars.iv.next.i124.i.i.i.2, %i.aw
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.021.i.i.i.i, i64 %i.ns
  %.sroa.0.0.copyload.i.i.i.i.3 = load i16, ptr %i.nt, align 2, !tbaa !194
  %i.nu = getelementptr inbounds nuw [2 x i8], ptr %.01619.i.i.i.i, i64 %indvars.iv.next.i124.i.i.i.2
  store i16 %.sroa.0.0.copyload.i.i.i.i.3, ptr %i.nu, align 2, !tbaa !194
  %indvars.iv.next.i124.i.i.i.3 = add nuw nsw i64 %indvars.iv.i123.i.i.i, 4 ; 2 uses
  %exitcond.not.i125.i.i.i.3 = icmp eq i64 %indvars.iv.next.i124.i.i.i.3, %wide.trip.count.i121.i.i.i
  br i1 %exitcond.not.i125.i.i.i.3, label %._crit_edge.i126.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !154

bb.r:                                             ; preds = %bb.m
  %i.nv = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond207.i.i.i = select i1 %i.au, i1 %i.nv, i1 false
  br i1 %or.cond207.i.i.i, label %.preheader.preheader.i128.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i128.i.i.i:                  ; preds = %bb.r
  %wide.trip.count.i129.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %scevgep131 = getelementptr i8, ptr %i.fd, i64 %i.dl
  %scevgep132.a = getelementptr i8, ptr %i.fd, i64 %7
  %i.nw = getelementptr i8, ptr %scevgep132.a, i64 %i.dl
  %scevgep134.a = getelementptr i8, ptr %i.nw, i64 %i.dq
  %scevgep135 = getelementptr i8, ptr %i.ew, i64 %i.du
  %scevgep136 = getelementptr i8, ptr %i.ew, i64 %i.bq
  %i.nx = getelementptr i8, ptr %scevgep136, i64 %i.du
  %scevgep137 = getelementptr i8, ptr %i.nx, i64 %i.dq
  %min.iters.check142 = icmp ugt i32 %.sroa.speculated.i.i.i, 7
  %or.cond238 = select i1 %min.iters.check142, i1 %ident.check129.not, i1 false
  %bound0138 = icmp ult ptr %scevgep131, %scevgep137
  %bound1139 = icmp ult ptr %scevgep135, %scevgep134.a
  %found.conflict140 = and i1 %bound0138, %bound1139
  %n.vec144 = and i64 %wide.trip.count.i129.i.i.i, 2147483640 ; 3 uses
  %cmp.n152 = icmp eq i64 %n.vec144, %wide.trip.count.i129.i.i.i
  br label %.preheader.i130.i.i.i

.preheader.i130.i.i.i:                            ; preds = %._crit_edge.i139.i.i.i, %.preheader.preheader.i128.i.i.i
  %.01320.i131.i.i.i = phi i32 [ %i.oy, %._crit_edge.i139.i.i.i ], [ 0, %.preheader.preheader.i128.i.i.i ]
  %.01419.i132.i.i.i = phi ptr [ %i.oz, %._crit_edge.i139.i.i.i ], [ %i.fb, %.preheader.preheader.i128.i.i.i ] ; 3 uses
  %.01518.i133.i.i.i = phi ptr [ %i.pa, %._crit_edge.i139.i.i.i ], [ %i.ff, %.preheader.preheader.i128.i.i.i ] ; 3 uses
  %or.cond238.not = xor i1 %or.cond238, true
  %brmerge263 = select i1 %or.cond238.not, i1 true, i1 %found.conflict140
  br i1 %brmerge263, label %scalar.ph141.preheader, label %vector.body145

vector.body145:                                   ; preds = %.preheader.i130.i.i.i, %vector.body145
  %index146 = phi i64 [ %index.next150, %vector.body145 ], [ 0, %.preheader.i130.i.i.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr %.01419.i132.i.i.i, i64 %index146
  %wide.load147 = load <8 x i16>, ptr %i.ny, align 2, !tbaa !196, !alias.scope !200 ; 2 uses
  %i.nz = zext <8 x i16> %wide.load147 to <8 x i32> ; 2 uses
  %i.oa = shl nuw nsw <8 x i32> %i.nz, splat (i32 13) ; 2 uses
  %i.ob = and <8 x i32> %i.oa, splat (i32 268427264) ; 2 uses
  %i.oc = add nuw nsw <8 x i32> %i.ob, splat (i32 939524096)
  %i.od = and <8 x i32> %i.nz, splat (i32 31744)  ; 2 uses
  %i.oe = icmp eq <8 x i32> %i.od, splat (i32 31744)
  %i.of = icmp eq <8 x i32> %i.od, zeroinitializer
  %i.og = add nuw nsw <8 x i32> %i.ob, splat (i32 947912704)
  %i.oh = bitcast <8 x i32> %i.og to <8 x float>
  %i.oi = fadd <8 x float> %i.oh, splat (float f0xB8800000)
  %i.oj = bitcast <8 x float> %i.oi to <8 x i32>
  %i.ok = or <8 x i32> %i.oa, splat (i32 1879048192)
  %predphi148 = select <8 x i1> %i.of, <8 x i32> %i.oj, <8 x i32> %i.oc
  %predphi149 = select <8 x i1> %i.oe, <8 x i32> %i.ok, <8 x i32> %predphi148
  %i.ol = sext <8 x i16> %wide.load147 to <8 x i32>
  %i.om = and <8 x i32> %i.ol, splat (i32 -2147483648)
  %i.on = or <8 x i32> %predphi149, %i.om         ; 2 uses
  %i.oo = bitcast <8 x i32> %i.on to <8 x float>
  %i.op = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oo)
  %i.oq = bitcast <8 x float> %i.op to <8 x i32>
  %i.or = icmp samesign ult <8 x i32> %i.oq, splat (i32 2139062272)
  %i.os = select <8 x i1> %i.or, <8 x i32> splat (i32 32768), <8 x i32> zeroinitializer
  %i.ot = add <8 x i32> %i.os, %i.on
  %i.ou = lshr <8 x i32> %i.ot, splat (i32 16)
  %i.ov = trunc nuw <8 x i32> %i.ou to <8 x i16>
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %.01518.i133.i.i.i, i64 %index146
  store <8 x i16> %i.ov, ptr %i.ow, align 2, !tbaa !194, !alias.scope !201, !noalias !200
  %index.next150 = add nuw i64 %index146, 8       ; 2 uses
  %i.ox = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.ox, label %middle.block151, label %vector.body145, !llvm.loop !158

middle.block151:                                  ; preds = %vector.body145
  br i1 %cmp.n152, label %._crit_edge.i139.i.i.i, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %.preheader.i130.i.i.i, %middle.block151
  %indvars.iv.i134.i.i.i.ph = phi i64 [ %n.vec144, %middle.block151 ], [ 0, %.preheader.i130.i.i.i ]
  br label %scalar.ph141

._crit_edge.i139.i.i.i:                           ; preds = %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i, %middle.block151
  %i.oy = add nuw nsw i32 %.01320.i131.i.i.i, 1   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.01419.i132.i.i.i, i64 2
  %i.pa = getelementptr inbounds [2 x i8], ptr %.01518.i133.i.i.i, i64 %i.av
  %exitcond23.not.i140.i.i.i = icmp eq i32 %i.oy, %i.ag
  br i1 %exitcond23.not.i140.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i130.i.i.i, !llvm.loop !159

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i
  %indvars.iv.i134.i.i.i = phi i64 [ %indvars.iv.next.i137.i.i.i, %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i ], [ %indvars.iv.i134.i.i.i.ph, %scalar.ph141.preheader ] ; 3 uses
  %i.pb = mul nuw nsw i64 %indvars.iv.i134.i.i.i, %i.aw
  %i.pc = getelementptr inbounds nuw [2 x i8], ptr %.01419.i132.i.i.i, i64 %i.pb
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !196 ; 2 uses
  %i.pe = zext i16 %i.pd to i32                   ; 2 uses
  %i.pf = shl nuw nsw i32 %i.pe, 13               ; 2 uses
  %i.pg = and i32 %i.pf, 268427264                ; 2 uses
  %i.ph = add nuw nsw i32 %i.pg, 939524096
  %i.pi = and i32 %i.pe, 31744
  switch i32 %i.pi, label %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i [
    i32 31744, label %bb.s
    i32 0, label %bb.t
  ]

bb.s:                                             ; preds = %scalar.ph141
  %i.pj = or i32 %i.pf, 1879048192
  br label %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i

bb.t:                                             ; preds = %scalar.ph141
  %i.pk = add nuw nsw i32 %i.pg, 947912704
  %i.pl = bitcast i32 %i.pk to float
  %i.pm = fadd float %i.pl, f0xB8800000
  %i.pn = bitcast float %i.pm to i32
  br label %_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i

_ZNK2cv6hfloatcvfEv.exit.i135.i.i.i:              ; preds = %bb.t, %bb.s, %scalar.ph141
  %i.po = phi i32 [ %i.pj, %bb.s ], [ %i.pn, %bb.t ], [ %i.ph, %scalar.ph141 ]
  %.signext.i.i136.i.i.i = sext i16 %i.pd to i32
  %i.pp = and i32 %.signext.i.i136.i.i.i, -2147483648
  %i.pq = or i32 %i.po, %i.pp                     ; 2 uses
  %i.pr = bitcast i32 %i.pq to float
  %i.ps = tail call float @llvm.fabs.f32(float %i.pr)
  %i.pt = bitcast float %i.ps to i32
  %i.pu = icmp samesign ult i32 %i.pt, 2139062272
  %i.pv = select i1 %i.pu, i32 32768, i32 0
  %i.pw = add i32 %i.pv, %i.pq
  %i.px = lshr i32 %i.pw, 16
  %i.py = trunc nuw i32 %i.px to i16
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %.01518.i133.i.i.i, i64 %indvars.iv.i134.i.i.i
  store i16 %i.py, ptr %i.pz, align 2, !tbaa !194
  %indvars.iv.next.i137.i.i.i = add nuw nsw i64 %indvars.iv.i134.i.i.i, 1 ; 2 uses
  %exitcond.not.i138.i.i.i = icmp eq i64 %indvars.iv.next.i137.i.i.i, %wide.trip.count.i129.i.i.i
  br i1 %exitcond.not.i138.i.i.i, label %._crit_edge.i139.i.i.i, label %scalar.ph141, !llvm.loop !160

bb.u:                                             ; preds = %bb.d
  switch i32 %i.e, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i [
    i32 5, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.ab
  ]

bb.v:                                             ; preds = %bb.u
  %i.qa = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond208.i.i.i = select i1 %i.au, i1 %i.qa, i1 false
  br i1 %or.cond208.i.i.i, label %.preheader.preheader.i142.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i142.i.i.i:                  ; preds = %bb.v
  %wide.trip.count.i143.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 5 uses
  %min.iters.check157 = icmp ugt i32 %.sroa.speculated.i.i.i, 7
  %or.cond239 = select i1 %min.iters.check157, i1 %ident.check155.not, i1 false
  %n.vec159 = and i64 %wide.trip.count.i143.i.i.i, 2147483640 ; 3 uses
  %cmp.n166 = icmp eq i64 %n.vec159, %wide.trip.count.i143.i.i.i
  %xtraiter250 = and i64 %wide.trip.count.i143.i.i.i, 3 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br label %.preheader.i144.i.i.i

.preheader.i144.i.i.i:                            ; preds = %._crit_edge.i151.i.i.i, %.preheader.preheader.i142.i.i.i
  %.01320.i145.i.i.i = phi i32 [ %i.qs, %._crit_edge.i151.i.i.i ], [ 0, %.preheader.preheader.i142.i.i.i ]
  %.01419.i146.i.i.i = phi ptr [ %i.qt, %._crit_edge.i151.i.i.i ], [ %i.fb, %.preheader.preheader.i142.i.i.i ] ; 7 uses
  %.01518.i147.i.i.i = phi ptr [ %i.qu, %._crit_edge.i151.i.i.i ], [ %i.ff, %.preheader.preheader.i142.i.i.i ] ; 7 uses
  br i1 %or.cond239, label %vector.body160, label %scalar.ph156.preheader

vector.body160:                                   ; preds = %.preheader.i144.i.i.i, %vector.body160
  %index161 = phi i64 [ %index.next164, %vector.body160 ], [ 0, %.preheader.i144.i.i.i ] ; 3 uses
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %index161 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %wide.load162 = load <4 x i16>, ptr %i.qb, align 2, !tbaa !203
  %wide.load163 = load <4 x i16>, ptr %i.qc, align 2, !tbaa !203
  %i.qd = zext <4 x i16> %wide.load162 to <4 x i32>
  %i.qe = zext <4 x i16> %wide.load163 to <4 x i32>
  %i.qf = shl nuw <4 x i32> %i.qd, splat (i32 16)
  %i.qg = shl nuw <4 x i32> %i.qe, splat (i32 16)
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %index161 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  store <4 x i32> %i.qf, ptr %i.qh, align 4, !tbaa !66
  store <4 x i32> %i.qg, ptr %i.qi, align 4, !tbaa !66
  %index.next164 = add nuw i64 %index161, 8       ; 2 uses
  %i.qj = icmp eq i64 %index.next164, %n.vec159
  br i1 %i.qj, label %middle.block165, label %vector.body160, !llvm.loop !161

middle.block165:                                  ; preds = %vector.body160
  br i1 %cmp.n166, label %._crit_edge.i151.i.i.i, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader.i144.i.i.i, %middle.block165
  %indvars.iv.i148.i.i.i.ph = phi i64 [ 0, %.preheader.i144.i.i.i ], [ %n.vec159, %middle.block165 ] ; 3 uses
  br i1 %lcmp.mod251.not, label %scalar.ph156.prol.loopexit, label %scalar.ph156.prol

scalar.ph156.prol:                                ; preds = %scalar.ph156.preheader, %scalar.ph156.prol
  %indvars.iv.i148.i.i.i.prol = phi i64 [ %indvars.iv.next.i149.i.i.i.prol, %scalar.ph156.prol ], [ %indvars.iv.i148.i.i.i.ph, %scalar.ph156.preheader ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %scalar.ph156.prol ], [ 0, %scalar.ph156.preheader ]
  %i.qk = mul nuw nsw i64 %indvars.iv.i148.i.i.i.prol, %i.aw
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %i.qk
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !203
  %i.qn = zext i16 %i.qm to i32
  %i.qo = shl nuw i32 %i.qn, 16
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %indvars.iv.i148.i.i.i.prol
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !66
  %indvars.iv.next.i149.i.i.i.prol = add nuw nsw i64 %indvars.iv.i148.i.i.i.prol, 1 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %scalar.ph156.prol.loopexit, label %scalar.ph156.prol, !llvm.loop !162

scalar.ph156.prol.loopexit:                       ; preds = %scalar.ph156.prol, %scalar.ph156.preheader
  %indvars.iv.i148.i.i.i.unr = phi i64 [ %indvars.iv.i148.i.i.i.ph, %scalar.ph156.preheader ], [ %indvars.iv.next.i149.i.i.i.prol, %scalar.ph156.prol ]
  %i.qq = sub nsw i64 %indvars.iv.i148.i.i.i.ph, %wide.trip.count.i143.i.i.i
  %i.qr = icmp ugt i64 %i.qq, -4
  br i1 %i.qr, label %._crit_edge.i151.i.i.i, label %scalar.ph156

._crit_edge.i151.i.i.i:                           ; preds = %scalar.ph156.prol.loopexit, %scalar.ph156, %middle.block165
  %i.qs = add nuw nsw i32 %.01320.i145.i.i.i, 1   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.01419.i146.i.i.i, i64 2
  %i.qu = getelementptr inbounds [4 x i8], ptr %.01518.i147.i.i.i, i64 %i.av
  %exitcond23.not.i152.i.i.i = icmp eq i32 %i.qs, %i.ag
  br i1 %exitcond23.not.i152.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i144.i.i.i, !llvm.loop !163

scalar.ph156:                                     ; preds = %scalar.ph156.prol.loopexit, %scalar.ph156
  %indvars.iv.i148.i.i.i = phi i64 [ %indvars.iv.next.i149.i.i.i.3, %scalar.ph156 ], [ %indvars.iv.i148.i.i.i.unr, %scalar.ph156.prol.loopexit ] ; 6 uses
  %i.qv = mul nuw nsw i64 %indvars.iv.i148.i.i.i, %i.aw
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !203
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw i32 %i.qy, 16
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %indvars.iv.i148.i.i.i
  store i32 %i.qz, ptr %i.ra, align 4, !tbaa !66
  %indvars.iv.next.i149.i.i.i = add nuw nsw i64 %indvars.iv.i148.i.i.i, 1 ; 2 uses
  %i.rb = mul nuw nsw i64 %indvars.iv.next.i149.i.i.i, %i.aw
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %i.rb
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !203
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw i32 %i.re, 16
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %indvars.iv.next.i149.i.i.i
  store i32 %i.rf, ptr %i.rg, align 4, !tbaa !66
  %indvars.iv.next.i149.i.i.i.1 = add nuw nsw i64 %indvars.iv.i148.i.i.i, 2 ; 2 uses
  %i.rh = mul nuw nsw i64 %indvars.iv.next.i149.i.i.i.1, %i.aw
  %i.ri = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %i.rh
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !203
  %i.rk = zext i16 %i.rj to i32
  %i.rl = shl nuw i32 %i.rk, 16
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %indvars.iv.next.i149.i.i.i.1
  store i32 %i.rl, ptr %i.rm, align 4, !tbaa !66
  %indvars.iv.next.i149.i.i.i.2 = add nuw nsw i64 %indvars.iv.i148.i.i.i, 3 ; 2 uses
  %i.rn = mul nuw nsw i64 %indvars.iv.next.i149.i.i.i.2, %i.aw
  %i.ro = getelementptr inbounds nuw [2 x i8], ptr %.01419.i146.i.i.i, i64 %i.rn
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !203
  %i.rq = zext i16 %i.rp to i32
  %i.rr = shl nuw i32 %i.rq, 16
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.01518.i147.i.i.i, i64 %indvars.iv.next.i149.i.i.i.2
  store i32 %i.rr, ptr %i.rs, align 4, !tbaa !66
  %indvars.iv.next.i149.i.i.i.3 = add nuw nsw i64 %indvars.iv.i148.i.i.i, 4 ; 2 uses
  %exitcond.not.i150.i.i.i.3 = icmp eq i64 %indvars.iv.next.i149.i.i.i.3, %wide.trip.count.i143.i.i.i
  br i1 %exitcond.not.i150.i.i.i.3, label %._crit_edge.i151.i.i.i, label %scalar.ph156, !llvm.loop !164

bb.w:                                             ; preds = %bb.u
  %i.rt = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond209.i.i.i = select i1 %i.au, i1 %i.rt, i1 false
  br i1 %or.cond209.i.i.i, label %.preheader.preheader.i154.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i154.i.i.i:                  ; preds = %bb.w
  %wide.trip.count.i155.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 3 uses
  %scevgep171 = getelementptr i8, ptr %i.fd, i64 %i.cy
  %scevgep172.a = getelementptr i8, ptr %i.fd, i64 %8
  %i.ru = getelementptr i8, ptr %scevgep172.a, i64 %i.cy
  %scevgep174 = getelementptr i8, ptr %i.ru, i64 %i.dd
  %scevgep175 = getelementptr i8, ptr %i.ew, i64 %i.dh
  %scevgep176 = getelementptr i8, ptr %i.ew, i64 %i.bx
  %i.rv = getelementptr i8, ptr %scevgep176, i64 %i.dh
  %scevgep177 = getelementptr i8, ptr %i.rv, i64 %i.dd
  %min.iters.check182 = icmp ugt i32 %.sroa.speculated.i.i.i, 7
  %or.cond240 = select i1 %min.iters.check182, i1 %ident.check169.not, i1 false
  %bound0178 = icmp ult ptr %scevgep171, %scevgep177
  %bound1179 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict180 = and i1 %bound0178, %bound1179
  %n.vec184 = and i64 %wide.trip.count.i155.i.i.i, 2147483640 ; 3 uses
  %cmp.n192 = icmp eq i64 %n.vec184, %wide.trip.count.i155.i.i.i
  br label %.preheader.i156.i.i.i

.preheader.i156.i.i.i:                            ; preds = %._crit_edge.i164.i.i.i, %.preheader.preheader.i154.i.i.i
  %.01320.i157.i.i.i = phi i32 [ %i.sr, %._crit_edge.i164.i.i.i ], [ 0, %.preheader.preheader.i154.i.i.i ]
  %.01419.i158.i.i.i = phi ptr [ %i.ss, %._crit_edge.i164.i.i.i ], [ %i.fb, %.preheader.preheader.i154.i.i.i ] ; 3 uses
  %.01518.i159.i.i.i = phi ptr [ %i.st, %._crit_edge.i164.i.i.i ], [ %i.ff, %.preheader.preheader.i154.i.i.i ] ; 3 uses
  %or.cond240.not = xor i1 %or.cond240, true
  %brmerge264 = select i1 %or.cond240.not, i1 true, i1 %found.conflict180
  br i1 %brmerge264, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %.preheader.i156.i.i.i, %vector.body185
  %index186 = phi i64 [ %index.next190, %vector.body185 ], [ 0, %.preheader.i156.i.i.i ] ; 3 uses
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %.01419.i158.i.i.i, i64 %index186
  %wide.load187 = load <8 x i16>, ptr %i.rw, align 2, !tbaa !203, !alias.scope !204 ; 2 uses
  %i.rx = zext <8 x i16> %wide.load187 to <8 x i32>
  %i.ry = shl nuw <8 x i32> %i.rx, splat (i32 16)
  %i.rz = bitcast <8 x i32> %i.ry to <8 x float>
  %i.sa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.rz) ; 2 uses
  %i.sb = bitcast <8 x float> %i.sa to <8 x i32>  ; 5 uses
  %i.sc = icmp samesign ult <8 x i32> %i.sb, splat (i32 1199570944)
  %i.sd = add nuw nsw <8 x i32> %i.sb, splat (i32 134221823)
  %i.se = lshr <8 x i32> %i.sb, splat (i32 13)
  %i.sf = and <8 x i32> %i.se, splat (i32 1)
  %i.sg = add nuw nsw <8 x i32> %i.sd, %i.sf
  %i.sh = lshr <8 x i32> %i.sg, splat (i32 13)
  %i.si = icmp samesign ult <8 x i32> %i.sb, splat (i32 947912704)
  %i.sj = fadd <8 x float> %i.sa, splat (float 5.000000e-01)
  %i.sk = bitcast <8 x float> %i.sj to <8 x i32>
  %i.sl = icmp samesign ugt <8 x i32> %i.sb, splat (i32 2139095040)
  %i.sm = select <8 x i1> %i.sl, <8 x i16> splat (i16 32256), <8 x i16> splat (i16 31744)
  %predphi188.v = select <8 x i1> %i.si, <8 x i32> %i.sk, <8 x i32> %i.sh
  %predphi188 = trunc <8 x i32> %predphi188.v to <8 x i16>
  %predphi189 = select <8 x i1> %i.sc, <8 x i16> %predphi188, <8 x i16> %i.sm
  %i.sn = and <8 x i16> %wide.load187, splat (i16 -32768)
  %i.so = or <8 x i16> %predphi189, %i.sn
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr %.01518.i159.i.i.i, i64 %index186
  store <8 x i16> %i.so, ptr %i.sp, align 2, !tbaa !194, !alias.scope !205, !noalias !204
  %index.next190 = add nuw i64 %index186, 8       ; 2 uses
  %i.sq = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.sq, label %middle.block191, label %vector.body185, !llvm.loop !168

middle.block191:                                  ; preds = %vector.body185
  br i1 %cmp.n192, label %._crit_edge.i164.i.i.i, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.preheader.i156.i.i.i, %middle.block191
  %indvars.iv.i160.i.i.i.ph = phi i64 [ %n.vec184, %middle.block191 ], [ 0, %.preheader.i156.i.i.i ]
  br label %scalar.ph181

._crit_edge.i164.i.i.i:                           ; preds = %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i, %middle.block191
  %i.sr = add nuw nsw i32 %.01320.i157.i.i.i, 1   ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.01419.i158.i.i.i, i64 2
  %i.st = getelementptr inbounds [2 x i8], ptr %.01518.i159.i.i.i, i64 %i.av
  %exitcond23.not.i165.i.i.i = icmp eq i32 %i.sr, %i.ag
  br i1 %exitcond23.not.i165.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %.preheader.i156.i.i.i, !llvm.loop !169

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i
  %indvars.iv.i160.i.i.i = phi i64 [ %indvars.iv.next.i162.i.i.i, %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i ], [ %indvars.iv.i160.i.i.i.ph, %scalar.ph181.preheader ] ; 3 uses
  %i.su = mul nuw nsw i64 %indvars.iv.i160.i.i.i, %i.aw
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %.01419.i158.i.i.i, i64 %i.su
  %i.sw = load i16, ptr %i.sv, align 2, !tbaa !203 ; 2 uses
  %i.sx = zext i16 %i.sw to i32
  %i.sy = shl nuw i32 %i.sx, 16
  %i.sz = bitcast i32 %i.sy to float
  %i.ta = tail call float @llvm.fabs.f32(float %i.sz) ; 2 uses
  %i.tb = bitcast float %i.ta to i32              ; 5 uses
  %i.tc = icmp samesign ugt i32 %i.tb, 1199570943
  br i1 %i.tc, label %bb.x, label %bb.y

bb.x:                                             ; preds = %scalar.ph181
  %i.td = icmp samesign ugt i32 %i.tb, 2139095040
  %i.te = select i1 %i.td, i16 32256, i16 31744
  br label %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i

bb.y:                                             ; preds = %scalar.ph181
  %i.tf = icmp samesign ult i32 %i.tb, 947912704
  br i1 %i.tf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.tg = fadd float %i.ta, 5.000000e-01
  %i.th = bitcast float %i.tg to i32
  %i.ti = trunc i32 %i.th to i16
  br label %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.tj = add nuw nsw i32 %i.tb, 134221823
  %i.tk = lshr i32 %i.tb, 13
  %i.tl = and i32 %i.tk, 1
  %i.tm = add nuw nsw i32 %i.tj, %i.tl
  %i.tn = lshr i32 %i.tm, 13
  %i.to = trunc i32 %i.tn to i16
  br label %_ZN2cv6hfloatC2Ef.exit.i161.i.i.i

_ZN2cv6hfloatC2Ef.exit.i161.i.i.i:                ; preds = %bb.aa, %bb.z, %bb.x
  %i.tp = phi i16 [ %i.ti, %bb.z ], [ %i.to, %bb.aa ], [ %i.te, %bb.x ]
  %i.tq = and i16 %i.sw, -32768
  %i.tr = or i16 %i.tp, %i.tq
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %.01518.i159.i.i.i, i64 %indvars.iv.i160.i.i.i
  store i16 %i.tr, ptr %i.ts, align 2, !tbaa !194
  %indvars.iv.next.i162.i.i.i = add nuw nsw i64 %indvars.iv.i160.i.i.i, 1 ; 2 uses
  %exitcond.not.i163.i.i.i = icmp eq i64 %indvars.iv.next.i162.i.i.i, %wide.trip.count.i155.i.i.i
  br i1 %exitcond.not.i163.i.i.i, label %._crit_edge.i164.i.i.i, label %scalar.ph181, !llvm.loop !170

bb.ab:                                            ; preds = %bb.u
  %i.tt = icmp sgt i32 %.sroa.speculated.i.i.i, 0
  %or.cond210.i.i.i = select i1 %i.au, i1 %i.tt, i1 false
  br i1 %or.cond210.i.i.i, label %.preheader.preheader.i167.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i

.preheader.preheader.i167.i.i.i:                  ; preds = %bb.ab
  %wide.trip.count.i168.i.i.i = zext nneg i32 %.sroa.speculated.i.i.i to i64 ; 8 uses
  %scevgep197 = getelementptr i8, ptr %i.fd, i64 %i.cl
  %scevgep198.a = getelementptr i8, ptr %i.fd, i64 %i.ce
  %i.tu = getelementptr i8, ptr %scevgep198.a, i64 %i.cl
  %scevgep200 = getelementptr i8, ptr %i.tu, i64 %i.cq
  %scevgep201 = getelementptr i8, ptr %i.ew, i64 %i.cu
  %scevgep202 = getelementptr i8, ptr %i.ew, i64 %i.cf
  %i.tv = getelementptr i8, ptr %scevgep202, i64 %i.cu
  %scevgep203 = getelementptr i8, ptr %i.tv, i64 %i.cq
  %min.iters.check208 = icmp ugt i32 %.sroa.speculated.i.i.i, 3
  %or.cond241 = select i1 %min.iters.check208, i1 %ident.check195.not, i1 false
  %bound0204 = icmp ult ptr %scevgep197, %scevgep203
  %bound1205 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict206 = and i1 %bound0204, %bound1205
  %min.iters.check210 = icmp ult i32 %.sroa.speculated.i.i.i, 16
  %i.tw = and i64 %wide.trip.count.i168.i.i.i, 12
  %n.vec212 = and i64 %wide.trip.count.i168.i.i.i, 2147483632 ; 4 uses
  %cmp.n219 = icmp eq i64 %n.vec212, %wide.trip.count.i168.i.i.i
  %min.epilog.iters.check224 = icmp eq i64 %i.tw, 0
  %n.vec226 = and i64 %wide.trip.count.i168.i.i.i, 2147483644 ; 3 uses
  %cmp.n232 = icmp eq i64 %n.vec226, %wide.trip.count.i168.i.i.i
  %xtraiter = and i64 %wide.trip.count.i168.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check221

iter.check221:                                    ; preds = %._crit_edge.i177.i.i.i, %.preheader.preheader.i167.i.i.i
  %.021.i170.i.i.i = phi ptr [ %i.ul, %._crit_edge.i177.i.i.i ], [ %i.fb, %.preheader.preheader.i167.i.i.i ] ; 8 uses
  %.01520.i171.i.i.i = phi i32 [ %i.uk, %._crit_edge.i177.i.i.i ], [ 0, %.preheader.preheader.i167.i.i.i ]
  %.01619.i172.i.i.i = phi ptr [ %i.um, %._crit_edge.i177.i.i.i ], [ %i.ff, %.preheader.preheader.i167.i.i.i ] ; 8 uses
  %or.cond241.not = xor i1 %or.cond241, true
  %brmerge265 = select i1 %or.cond241.not, i1 true, i1 %found.conflict206
  br i1 %brmerge265, label %vec.epilog.scalar.ph222.preheader, label %vector.main.loop.iter.check209

vector.main.loop.iter.check209:                   ; preds = %iter.check221
  br i1 %min.iters.check210, label %vec.epilog.ph225, label %vector.body213

vector.body213:                                   ; preds = %vector.main.loop.iter.check209, %vector.body213
  %index214 = phi i64 [ %index.next217, %vector.body213 ], [ 0, %vector.main.loop.iter.check209 ] ; 3 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %index214 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %wide.load215 = load <8 x i16>, ptr %i.tx, align 2, !tbaa !194, !alias.scope !206
  %wide.load216 = load <8 x i16>, ptr %i.ty, align 2, !tbaa !194, !alias.scope !206
  %i.tz = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %index214 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store <8 x i16> %wide.load215, ptr %i.tz, align 2, !tbaa !194, !alias.scope !207, !noalias !206
  store <8 x i16> %wide.load216, ptr %i.ua, align 2, !tbaa !194, !alias.scope !207, !noalias !206
  %index.next217 = add nuw i64 %index214, 16      ; 2 uses
  %i.ub = icmp eq i64 %index.next217, %n.vec212
  br i1 %i.ub, label %middle.block218, label %vector.body213, !llvm.loop !174

middle.block218:                                  ; preds = %vector.body213
  br i1 %cmp.n219, label %._crit_edge.i177.i.i.i, label %vec.epilog.iter.check223

vec.epilog.iter.check223:                         ; preds = %middle.block218
  br i1 %min.epilog.iters.check224, label %vec.epilog.scalar.ph222.preheader, label %vec.epilog.ph225, !prof !199

vec.epilog.ph225:                                 ; preds = %vector.main.loop.iter.check209, %vec.epilog.iter.check223
  %vec.epilog.resume.val220 = phi i64 [ %n.vec212, %vec.epilog.iter.check223 ], [ 0, %vector.main.loop.iter.check209 ]
  br label %vec.epilog.vector.body227

vec.epilog.vector.body227:                        ; preds = %vec.epilog.vector.body227, %vec.epilog.ph225
  %index228 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph225 ], [ %index.next230, %vec.epilog.vector.body227 ] ; 3 uses
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %index228
  %wide.load229 = load <4 x i16>, ptr %i.uc, align 2, !tbaa !194, !alias.scope !206
  %i.ud = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %index228
  store <4 x i16> %wide.load229, ptr %i.ud, align 2, !tbaa !194, !alias.scope !207, !noalias !206
  %index.next230 = add nuw i64 %index228, 4       ; 2 uses
  %i.ue = icmp eq i64 %index.next230, %n.vec226
  br i1 %i.ue, label %vec.epilog.middle.block231, label %vec.epilog.vector.body227, !llvm.loop !175

vec.epilog.middle.block231:                       ; preds = %vec.epilog.vector.body227
  br i1 %cmp.n232, label %._crit_edge.i177.i.i.i, label %vec.epilog.scalar.ph222.preheader

vec.epilog.scalar.ph222.preheader:                ; preds = %iter.check221, %vec.epilog.iter.check223, %vec.epilog.middle.block231
  %indvars.iv.i173.i.i.i.ph = phi i64 [ 0, %iter.check221 ], [ %n.vec226, %vec.epilog.middle.block231 ], [ %n.vec212, %vec.epilog.iter.check223 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph222.prol.loopexit, label %vec.epilog.scalar.ph222.prol

vec.epilog.scalar.ph222.prol:                     ; preds = %vec.epilog.scalar.ph222.preheader, %vec.epilog.scalar.ph222.prol
  %indvars.iv.i173.i.i.i.prol = phi i64 [ %indvars.iv.next.i175.i.i.i.prol, %vec.epilog.scalar.ph222.prol ], [ %indvars.iv.i173.i.i.i.ph, %vec.epilog.scalar.ph222.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph222.prol ], [ 0, %vec.epilog.scalar.ph222.preheader ]
  %i.uf = mul nuw nsw i64 %indvars.iv.i173.i.i.i.prol, %i.aw
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %i.uf
  %.sroa.0.0.copyload.i174.i.i.i.prol = load i16, ptr %i.ug, align 2, !tbaa !194
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %indvars.iv.i173.i.i.i.prol
  store i16 %.sroa.0.0.copyload.i174.i.i.i.prol, ptr %i.uh, align 2, !tbaa !194
  %indvars.iv.next.i175.i.i.i.prol = add nuw nsw i64 %indvars.iv.i173.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph222.prol.loopexit, label %vec.epilog.scalar.ph222.prol, !llvm.loop !176

vec.epilog.scalar.ph222.prol.loopexit:            ; preds = %vec.epilog.scalar.ph222.prol, %vec.epilog.scalar.ph222.preheader
  %indvars.iv.i173.i.i.i.unr = phi i64 [ %indvars.iv.i173.i.i.i.ph, %vec.epilog.scalar.ph222.preheader ], [ %indvars.iv.next.i175.i.i.i.prol, %vec.epilog.scalar.ph222.prol ]
  %i.ui = sub nsw i64 %indvars.iv.i173.i.i.i.ph, %wide.trip.count.i168.i.i.i
  %i.uj = icmp ugt i64 %i.ui, -4
  br i1 %i.uj, label %._crit_edge.i177.i.i.i, label %vec.epilog.scalar.ph222

._crit_edge.i177.i.i.i:                           ; preds = %vec.epilog.scalar.ph222.prol.loopexit, %vec.epilog.scalar.ph222, %vec.epilog.middle.block231, %middle.block218
  %i.uk = add nuw nsw i32 %.01520.i171.i.i.i, 1   ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.021.i170.i.i.i, i64 2
  %i.um = getelementptr inbounds [2 x i8], ptr %.01619.i172.i.i.i, i64 %i.av
  %exitcond24.not.i178.i.i.i = icmp eq i32 %i.uk, %i.ag
  br i1 %exitcond24.not.i178.i.i.i, label %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, label %iter.check221, !llvm.loop !177

vec.epilog.scalar.ph222:                          ; preds = %vec.epilog.scalar.ph222.prol.loopexit, %vec.epilog.scalar.ph222
  %indvars.iv.i173.i.i.i = phi i64 [ %indvars.iv.next.i175.i.i.i.3, %vec.epilog.scalar.ph222 ], [ %indvars.iv.i173.i.i.i.unr, %vec.epilog.scalar.ph222.prol.loopexit ] ; 6 uses
  %i.un = mul nuw nsw i64 %indvars.iv.i173.i.i.i, %i.aw
  %i.uo = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %i.un
  %.sroa.0.0.copyload.i174.i.i.i = load i16, ptr %i.uo, align 2, !tbaa !194
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %indvars.iv.i173.i.i.i
  store i16 %.sroa.0.0.copyload.i174.i.i.i, ptr %i.up, align 2, !tbaa !194
  %indvars.iv.next.i175.i.i.i = add nuw nsw i64 %indvars.iv.i173.i.i.i, 1 ; 2 uses
  %i.uq = mul nuw nsw i64 %indvars.iv.next.i175.i.i.i, %i.aw
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %i.uq
  %.sroa.0.0.copyload.i174.i.i.i.1 = load i16, ptr %i.ur, align 2, !tbaa !194
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %indvars.iv.next.i175.i.i.i
  store i16 %.sroa.0.0.copyload.i174.i.i.i.1, ptr %i.us, align 2, !tbaa !194
  %indvars.iv.next.i175.i.i.i.1 = add nuw nsw i64 %indvars.iv.i173.i.i.i, 2 ; 2 uses
  %i.ut = mul nuw nsw i64 %indvars.iv.next.i175.i.i.i.1, %i.aw
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %i.ut
  %.sroa.0.0.copyload.i174.i.i.i.2 = load i16, ptr %i.uu, align 2, !tbaa !194
  %i.uv = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %indvars.iv.next.i175.i.i.i.1
  store i16 %.sroa.0.0.copyload.i174.i.i.i.2, ptr %i.uv, align 2, !tbaa !194
  %indvars.iv.next.i175.i.i.i.2 = add nuw nsw i64 %indvars.iv.i173.i.i.i, 3 ; 2 uses
  %i.uw = mul nuw nsw i64 %indvars.iv.next.i175.i.i.i.2, %i.aw
  %i.ux = getelementptr inbounds nuw [2 x i8], ptr %.021.i170.i.i.i, i64 %i.uw
  %.sroa.0.0.copyload.i174.i.i.i.3 = load i16, ptr %i.ux, align 2, !tbaa !194
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %.01619.i172.i.i.i, i64 %indvars.iv.next.i175.i.i.i.2
  store i16 %.sroa.0.0.copyload.i174.i.i.i.3, ptr %i.uy, align 2, !tbaa !194
  %indvars.iv.next.i175.i.i.i.3 = add nuw nsw i64 %indvars.iv.i173.i.i.i, 4 ; 2 uses
  %exitcond.not.i176.i.i.i.3 = icmp eq i64 %indvars.iv.next.i175.i.i.i.3, %wide.trip.count.i168.i.i.i
  br i1 %exitcond.not.i176.i.i.i.3, label %._crit_edge.i177.i.i.i, label %vec.epilog.scalar.ph222, !llvm.loop !178

_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i: ; preds = %._crit_edge.i177.i.i.i, %._crit_edge.i164.i.i.i, %._crit_edge.i151.i.i.i, %._crit_edge.i139.i.i.i, %._crit_edge.i126.i.i.i, %._crit_edge.i117.i.i.i, %._crit_edge.i105.i.i.i, %._crit_edge.i93.i.i.i, %._crit_edge.i.i.i.i, %bb.ab, %bb.w, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.uz = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.va = sext i32 %i.uz to i64
  %i.vb = icmp slt i64 %indvars.iv.next.i.i.i, %i.va
  %indvar.next = add i32 %indvar, 1
  br i1 %i.vb, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS3_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit", !llvm.loop !179

"_ZSt10__invoke_rIvRZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS3_iiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit": ; preds = %_ZN2cv3dnn14dnn5_v20260605L27repackDepthwiseWeightsBlockIffEEvPKT_PT0_iii.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS0_3MatERS7_iiE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #2 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS_3MatERS2_iiE3$_0", ptr %0, align 8, !tbaa !68
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !9
  store ptr %.val, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %.val6, i64 56, i1 false), !tbaa.struct !208
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !9  ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 56) #18
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14dnn5_v2026060526repackDepthwiseConvWeightsERKNS1_3MatERS4_iiE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
end_hunk_1
