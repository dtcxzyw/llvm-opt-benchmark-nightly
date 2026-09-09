Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tsdf_functions?download=true
inline.NumInlined: 1096
inline.NumDeleted: 455
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 31
begin_hunk_0_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !67
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !68 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25, !inline_history !68
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #21, !inline_history !68
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #22
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !238
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IfEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !31
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 5
  store i32 %i.d, ptr %0, align 8, !tbaa !31
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863675, ptr %3, align 8, !tbaa !29
  store ptr %0, ptr %i.o, align 8, !tbaa !30
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef i32 @_ZN2cv2LUEPfmiS0_mi(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_23integrateTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEESB_RKNS0_11_InputArrayESE_SE_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #16 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !61    ; 12 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !41   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph120.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv23integrateTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEES7_RKNS0_11_InputArrayESA_SA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph120.i.i.i:                                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !243, !nonnull !110, !align !111 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !112
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph120.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv23integrateTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEES7_RKNS0_11_InputArrayESA_SA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

.lr.ph120.split.i.i.i:                            ; preds = %.lr.ph120.i.i.i, %._crit_edge117.i.i.i
  %i.t = phi i32 [ %i.ah, %._crit_edge117.i.i.i ], [ %i.c, %.lr.ph120.i.i.i ]
  %i.u = phi ptr [ %i.ai, %._crit_edge117.i.i.i ], [ %i.p, %.lr.ph120.i.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.aj, %._crit_edge117.i.i.i ], [ %i.p, %.lr.ph120.i.i.i ] ; 3 uses
  %.0118.i.i.i = phi i32 [ %i.ak, %._crit_edge117.i.i.i ], [ %i.a, %.lr.ph120.i.i.i ] ; 3 uses
  %i.w = load ptr, ptr %.val, align 8, !tbaa !244, !nonnull !110, !align !113
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !245, !nonnull !110, !align !111
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = mul nsw i32 %i.z, %.0118.i.i.i
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !112
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph116.i.i.i, label %._crit_edge117.i.i.i

.lr.ph116.i.i.i:                                  ; preds = %.lr.ph120.split.i.i.i
  %i.ag = sitofp i32 %.0118.i.i.i to float
  br label %bb.b

._crit_edge117.loopexit.i.i.i:                    ; preds = %._crit_edge.i.i.i
  %.pre123.i.i.i = load i32, ptr %i.b, align 4, !tbaa !41
  br label %._crit_edge117.i.i.i

._crit_edge117.i.i.i:                             ; preds = %._crit_edge117.loopexit.i.i.i, %.lr.ph120.split.i.i.i
  %i.ah = phi i32 [ %.pre123.i.i.i, %._crit_edge117.loopexit.i.i.i ], [ %i.t, %.lr.ph120.split.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.cn, %._crit_edge117.loopexit.i.i.i ], [ %i.u, %.lr.ph120.split.i.i.i ]
  %i.aj = phi ptr [ %i.cn, %._crit_edge117.loopexit.i.i.i ], [ %i.v, %.lr.ph120.split.i.i.i ]
  %i.ak = add nsw i32 %.0118.i.i.i, 1             ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.ah
  br i1 %i.al, label %.lr.ph120.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv23integrateTsdfVolumeUnitERKNS0_14VolumeSettingsERKNS0_4MatxIfLi4ELi4EEES7_RKNS0_11_InputArrayESA_SA_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", !llvm.loop !239

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph116.i.i.i
  %i.am = phi ptr [ %i.u, %.lr.ph116.i.i.i ], [ %i.cn, %._crit_edge.i.i.i ]
  %i.an = phi ptr [ %i.v, %.lr.ph116.i.i.i ], [ %i.cn, %._crit_edge.i.i.i ] ; 3 uses
  %.055114.i.i.i = phi i32 [ 0, %.lr.ph116.i.i.i ], [ %i.co, %._crit_edge.i.i.i ] ; 3 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !245, !nonnull !110, !align !111
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !34
  %i.ar = mul nsw i32 %i.aq, %.055114.i.i.i
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.as
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !246, !nonnull !110, !align !111 ; 5 uses
  %i.av = uitofp nneg i32 %.055114.i.i.i to float
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !247, !nonnull !110, !align !111
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12 ; 5 uses
  %2 = fmul float %i.ax, %i.av                    ; 2 uses
  %3 = fmul float %i.ax, %i.ag                    ; 2 uses
  %4 = fmul float %i.ax, 0.000000e+00             ; 2 uses
  %5 = load <8 x float>, ptr %i.au, align 4, !tbaa !12 ; 4 uses
  %6 = insertelement <2 x float> poison, float %2, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <8 x float> %5, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.az = fmul <2 x float> %7, %i.ay
  %i.ba = shufflevector <8 x float> %5, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %8 = insertelement <2 x float> poison, float %3, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %9, <2 x float> %i.az)
  %i.bc = shufflevector <8 x float> %5, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %10 = insertelement <2 x float> poison, float %4, i64 0
  %i.bd = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.bb)
  %i.bf = shufflevector <8 x float> %5, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.bg = fadd <2 x float> %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fmul float %2, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bi, float %3, float %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %4, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fadd float %i.br, %i.bp                 ; 3 uses
  %i.bt = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %i.bu, %i.bc
  %i.bw = fmul float %i.ax, %i.bo                 ; 4 uses
  %i.bx = tail call noundef float @llvm.fabs.f32(float %i.bw)
  %i.by = fpext float %i.bx to double
  %i.bz = fcmp ogt double %i.by, 1.000000e-05
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ca = fneg float %i.bs
  %i.cb = fdiv float %i.ca, %i.bw
  %i.cc = fptosi float %i.cb to i32
  %.fr.i.i.i = freeze i32 %i.cc                   ; 2 uses
  %i.cd = fcmp ogt float %i.bw, 0.000000e+00
  br i1 %i.cd, label %bb.f, label %.thread.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ce = fcmp ogt float %i.bs, 0.000000e+00
  br i1 %i.ce, label %bb.e, label %.thread.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !36
  br label %.thread.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !36
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %.fr.i.i.i, i32 0)
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.0103108.i.i.i = phi i32 [ %.fr.i.i.i, %bb.c ], [ %i.ci, %bb.f ], [ 0, %bb.d ], [ %i.cg, %bb.e ]
  %i.cj = phi i32 [ 0, %bb.c ], [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !36
  %.sroa.speculated74.i.i.i = tail call i32 @llvm.smin.i32(i32 %.0103108.i.i.i, i32 %i.cl) ; 2 uses
  %i.cm = icmp slt i32 %i.cj, %.sroa.speculated74.i.i.i
  br i1 %i.cm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.o
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !243
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.thread.i.i.i
  %i.cn = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.am, %.thread.i.i.i ] ; 5 uses
  %i.co = add nuw nsw i32 %.055114.i.i.i, 1       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !112
  %i.cr = icmp slt i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.b, label %._crit_edge117.loopexit.i.i.i, !llvm.loop !240

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i.i, %bb.o
  %.056113.i.i.i = phi i32 [ %i.ic, %bb.o ], [ %i.cj, %.thread.i.i.i ] ; 2 uses
  %.sroa.8.0112.i.i.i = phi float [ %i.ct, %bb.o ], [ %i.bs, %.thread.i.i.i ]
  %.sroa.092.0111.i.i.i = phi <2 x float> [ %i.cs, %bb.o ], [ %i.bg, %.thread.i.i.i ]
  %i.cs = fadd <2 x float> %i.bv, %.sroa.092.0111.i.i.i ; 2 uses
  %i.ct = fadd float %i.bw, %.sroa.8.0112.i.i.i   ; 4 uses
  %i.cu = fcmp ugt float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.g, label %bb.o

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !248, !nonnull !110, !align !111 ; 2 uses
  %i.cw = fdiv float 1.000000e+00, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cz, %i.cs
  %i.db = load <2 x float>, ptr %i.cv, align 4, !tbaa !12
  %i.dc = load <2 x float>, ptr %i.cx, align 4, !tbaa !12
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.da, <2 x float> %i.dc) ; 6 uses
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !249, !nonnull !110, !align !113 ; 6 uses
  %i.df = extractelement <2 x float> %i.dd, i64 0 ; 3 uses
  %i.dg = fcmp olt float %i.df, 0.000000e+00
  br i1 %i.dg, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !115
  %i.dj = add nsw i32 %i.di, -1
  %i.dk = sitofp i32 %i.dj to float
  %i.dl = fcmp oge float %i.df, %i.dk
  %i.dm = extractelement <2 x float> %i.dd, i64 1 ; 2 uses
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %or.cond.i.i.i.i = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond.i.i.i.i, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !75
  %i.dq = add nsw i32 %i.dp, -1
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fcmp ult float %i.dm, %i.dr
  br i1 %i.ds, label %bb.j, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dt = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dd)
  %i.du = fptosi <2 x float> %i.dt to <2 x i32>   ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !23 ; 2 uses
  %i.dx = extractelement <2 x i32> %i.du, i64 1   ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !84 ; 2 uses
  %i.eb = mul i64 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb ; 2 uses
  %i.ed = add nsw i32 %i.dx, 1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul i64 %i.ea, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ef ; 2 uses
  %i.eh = extractelement <2 x i32> %i.du, i64 0   ; 2 uses
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ei
  %i.ek = add nsw i32 %i.eh, 1
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ei
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.el
  %i.ep = load <2 x float>, ptr %i.ej, align 4, !tbaa !12 ; 3 uses
  %i.eq = load float, ptr %i.em, align 4, !tbaa !12
  %i.er = load <2 x float>, ptr %i.en, align 4, !tbaa !12 ; 3 uses
  %i.es = load float, ptr %i.eo, align 4, !tbaa !12
  %i.et = extractelement <2 x float> %i.ep, i64 0
  %i.eu = fcmp ogt float %i.et, 0.000000e+00
  %i.ev = fcmp ogt float %i.eq, 0.000000e+00
  %i.ew = extractelement <2 x float> %i.er, i64 0
  %i.ex = fcmp ogt float %i.ew, 0.000000e+00
  %i.ey = fcmp ogt float %i.es, 0.000000e+00
  %or.cond4.i.i.i.i = select i1 %i.eu, i1 %i.ev, i1 false
  %or.cond6.i.i.i.i = select i1 %or.cond4.i.i.i.i, i1 %i.ex, i1 false
  %or.cond8.i.i.i.i = select i1 %or.cond6.i.i.i.i, i1 %i.ey, i1 false
  br i1 %or.cond8.i.i.i.i, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.i.i.i, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i

