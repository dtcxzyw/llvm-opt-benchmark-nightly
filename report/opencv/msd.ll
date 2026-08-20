inline.NumInlined: 804
inline.NumDeleted: 382
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
@_ZTIN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE, ptr @_ZTIN2cv16ParallelLoopBodyE }, comdat, align 8
@_ZTSN2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE = linkonce_odr hidden constant [63 x i8] c"N2cv11xfeatures2d16MSDDetector_Impl24MSDSelfDissimilarityScanE\00", comdat, align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv11xfeatures2d16MSDDetector_Impl12rescalePointEiiiRSt6vectorIS2_IfSaIfEESaIS4_EERNS_6Point_IfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Vec", align 4           ; 5 uses
  %7 = alloca %"class.cv::Matx.10", align 4       ; 7 uses
  %8 = alloca %"class.cv::Vec", align 8           ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw [208 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.g = load ptr, ptr %4, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.b
  %i.i = mul nsw i32 %i.f, %2
  %i.j = add nsw i32 %i.i, %1
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !26 ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 -4
  %i.q = load float, ptr %i.p, align 4, !tbaa !26 ; 2 uses
  %i.r = fsub float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01
  %i.t = add nsw i32 %2, 1
  %i.u = mul nsw i32 %i.f, %i.t
  %i.v = add nsw i32 %i.u, %1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !26 ; 2 uses
  %i.z = add nsw i32 %2, -1
  %i.aa = mul nsw i32 %i.f, %i.z
  %i.ab = add nsw i32 %i.aa, %1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [4 x i8], ptr %i.k, i64 %i.ac ; 3 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = fsub float %i.y, %i.ae
  %i.ag = fmul float %i.af, 5.000000e-01
  store float %i.s, ptr %6, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !26
  %i.ai = load float, ptr %i.m, align 4, !tbaa !26
  %i.aj = fmul float %i.ai, 2.000000e+00          ; 2 uses
  %i.ak = fadd float %i.o, %i.q
  %i.al = fsub float %i.ak, %i.aj
  %i.am = fadd float %i.y, %i.ae
  %i.an = fsub float %i.am, %i.aj
  %i.ao = getelementptr i8, ptr %i.x, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !26
  %i.aq = getelementptr i8, ptr %i.x, i64 -4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !26
  %i.as = fsub float %i.ap, %i.ar
  %i.at = getelementptr i8, ptr %i.ad, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !26
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr i8, ptr %i.ad, i64 -4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !26
  %i.ay = fadd float %i.av, %i.ax
  %i.az = fmul float %i.ay, 2.500000e-01          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store float %i.al, ptr %7, align 4, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.az, ptr %i.bb, align 4, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.an, ptr %i.bc, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i64 0, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %7, ptr %i.be, align 8, !tbaa !31
  store i64 8589934594, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833531, ptr %10, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %6, ptr %i.bg, align 8, !tbaa !31
  store i64 8589934593, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056315, ptr %11, align 8, !tbaa !28
  store ptr %8, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 8589934593, ptr %i.bi, align 8
  %i.bj = call noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bk = load <2 x float>, ptr %8, align 8, !tbaa !26 ; 3 uses
  %i.bl = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bk)
  %i.bm = fcmp ogt <2 x float> %i.bl, splat (float 5.000000e+00) ; 2 uses
  %i.bn = extractelement <2 x i1> %i.bm, i64 0
  %i.bo = extractelement <2 x i1> %i.bm, i64 1
  %or.cond111 = select i1 %i.bo, i1 true, i1 %i.bn
  br i1 %or.cond111, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bp = icmp eq i32 %3, 0
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.br = insertelement <2 x i32> %i.bq, i32 %2, i64 1
  %i.bs = sitofp <2 x i32> %i.br to <2 x float>
  %i.bt = fsub <2 x float> %i.bs, %i.bk
  %i.bu = fadd <2 x float> %i.bt, splat (float 5.000000e-01)
  store <2 x float> %i.bu, ptr %5, align 4, !tbaa !26
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !32
  %i.bx = sitofp i32 %3 to float
  %i.by = call noundef float @powf(float noundef %i.bw, float noundef %i.bx) #21
  %i.bz = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ca = insertelement <2 x i32> %i.bz, i32 %2, i64 1
  %i.cb = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cd = fsub <2 x float> %i.cb, %i.bk
  %i.ce = fadd <2 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg
  %i.ci = fadd <2 x float> %i.ch, splat (float -5.000000e-01) ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0 ; 3 uses
  store float %i.cj, ptr %5, align 4, !tbaa !41
  %i.ck = extractelement <2 x float> %i.ci, i64 1 ; 3 uses
  store float %i.ck, ptr %i.cc, align 4, !tbaa !43
  %i.cl = fcmp olt float %i.cj, 0.000000e+00
  br i1 %i.cl, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fcmp oge float %i.cj, %i.cp
  %i.cr = fcmp olt float %i.ck, 0.000000e+00
  %or.cond = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !44
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fcmp ult float %i.ck, %i.cu
  br i1 %i.cv, label %.critedge, label %bb.g

.critedge:                                        ; preds = %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %.critedge, %bb.f, %bb.e, %bb.d, %bb.a
  %.1104 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ true, %.critedge ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i1 %.1104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45
  %.fr689 = freeze i32 %i.b                       ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %.fr690 = freeze i32 %i.f                       ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = shl nsw i32 %.fr689, 1
  %i.l = or disjoint i32 %i.k, 1                  ; 2 uses
  %i.m = add nsw i32 %i.d, %.fr689                ; 11 uses
  %i.n = mul nsw i32 %i.l, %i.l
  %i.o = mul nsw i32 %i.n, %.fr690
  %i.p = sext i32 %.fr690 to i64                  ; 3 uses
  %i.q = icmp slt i32 %.fr690, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %.fr690, 0          ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc423

.noexc423:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !48
  %i.u = getelementptr i8, ptr %i.s, i64 4        ; 3 uses
  %i.v = add nsw i64 %i.p, -1                     ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc423
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc423, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.45.0 = phi ptr [ %i.t, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.t, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0469.0 = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 32 uses
  %.0.i.i.i.i.i = phi ptr [ %i.x, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.u, %.noexc423 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.y = shl i32 %i.d, 1                          ; 4 uses
  %i.z = or disjoint i32 %i.y, 1                  ; 2 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.b unwind label %bb.c       ; 16 uses

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ae = sext i32 %i.h to i64                    ; 2 uses
  %i.af = icmp slt i32 %i.h, 0
  %i.ag = shl nsw i64 %i.ae, 3
  %i.ah = select i1 %i.af, i64 -1, i64 %i.ag
  %i.ai = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ah) #23
          to label %.preheader520 unwind label %bb.d ; 9 uses

.preheader520:                                    ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.h, 0                    ; 2 uses
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader519

.lr.ph.preheader:                                 ; preds = %.preheader520
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.preheader519:                                    ; preds = %bb.e, %.preheader520
  br i1 %.not.i.i.i.i, label %.preheader518, label %.lr.ph528.preheader

.lr.ph528.preheader:                              ; preds = %.preheader519
  %wide.trip.count716 = zext nneg i32 %.fr690 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr690, 8
  br i1 %min.iters.check, label %.lr.ph528.preheader963, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph528.preheader
  %n.vec = and i64 %wide.trip.count716, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ak, align 4, !tbaa !48
  store <4 x i32> splat (i32 2147483647), ptr %i.al, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count716
  br i1 %cmp.n, label %.preheader518, label %.lr.ph528.preheader963

.lr.ph528.preheader963:                           ; preds = %.lr.ph528.preheader, %middle.block
  %indvars.iv713.ph = phi i64 [ 0, %.lr.ph528.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph528

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader519, label %.lr.ph, !llvm.loop !55

bb.f:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.preheader518:                                    ; preds = %.lr.ph528, %middle.block, %.preheader519
  %i.as = add nsw i32 %i.m, %i.d
  %.not550 = icmp sgt i32 %.fr689, %i.as          ; 2 uses
  br i1 %.not550, label %._crit_edge555.split, label %.lr.ph554

.lr.ph554:                                        ; preds = %.preheader518
  %i.at = sub i32 %2, %i.d                        ; 6 uses
  %i.au = add i32 %i.d, %2                        ; 6 uses
  %.not412543 = icmp slt i32 %i.d, 0
  %i.av = sub nsw i32 0, %.fr689
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = zext nneg i32 %.fr690 to i64
  %i.ba = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4     ; 10 uses
  %i.bc = add nsw i32 %.fr690, -2                 ; 3 uses
  %i.bd = icmp sgt i32 %.fr690, 1                 ; 2 uses
  br i1 %.not412543, label %._crit_edge555.split, label %.lr.ph554.split

.lr.ph554.split:                                  ; preds = %.lr.ph554
  %.not413534 = icmp slt i32 %.fr689, 0
  br i1 %.not413534, label %.lr.ph554.split.split.us, label %.lr.ph547.preheader

.lr.ph547.preheader:                              ; preds = %.lr.ph554.split
  %i.be = sext i32 %i.av to i64                   ; 2 uses
  %5 = zext nneg i32 %i.m to i64                  ; 2 uses
  %i.bf = add nuw i32 %.fr689, 1                  ; 2 uses
  %i.bg = sext i32 %2 to i64                      ; 2 uses
  %i.bh = sext i32 %i.at to i64
  %i.bi = sext i32 %i.au to i64
  %i.bj = zext nneg i32 %.fr689 to i64
  %i.bk = add i32 %.fr689, %i.y
  %i.bl = add i32 %i.bk, 1
  br label %.lr.ph547

.lr.ph554.split.split.us:                         ; preds = %.lr.ph554.split
  %smax742 = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.at)
  %i.bm = add i32 %i.d, %smax742
  %i.bn = sub i32 %i.bm, %2
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 4                ; 2 uses
  %i.br = add i32 %.fr689, %i.y                   ; 2 uses
  br i1 %i.bd, label %.lr.ph547.us.us, label %.lr.ph547.us

.lr.ph547.us.us:                                  ; preds = %.lr.ph554.split.split.us, %._crit_edge548.split.us.split.us.us.us
  %.0379552.us.us = phi i32 [ %i.cw, %._crit_edge548.split.us.split.us.us.us ], [ %.fr689, %.lr.ph554.split.split.us ] ; 3 uses
  %.0381551.us.us = phi i32 [ %.us-phi571, %._crit_edge548.split.us.split.us.us.us ], [ 0, %.lr.ph554.split.split.us ] ; 2 uses
  %i.bs = icmp eq i32 %.0379552.us.us, %i.m
  %.fr572 = freeze i1 %i.bs
  br i1 %.fr572, label %.lr.ph547.split.us.split.us.us.us.split, label %.lr.ph547.split.us.split.us.us.us.split.us.preheader

.lr.ph547.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph547.us.us
  %i.bt = sext i32 %.0381551.us.us to i64         ; 2 uses
  %i.bu = shl nsw i64 %i.bt, 2
  %scevgep741 = getelementptr i8, ptr %i.ad, i64 %i.bu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep741, i8 0, i64 %i.bq, i1 false), !tbaa !48
  br label %.lr.ph547.split.us.split.us.us.us.split.us

.lr.ph547.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph547.split.us.split.us.us.us.split.us.preheader, %.loopexit517.us.us.us.us.us
  %indvars.iv743 = phi i64 [ %i.bt, %.lr.ph547.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next744, %.loopexit517.us.us.us.us.us ]
  %.0378545.us.us.us.us.us = phi i32 [ %i.at, %.lr.ph547.split.us.split.us.us.us.split.us.preheader ], [ %i.cf, %.loopexit517.us.us.us.us.us ] ; 2 uses
  %i.bv = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph541.us.us.us.us.us, label %.loopexit517.us.us.us.us.us