_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.i.i.i: ; preds = %bb.j
  %i.ez = sitofp <2 x i32> %i.du to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.dd, %i.ez
  %foldExtExtBinop20 = fsub <2 x float> %i.dd, %i.ez
  %i.fa = extractelement <2 x float> %foldExtExtBinop20, i64 1
  %i.fb = shufflevector <2 x float> %i.er, <2 x float> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.fc = shufflevector <2 x float> %i.er, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fd = fsub <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.fd, <2 x float> %i.fc) ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fi = fsub float %i.fg, %i.fh
  %i.fj = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fi, float %i.fh) ; 2 uses
  %i.fk = fcmp oeq float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.o, label %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i

_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i: ; preds = %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.i.i.i, %bb.j, %bb.i, %bb.h, %bb.g
  %.1.i110.i.i.i = phi float [ %i.fj, %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.i.i.i ], [ +qnan, %bb.g ], [ +qnan, %bb.i ], [ +qnan, %bb.h ], [ +qnan, %bb.j ]
  %i.fl = fptosi float %i.df to i32               ; 3 uses
  %i.fm = extractelement <2 x float> %i.dd, i64 1
  %i.fn = fptosi float %i.fm to i32               ; 3 uses
  %i.fo = icmp sgt i32 %i.fl, -1
  br i1 %i.fo, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2cv13bilinearDepthERKNS_4Mat_IfEENS_6Point_IfEE.exit.thread.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !115
  %i.fr = icmp sgt i32 %i.fq, %i.fl
  %i.fs = icmp sgt i32 %i.fn, -1
  %or.cond.i.i.i = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ft = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !75
  %i.fv = icmp sgt i32 %i.fu, %i.fn
  br i1 %i.fv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !250, !nonnull !110, !align !113 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !22
  %i.fz = icmp slt i32 %i.fy, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !23
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = zext nneg i32 %i.fn to i64
  %i.gf = mul i64 %i.gd, %i.ge
  %.sink.idx.i.i.i.i = select i1 %i.fz, i64 0, i64 %i.gf
  %.sink.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sink.idx.i.i.i.i
  %i.gg = zext nneg i32 %i.fl to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !12
  %i.gj = load ptr, ptr %i.l, align 8, !tbaa !251, !nonnull !110, !align !111
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !12
  %i.gl = fneg float %i.ct
  %i.gm = tail call float @llvm.fmuladd.f32(float %.1.i110.i.i.i, float %i.gk, float %i.gl)
  %i.gn = fmul float %i.gi, %i.gm                 ; 2 uses
  %i.go = load ptr, ptr %i.m, align 8, !tbaa !252, !nonnull !110, !align !111
  %i.gp = load float, ptr %i.go, align 4, !tbaa !12
  %i.gq = fneg float %i.gp
end_hunk_0