.lr.ph541.us.us.us.us.us:                         ; preds = %.lr.ph547.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.bb, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph541.us.us.us.us.us
  %.0375539.us.us.us.us.us = phi i32 [ %i.bc, %.lr.ph541.us.us.us.us.us ], [ %i.cd, %bb.h ] ; 3 uses
  %i.bx = zext nneg i32 %.0375539.us.us.us.us.us to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 2 uses
  %i.cc = icmp sgt i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.h, label %.loopexit517.us.us.us.us.us

bb.h:                                             ; preds = %bb.g
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !48
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !48
  %i.cd = add nsw i32 %.0375539.us.us.us.us.us, -1
  %i.ce = icmp sgt i32 %.0375539.us.us.us.us.us, 0
  br i1 %i.ce, label %bb.g, label %.loopexit517.us.us.us.us.us, !llvm.loop !56

.loopexit517.us.us.us.us.us:                      ; preds = %bb.h, %bb.g, %.lr.ph547.split.us.split.us.us.us.split.us
  %indvars.iv.next744 = add nsw i64 %indvars.iv743, 1 ; 2 uses
  %i.cf = add nsw i32 %.0378545.us.us.us.us.us, 1
  %.not412.us.us.us.us.us.not = icmp slt i32 %.0378545.us.us.us.us.us, %i.au
  br i1 %.not412.us.us.us.us.us.not, label %.lr.ph547.split.us.split.us.us.us.split.us, label %._crit_edge548.split.us.split.us.us.us.loopexit700, !llvm.loop !57

.lr.ph547.split.us.split.us.us.us.split:          ; preds = %.lr.ph547.us.us, %bb.l
  %.0378545.us.us.us.us = phi i32 [ %i.cu, %bb.l ], [ %i.at, %.lr.ph547.us.us ] ; 3 uses
  %.1544.us.us.us.us = phi i32 [ %.2.us.us.us.us, %bb.l ], [ %.0381551.us.us, %.lr.ph547.us.us ] ; 3 uses
  %i.cg = icmp eq i32 %.0378545.us.us.us.us, %2
  br i1 %i.cg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph547.split.us.split.us.us.us.split
  %i.ch = sext i32 %.1544.us.us.us.us to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ch
  store i32 0, ptr %i.ci, align 4, !tbaa !48
  %i.cj = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph541.us.us.us.us, label %.loopexit517.us.us.us.us

.lr.ph541.us.us.us.us:                            ; preds = %bb.i
  store i32 0, ptr %i.bb, align 4, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph541.us.us.us.us
  %.0375539.us.us.us.us = phi i32 [ %i.bc, %.lr.ph541.us.us.us.us ], [ %i.cr, %bb.k ] ; 3 uses
  %i.cl = zext nneg i32 %.0375539.us.us.us.us to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !48 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !48 ; 2 uses
  %i.cq = icmp sgt i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.k, label %.loopexit517.us.us.us.us

bb.k:                                             ; preds = %bb.j
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !48
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !48
  %i.cr = add nsw i32 %.0375539.us.us.us.us, -1
  %i.cs = icmp sgt i32 %.0375539.us.us.us.us, 0
  br i1 %i.cs, label %bb.j, label %.loopexit517.us.us.us.us, !llvm.loop !56

.loopexit517.us.us.us.us:                         ; preds = %bb.k, %bb.j, %bb.i
  %i.ct = add nsw i32 %.1544.us.us.us.us, 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit517.us.us.us.us, %.lr.ph547.split.us.split.us.us.us.split
  %.2.us.us.us.us = phi i32 [ %.1544.us.us.us.us, %.lr.ph547.split.us.split.us.us.us.split ], [ %i.ct, %.loopexit517.us.us.us.us ] ; 2 uses
  %i.cu = add nsw i32 %.0378545.us.us.us.us, 1
  %.not412.us.us.us.us.not = icmp slt i32 %.0378545.us.us.us.us, %i.au
  br i1 %.not412.us.us.us.us.not, label %.lr.ph547.split.us.split.us.us.us.split, label %._crit_edge548.split.us.split.us.us.us, !llvm.loop !57

._crit_edge548.split.us.split.us.us.us.loopexit700: ; preds = %.loopexit517.us.us.us.us.us
  %i.cv = trunc nsw i64 %indvars.iv.next744 to i32
  br label %._crit_edge548.split.us.split.us.us.us

._crit_edge548.split.us.split.us.us.us:           ; preds = %bb.l, %._crit_edge548.split.us.split.us.us.us.loopexit700
  %.us-phi571 = phi i32 [ %i.cv, %._crit_edge548.split.us.split.us.us.us.loopexit700 ], [ %.2.us.us.us.us, %bb.l ]
  %i.cw = add i32 %.0379552.us.us, 1
  %exitcond746.not = icmp eq i32 %.0379552.us.us, %i.br
  br i1 %exitcond746.not, label %._crit_edge555.split, label %.lr.ph547.us.us, !llvm.loop !58

.lr.ph547.us:                                     ; preds = %.lr.ph554.split.split.us, %._crit_edge548.split.us.split.us563
  %.0379552.us = phi i32 [ %i.dg, %._crit_edge548.split.us.split.us563 ], [ %.fr689, %.lr.ph554.split.split.us ] ; 3 uses
  %.0381551.us = phi i32 [ %.us-phi, %._crit_edge548.split.us.split.us563 ], [ 0, %.lr.ph554.split.split.us ] ; 2 uses
  %i.cx = icmp eq i32 %.0379552.us, %i.m
  %.fr569 = freeze i1 %i.cx
  br i1 %.fr569, label %.lr.ph547.split.us.split.us565.split, label %.lr.ph547.split.us.split.us565.split.us

.lr.ph547.split.us.split.us565.split:             ; preds = %.lr.ph547.us, %bb.o
  %.0378545.us.us557 = phi i32 [ %i.de, %bb.o ], [ %i.at, %.lr.ph547.us ] ; 3 uses
  %.1544.us.us558 = phi i32 [ %.2.us.us561, %bb.o ], [ %.0381551.us, %.lr.ph547.us ] ; 3 uses
  %i.cy = icmp eq i32 %.0378545.us.us557, %2
  br i1 %i.cy, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph547.split.us.split.us565.split
  %i.cz = sext i32 %.1544.us.us558 to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cz
  store i32 0, ptr %i.da, align 4, !tbaa !48
  %i.db = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.loopexit517.us.us560, label %bb.n

.loopexit517.us.us560:                            ; preds = %bb.m
  store i32 0, ptr %i.bb, align 4, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %.loopexit517.us.us560, %bb.m
  %i.dd = add nsw i32 %.1544.us.us558, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph547.split.us.split.us565.split
  %.2.us.us561 = phi i32 [ %.1544.us.us558, %.lr.ph547.split.us.split.us565.split ], [ %i.dd, %bb.n ] ; 2 uses
  %i.de = add nsw i32 %.0378545.us.us557, 1
  %.not412.us.us562.not = icmp slt i32 %.0378545.us.us557, %i.au
  br i1 %.not412.us.us562.not, label %.lr.ph547.split.us.split.us565.split, label %._crit_edge548.split.us.split.us563, !llvm.loop !57

._crit_edge548.split.us.split.us563.loopexit701:  ; preds = %bb.q
  %i.df = trunc nsw i64 %indvars.iv.next738 to i32
  br label %._crit_edge548.split.us.split.us563

._crit_edge548.split.us.split.us563:              ; preds = %bb.o, %._crit_edge548.split.us.split.us563.loopexit701
  %.us-phi = phi i32 [ %i.df, %._crit_edge548.split.us.split.us563.loopexit701 ], [ %.2.us.us561, %bb.o ]
  %i.dg = add i32 %.0379552.us, 1
  %exitcond740.not = icmp eq i32 %.0379552.us, %i.br
  br i1 %exitcond740.not, label %._crit_edge555.split, label %.lr.ph547.us, !llvm.loop !58

.lr.ph547.split.us.split.us565.split.us:          ; preds = %.lr.ph547.us
  %.promoted = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.dh = sext i32 %.0381551.us to i64            ; 2 uses
  %i.di = shl nsw i64 %i.dh, 2
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.di
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bq, i1 false), !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph547.split.us.split.us565.split.us
  %indvars.iv737 = phi i64 [ %indvars.iv.next738, %bb.q ], [ %i.dh, %.lr.ph547.split.us.split.us565.split.us ]
  %i.dj = phi i32 [ %i.dl, %bb.q ], [ %.promoted, %.lr.ph547.split.us.split.us565.split.us ] ; 2 uses
  %.0378545.us.us557.us = phi i32 [ %i.dm, %bb.q ], [ %i.at, %.lr.ph547.split.us.split.us565.split.us ] ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.loopexit517.us.us560.us, label %bb.q

.loopexit517.us.us560.us:                         ; preds = %bb.p
  store i32 0, ptr %i.bb, align 4, !tbaa !48
  br label %bb.q

bb.q:                                             ; preds = %.loopexit517.us.us560.us, %bb.p
  %i.dl = phi i32 [ 0, %.loopexit517.us.us560.us ], [ %i.dj, %bb.p ]
  %indvars.iv.next738 = add nsw i64 %indvars.iv737, 1 ; 2 uses
  %i.dm = add nsw i32 %.0378545.us.us557.us, 1
  %.not412.us.us562.us.not = icmp slt i32 %.0378545.us.us557.us, %i.au
  br i1 %.not412.us.us562.us.not, label %bb.p, label %._crit_edge548.split.us.split.us563.loopexit701, !llvm.loop !57

.lr.ph528:                                        ; preds = %.lr.ph528.preheader963, %.lr.ph528
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %.lr.ph528 ], [ %indvars.iv713.ph, %.lr.ph528.preheader963 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv713
  store i32 2147483647, ptr %i.dn, align 4, !tbaa !48
  %indvars.iv.next714 = add nuw nsw i64 %indvars.iv713, 1 ; 2 uses
  %exitcond717.not = icmp eq i64 %indvars.iv.next714, %wide.trip.count716
  br i1 %exitcond717.not, label %.preheader518, label %.lr.ph528, !llvm.loop !59
end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d16MSDDetector_Impl27contextualSelfDissimilarityERNS_3MatEiiPf:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ek = xor i32 %.fr689, -1
  %i.el = zext nneg i32 %.fr690 to i64
  %i.em = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -4     ; 8 uses
  %i.eo = add nsw i32 %.fr690, -2                 ; 3 uses
  %i.ep = icmp sgt i32 %.fr690, 1                 ; 2 uses
  %smax750 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1)
  %i.eq = sext i32 %i.eg to i64
  %i.er = sext i32 %i.m to i64                    ; 2 uses
  %i.es = add i32 %.fr689, 1
  %i.et = sub i32 %i.ee, %i.d
  %i.eu = sext i32 %.fr689 to i64                 ; 3 uses
  %i.ev = add i32 %.fr689, %i.y                   ; 3 uses
  %i.ew = add i32 %i.ev, 1
  %i.ex = sext i32 %i.ee to i64
  %i.ey = sext i32 %i.d to i64
  %i.ez = sext i32 %i.ea to i64
  %wide.trip.count751 = zext nneg i32 %smax750 to i64 ; 3 uses
  %.not410588 = icmp slt i32 %i.d, 0
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.ez
  %min.iters.check918 = icmp slt i32 %.fr690, 8
  %n.vec920 = and i64 %wide.trip.count751, 2147483640 ; 3 uses
  %cmp.n925 = icmp eq i64 %n.vec920, %wide.trip.count751
  br label %.preheader516

.lr.ph547:                                        ; preds = %.lr.ph547.preheader, %._crit_edge548.split
  %indvars.iv730 = phi i64 [ %i.bj, %.lr.ph547.preheader ], [ %indvars.iv.next731, %._crit_edge548.split ] ; 3 uses
  %.0381551 = phi i32 [ 0, %.lr.ph547.preheader ], [ %.2, %._crit_edge548.split ]
  %i.fa = icmp eq i64 %indvars.iv730, %5
  br label %bb.r

._crit_edge548.split:                             ; preds = %bb.v
  %indvars.iv.next731 = add nuw nsw i64 %indvars.iv730, 1 ; 2 uses
  %lftr.wideiv734 = trunc i64 %indvars.iv.next731 to i32
  %exitcond735.not = icmp eq i32 %i.bl, %lftr.wideiv734
  br i1 %exitcond735.not, label %._crit_edge555.split, label %.lr.ph547, !llvm.loop !58

bb.r:                                             ; preds = %.lr.ph547, %bb.v
  %indvars.iv727 = phi i64 [ %i.bh, %.lr.ph547 ], [ %indvars.iv.next728, %bb.v ] ; 4 uses
  %.1544 = phi i32 [ %.0381551, %.lr.ph547 ], [ %.2, %bb.v ] ; 3 uses
  %i.fb = icmp eq i64 %indvars.iv727, %i.bg
  %or.cond = and i1 %i.fa, %i.fb
  br i1 %or.cond, label %bb.v, label %.lr.ph537

.lr.ph537:                                        ; preds = %bb.r
  %i.fc = sext i32 %.1544 to i64                  ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.fc ; 2 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !48
  %i.fe = load ptr, ptr %i.ax, align 8, !tbaa !61 ; 2 uses
  %invariant.gep897 = getelementptr i8, ptr %i.fe, i64 %indvars.iv727
  br label %.lr.ph531

._crit_edge538.split:                             ; preds = %._crit_edge
  %i.ff = load i32, ptr %i.bb, align 4, !tbaa !48
  %i.fg = icmp slt i32 %i.fm, %i.ff
  br i1 %i.fg, label %bb.t, label %.loopexit517

.lr.ph531:                                        ; preds = %.lr.ph537, %._crit_edge
  %i.fh = phi i32 [ 0, %.lr.ph537 ], [ %i.fm, %._crit_edge ]
  %indvars.iv722 = phi i64 [ %i.be, %.lr.ph537 ], [ %indvars.iv.next723, %._crit_edge ] ; 3 uses
  %i.fi = add nsw i64 %indvars.iv722, %i.bg       ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !53
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fc ; 2 uses
  store i32 0, ptr %i.fl, align 4, !tbaa !48
  %gep898 = getelementptr i8, ptr %invariant.gep897, i64 %indvars.iv722
  %invariant.gep532 = getelementptr i8, ptr %i.fe, i64 %i.fi
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s
  %i.fm = add nuw nsw i32 %i.fh, %i.gb            ; 4 uses
  store i32 %i.fm, ptr %i.fd, align 4, !tbaa !48
  %indvars.iv.next723 = add nsw i64 %indvars.iv722, 1 ; 2 uses
  %lftr.wideiv725 = trunc i64 %indvars.iv.next723 to i32
  %exitcond726.not = icmp eq i32 %i.bf, %lftr.wideiv725
  br i1 %exitcond726.not, label %._crit_edge538.split, label %.lr.ph531, !llvm.loop !62

bb.s:                                             ; preds = %.lr.ph531, %bb.s
  %i.fn = phi i32 [ 0, %.lr.ph531 ], [ %i.gb, %bb.s ]
  %indvars.iv718 = phi i64 [ %i.be, %.lr.ph531 ], [ %indvars.iv.next719, %bb.s ] ; 3 uses
  %i.fo = add nsw i64 %indvars.iv718, %indvars.iv730
  %i.fp = load i32, ptr %i.aw, align 4, !tbaa !63
  %i.fq = icmp slt i32 %i.fp, 2                   ; 2 uses
  %i.fr = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.fs = mul i64 %i.fr, %i.fo
  %.sink.idx.i = select i1 %i.fq, i64 0, i64 %i.fs
  %gep = getelementptr i8, ptr %gep898, i64 %.sink.idx.i
  %i.ft = load i8, ptr %gep, align 1, !tbaa !64
  %i.fu = add nsw i64 %indvars.iv718, %5
  %i.fv = mul i64 %i.fr, %i.fu
  %.sink.idx.i424 = select i1 %i.fq, i64 0, i64 %i.fv
  %gep533 = getelementptr i8, ptr %invariant.gep532, i64 %.sink.idx.i424
  %i.fw = zext i8 %i.ft to i32
  %i.fx = load i8, ptr %gep533, align 1, !tbaa !64
  %i.fy = zext i8 %i.fx to i32
  %i.fz = sub nsw i32 %i.fw, %i.fy                ; 2 uses
  %i.ga = mul nsw i32 %i.fz, %i.fz
  %i.gb = add nuw nsw i32 %i.ga, %i.fn            ; 3 uses
  store i32 %i.gb, ptr %i.fl, align 4, !tbaa !48
  %indvars.iv.next719 = add nsw i64 %indvars.iv718, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next719 to i32
  %exitcond721.not = icmp eq i32 %i.bf, %lftr.wideiv
  br i1 %exitcond721.not, label %._crit_edge, label %bb.s, !llvm.loop !65

bb.t:                                             ; preds = %._crit_edge538.split
  store i32 %i.fm, ptr %i.bb, align 4, !tbaa !48
  br i1 %i.bd, label %.lr.ph541, label %.loopexit517

.lr.ph541:                                        ; preds = %bb.t, %bb.u
  %.0375539 = phi i32 [ %i.gi, %bb.u ], [ %i.bc, %bb.t ] ; 3 uses
  %i.gc = zext nneg i32 %.0375539 to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.gc ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !48 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !48 ; 2 uses
  %i.gh = icmp sgt i32 %i.ge, %i.gg
  br i1 %i.gh, label %bb.u, label %.loopexit517

bb.u:                                             ; preds = %.lr.ph541
  store i32 %i.gg, ptr %i.gd, align 4, !tbaa !48
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !48
  %i.gi = add nsw i32 %.0375539, -1
  %i.gj = icmp sgt i32 %.0375539, 0
  br i1 %i.gj, label %.lr.ph541, label %.loopexit517, !llvm.loop !56

.loopexit517:                                     ; preds = %.lr.ph541, %bb.u, %bb.t, %._crit_edge538.split
  %i.gk = add nsw i32 %.1544, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %.loopexit517
  %.2 = phi i32 [ %.1544, %bb.r ], [ %i.gk, %.loopexit517 ] ; 2 uses
  %indvars.iv.next728 = add nsw i64 %indvars.iv727, 1
  %.not412.not = icmp slt i64 %indvars.iv727, %i.bi
  br i1 %.not412.not, label %bb.r, label %._crit_edge548.split, !llvm.loop !57

.preheader516:                                    ; preds = %.preheader516.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432
  %indvars.iv776 = phi i64 [ %i.ex, %.preheader516.lr.ph ], [ %indvars.iv.next777, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 7 uses
  %indvars.iv758 = phi i32 [ %i.et, %.preheader516.lr.ph ], [ %indvars.iv.next759, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432 ] ; 2 uses
  %i.gl = sext i32 %indvars.iv758 to i64
  br i1 %.not.i.i.i.i, label %.preheader515, label %.lr.ph574.preheader

.lr.ph574.preheader:                              ; preds = %.preheader516
  br i1 %min.iters.check918, label %.lr.ph574.preheader955, label %vector.body921

vector.body921:                                   ; preds = %.lr.ph574.preheader, %vector.body921
  %index922 = phi i64 [ %index.next923, %vector.body921 ], [ 0, %.lr.ph574.preheader ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index922 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.gm, align 4, !tbaa !48
  store <4 x i32> splat (i32 2147483647), ptr %i.gn, align 4, !tbaa !48
  %index.next923 = add nuw i64 %index922, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next923, %n.vec920
  br i1 %i.go, label %middle.block924, label %vector.body921, !llvm.loop !66

middle.block924:                                  ; preds = %vector.body921
  br i1 %cmp.n925, label %.preheader515, label %.lr.ph574.preheader955

.lr.ph574.preheader955:                           ; preds = %.lr.ph574.preheader, %middle.block924
  %indvars.iv747.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec920, %middle.block924 ]
  br label %.lr.ph574

.preheader513:                                    ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit
  %i.gp = sub nsw i32 %i.j, %i.m                  ; 2 uses
  %.0382679 = add nsw i32 %i.m, 1                 ; 2 uses
  %i.gq = icmp slt i32 %.0382679, %i.gp
  br i1 %i.gq, label %.preheader512.lr.ph, label %.preheader

.preheader512.lr.ph:                              ; preds = %.preheader513
  %i.gr = sub i32 %2, %i.d                        ; 6 uses
  %i.gs = add i32 %i.d, %2                        ; 6 uses
  %.not407624 = icmp slt i32 %i.d, 0              ; 2 uses
  %i.gt = sub i32 0, %.fr689
  %.not408615 = icmp slt i32 %.fr689, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.gx = xor i32 %.fr689, -1                     ; 3 uses
  %i.gy = zext nneg i32 %.fr690 to i64
  %i.gz = getelementptr [4 x i8], ptr %.sroa.0469.0, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4     ; 12 uses
  %i.hb = add nsw i32 %.fr690, -2                 ; 4 uses
  %i.hc = icmp sgt i32 %.fr690, 1                 ; 3 uses
  %smax784 = tail call i32 @llvm.smax.i32(i32 %.fr690, i32 1) ; 2 uses
  %i.hd = sext i32 %i.gt to i64
  %i.he = sext i32 %2 to i64                      ; 3 uses
  %i.hf = add i32 %.fr689, 1                      ; 2 uses
  %i.hg = sext i32 %i.gr to i64
  %i.hh = sext i32 %i.gs to i64
  %i.hi = sext i32 %.fr689 to i64                 ; 6 uses
  %smax803 = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 %i.gr)
  %i.hj = add i32 %i.d, %smax803
  %i.hk = sub i32 %i.hj, %2
  %i.hl = zext i32 %i.hk to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2
  %i.hn = add nuw nsw i64 %i.hm, 4                ; 2 uses
  %i.ho = sub i32 %i.ee, %i.d
  %i.hp = sext i32 %i.ee to i64
  %i.hq = sext i32 %i.d to i64                    ; 2 uses
  %i.hr = sext i32 %.0382679 to i64
  %wide.trip.count785 = zext nneg i32 %smax784 to i64 ; 5 uses
  %invariant.gep902 = getelementptr [4 x i8], ptr %4, i64 %i.he
  %wide.trip.count816 = zext nneg i32 %smax784 to i64
  %min.iters.check938 = icmp slt i32 %.fr690, 8
  %n.vec940 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n945 = icmp eq i64 %n.vec940, %wide.trip.count785
  %min.iters.check928 = icmp slt i32 %.fr690, 8
  %n.vec930 = and i64 %wide.trip.count785, 2147483640 ; 3 uses
  %cmp.n935 = icmp eq i64 %n.vec930, %wide.trip.count785
  br label %.preheader512

.preheader515:                                    ; preds = %.lr.ph574, %middle.block924, %.preheader516
  br i1 %.not550, label %._crit_edge601.split, label %.lr.ph600

.lr.ph600:                                        ; preds = %.preheader515
  %i.hs = add nsw i64 %indvars.iv776, %i.ey       ; 4 uses
  %i.ht = add nsw i64 %indvars.iv776, %i.eu       ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ht ; 4 uses
  %i.hv = trunc nsw i64 %indvars.iv776 to i32     ; 3 uses
  %i.hw = add i32 %i.hv, %i.ek
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.hx ; 4 uses
  br i1 %.not410588, label %._crit_edge601.split, label %.lr.ph600.split

.lr.ph600.split:                                  ; preds = %.lr.ph600
  br i1 %.not411575, label %.lr.ph600.split.split.us, label %.lr.ph592

.lr.ph600.split.split.us:                         ; preds = %.lr.ph600.split
  %i.hz = trunc i64 %indvars.iv776 to i32
  %i.ia = sub i32 %i.hz, %i.d                     ; 3 uses
  br i1 %i.ep, label %.lr.ph592.us.us, label %.lr.ph592.us

.lr.ph592.us.us:                                  ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split.us.us
  %.0373598.us.us = phi i32 [ %i.jv, %._crit_edge593.split.us.us.split.us.us ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us.us = phi i32 [ %.us-phi606, %._crit_edge593.split.us.us.split.us.us ], [ 0, %.lr.ph600.split.split.us ] ; 2 uses
  %i.ib = icmp eq i32 %.0373598.us.us, %i.m
  %.fr607 = freeze i1 %i.ib
  br i1 %.fr607, label %.lr.ph592.split.us.us.split.us.us.split, label %.lr.ph592.split.us.us.split.us.us.split.us

.lr.ph592.split.us.us.split.us.us.split.us:       ; preds = %.lr.ph592.us.us
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !53
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !53
  %i.ie = sext i32 %.3597.us.us to i64
  br label %bb.w

bb.w:                                             ; preds = %.loopexit514.us.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split.us
  %indvars.iv772 = phi i64 [ %indvars.iv.next773, %.loopexit514.us.us.us.us.us ], [ %i.ie, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 4 uses
  %.0372590.us.us.us.us.us = phi i32 [ %i.iv, %.loopexit514.us.us.us.us.us ], [ %i.ia, %.lr.ph592.split.us.us.split.us.us.split.us ] ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %indvars.iv772
  store i32 0, ptr %i.if, align 4, !tbaa !48
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv772 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !48
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.id, i64 %indvars.iv772
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !48
  %i.ik = sub i32 %i.ih, %i.ij                    ; 3 uses
  store i32 %i.ik, ptr %i.ig, align 4, !tbaa !48
  %i.il = load i32, ptr %i.en, align 4, !tbaa !48
  %i.im = icmp slt i32 %i.ik, %i.il
  br i1 %i.im, label %.lr.ph586.us.us.us.us.us, label %.loopexit514.us.us.us.us.us

.lr.ph586.us.us.us.us.us:                         ; preds = %bb.w
  store i32 %i.ik, ptr %i.en, align 4, !tbaa !48
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph586.us.us.us.us.us
  %.0370584.us.us.us.us.us = phi i32 [ %i.eo, %.lr.ph586.us.us.us.us.us ], [ %i.it, %bb.y ] ; 3 uses
  %i.in = zext nneg i32 %.0370584.us.us.us.us.us to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.in ; 3 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !48 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !48 ; 2 uses
  %i.is = icmp sgt i32 %i.ip, %i.ir
  br i1 %i.is, label %bb.y, label %.loopexit514.us.us.us.us.us

bb.y:                                             ; preds = %bb.x
  store i32 %i.ir, ptr %i.io, align 4, !tbaa !48
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !48
  %i.it = add nsw i32 %.0370584.us.us.us.us.us, -1
  %i.iu = icmp sgt i32 %.0370584.us.us.us.us.us, 0
  br i1 %i.iu, label %bb.x, label %.loopexit514.us.us.us.us.us, !llvm.loop !67

.loopexit514.us.us.us.us.us:                      ; preds = %bb.y, %bb.x, %bb.w
  %indvars.iv.next773 = add nsw i64 %indvars.iv772, 1 ; 2 uses
  %i.iv = add nsw i32 %.0372590.us.us.us.us.us, 1
  %i.iw = sext i32 %.0372590.us.us.us.us.us to i64
  %.not410.us.us.us.us.us.not = icmp sgt i64 %i.hs, %i.iw
  br i1 %.not410.us.us.us.us.us.not, label %bb.w, label %._crit_edge593.split.us.us.split.us.us.loopexit697, !llvm.loop !68

.lr.ph592.split.us.us.split.us.us.split:          ; preds = %.lr.ph592.us.us, %bb.ac
  %.0372590.us.us.us.us = phi i32 [ %i.js, %bb.ac ], [ %i.ia, %.lr.ph592.us.us ] ; 3 uses
  %.4589.us.us.us.us = phi i32 [ %.5.us.us.us.us, %bb.ac ], [ %.3597.us.us, %.lr.ph592.us.us ] ; 3 uses
  %i.ix = icmp eq i32 %.0372590.us.us.us.us, %i.hv
  br i1 %i.ix, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.lr.ph592.split.us.us.split.us.us.split
  %i.iy = load ptr, ptr %i.hu, align 8, !tbaa !53
  %i.iz = sext i32 %.4589.us.us.us.us to i64      ; 3 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.iz
  store i32 0, ptr %i.ja, align 4, !tbaa !48
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !48
  %i.jd = load ptr, ptr %i.hy, align 8, !tbaa !53
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.iz
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !48
  %i.jg = sub i32 %i.jc, %i.jf                    ; 3 uses
  store i32 %i.jg, ptr %i.jb, align 4, !tbaa !48
  %i.jh = load i32, ptr %i.en, align 4, !tbaa !48
  %i.ji = icmp slt i32 %i.jg, %i.jh
  br i1 %i.ji, label %.lr.ph586.us.us.us.us, label %.loopexit514.us.us.us.us

.lr.ph586.us.us.us.us:                            ; preds = %bb.z
  store i32 %i.jg, ptr %i.en, align 4, !tbaa !48
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %.lr.ph586.us.us.us.us
  %.0370584.us.us.us.us = phi i32 [ %i.eo, %.lr.ph586.us.us.us.us ], [ %i.jp, %bb.ab ] ; 3 uses
  %i.jj = zext nneg i32 %.0370584.us.us.us.us to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.jj ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !48 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !48 ; 2 uses
  %i.jo = icmp sgt i32 %i.jl, %i.jn
  br i1 %i.jo, label %bb.ab, label %.loopexit514.us.us.us.us

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !48
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !48
  %i.jp = add nsw i32 %.0370584.us.us.us.us, -1
  %i.jq = icmp sgt i32 %.0370584.us.us.us.us, 0
  br i1 %i.jq, label %bb.aa, label %.loopexit514.us.us.us.us, !llvm.loop !67

.loopexit514.us.us.us.us:                         ; preds = %bb.ab, %bb.aa, %bb.z
  %i.jr = add nsw i32 %.4589.us.us.us.us, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit514.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split
  %.5.us.us.us.us = phi i32 [ %.4589.us.us.us.us, %.lr.ph592.split.us.us.split.us.us.split ], [ %i.jr, %.loopexit514.us.us.us.us ] ; 2 uses
  %i.js = add nsw i32 %.0372590.us.us.us.us, 1
  %i.jt = sext i32 %.0372590.us.us.us.us to i64
  %.not410.us.us.us.us.not = icmp sgt i64 %i.hs, %i.jt
  br i1 %.not410.us.us.us.us.not, label %.lr.ph592.split.us.us.split.us.us.split, label %._crit_edge593.split.us.us.split.us.us, !llvm.loop !68

._crit_edge593.split.us.us.split.us.us.loopexit697: ; preds = %.loopexit514.us.us.us.us.us
  %i.ju = trunc nsw i64 %indvars.iv.next773 to i32
  br label %._crit_edge593.split.us.us.split.us.us

._crit_edge593.split.us.us.split.us.us:           ; preds = %bb.ac, %._crit_edge593.split.us.us.split.us.us.loopexit697
  %.us-phi606 = phi i32 [ %i.ju, %._crit_edge593.split.us.us.split.us.us.loopexit697 ], [ %.5.us.us.us.us, %bb.ac ]
  %i.jv = add i32 %.0373598.us.us, 1
  %exitcond775.not = icmp eq i32 %.0373598.us.us, %i.ev
  br i1 %exitcond775.not, label %._crit_edge601.split, label %.lr.ph592.us.us, !llvm.loop !69

.lr.ph592.us:                                     ; preds = %.lr.ph600.split.split.us, %._crit_edge593.split.us.us.split
  %.0373598.us = phi i32 [ %i.km, %._crit_edge593.split.us.us.split ], [ %.fr689, %.lr.ph600.split.split.us ] ; 3 uses
  %.3597.us = phi i32 [ %.5.us.us, %._crit_edge593.split.us.us.split ], [ 0, %.lr.ph600.split.split.us ]
  %i.jw = icmp eq i32 %.0373598.us, %i.m
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %.lr.ph592.us
  %.0372590.us.us = phi i32 [ %i.ia, %.lr.ph592.us ], [ %i.kk, %bb.ag ] ; 3 uses
  %.4589.us.us = phi i32 [ %.3597.us, %.lr.ph592.us ], [ %.5.us.us, %bb.ag ] ; 3 uses
  %i.jx = icmp eq i32 %.0372590.us.us, %i.hv
  %or.cond420.us.us = and i1 %i.jw, %i.jx
  br i1 %or.cond420.us.us, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jy = load ptr, ptr %i.hu, align 8, !tbaa !53
  %i.jz = sext i32 %.4589.us.us to i64            ; 3 uses
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.jz
  store i32 0, ptr %i.ka, align 4, !tbaa !48
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jz ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !48
  %i.kd = load ptr, ptr %i.hy, align 8, !tbaa !53
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.jz
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !48
  %i.kg = sub i32 %i.kc, %i.kf                    ; 3 uses
  store i32 %i.kg, ptr %i.kb, align 4, !tbaa !48
  %i.kh = load i32, ptr %i.en, align 4, !tbaa !48
  %i.ki = icmp slt i32 %i.kg, %i.kh
  br i1 %i.ki, label %.loopexit514.us.us, label %bb.af

.loopexit514.us.us:                               ; preds = %bb.ae
  store i32 %i.kg, ptr %i.en, align 4, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %.loopexit514.us.us, %bb.ae
  %i.kj = add nsw i32 %.4589.us.us, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.5.us.us = phi i32 [ %.4589.us.us, %bb.ad ], [ %i.kj, %bb.af ] ; 2 uses
  %i.kk = add nsw i32 %.0372590.us.us, 1
  %i.kl = sext i32 %.0372590.us.us to i64
  %.not410.us.us.not = icmp sgt i64 %i.hs, %i.kl
  br i1 %.not410.us.us.not, label %bb.ad, label %._crit_edge593.split.us.us.split, !llvm.loop !68

._crit_edge593.split.us.us.split:                 ; preds = %bb.ag
  %i.km = add i32 %.0373598.us, 1
  %exitcond770.not = icmp eq i32 %.0373598.us, %i.ev
  br i1 %exitcond770.not, label %._crit_edge601.split, label %.lr.ph592.us, !llvm.loop !69

.lr.ph574:                                        ; preds = %.lr.ph574.preheader955, %.lr.ph574
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %.lr.ph574 ], [ %indvars.iv747.ph, %.lr.ph574.preheader955 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv747
  store i32 2147483647, ptr %i.kn, align 4, !tbaa !48
  %indvars.iv.next748 = add nuw nsw i64 %indvars.iv747, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next748, %wide.trip.count751
  br i1 %exitcond752.not, label %.preheader515, label %.lr.ph574, !llvm.loop !70

._crit_edge601.split:                             ; preds = %._crit_edge593.split, %._crit_edge593.split.us.us.split, %._crit_edge593.split.us.us.split.us.us, %.lr.ph600, %.preheader515
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, label %.lr.ph.i427

.lr.ph.i427:                                      ; preds = %._crit_edge601.split, %.lr.ph.i427
  %indvars.iv.i428 = phi i64 [ %indvars.iv.next.i430, %.lr.ph.i427 ], [ 0, %._crit_edge601.split ] ; 2 uses
  %.0810.i429 = phi float [ %i.kr, %.lr.ph.i427 ], [ 0.000000e+00, %._crit_edge601.split ]
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i428
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !48
  %i.kq = sitofp i32 %i.kp to float
  %i.kr = fadd float %.0810.i429, %i.kq           ; 2 uses
  %indvars.iv.next.i430 = add i64 %indvars.iv.i428, 1 ; 2 uses
  %i.ks = and i64 %indvars.iv.next.i430, 4294967295
  %i.kt = icmp ugt i64 %i.dr, %i.ks
  br i1 %i.kt, label %.lr.ph.i427, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432, !llvm.loop !60

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit432: ; preds = %.lr.ph.i427, %._crit_edge601.split
  %.08.lcssa.i431 = phi float [ 0.000000e+00, %._crit_edge601.split ], [ %i.kr, %.lr.ph.i427 ]
  %i.ku = fdiv float %.08.lcssa.i431, %i.dy
  %gep899 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv776
  store float %i.ku, ptr %gep899, align 4, !tbaa !26
  %indvars.iv.next777 = add nsw i64 %indvars.iv776, 1 ; 2 uses
  %indvars.iv.next759 = add i32 %indvars.iv758, 1
  %lftr.wideiv779 = trunc i64 %indvars.iv.next777 to i32
  %exitcond780.not = icmp eq i32 %3, %lftr.wideiv779
  br i1 %exitcond780.not, label %.preheader513, label %.preheader516, !llvm.loop !71

.lr.ph592:                                        ; preds = %.lr.ph600.split, %._crit_edge593.split
  %indvars.iv764 = phi i64 [ %indvars.iv.next765, %._crit_edge593.split ], [ %i.eu, %.lr.ph600.split ] ; 3 uses
  %.3597 = phi i32 [ %.5, %._crit_edge593.split ], [ 0, %.lr.ph600.split ]
  %i.kv = icmp eq i64 %indvars.iv764, %i.er
  br label %bb.ah

._crit_edge593.split:                             ; preds = %bb.al
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %lftr.wideiv768 = trunc i64 %indvars.iv.next765 to i32
  %exitcond769.not = icmp eq i32 %i.ew, %lftr.wideiv768
  br i1 %exitcond769.not, label %._crit_edge601.split, label %.lr.ph592, !llvm.loop !69

bb.ah:                                            ; preds = %.lr.ph592, %bb.al
  %indvars.iv760 = phi i64 [ %i.gl, %.lr.ph592 ], [ %indvars.iv.next761, %bb.al ] ; 4 uses
  %.4589 = phi i32 [ %.3597, %.lr.ph592 ], [ %.5, %bb.al ] ; 3 uses
  %i.kw = icmp eq i64 %indvars.iv760, %indvars.iv776
  %or.cond420 = and i1 %i.kv, %i.kw
  br i1 %or.cond420, label %bb.al, label %.lr.ph578

.lr.ph578:                                        ; preds = %bb.ah
  %i.kx = load ptr, ptr %i.hu, align 8, !tbaa !53
  %i.ky = sext i32 %.4589 to i64                  ; 3 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.ky ; 2 uses
  store i32 0, ptr %i.kz, align 4, !tbaa !48
  %i.la = load ptr, ptr %i.ei, align 8, !tbaa !61 ; 2 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 %indvars.iv760
  %invariant.gep580 = getelementptr i8, ptr %i.lb, i64 %i.eu
  %invariant.gep582 = getelementptr i8, ptr %i.la, i64 %i.ht
  br label %bb.ai

._crit_edge579:                                   ; preds = %bb.ai
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ky ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !48
  %i.le = add nsw i32 %i.lz, %i.ld
  %i.lf = load ptr, ptr %i.hy, align 8, !tbaa !53
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.ky
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !48
  %i.li = sub i32 %i.le, %i.lh                    ; 3 uses
  store i32 %i.li, ptr %i.lc, align 4, !tbaa !48
  %i.lj = load i32, ptr %i.en, align 4, !tbaa !48
  %i.lk = icmp slt i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.aj, label %.loopexit514

bb.ai:                                            ; preds = %.lr.ph578, %bb.ai
  %i.ll = phi i32 [ 0, %.lr.ph578 ], [ %i.lz, %bb.ai ]
  %indvars.iv753 = phi i64 [ %i.eq, %.lr.ph578 ], [ %indvars.iv.next754, %bb.ai ] ; 3 uses
  %i.lm = add nsw i64 %indvars.iv753, %indvars.iv764
  %i.ln = load i32, ptr %i.eh, align 4, !tbaa !63
  %i.lo = icmp slt i32 %i.ln, 2                   ; 2 uses
  %i.lp = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.lq = mul i64 %i.lp, %i.lm
  %.sink.idx.i433 = select i1 %i.lo, i64 0, i64 %i.lq
  %gep581 = getelementptr i8, ptr %invariant.gep580, i64 %.sink.idx.i433
  %i.lr = load i8, ptr %gep581, align 1, !tbaa !64
  %i.ls = add nsw i64 %indvars.iv753, %i.er
  %i.lt = mul i64 %i.lp, %i.ls
  %.sink.idx.i435 = select i1 %i.lo, i64 0, i64 %i.lt
  %gep583 = getelementptr i8, ptr %invariant.gep582, i64 %.sink.idx.i435
  %i.lu = zext i8 %i.lr to i32
  %i.lv = load i8, ptr %gep583, align 1, !tbaa !64
  %i.lw = zext i8 %i.lv to i32
  %i.lx = sub nsw i32 %i.lu, %i.lw                ; 2 uses
  %i.ly = mul nsw i32 %i.lx, %i.lx
  %i.lz = add nuw nsw i32 %i.ly, %i.ll            ; 3 uses
  store i32 %i.lz, ptr %i.kz, align 4, !tbaa !48
  %indvars.iv.next754 = add nsw i64 %indvars.iv753, 1 ; 2 uses
  %lftr.wideiv756 = trunc i64 %indvars.iv.next754 to i32
  %exitcond757.not = icmp eq i32 %i.es, %lftr.wideiv756
  br i1 %exitcond757.not, label %._crit_edge579, label %bb.ai, !llvm.loop !72

bb.aj:                                            ; preds = %._crit_edge579
  store i32 %i.li, ptr %i.en, align 4, !tbaa !48
  br i1 %i.ep, label %.lr.ph586, label %.loopexit514

.lr.ph586:                                        ; preds = %bb.aj, %bb.ak
  %.0370584 = phi i32 [ %i.mg, %bb.ak ], [ %i.eo, %bb.aj ] ; 3 uses
  %i.ma = zext nneg i32 %.0370584 to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.ma ; 3 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !48 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !48 ; 2 uses
  %i.mf = icmp sgt i32 %i.mc, %i.me
  br i1 %i.mf, label %bb.ak, label %.loopexit514

bb.ak:                                            ; preds = %.lr.ph586
  store i32 %i.me, ptr %i.mb, align 4, !tbaa !48
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !48
  %i.mg = add nsw i32 %.0370584, -1
  %i.mh = icmp sgt i32 %.0370584, 0
  br i1 %i.mh, label %.lr.ph586, label %.loopexit514, !llvm.loop !67

.loopexit514:                                     ; preds = %.lr.ph586, %bb.ak, %bb.aj, %._crit_edge579
  %i.mi = add nsw i32 %.4589, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %.loopexit514
  %.5 = phi i32 [ %.4589, %bb.ah ], [ %i.mi, %.loopexit514 ] ; 2 uses
  %indvars.iv.next761 = add nsw i64 %indvars.iv760, 1
  %.not410.not = icmp slt i64 %indvars.iv760, %i.hs
  br i1 %.not410.not, label %bb.ah, label %._crit_edge593.split, !llvm.loop !68

.loopexit511:                                     ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %indvars.iv.next834 = add nsw i64 %indvars.iv833.a, 1 ; 2 uses
  %indvars.iv.next797 = add i32 %indvars.iv796, 1
  %6 = trunc nsw i64 %indvars.iv833.a to i32
  %lftr.wideiv836 = trunc i64 %indvars.iv.next834 to i32
  %exitcond837.not = icmp eq i32 %i.gp, %lftr.wideiv836
  br i1 %exitcond837.not, label %.preheader, label %.preheader512, !llvm.loop !73

.preheader512:                                    ; preds = %.preheader512.lr.ph, %.loopexit511
  %indvars.iv833.a = phi i64 [ %i.hr, %.preheader512.lr.ph ], [ %indvars.iv.next834, %.loopexit511 ] ; 10 uses
  %indvars.iv796 = phi i32 [ %i.hf, %.preheader512.lr.ph ], [ %indvars.iv.next797, %.loopexit511 ] ; 2 uses
  %.0382.in680 = phi i32 [ %i.m, %.preheader512.lr.ph ], [ %6, %.loopexit511 ] ; 2 uses
  %i.mj = sext i32 %indvars.iv796 to i64          ; 2 uses
  br i1 %.not.i.i.i.i, label %._crit_edge614, label %.lr.ph613.preheader

.lr.ph613.preheader:                              ; preds = %.preheader512
  br i1 %min.iters.check938, label %.lr.ph613.preheader950, label %vector.body941

vector.body941:                                   ; preds = %.lr.ph613.preheader, %vector.body941
  %index942 = phi i64 [ %index.next943, %vector.body941 ], [ 0, %.lr.ph613.preheader ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index942 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.mk, align 4, !tbaa !48
  store <4 x i32> splat (i32 2147483647), ptr %i.ml, align 4, !tbaa !48
  %index.next943 = add nuw i64 %index942, 8       ; 2 uses
  %i.mm = icmp eq i64 %index.next943, %n.vec940
  br i1 %i.mm, label %middle.block944, label %vector.body941, !llvm.loop !74

middle.block944:                                  ; preds = %vector.body941
  br i1 %cmp.n945, label %._crit_edge614, label %.lr.ph613.preheader950

.lr.ph613.preheader950:                           ; preds = %.lr.ph613.preheader, %middle.block944
  %indvars.iv781.ph = phi i64 [ 0, %.lr.ph613.preheader ], [ %n.vec940, %middle.block944 ]
  br label %.lr.ph613

.preheader:                                       ; preds = %.loopexit511, %.preheader513
  br i1 %i.aj, label %.lr.ph686.preheader, label %._crit_edge687

.lr.ph686.preheader:                              ; preds = %.preheader
  %wide.trip.count841 = zext nneg i32 %i.h to i64
  br label %.lr.ph686

._crit_edge614:                                   ; preds = %.lr.ph613, %middle.block944, %.preheader512
  %i.mn = add nsw i64 %indvars.iv833.a, %i.hq     ; 4 uses
  br i1 %.not407624, label %._crit_edge639.split, label %.lr.ph638.split

.lr.ph638.split:                                  ; preds = %._crit_edge614
  %i.mo = add nsw i64 %indvars.iv833.a, %i.hi
  %i.mp = sub i32 %.0382.in680, %.fr689
  %i.mq = sext i32 %i.mp to i64
  br i1 %.not408615, label %.lr.ph638.split.split.us, label %.lr.ph628

.lr.ph638.split.split.us:                         ; preds = %.lr.ph638.split
  %i.mr = trunc i64 %indvars.iv833.a to i32
  %i.ms = sub i32 %i.mr, %i.d                     ; 2 uses
  %i.mt = trunc nsw i64 %indvars.iv833.a to i32   ; 2 uses
  br i1 %i.hc, label %.lr.ph628.us.us, label %.lr.ph628.us

.lr.ph628.us.us:                                  ; preds = %.lr.ph638.split.split.us, %._crit_edge629.split.us.split.us.us.us
  %.0368636.us.us = phi i32 [ %i.ny, %._crit_edge629.split.us.split.us.us.us ], [ %i.ms, %.lr.ph638.split.split.us ] ; 3 uses
  %.6635.us.us = phi i32 [ %.us-phi657, %._crit_edge629.split.us.split.us.us.us ], [ 0, %.lr.ph638.split.split.us ] ; 2 uses
  %i.mu = icmp eq i32 %.0368636.us.us, %i.mt
  %.fr658 = freeze i1 %i.mu
  br i1 %.fr658, label %.lr.ph628.split.us.split.us.us.us.split, label %.lr.ph628.split.us.split.us.us.us.split.us.preheader

.lr.ph628.split.us.split.us.us.us.split.us.preheader: ; preds = %.lr.ph628.us.us
  %i.mv = sext i32 %.6635.us.us to i64            ; 2 uses
  %i.mw = shl nsw i64 %i.mv, 2
  %scevgep807 = getelementptr i8, ptr %i.ad, i64 %i.mw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep807, i8 0, i64 %i.hn, i1 false), !tbaa !48
  br label %.lr.ph628.split.us.split.us.us.us.split.us

.lr.ph628.split.us.split.us.us.us.split.us:       ; preds = %.lr.ph628.split.us.split.us.us.us.split.us.preheader, %.loopexit508.us.us.us.us.us
  %indvars.iv809 = phi i64 [ %i.mv, %.lr.ph628.split.us.split.us.us.us.split.us.preheader ], [ %indvars.iv.next810, %.loopexit508.us.us.us.us.us ]
  %.0367626.us.us.us.us.us = phi i32 [ %i.gr, %.lr.ph628.split.us.split.us.us.us.split.us.preheader ], [ %i.nh, %.loopexit508.us.us.us.us.us ] ; 2 uses
  %i.mx = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph622.us.us.us.us.us, label %.loopexit508.us.us.us.us.us

.lr.ph622.us.us.us.us.us:                         ; preds = %.lr.ph628.split.us.split.us.us.us.split.us
  store i32 0, ptr %i.ha, align 4, !tbaa !48
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %.lr.ph622.us.us.us.us.us
  %.0365620.us.us.us.us.us = phi i32 [ %i.hb, %.lr.ph622.us.us.us.us.us ], [ %i.nf, %bb.an ] ; 3 uses
  %i.mz = zext nneg i32 %.0365620.us.us.us.us.us to i64
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.mz ; 3 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !48 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !48 ; 2 uses
  %i.ne = icmp sgt i32 %i.nb, %i.nd
  br i1 %i.ne, label %bb.an, label %.loopexit508.us.us.us.us.us

bb.an:                                            ; preds = %bb.am
  store i32 %i.nd, ptr %i.na, align 4, !tbaa !48
  store i32 %i.nb, ptr %i.nc, align 4, !tbaa !48
  %i.nf = add nsw i32 %.0365620.us.us.us.us.us, -1
  %i.ng = icmp sgt i32 %.0365620.us.us.us.us.us, 0
  br i1 %i.ng, label %bb.am, label %.loopexit508.us.us.us.us.us, !llvm.loop !75

.loopexit508.us.us.us.us.us:                      ; preds = %bb.an, %bb.am, %.lr.ph628.split.us.split.us.us.us.split.us
  %indvars.iv.next810 = add nsw i64 %indvars.iv809, 1 ; 2 uses
  %i.nh = add nsw i32 %.0367626.us.us.us.us.us, 1
  %.not407.us.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us.us, %i.gs
  br i1 %.not407.us.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split.us, label %._crit_edge629.split.us.split.us.us.us.loopexit693, !llvm.loop !76

.lr.ph628.split.us.split.us.us.us.split:          ; preds = %.lr.ph628.us.us, %bb.ar
  %.0367626.us.us.us.us = phi i32 [ %i.nw, %bb.ar ], [ %i.gr, %.lr.ph628.us.us ] ; 3 uses
  %.7625.us.us.us.us = phi i32 [ %.8.us.us.us.us, %bb.ar ], [ %.6635.us.us, %.lr.ph628.us.us ] ; 3 uses
  %i.ni = icmp eq i32 %.0367626.us.us.us.us, %2
  br i1 %i.ni, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph628.split.us.split.us.us.us.split
  %i.nj = sext i32 %.7625.us.us.us.us to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.nj
  store i32 0, ptr %i.nk, align 4, !tbaa !48
  %i.nl = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %.lr.ph622.us.us.us.us, label %.loopexit508.us.us.us.us

.lr.ph622.us.us.us.us:                            ; preds = %bb.ao
  store i32 0, ptr %i.ha, align 4, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph622.us.us.us.us
  %.0365620.us.us.us.us = phi i32 [ %i.hb, %.lr.ph622.us.us.us.us ], [ %i.nt, %bb.aq ] ; 3 uses
  %i.nn = zext nneg i32 %.0365620.us.us.us.us to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.nn ; 3 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !48 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 4 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !48 ; 2 uses
  %i.ns = icmp sgt i32 %i.np, %i.nr
  br i1 %i.ns, label %bb.aq, label %.loopexit508.us.us.us.us

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.nr, ptr %i.no, align 4, !tbaa !48
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !48
  %i.nt = add nsw i32 %.0365620.us.us.us.us, -1
  %i.nu = icmp sgt i32 %.0365620.us.us.us.us, 0
  br i1 %i.nu, label %bb.ap, label %.loopexit508.us.us.us.us, !llvm.loop !75

.loopexit508.us.us.us.us:                         ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.nv = add nsw i32 %.7625.us.us.us.us, 1
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit508.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split
  %.8.us.us.us.us = phi i32 [ %.7625.us.us.us.us, %.lr.ph628.split.us.split.us.us.us.split ], [ %i.nv, %.loopexit508.us.us.us.us ] ; 2 uses
  %i.nw = add nsw i32 %.0367626.us.us.us.us, 1
  %.not407.us.us.us.us.not = icmp slt i32 %.0367626.us.us.us.us, %i.gs
  br i1 %.not407.us.us.us.us.not, label %.lr.ph628.split.us.split.us.us.us.split, label %._crit_edge629.split.us.split.us.us.us, !llvm.loop !76

._crit_edge629.split.us.split.us.us.us.loopexit693: ; preds = %.loopexit508.us.us.us.us.us
  %i.nx = trunc nsw i64 %indvars.iv.next810 to i32
  br label %._crit_edge629.split.us.split.us.us.us

._crit_edge629.split.us.split.us.us.us:           ; preds = %bb.ar, %._crit_edge629.split.us.split.us.us.us.loopexit693
  %.us-phi657 = phi i32 [ %i.nx, %._crit_edge629.split.us.split.us.us.us.loopexit693 ], [ %.8.us.us.us.us, %bb.ar ]
  %i.ny = add nsw i32 %.0368636.us.us, 1
  %i.nz = sext i32 %.0368636.us.us to i64
  %.not404.us.us.not = icmp sgt i64 %i.mn, %i.nz
  br i1 %.not404.us.us.not, label %.lr.ph628.us.us, label %._crit_edge639.split, !llvm.loop !77

.lr.ph628.us:                                     ; preds = %.lr.ph638.split.split.us, %._crit_edge629.split.us.split.us647
  %.0368636.us = phi i32 [ %i.oj, %._crit_edge629.split.us.split.us647 ], [ %i.ms, %.lr.ph638.split.split.us ] ; 3 uses
  %.6635.us = phi i32 [ %.us-phi653, %._crit_edge629.split.us.split.us647 ], [ 0, %.lr.ph638.split.split.us ] ; 2 uses
  %i.oa = icmp eq i32 %.0368636.us, %i.mt
  %.fr654 = freeze i1 %i.oa
  br i1 %.fr654, label %.lr.ph628.split.us.split.us649.split, label %.lr.ph628.split.us.split.us649.split.us

.lr.ph628.split.us.split.us649.split:             ; preds = %.lr.ph628.us, %bb.au
  %.0367626.us.us641 = phi i32 [ %i.oh, %bb.au ], [ %i.gr, %.lr.ph628.us ] ; 3 uses
  %.7625.us.us642 = phi i32 [ %.8.us.us645, %bb.au ], [ %.6635.us, %.lr.ph628.us ] ; 3 uses
  %i.ob = icmp eq i32 %.0367626.us.us641, %2
  br i1 %i.ob, label %bb.au, label %bb.as

bb.as:                                            ; preds = %.lr.ph628.split.us.split.us649.split
  %i.oc = sext i32 %.7625.us.us642 to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.oc
  store i32 0, ptr %i.od, align 4, !tbaa !48
  %i.oe = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.of = icmp sgt i32 %i.oe, 0
  br i1 %i.of, label %.loopexit508.us.us644, label %bb.at

.loopexit508.us.us644:                            ; preds = %bb.as
  store i32 0, ptr %i.ha, align 4, !tbaa !48
  br label %bb.at

bb.at:                                            ; preds = %.loopexit508.us.us644, %bb.as
  %i.og = add nsw i32 %.7625.us.us642, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph628.split.us.split.us649.split
  %.8.us.us645 = phi i32 [ %.7625.us.us642, %.lr.ph628.split.us.split.us649.split ], [ %i.og, %bb.at ] ; 2 uses
  %i.oh = add nsw i32 %.0367626.us.us641, 1
  %.not407.us.us646.not = icmp slt i32 %.0367626.us.us641, %i.gs
  br i1 %.not407.us.us646.not, label %.lr.ph628.split.us.split.us649.split, label %._crit_edge629.split.us.split.us647, !llvm.loop !76

._crit_edge629.split.us.split.us647.loopexit694:  ; preds = %bb.aw
  %i.oi = trunc nsw i64 %indvars.iv.next805 to i32
  br label %._crit_edge629.split.us.split.us647

._crit_edge629.split.us.split.us647:              ; preds = %bb.au, %._crit_edge629.split.us.split.us647.loopexit694
  %.us-phi653 = phi i32 [ %i.oi, %._crit_edge629.split.us.split.us647.loopexit694 ], [ %.8.us.us645, %bb.au ]
  %i.oj = add nsw i32 %.0368636.us, 1
  %i.ok = sext i32 %.0368636.us to i64
  %.not404.us.not = icmp sgt i64 %i.mn, %i.ok
  br i1 %.not404.us.not, label %.lr.ph628.us, label %._crit_edge639.split, !llvm.loop !77

.lr.ph628.split.us.split.us649.split.us:          ; preds = %.lr.ph628.us
  %.promoted655 = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.ol = sext i32 %.6635.us to i64               ; 2 uses
  %i.om = shl nsw i64 %i.ol, 2
  %scevgep802 = getelementptr i8, ptr %i.ad, i64 %i.om
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep802, i8 0, i64 %i.hn, i1 false), !tbaa !48
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph628.split.us.split.us649.split.us
  %indvars.iv804 = phi i64 [ %indvars.iv.next805, %bb.aw ], [ %i.ol, %.lr.ph628.split.us.split.us649.split.us ]
  %i.on = phi i32 [ %i.op, %bb.aw ], [ %.promoted655, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %.0367626.us.us641.us = phi i32 [ %i.oq, %bb.aw ], [ %i.gr, %.lr.ph628.split.us.split.us649.split.us ] ; 2 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %.loopexit508.us.us644.us, label %bb.aw

.loopexit508.us.us644.us:                         ; preds = %bb.av
  store i32 0, ptr %i.ha, align 4, !tbaa !48
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit508.us.us644.us, %bb.av
  %i.op = phi i32 [ 0, %.loopexit508.us.us644.us ], [ %i.on, %bb.av ]
  %indvars.iv.next805 = add nsw i64 %indvars.iv804, 1 ; 2 uses
  %i.oq = add nsw i32 %.0367626.us.us641.us, 1
  %.not407.us.us646.us.not = icmp slt i32 %.0367626.us.us641.us, %i.gs
  br i1 %.not407.us.us646.us.not, label %bb.av, label %._crit_edge629.split.us.split.us647.loopexit694, !llvm.loop !76

.lr.ph613:                                        ; preds = %.lr.ph613.preheader950, %.lr.ph613
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %.lr.ph613 ], [ %indvars.iv781.ph, %.lr.ph613.preheader950 ] ; 2 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv781
  store i32 2147483647, ptr %i.or, align 4, !tbaa !48
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count785
  br i1 %exitcond786.not, label %._crit_edge614, label %.lr.ph613, !llvm.loop !78

._crit_edge639.split:                             ; preds = %._crit_edge629.split, %._crit_edge629.split.us.split.us647, %._crit_edge629.split.us.split.us.us.us, %._crit_edge614
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, label %.lr.ph.i438

.lr.ph.i438:                                      ; preds = %._crit_edge639.split, %.lr.ph.i438
  %indvars.iv.i439 = phi i64 [ %indvars.iv.next.i441, %.lr.ph.i438 ], [ 0, %._crit_edge639.split ] ; 2 uses
  %.0810.i440 = phi float [ %i.ov, %.lr.ph.i438 ], [ 0.000000e+00, %._crit_edge639.split ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i439
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !48
  %i.ou = sitofp i32 %i.ot to float
  %i.ov = fadd float %.0810.i440, %i.ou           ; 2 uses
  %indvars.iv.next.i441 = add i64 %indvars.iv.i439, 1 ; 2 uses
  %i.ow = and i64 %indvars.iv.next.i441, 4294967295
  %i.ox = icmp ugt i64 %i.dr, %i.ow
  br i1 %i.ox, label %.lr.ph.i438, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443, !llvm.loop !60

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443: ; preds = %.lr.ph.i438, %._crit_edge639.split
  %.08.lcssa.i442 = phi float [ 0.000000e+00, %._crit_edge639.split ], [ %i.ov, %.lr.ph.i438 ]
  %i.oy = fdiv float %.08.lcssa.i442, %i.dy
  %i.oz = mul nsw i64 %indvars.iv833.a, %i.ae     ; 2 uses
  %gep903 = getelementptr [4 x i8], ptr %invariant.gep902, i64 %i.oz
  store float %i.oy, ptr %gep903, align 4, !tbaa !26
  br i1 %i.ef, label %.preheader510.lr.ph, label %.loopexit511

.preheader510.lr.ph:                              ; preds = %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit443
  %i.pa = add nsw i64 %indvars.iv833.a, %i.hi
  %i.pb = sub i32 %.0382.in680, %.fr689
  %i.pc = sext i32 %i.pb to i64
  %invariant.gep900 = getelementptr [4 x i8], ptr %4, i64 %i.oz
  br label %.preheader510

.lr.ph628:                                        ; preds = %.lr.ph638.split, %._crit_edge629.split
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %._crit_edge629.split ], [ %i.mj, %.lr.ph638.split ] ; 5 uses
  %.6635 = phi i32 [ %.8, %._crit_edge629.split ], [ 0, %.lr.ph638.split ]
  %i.pd = icmp eq i64 %indvars.iv798, %indvars.iv833.a
  %i.pe = add nsw i64 %indvars.iv798, %i.hi
  %i.pf = trunc nsw i64 %indvars.iv798 to i32
  %i.pg = add i32 %i.pf, %i.gx
  %i.ph = sext i32 %i.pg to i64
  br label %bb.ax

._crit_edge629.split:                             ; preds = %bb.bb
  %indvars.iv.next799 = add nsw i64 %indvars.iv798, 1
  %.not404.not = icmp slt i64 %indvars.iv798, %i.mn
  br i1 %.not404.not, label %.lr.ph628, label %._crit_edge639.split, !llvm.loop !77

bb.ax:                                            ; preds = %.lr.ph628, %bb.bb
  %indvars.iv792 = phi i64 [ %i.hg, %.lr.ph628 ], [ %indvars.iv.next793, %bb.bb ] ; 4 uses
  %.7625 = phi i32 [ %.6635, %.lr.ph628 ], [ %.8, %bb.bb ] ; 3 uses
  %i.pi = icmp eq i64 %indvars.iv792, %i.he
  %or.cond421 = and i1 %i.pd, %i.pi
  br i1 %or.cond421, label %bb.bb, label %.lr.ph618

.lr.ph618:                                        ; preds = %bb.ax
  %i.pj = sext i32 %.7625 to i64                  ; 2 uses
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.pj ; 2 uses
  store i32 0, ptr %i.pk, align 4, !tbaa !48
  %i.pl = load ptr, ptr %i.gv, align 8, !tbaa !61 ; 4 uses
  br label %bb.ay

._crit_edge619:                                   ; preds = %bb.ay
  %i.pm = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.pn = icmp slt i32 %i.qx, %i.pm
  br i1 %i.pn, label %bb.az, label %.loopexit508

bb.ay:                                            ; preds = %.lr.ph618, %bb.ay
  %i.po = phi i32 [ 0, %.lr.ph618 ], [ %i.qx, %bb.ay ]
  %indvars.iv787 = phi i64 [ %i.hd, %.lr.ph618 ], [ %indvars.iv.next788, %bb.ay ] ; 3 uses
  %i.pp = add nsw i64 %indvars.iv787, %indvars.iv792 ; 2 uses
  %i.pq = load i32, ptr %i.gu, align 4, !tbaa !63
  %i.pr = icmp slt i32 %i.pq, 2                   ; 2 uses
  %i.ps = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.pt = mul i64 %i.ps, %i.pe
  %.sink.idx.i444 = select i1 %i.pr, i64 0, i64 %i.pt
  %.sink.i445 = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink.idx.i444
  %i.pu = getelementptr inbounds i8, ptr %.sink.i445, i64 %i.pp
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !64
  %i.pw = add nsw i64 %indvars.iv787, %i.he       ; 3 uses
  %i.px = mul i64 %i.ps, %i.mo
  %.sink.idx.i446 = select i1 %i.pr, i64 0, i64 %i.px
  %.sink.i447 = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink.idx.i446
  %i.py = getelementptr inbounds i8, ptr %.sink.i447, i64 %i.pw
  %i.pz = zext i8 %i.pv to i32
  %i.qa = load i8, ptr %i.py, align 1, !tbaa !64
  %i.qb = zext i8 %i.qa to i32
  %i.qc = sub nsw i32 %i.pz, %i.qb                ; 2 uses
  %i.qd = mul nsw i32 %i.qc, %i.qc
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.pw
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !53
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.pj ; 3 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !48
  %i.qi = add nsw i32 %i.qd, %i.qh                ; 2 uses
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !48
  %i.qj = load i32, ptr %i.gu, align 4, !tbaa !63
  %i.qk = icmp slt i32 %i.qj, 2                   ; 2 uses
  %i.ql = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.qm = mul i64 %i.ql, %i.ph
  %.sink.idx.i448 = select i1 %i.qk, i64 0, i64 %i.qm
  %.sink.i449 = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink.idx.i448
  %i.qn = getelementptr inbounds i8, ptr %.sink.i449, i64 %i.pp
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !64
  %i.qp = mul i64 %i.ql, %i.mq
  %.sink.idx.i450 = select i1 %i.qk, i64 0, i64 %i.qp
  %.sink.i451 = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sink.idx.i450
  %i.qq = getelementptr inbounds i8, ptr %.sink.i451, i64 %i.pw
  %i.qr = zext i8 %i.qo to i32
  %i.qs = load i8, ptr %i.qq, align 1, !tbaa !64
  %i.qt = zext i8 %i.qs to i32
  %i.qu = sub nsw i32 %i.qr, %i.qt                ; 2 uses
  %i.qv = mul nsw i32 %i.qu, %i.qu
  %i.qw = sub nsw i32 %i.qi, %i.qv                ; 2 uses
  store i32 %i.qw, ptr %i.qg, align 4, !tbaa !48
  %i.qx = add nsw i32 %i.qw, %i.po                ; 4 uses
  store i32 %i.qx, ptr %i.pk, align 4, !tbaa !48
  %indvars.iv.next788 = add nsw i64 %indvars.iv787, 1 ; 2 uses
  %lftr.wideiv790 = trunc i64 %indvars.iv.next788 to i32
  %exitcond791.not = icmp eq i32 %i.hf, %lftr.wideiv790
  br i1 %exitcond791.not, label %._crit_edge619, label %bb.ay, !llvm.loop !79

bb.az:                                            ; preds = %._crit_edge619
  store i32 %i.qx, ptr %i.ha, align 4, !tbaa !48
  br i1 %i.hc, label %.lr.ph622, label %.loopexit508

.lr.ph622:                                        ; preds = %bb.az, %bb.ba
  %.0365620 = phi i32 [ %i.re, %bb.ba ], [ %i.hb, %bb.az ] ; 3 uses
  %i.qy = zext nneg i32 %.0365620 to i64
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.qy ; 3 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !48 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 4 ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !48 ; 2 uses
  %i.rd = icmp sgt i32 %i.ra, %i.rc
  br i1 %i.rd, label %bb.ba, label %.loopexit508

bb.ba:                                            ; preds = %.lr.ph622
  store i32 %i.rc, ptr %i.qz, align 4, !tbaa !48
  store i32 %i.ra, ptr %i.rb, align 4, !tbaa !48
  %i.re = add nsw i32 %.0365620, -1
  %i.rf = icmp sgt i32 %.0365620, 0
  br i1 %i.rf, label %.lr.ph622, label %.loopexit508, !llvm.loop !75

.loopexit508:                                     ; preds = %.lr.ph622, %bb.ba, %bb.az, %._crit_edge619
  %i.rg = add nsw i32 %.7625, 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ax, %.loopexit508
  %.8 = phi i32 [ %.7625, %bb.ax ], [ %i.rg, %.loopexit508 ] ; 2 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1
  %.not407.not = icmp slt i64 %indvars.iv792, %i.hh
  br i1 %.not407.not, label %bb.ax, label %._crit_edge629.split, !llvm.loop !76

.preheader510:                                    ; preds = %.preheader510.lr.ph, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458
  %indvars.iv828 = phi i64 [ %i.hp, %.preheader510.lr.ph ], [ %indvars.iv.next829, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 6 uses
  %indvars.iv818 = phi i32 [ %i.ho, %.preheader510.lr.ph ], [ %indvars.iv.next819, %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458 ] ; 2 uses
  %i.rh = sext i32 %indvars.iv818 to i64
  br i1 %.not.i.i.i.i, label %.preheader509, label %.lr.ph660.preheader

.lr.ph660.preheader:                              ; preds = %.preheader510
  br i1 %min.iters.check928, label %.lr.ph660.preheader947, label %vector.body931

vector.body931:                                   ; preds = %.lr.ph660.preheader, %vector.body931
  %index932 = phi i64 [ %index.next933, %vector.body931 ], [ 0, %.lr.ph660.preheader ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %index932 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ri, align 4, !tbaa !48
  store <4 x i32> splat (i32 2147483647), ptr %i.rj, align 4, !tbaa !48
  %index.next933 = add nuw i64 %index932, 8       ; 2 uses
  %i.rk = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.rk, label %middle.block934, label %vector.body931, !llvm.loop !80

middle.block934:                                  ; preds = %vector.body931
  br i1 %cmp.n935, label %.preheader509, label %.lr.ph660.preheader947

.lr.ph660.preheader947:                           ; preds = %.lr.ph660.preheader, %middle.block934
  %indvars.iv812.ph = phi i64 [ 0, %.lr.ph660.preheader ], [ %n.vec930, %middle.block934 ]
  br label %.lr.ph660

.preheader509:                                    ; preds = %.lr.ph660, %middle.block934, %.preheader510
  br i1 %.not407624, label %._crit_edge676.split, label %.lr.ph669.preheader

.lr.ph669.preheader:                              ; preds = %.preheader509
  %i.rl = add nsw i64 %indvars.iv828, %i.hq
  %i.rm = add nsw i64 %indvars.iv828, %i.hi       ; 3 uses
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.rm
  %i.ro = trunc nsw i64 %indvars.iv828 to i32
  %i.rp = add i32 %i.ro, %i.gx
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.rq
  br label %.lr.ph669

.lr.ph660:                                        ; preds = %.lr.ph660.preheader947, %.lr.ph660
  %indvars.iv812 = phi i64 [ %indvars.iv.next813, %.lr.ph660 ], [ %indvars.iv812.ph, %.lr.ph660.preheader947 ] ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv812
  store i32 2147483647, ptr %i.rs, align 4, !tbaa !48
  %indvars.iv.next813 = add nuw nsw i64 %indvars.iv812, 1 ; 2 uses
  %exitcond817.not = icmp eq i64 %indvars.iv.next813, %wide.trip.count816
  br i1 %exitcond817.not, label %.preheader509, label %.lr.ph660, !llvm.loop !81

._crit_edge676.split:                             ; preds = %._crit_edge670, %.preheader509
  br i1 %.not.i, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, label %.lr.ph.i453

.lr.ph.i453:                                      ; preds = %._crit_edge676.split, %.lr.ph.i453
  %indvars.iv.i454 = phi i64 [ %indvars.iv.next.i456, %.lr.ph.i453 ], [ 0, %._crit_edge676.split ] ; 2 uses
  %.0810.i455 = phi float [ %i.rw, %.lr.ph.i453 ], [ 0.000000e+00, %._crit_edge676.split ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %indvars.iv.i454
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !48
  %i.rv = sitofp i32 %i.ru to float
  %i.rw = fadd float %.0810.i455, %i.rv           ; 2 uses
  %indvars.iv.next.i456 = add i64 %indvars.iv.i454, 1 ; 2 uses
  %i.rx = and i64 %indvars.iv.next.i456, 4294967295
  %i.ry = icmp ugt i64 %i.dr, %i.rx
  br i1 %i.ry, label %.lr.ph.i453, label %_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458, !llvm.loop !60

_ZN2cv11xfeatures2d16MSDDetector_Impl18computeAvgDistanceERSt6vectorIiSaIiEEi.exit458: ; preds = %.lr.ph.i453, %._crit_edge676.split
  %.08.lcssa.i457 = phi float [ 0.000000e+00, %._crit_edge676.split ], [ %i.rw, %.lr.ph.i453 ]
  %i.rz = fdiv float %.08.lcssa.i457, %i.dy
  %gep901 = getelementptr [4 x i8], ptr %invariant.gep900, i64 %indvars.iv828
  store float %i.rz, ptr %gep901, align 4, !tbaa !26
  %indvars.iv.next829 = add nsw i64 %indvars.iv828, 1 ; 2 uses
  %indvars.iv.next819 = add i32 %indvars.iv818, 1
  %lftr.wideiv831 = trunc i64 %indvars.iv.next829 to i32
  %exitcond832.not = icmp eq i32 %3, %lftr.wideiv831
  br i1 %exitcond832.not, label %.loopexit511, label %.preheader510, !llvm.loop !82

.lr.ph669:                                        ; preds = %.lr.ph669.preheader, %._crit_edge670
  %indvars.iv824 = phi i64 [ %i.mj, %.lr.ph669.preheader ], [ %indvars.iv.next825, %._crit_edge670 ] ; 5 uses
  %.9673 = phi i32 [ 0, %.lr.ph669.preheader ], [ %.11, %._crit_edge670 ]
  %i.sa = icmp eq i64 %indvars.iv824, %indvars.iv833.a
  %i.sb = add nsw i64 %indvars.iv824, %i.hi
  %i.sc = trunc nsw i64 %indvars.iv824 to i32
  %i.sd = add i32 %i.sc, %i.gx
  %i.se = sext i32 %i.sd to i64
  br label %bb.bc

._crit_edge670:                                   ; preds = %bb.bg
  %indvars.iv.next825 = add nsw i64 %indvars.iv824, 1
  %.not405.not = icmp slt i64 %indvars.iv824, %i.mn
  br i1 %.not405.not, label %.lr.ph669, label %._crit_edge676.split, !llvm.loop !83

bb.bc:                                            ; preds = %.lr.ph669, %bb.bg
  %indvars.iv820 = phi i64 [ %i.rh, %.lr.ph669 ], [ %indvars.iv.next821, %bb.bg ] ; 4 uses
  %.10666 = phi i32 [ %.9673, %.lr.ph669 ], [ %.11, %bb.bg ] ; 3 uses
  %i.sf = icmp eq i64 %indvars.iv820, %indvars.iv828
  %or.cond422 = and i1 %i.sa, %i.sf
  br i1 %or.cond422, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sg = add nsw i64 %indvars.iv820, %i.hi       ; 2 uses
  %i.sh = load i32, ptr %i.gu, align 4, !tbaa !63
  %i.si = icmp slt i32 %i.sh, 2                   ; 2 uses
  %i.sj = load ptr, ptr %i.gv, align 8, !tbaa !61 ; 4 uses
  %i.sk = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.sl = mul i64 %i.sk, %i.sb
  %.sink.idx.i459 = select i1 %i.si, i64 0, i64 %i.sl
  %.sink.i460 = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.sink.idx.i459
  %i.sm = getelementptr inbounds i8, ptr %.sink.i460, i64 %i.sg
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !64
  %i.so = mul i64 %i.sk, %i.pa
  %.sink.idx.i461 = select i1 %i.si, i64 0, i64 %i.so
  %.sink.i462 = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.sink.idx.i461
  %i.sp = getelementptr inbounds i8, ptr %.sink.i462, i64 %i.rm
  %i.sq = zext i8 %i.sn to i32
  %i.sr = load i8, ptr %i.sp, align 1, !tbaa !64
  %i.ss = zext i8 %i.sr to i32
  %i.st = sub nsw i32 %i.sq, %i.ss                ; 2 uses
  %i.su = mul nsw i32 %i.st, %i.st
  %i.sv = load ptr, ptr %i.rn, align 8, !tbaa !53
  %i.sw = sext i32 %.10666 to i64                 ; 3 uses
  %i.sx = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.sw ; 3 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !48
  %i.sz = add nsw i32 %i.su, %i.sy                ; 2 uses
  store i32 %i.sz, ptr %i.sx, align 4, !tbaa !48
  %i.ta = load i32, ptr %i.gu, align 4, !tbaa !63
  %i.tb = icmp slt i32 %i.ta, 2                   ; 2 uses
  %i.tc = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.td = mul i64 %i.tc, %i.se
  %.sink.idx.i463 = select i1 %i.tb, i64 0, i64 %i.td
  %.sink.i464 = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.sink.idx.i463
  %i.te = getelementptr inbounds i8, ptr %.sink.i464, i64 %i.sg
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !64
  %i.tg = mul i64 %i.tc, %i.pc
  %.sink.idx.i465 = select i1 %i.tb, i64 0, i64 %i.tg
  %.sink.i466 = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.sink.idx.i465
  %i.th = getelementptr inbounds i8, ptr %.sink.i466, i64 %i.rm
  %i.ti = zext i8 %i.tf to i32
  %i.tj = load i8, ptr %i.th, align 1, !tbaa !64
  %i.tk = zext i8 %i.tj to i32
  %i.tl = sub nsw i32 %i.ti, %i.tk                ; 2 uses
  %i.tm = mul nsw i32 %i.tl, %i.tl
  %i.tn = sub nsw i32 %i.sz, %i.tm                ; 2 uses
  store i32 %i.tn, ptr %i.sx, align 4, !tbaa !48
  %i.to = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.sw ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !48
  %i.tq = add nsw i32 %i.tn, %i.tp
  %i.tr = load ptr, ptr %i.rr, align 8, !tbaa !53
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.sw
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !48
  %i.tu = sub i32 %i.tq, %i.tt                    ; 3 uses
  store i32 %i.tu, ptr %i.to, align 4, !tbaa !48
  %i.tv = load i32, ptr %i.ha, align 4, !tbaa !48
  %i.tw = icmp slt i32 %i.tu, %i.tv
  br i1 %i.tw, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.bd
  store i32 %i.tu, ptr %i.ha, align 4, !tbaa !48
  br i1 %i.hc, label %.lr.ph663, label %.loopexit

.lr.ph663:                                        ; preds = %bb.be, %bb.bf
  %.0361661 = phi i32 [ %i.ud, %bb.bf ], [ %i.hb, %bb.be ] ; 3 uses
  %i.tx = zext nneg i32 %.0361661 to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0469.0, i64 %i.tx ; 3 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !48 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !48 ; 2 uses
  %i.uc = icmp sgt i32 %i.tz, %i.ub
  br i1 %i.uc, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph663
  store i32 %i.ub, ptr %i.ty, align 4, !tbaa !48
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !48
  %i.ud = add nsw i32 %.0361661, -1
  %i.ue = icmp sgt i32 %.0361661, 0
  br i1 %i.ue, label %.lr.ph663, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph663, %bb.bf, %bb.be, %bb.bd
  %i.uf = add nsw i32 %.10666, 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %.loopexit
  %.11 = phi i32 [ %.10666, %bb.bc ], [ %i.uf, %.loopexit ] ; 2 uses
  %indvars.iv.next821 = add nsw i64 %indvars.iv820, 1
  %.not406.not = icmp slt i64 %indvars.iv820, %i.rl
  br i1 %.not406.not, label %bb.bc, label %._crit_edge670, !llvm.loop !85

.lr.ph686:                                        ; preds = %.lr.ph686.preheader, %bb.bi
  %indvars.iv838 = phi i64 [ 0, %.lr.ph686.preheader ], [ %indvars.iv.next839, %bb.bi ] ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv838
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !53 ; 2 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph686
  tail call void @_ZdaPv(ptr noundef nonnull %i.uh) #24
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph686, %bb.bh
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %._crit_edge687, label %.lr.ph686, !llvm.loop !86

._crit_edge687:                                   ; preds = %bb.bi, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  %.not.i.i.i = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge687
  %i.uj = ptrtoint ptr %.sroa.45.0 to i64
  %i.uk = sub i64 %i.uj, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.uk) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge687, %bb.bj
  ret void

bb.bk:                                            ; preds = %bb.d, %bb.f, %bb.c
  %.pn416.pn = phi { ptr, i32 } [ %i.an, %bb.c ], [ %i.ar, %bb.f ], [ %i.ao, %bb.d ]
  %.not.i.i.i467 = icmp eq ptr %.sroa.0469.0, null
  br i1 %.not.i.i.i467, label %_ZNSt6vectorIiSaIiEED2Ev.exit468, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ul = ptrtoint ptr %.sroa.45.0 to i64
  %i.um = ptrtoint ptr %.sroa.0469.0 to i64
  %i.un = sub i64 %i.ul, %i.um
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0469.0, i64 noundef %i.un) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit468

_ZNSt6vectorIiSaIiEED2Ev.exit468:                 ; preds = %bb.bl, %bb.bk
  resume { ptr, i32 } %.pn416.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv11xfeatures2d16MSDDetector_Impl18computeOrientationERNS_3MatEiiSt6vectorINS_6Point_IfEESaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly align 8 captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.21", align 1 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #23 ; 44 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.a, i8 0, i64 144, i1 false), !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !90     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 7 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.a, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.a:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #22
          to label %.noexc127 unwind label %bb.c

.noexc127:                                        ; preds = %bb.a
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.noexc
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = ashr exact i64 %i.g, 1                   ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23
          to label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit unwind label %bb.c ; 13 uses

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %bb.b
  %i.l = and i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.l, i1 false), !tbaa !48
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = trunc i64 %i.h to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.preheader
end_hunk_1
