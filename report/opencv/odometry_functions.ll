Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  store i64 %i.d, ptr %i.a, align 8, !tbaa !56
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.g, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !158
  %i.l = load ptr, ptr %0, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL24buildPyramidCameraMatrixERKNS_4MatxIfLi3ELi3EEEiRSt6vectorIS1_SaIS1_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 36                  ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 %i.a, %i.h
  tail call void @_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.j)
  br label %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, %i.a
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [36 x i8], ptr %i.d, i64 %i.a ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv4MatxIfLi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv4MatxIfLi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.l, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv4MatxIfLi3ELi3EEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !83    ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <4 x float>, ptr %0, align 4
  %.sroa.8.0..sroa_idx17.peel = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.o = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.n, ptr %.pre, align 4
  store <4 x float> %i.o, ptr %.sroa.8.0..sroa_idx17.peel, align 4
  %.sroa.12.0..sroa_idx25.peel = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx25.peel, align 4, !tbaa !19
  %exitcond.peel.not = icmp eq i32 %1, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.p = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %i.q = icmp eq i32 %1, 2
  br i1 %i.q, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.p, -2
  br label %.peel.next

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.peel.next
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.r = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.s = getelementptr [36 x i8], ptr %i.r, i64 %indvars.iv.epil.init ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -20
  %i.u = getelementptr i8, ptr %i.s, i64 -36
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.r, i64 %indvars.iv.epil.init ; 3 uses
  %i.w = load <4 x float>, ptr %i.u, align 4, !tbaa !23, !noalias !162
  %i.x = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  store <4 x float> %i.x, ptr %i.v, align 4
  %.sroa.8.0..sroa_idx17.epil = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load <4 x float>, ptr %i.t, align 4, !tbaa !23, !noalias !162
  %i.z = fmul <4 x float> %i.y, splat (float 5.000000e-01)
  store <4 x float> %i.z, ptr %.sroa.8.0..sroa_idx17.epil, align 4
  %.sroa.12.0..sroa_idx25.epil = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx25.epil, align 4, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e, %_ZNSt6vectorIN2cv4MatxIfLi3ELi3EEESaIS2_EE6resizeEm.exit
  ret void

.peel.next:                                       ; preds = %.peel.next, %.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.1, %.peel.next ] ; 4 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %.peel.next ]
  %i.aa = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.ab = getelementptr [36 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -20
  %i.ad = getelementptr i8, ptr %i.ab, i64 -36
  %i.ae = getelementptr inbounds nuw [36 x i8], ptr %i.aa, i64 %indvars.iv ; 3 uses
  %i.af = load <4 x float>, ptr %i.ad, align 4, !tbaa !23, !noalias !162
  %i.ag = fmul <4 x float> %i.af, splat (float 5.000000e-01)
  store <4 x float> %i.ag, ptr %i.ae, align 4
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load <4 x float>, ptr %i.ac, align 4, !tbaa !23, !noalias !162
  %i.ai = fmul <4 x float> %i.ah, splat (float 5.000000e-01)
  store <4 x float> %i.ai, ptr %.sroa.8.0..sroa_idx17, align 4
  %.sroa.12.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx25, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.ak = getelementptr [36 x i8], ptr %i.aj, i64 %indvars.iv.next ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -20
  %i.am = getelementptr i8, ptr %i.ak, i64 -36
  %i.an = getelementptr inbounds nuw [36 x i8], ptr %i.aj, i64 %indvars.iv.next ; 3 uses
  %i.ao = load <4 x float>, ptr %i.am, align 4, !tbaa !23, !noalias !162
  %i.ap = fmul <4 x float> %i.ao, splat (float 5.000000e-01)
  store <4 x float> %i.ap, ptr %i.an, align 4
  %.sroa.8.0..sroa_idx17.1 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load <4 x float>, ptr %i.al, align 4, !tbaa !23, !noalias !162
  %i.ar = fmul <4 x float> %i.aq, splat (float 5.000000e-01)
  store <4 x float> %i.ar, ptr %.sroa.8.0..sroa_idx17.1, align 4
  %.sroa.12.0..sroa_idx25.1 = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx25.1, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !161
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

declare void @_ZN2cv3Mat3eyeEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #22
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

declare void @_ZNK2cv13OdometryFrame12getPyramidAtERKNS_12_OutputArrayENS_24OdometryFramePyramidTypeEm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv15computeCorrespsERKNS_4MatxIfLi3ELi3EEERKNS_3MatES6_S6_S6_S6_S6_S6_fRS4_S7_RdNS_12OdometryTypeE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %7, float noundef %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %11, i32 noundef %12) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::Matx.23", align 8      ; 15 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %21 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %25 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZNK2cv3Mat3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 1)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #22
  %i.a = load ptr, ptr %18, align 8, !tbaa !67, !noalias !184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bm

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #22
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #22
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi4ELi4EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.23") align 8 %19, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.b unwind label %bb.w

bb.b:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44   ; 6 uses
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #23
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %15, align 8, !tbaa !49    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.body264

bb.f:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %i.j, 0
  br i1 %i.r, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.s = icmp eq i32 %i.j, 0
  %i.t = zext i1 %i.s to i32
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.v = icmp eq i32 %i.j, 2
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20   ; 2 uses
  %.not.i = icmp eq i32 %i.j, 1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.u, align 4, !tbaa !20
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %.thread.i
  %i.aa = phi i32 [ %i.t, %.thread.i ], [ %i.y, %bb.g ]
  %i.ab = icmp sgt i32 %i.j, -1
  %i.ac = zext i1 %i.ab to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ad = phi i32 [ %i.y, %bb.h ], [ %i.aa, %bb.i ]
  %i.ae = phi i32 [ %i.z, %bb.h ], [ %i.ac, %bb.i ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store <2 x double> splat (double -1.000000e+00), ptr %21, align 16, !tbaa !71, !alias.scope !185
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.af, align 16, !tbaa !71, !alias.scope !185
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %20, i64 %.sroa.0.0.insert.insert.i, i32 noundef 35, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #22
  %i.ag = icmp ne i32 %12, 1                      ; 6 uses
  br i1 %i.ag, label %bb.ad, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ah = load i32, ptr %i.i, align 8, !tbaa !44  ; 6 uses
  %i.ai = icmp slt i32 %i.ah, 3
  br i1 %i.ai, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc275 unwind label %bb.z

.noexc275:                                        ; preds = %bb.m
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.21, i32 noundef 109) #23
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc275
  unreachable

bb.o:                                             ; preds = %.noexc275
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266: ; preds = %bb.o
  %i.an = load i64, ptr %i.al, align 8, !tbaa !19
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body276

bb.p:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %i.ah, 0
  br i1 %i.ap, label %bb.q, label %.thread.i269

.thread.i269:                                     ; preds = %bb.p
  %i.aq = icmp eq i32 %i.ah, 0
  %i.ar = zext i1 %i.aq to i32
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %i.at = icmp eq i32 %i.ah, 2
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %.not.i274 = icmp eq i32 %i.ah, 1
  br i1 %.not.i274, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !20
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.thread.i269
  %i.ay = phi i32 [ %i.ar, %.thread.i269 ], [ %i.aw, %bb.q ]
  %i.az = icmp sgt i32 %i.ah, -1
  %i.ba = zext i1 %i.az to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bb = phi i32 [ %i.aw, %bb.r ], [ %i.ay, %bb.s ]
  %i.bc = phi i32 [ %i.ax, %bb.r ], [ %i.ba, %bb.s ]
  %.sroa.2.0.insert.ext.i270 = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i271 = shl nuw i64 %.sroa.2.0.insert.ext.i270, 32
  %.sroa.0.0.insert.ext.i272 = zext i32 %i.bb to i64
  %.sroa.0.0.insert.insert.i273 = or disjoint i64 %.sroa.2.0.insert.shift.i271, %.sroa.0.0.insert.ext.i272
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store <2 x double> splat (double -1.000000e+00), ptr %24, align 16, !tbaa !71, !alias.scope !186
  %i.bd = getelementptr inbounds nuw i8, ptr %24, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.bd, align 16, !tbaa !71, !alias.scope !186
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %23, i64 %.sroa.0.0.insert.insert.i273, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.be = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.v unwind label %bb.ab      ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ad

bb.w:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.x:                                             ; preds = %bb.c
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body264

bb.y:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %.body264

bb.z:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body276

bb.aa:                                            ; preds = %bb.t
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %i.bj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %.body276

.body276:                                         ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bi, %bb.z ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i267 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.bk

bb.ad:                                            ; preds = %bb.k, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !23, !noalias !187
  %i.br = load float, ptr %0, align 4, !tbaa !23, !noalias !187
  %i.bs = load float, ptr %i.bl, align 4, !tbaa !23, !noalias !187
  %i.bt = load <4 x float>, ptr %i.bn, align 4, !tbaa !23, !noalias !187 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bv = insertelement <2 x float> %i.bu, float %i.br, i64 0
  %i.bw = fpext <2 x float> %i.bv to <2 x double> ; 13 uses
  %i.bx = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.by = insertelement <2 x float> %i.bx, float %i.bs, i64 0
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 12 uses
  %i.ca = load float, ptr %i.bp, align 4, !tbaa !23, !noalias !187
  %i.cb = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.cc = insertelement <2 x float> %i.cb, float %i.bq, i64 0
  %i.cd = fpext <2 x float> %i.cc to <2 x double> ; 10 uses
  %26 = fpext float %i.ca to double               ; 6 uses
  %27 = load <2 x float>, ptr %i.bo, align 4, !tbaa !23, !noalias !187
  %i.ce = fpext <2 x float> %27 to <2 x double>   ; 11 uses
  %28 = shufflevector <2 x double> %i.cd, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3> ; 2 uses
  %29 = fneg <2 x double> %28                     ; 3 uses
  %30 = shufflevector <2 x double> %29, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x double> %30, %i.ce
  %32 = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.cf = insertelement <2 x double> poison, double %26, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ch = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %i.cg, <2 x double> %31) ; 2 uses
  %33 = shufflevector <2 x double> %i.bz, <2 x double> %29, <2 x i32> <i32 0, i32 3>
  %i.ci = fneg <2 x double> %i.ch
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.ck = fmul <2 x double> %33, %i.cj
  %34 = shufflevector <2 x double> %i.ch, <2 x double> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %34, <2 x double> %i.ck) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cd, i64 0
  %i.cn = extractelement <2 x double> %i.cl, i64 0
  %i.co = extractelement <2 x double> %i.cl, i64 1
  %i.cp = call noundef double @llvm.fmuladd.f64(double %i.cm, double %i.co, double %i.cn) ; 2 uses
  %i.cq = fcmp une double %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cr = fdiv double 1.000000e+00, %i.cp         ; 3 uses
  %35 = extractelement <2 x double> %i.ce, i64 1
  %i.cs = extractelement <2 x double> %i.bw, i64 1
  %36 = insertelement <2 x double> %i.ce, double %26, i64 0
  %37 = fneg <2 x double> %36                     ; 2 uses
  %i.ct = shufflevector <2 x double> %i.bw, <2 x double> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.cu = fmul <2 x double> %i.ct, %37
  %38 = insertelement <2 x double> %i.ce, double %26, i64 1
  %i.cv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %38, <2 x double> %i.cu)
  %i.cw = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %39 = shufflevector <2 x double> %i.ce, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %40 = fneg <2 x double> %39                     ; 2 uses
  %shift = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %40
  %i.cz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.da = call double @llvm.fmuladd.f64(double %i.cs, double %35, double %i.cz)
  %41 = fmul double %i.da, %i.cr
  %42 = shufflevector <2 x double> %i.bw, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %43 = shufflevector <2 x double> %42, <2 x double> %i.bz, <6 x i32> <i32 0, i32 1, i32 2, i32 2, i32 0, i32 1>
  %44 = shufflevector <2 x double> %37, <2 x double> %40, <6 x i32> <i32 1, i32 2, i32 0, i32 3, i32 poison, i32 poison>
  %45 = shufflevector <2 x double> %29, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <6 x double> %44, <6 x double> %45, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %47 = fmul <6 x double> %43, %46
  %i.db = shufflevector <2 x double> %i.bz, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %48 = shufflevector <2 x double> %i.cd, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2>
  %49 = shufflevector <2 x double> %i.db, <2 x double> %48, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %50 = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <6 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <6 x double> %49, <6 x double> %50, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %52 = shufflevector <2 x double> %i.ce, <2 x double> %i.bz, <6 x i32> <i32 0, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %53 = insertelement <6 x double> %52, double %26, i64 1
  %54 = shufflevector <2 x double> %i.cd, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %55 = shufflevector <6 x double> %53, <6 x double> %54, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %56 = call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %51, <6 x double> %55, <6 x double> %47)
  %57 = insertelement <6 x double> poison, double %i.cr, i64 0
  %58 = shufflevector <6 x double> %57, <6 x double> poison, <6 x i32> zeroinitializer
  %59 = fmul <6 x double> %56, %58
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.11344.0 = phi double [ %41, %bb.ae ], [ 0.000000e+00, %bb.ad ] ; 3 uses
  %60 = phi <6 x double> [ %59, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 10 uses
  %i.dc = phi <2 x double> [ %i.cy, %bb.ae ], [ zeroinitializer, %bb.ad ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !60 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !54 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.di = load double, ptr %i.dh, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 88
  %i.do = load double, ptr %i.dn, align 8, !tbaa !71, !noalias !188 ; 2 uses
  %i.dp = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.dq, <2 x double> zeroinitializer)
  %i.ds = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.dt, <2 x double> %i.dr)
  %i.dv = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.dw, <2 x double> %i.du)
  %i.dy = extractelement <2 x double> %i.ce, i64 0 ; 3 uses
  %i.dz = call double @llvm.fmuladd.f64(double %i.dy, double %i.di, double 0.000000e+00)
  %i.ea = extractelement <2 x double> %i.ce, i64 1 ; 3 uses
  %i.eb = call double @llvm.fmuladd.f64(double %i.ea, double %i.dl, double %i.dz)
  %i.ec = call double @llvm.fmuladd.f64(double %26, double %i.do, double %i.eb) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ed = add nsw i32 %i.dg, %i.de                ; 2 uses
  %i.ee = mul nsw i32 %i.ed, 3                    ; 2 uses
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.eg, ptr %25, align 8, !tbaa !92
  %i.eh = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.not.i.i = icmp ugt i32 %i.ee, 264
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !93
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ei = icmp slt i32 %i.ed, 0
  %i.ej = shl nuw nsw i64 %i.ef, 2
  %i.ek = select i1 %i.ei, i64 -1, i64 %i.ej
  %i.el = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ek) #24
          to label %.noexc280 unwind label %bb.ai ; 2 uses

.noexc280:                                        ; preds = %bb.ag
  store ptr %i.el, ptr %25, align 8, !tbaa !92
  %.pre = load i32, ptr %i.dd, align 4, !tbaa !60
  %.pre488 = load i32, ptr %i.df, align 8, !tbaa !54
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %.noexc280
  %i.em = phi i32 [ %i.dg, %bb.af ], [ %.pre488, %.noexc280 ] ; 6 uses
  %i.en = phi i32 [ %i.de, %bb.af ], [ %.pre, %.noexc280 ] ; 7 uses
  %i.eo = phi ptr [ %i.eg, %bb.af ], [ %i.el, %.noexc280 ] ; 6 uses
  %i.ep = sext i32 %i.en to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ep ; 4 uses
  %i.er = sext i32 %i.em to i64                   ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er ; 3 uses
  %i.et = shl i32 %i.en, 1
  %i.eu = sext i32 %i.et to i64                   ; 3 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.er ; 3 uses
  %i.ex = shl i32 %i.em, 1
  %i.ey = sext i32 %i.ex to i64                   ; 4 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.ey ; 4 uses
  %i.fa = mul i32 %i.en, 3
  %i.fb = sext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fb
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.ey ; 4 uses
  %61 = load double, ptr %19, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %62 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %63 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %64 = load double, ptr %i.dj, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %19, i64 80
  %65 = load double, ptr %i.fi, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %66 = load <2 x double>, ptr %63, align 8       ; 2 uses
  %i.fj = load double, ptr %62, align 8, !tbaa !71, !noalias !189 ; 2 uses
  %i.fk = call double @llvm.fmuladd.f64(double %i.dy, double %i.fj, double 0.000000e+00)
  %67 = insertelement <2 x double> %66, double %i.ff, i64 1
  %68 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fk, i64 1
  %69 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %67, <2 x double> %68) ; 2 uses
  %70 = extractelement <2 x double> %69, i64 0
  %i.fl = call double @llvm.fmuladd.f64(double %i.ea, double %i.fh, double %70)
  %i.fm = call double @llvm.fmuladd.f64(double %26, double %65, double %i.fl) ; 3 uses
  %i.fn = insertelement <2 x double> poison, double %61, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.fo, <2 x double> zeroinitializer)
  %i.fq = insertelement <2 x double> poison, double %64, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.fr, <2 x double> %i.fp)
  %i.ft = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.fu, <2 x double> zeroinitializer)
  %71 = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fw = shufflevector <2 x double> %71, <2 x double> poison, <2 x i32> zeroinitializer
  %72 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.fw, <2 x double> %i.fv)
  %i.fx = shufflevector <2 x double> %66, <2 x double> poison, <2 x i32> zeroinitializer
  %73 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.fx, <2 x double> zeroinitializer)
  %74 = insertelement <2 x double> poison, double %i.fh, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %76 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %75, <2 x double> %73)
  %i.fy = insertelement <2 x double> poison, double %65, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.fz, <2 x double> %76) ; 4 uses
  %78 = extractelement <2 x double> %77, i64 0
  %79 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 2, i32 2>
  %80 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 1, i32 1>
  %81 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 5, i32 5>
  %82 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 4, i32 4>
  %83 = shufflevector <2 x double> %i.dc, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %84 = extractelement <2 x double> %i.dc, i64 0
  %i.ga = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> zeroinitializer
  %85 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 3, i32 3>
  %86 = shufflevector <2 x double> %77, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %87 = insertelement <2 x double> poison, double %.sroa.11344.0, i64 0
  %88 = load <2 x double>, ptr %i.dm, align 8, !tbaa !71, !noalias !189 ; 3 uses
  %89 = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %89, <2 x double> %i.fs) ; 4 uses
  %i.gc = shufflevector <2 x double> %88, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.gc, <2 x double> %72) ; 4 uses
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %79, <2 x double> zeroinitializer)
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %80, <2 x double> %i.ge)
  %i.gg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %81, <2 x double> zeroinitializer)
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %82, <2 x double> %i.gg)
  %i.gi = insertelement <2 x double> %i.gb, double -0.000000e+00, i64 1
  %i.gj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %83, <2 x double> zeroinitializer)
  %i.gk = shufflevector <2 x double> %i.gd, <2 x double> %i.gb, <2 x i32> <i32 0, i32 3>
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.dc, <2 x double> %i.gj) ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 0
  %i.gn = call double @llvm.fmuladd.f64(double %78, double %.sroa.11344.0, double %i.gm) ; 2 uses
  %i.go = extractelement <2 x double> %i.gd, i64 1
  %i.gp = extractelement <2 x double> %i.gl, i64 1
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %i.ga, <2 x double> %i.gf) ; 3 uses
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %77, <2 x double> %85, <2 x double> %i.gh) ; 3 uses
  %90 = call double @llvm.fmuladd.f64(double %i.dy, double %61, double 0.000000e+00)
  %91 = call double @llvm.fmuladd.f64(double %i.ea, double %64, double %90)
  %92 = insertelement <2 x double> %69, double %91, i64 0
  %i.gs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %88, <2 x double> %92) ; 4 uses
  %i.gt = call double @llvm.fmuladd.f64(double %i.go, double %84, double %i.gp)
  %93 = shufflevector <2 x double> %87, <2 x double> %i.gs, <2 x i32> <i32 0, i32 2>
  %i.gu = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gt, i64 0
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %86, <2 x double> %93, <2 x double> %i.gu) ; 3 uses
  %94 = shufflevector <2 x double> %i.dc, <2 x double> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %95 = shufflevector <6 x double> %60, <6 x double> %94, <2 x i32> <i32 2, i32 6>
  %i.gw = insertelement <2 x double> %i.gv, double 0.000000e+00, i64 0
  %i.gx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %95, <2 x double> %i.gw) ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 1
  %i.gz = call double @llvm.fmuladd.f64(double %i.fm, double %.sroa.11344.0, double %i.gy) ; 2 uses
  %96 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 5, i32 1>
  %i.ha = shufflevector <2 x double> %i.gx, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %96, <2 x double> %i.ha)
  %i.hc = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x double> %i.hc, double %i.fm, i64 1
  %97 = shufflevector <6 x double> %60, <6 x double> poison, <2 x i32> <i32 4, i32 0>
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %97, <2 x double> %i.hb) ; 3 uses
  %98 = extractelement <6 x double> %60, i64 3
  %i.hf = extractelement <2 x double> %i.he, i64 0
  %i.hg = call double @llvm.fmuladd.f64(double %i.fm, double %98, double %i.hf) ; 2 uses
  %i.hh = icmp sgt i32 %i.en, 0                   ; 2 uses
  br i1 %i.hh, label %.lr.ph.preheader, label %.preheader434

.lr.ph.preheader:                                 ; preds = %bb.ah
  %wide.trip.count = zext nneg i32 %i.en to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.en, 8
  br i1 %min.iters.check, label %.lr.ph.preheader562, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.hi = add nsw i64 %i.ep, %i.er
  %i.hj = shl nsw i64 %i.hi, 2                    ; 2 uses
  %i.hk = add nsw i64 %i.hj, -1
  %diff.check = icmp ult i64 %i.hk, 15
  %i.hl = add nsw i64 %i.eu, %i.ey
  %i.hm = shl nsw i64 %i.hl, 2                    ; 2 uses
  %i.hn = add nsw i64 %i.hm, -1
  %diff.check519 = icmp ult i64 %i.hn, 15
  %conflict.rdx = or i1 %diff.check, %diff.check519
  %i.ho = sub nsw i64 %i.hj, %i.hm
  %diff.check520 = icmp ugt i64 %i.ho, -16
  %conflict.rdx521 = or i1 %conflict.rdx, %diff.check520
  br i1 %conflict.rdx521, label %.lr.ph.preheader562, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gn, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat523 = shufflevector <2 x double> %i.gv, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert524 = insertelement <4 x double> poison, double %i.gz, i64 0
  %broadcast.splat525 = shufflevector <4 x double> %broadcast.splatinsert524, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.hp = uitofp nneg <4 x i32> %vec.ind to <4 x double> ; 3 uses
  %i.hq = fmul <4 x double> %broadcast.splat, %i.hp
  %i.hr = fptrunc <4 x double> %i.hq to <4 x float>
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index
  store <4 x float> %i.hr, ptr %i.hs, align 4, !tbaa !23
  %i.ht = fmul <4 x double> %broadcast.splat523, %i.hp
  %i.hu = fptrunc <4 x double> %i.ht to <4 x float>
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index
  store <4 x float> %i.hu, ptr %i.hv, align 4, !tbaa !23
  %i.hw = fmul <4 x double> %broadcast.splat525, %i.hp
  %i.hx = fptrunc <4 x double> %i.hw to <4 x float>
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %index
  store <4 x float> %i.hx, ptr %i.hy, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader434, label %.lr.ph.preheader562

.lr.ph.preheader562:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.ia = extractelement <2 x double> %i.gv, i64 0
  br label %.lr.ph

.preheader434:                                    ; preds = %.lr.ph, %middle.block, %bb.ah
  %i.ib = icmp sgt i32 %i.em, 0
  br i1 %i.ib, label %.lr.ph437.preheader, label %._crit_edge447

.lr.ph437.preheader:                              ; preds = %.preheader434
  %wide.trip.count471 = zext nneg i32 %i.em to i64 ; 3 uses
  %min.iters.check533 = icmp ult i32 %i.em, 8
  br i1 %min.iters.check533, label %.lr.ph437.preheader561, label %vector.memcheck526

vector.memcheck526:                               ; preds = %.lr.ph437.preheader
  %i.ic = add nsw i64 %i.er, %i.eu
  %i.id = shl nsw i64 %i.ic, 2                    ; 2 uses
  %i.ie = shl nsw i64 %i.ep, 2                    ; 2 uses
  %i.if = sub nsw i64 %i.ie, %i.id
  %diff.check527 = icmp ugt i64 %i.if, -16
  %i.ig = add nsw i64 %i.fb, %i.ey
  %i.ih = shl nsw i64 %i.ig, 2                    ; 2 uses
  %i.ii = sub nsw i64 %i.ie, %i.ih
  %diff.check528 = icmp ugt i64 %i.ii, -16
  %conflict.rdx529 = or i1 %diff.check527, %diff.check528
  %i.ij = sub nsw i64 %i.id, %i.ih
  %diff.check530 = icmp ugt i64 %i.ij, -16
  %conflict.rdx531 = or i1 %conflict.rdx529, %diff.check530
  br i1 %conflict.rdx531, label %.lr.ph437.preheader561, label %vector.ph534

vector.ph534:                                     ; preds = %vector.memcheck526
  %n.vec535 = and i64 %wide.trip.count471, 2147483644 ; 3 uses
  %broadcast.splat537 = shufflevector <2 x double> %i.gq, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat539 = shufflevector <2 x double> %i.gr, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat541 = shufflevector <2 x double> %i.gq, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat543 = shufflevector <2 x double> %i.gr, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat545 = shufflevector <2 x double> %i.he, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert546 = insertelement <4 x double> poison, double %i.hg, i64 0
  %broadcast.splat547 = shufflevector <4 x double> %broadcast.splatinsert546, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph534
  %index549 = phi i64 [ 0, %vector.ph534 ], [ %index.next551, %vector.body548 ] ; 4 uses
  %vec.ind550 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph534 ], [ %vec.ind.next552, %vector.body548 ] ; 2 uses
  %i.ik = uitofp nneg <4 x i32> %vec.ind550 to <4 x double> ; 3 uses
  %i.il = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat537, <4 x double> %i.ik, <4 x double> %broadcast.splat539)
  %i.im = fptrunc <4 x double> %i.il to <4 x float>
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index549
  store <4 x float> %i.im, ptr %i.in, align 4, !tbaa !23
  %i.io = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat541, <4 x double> %i.ik, <4 x double> %broadcast.splat543)
  %i.ip = fptrunc <4 x double> %i.io to <4 x float>
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index549
  store <4 x float> %i.ip, ptr %i.iq, align 4, !tbaa !23
  %i.ir = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat545, <4 x double> %i.ik, <4 x double> %broadcast.splat547)
  %i.is = fptrunc <4 x double> %i.ir to <4 x float>
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index549
  store <4 x float> %i.is, ptr %i.it, align 4, !tbaa !23
  %index.next551 = add nuw i64 %index549, 4       ; 2 uses
  %vec.ind.next552 = add <4 x i32> %vec.ind550, splat (i32 4)
  %i.iu = icmp eq i64 %index.next551, %n.vec535
  br i1 %i.iu, label %middle.block553, label %vector.body548, !llvm.loop !177

middle.block553:                                  ; preds = %vector.body548
  %cmp.n554 = icmp eq i64 %n.vec535, %wide.trip.count471
  br i1 %cmp.n554, label %.lr.ph446, label %.lr.ph437.preheader561

.lr.ph437.preheader561:                           ; preds = %vector.memcheck526, %.lr.ph437.preheader, %middle.block553
  %indvars.iv468.ph = phi i64 [ 0, %vector.memcheck526 ], [ 0, %.lr.ph437.preheader ], [ %n.vec535, %middle.block553 ]
  %i.iv = extractelement <2 x double> %i.he, i64 1
  br label %.lr.ph437

bb.ai:                                            ; preds = %bb.ag
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit301

.lr.ph:                                           ; preds = %.lr.ph.preheader562, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader562 ] ; 5 uses
  %i.ix = trunc nuw nsw i64 %indvars.iv to i32
  %i.iy = uitofp nneg i32 %i.ix to double         ; 3 uses
  %i.iz = fmul double %i.gn, %i.iy
  %i.ja = fptrunc double %i.iz to float
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv
  store float %i.ja, ptr %i.jb, align 4, !tbaa !23
  %i.jc = fmul double %i.ia, %i.iy
  %i.jd = fptrunc double %i.jc to float
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv
  store float %i.jd, ptr %i.je, align 4, !tbaa !23
  %i.jf = fmul double %i.gz, %i.iy
  %i.jg = fptrunc double %i.jf to float
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv
  store float %i.jg, ptr %i.jh, align 4, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader434, label %.lr.ph, !llvm.loop !178

.lr.ph446:                                        ; preds = %.lr.ph437, %middle.block553
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.js = getelementptr inbounds nuw i8, ptr %20, i64 4
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.kd = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ke = getelementptr inbounds nuw i8, ptr %22, i64 128
  br i1 %i.hh, label %.lr.ph446.split, label %._crit_edge447

.lr.ph437:                                        ; preds = %.lr.ph437.preheader561, %.lr.ph437
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %.lr.ph437 ], [ %indvars.iv468.ph, %.lr.ph437.preheader561 ] ; 5 uses
  %i.kf = trunc nuw nsw i64 %indvars.iv468 to i32
  %i.kg = uitofp nneg i32 %i.kf to double         ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv468
  %i.ki = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.kj, <2 x double> %i.gr)
  %i.kl = fptrunc <2 x double> %i.kk to <2 x float> ; 2 uses
  %i.km = extractelement <2 x float> %i.kl, i64 0
  store float %i.km, ptr %i.kh, align 4, !tbaa !23
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv468
  %i.ko = extractelement <2 x float> %i.kl, i64 1
  store float %i.ko, ptr %i.kn, align 4, !tbaa !23
  %i.kp = call double @llvm.fmuladd.f64(double %i.iv, double %i.kg, double %i.hg)
  %i.kq = fptrunc double %i.kp to float
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv468
  store float %i.kq, ptr %i.kr, align 4, !tbaa !23
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %wide.trip.count471
  br i1 %exitcond472.not, label %.lr.ph446, label %.lr.ph437, !llvm.loop !179
end_hunk_0
begin_hunk_1_@_ZNK2cv4QuatIdE11toRotMat4x4ENS_14QuatAssumeTypeE:bb.a
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.l) ; 2 uses
  %i.m = fcmp olt double %sqrt.i.i, f0x3EB0C6F7A0B5ED8D
  br i1 %i.m, label %bb.c, label %_ZNK2cv4QuatIdE9normalizeEv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !352
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !352
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv4QuatIdE9normalizeEv, ptr noundef nonnull @.str.32, i32 noundef 458) #23
          to label %bb.d unwind label %bb.e, !noalias !352

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8, !tbaa !49, !noalias !352 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !352
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25, !noalias !352
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !352
  resume { ptr, i32 } %i.n

_ZNK2cv4QuatIdE9normalizeEv.exit:                 ; preds = %bb.b
  %i.t = insertelement <2 x double> poison, double %sqrt.i.i, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = fdiv <2 x double> %i.c, %i.u
  %i.w = fdiv <2 x double> %i.g, %i.u
  br label %_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit

_ZN2cv4MatxIdLi4ELi4EEC2ESt16initializer_listIdE.exit: ; preds = %_ZNK2cv4QuatIdE9normalizeEv.exit, %bb.a
  %i.x = phi <2 x double> [ %i.c, %bb.a ], [ %i.v, %_ZNK2cv4QuatIdE9normalizeEv.exit ] ; 9 uses
  %i.y = phi <2 x double> [ %i.g, %bb.a ], [ %i.w, %_ZNK2cv4QuatIdE9normalizeEv.exit ] ; 5 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.z, %i.aa           ; 3 uses
  %i.ac = fneg <2 x double> %i.ab                 ; 2 uses
  %i.ad = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !71
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = shufflevector <2 x double> %i.x, <2 x double> <double poison, double -2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.af = insertelement <2 x double> %i.ab, double 1.000000e+00, i64 1
  %foldExtExtBinop43 = fmul <2 x double> %i.x, %i.y ; 2 uses
  %i.ag = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fneg <2 x double> %foldExtExtBinop43
  %i.ai = shufflevector <2 x double> %i.ab, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ag, <2 x double> %i.ai)
  %i.ak = fmul <2 x double> %i.aj, splat (double 2.000000e+00) ; 2 uses
  %i.al = fmul <2 x double> %i.z, %i.z            ; 2 uses
  %i.am = shufflevector <2 x double> %i.ac, <2 x double> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ad, <2 x double> %i.am)
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> <double -0.000000e+00, double 1.000000e+00>)
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ap, ptr %0, align 8, !tbaa !71
  %i.aq = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.aq, <2 x double> %i.al) ; 2 uses
  %i.as = shufflevector <2 x double> %i.x, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ae, <2 x double> %i.af)
  %i.au = fmul <2 x double> %i.at, <double 2.000000e+00, double 1.000000e+00>
  %i.av = extractelement <2 x double> %i.ar, i64 1
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double -2.000000e+00, double 1.000000e+00)
  %i.ax = extractelement <2 x double> %i.ak, i64 0
  store double %i.ax, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !71
  store <2 x double> %i.au, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !71
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = extractelement <2 x double> %i.ak, i64 1
  store double %i.ay, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !71
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !71
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ba = shufflevector <2 x double> %i.ac, <2 x double> %foldExtExtBinop43, <2 x i32> <i32 1, i32 2>
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.az, <2 x double> %i.ba)
  %i.bc = fmul <2 x double> %i.bb, splat (double 2.000000e+00)
  store <2 x double> %i.bc, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !71
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.aw, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !71
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !71
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_INS_3VecIfLi4EEEEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.b = load i32, ptr %0, align 8, !tbaa !80
  %i.c = and i32 %i.b, -4096
  %i.d = or disjoint i32 %i.c, 101
  store i32 %i.d, ptr %0, align 8, !tbaa !80
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.f = and i32 %i.e, 4095
  %i.g = icmp eq i32 %i.f, 101
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.i = and i32 %i.e, 31
  %i.j = icmp eq i32 %i.i, 5
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !96
  call void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 4, i32 noundef %i.l, ptr noundef null)
  %i.m = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.p, align 8
  store i32 -2113863579, ptr %3, align 8, !tbaa !26
  store ptr %0, ptr %i.o, align 8, !tbaa !27
  call void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 101, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.d, %bb.b
  ret ptr %0
}

declare void @_ZNK2cv3Mat7reshapeEiiPKi(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <6 x double> @llvm.fmuladd.v6f64(<6 x double>, <6 x double>, <6 x double>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZN2cv16OdometrySettingsD2Ev, null, null, null}
!1 = distinct !{!1, !38}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!15 = !{!14, !7, i64 8}
!16 = !{!14, !7, i64 12}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!"float", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!25 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !24, i64 16}
!26 = !{!25, !7, i64 0}
!27 = !{!25, !10, i64 8}
!28 = !{!"p1 _ZTSN2cv13OdometryFrame4ImplE", !10, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN2cv13OdometryFrame4ImplELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !12, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!"p1 _ZTSSt6vectorIN2cv4UMatESaIS1_EE", !10, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN2cv4UMatESaIS2_EESaIS4_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!"p1 _ZTSN2cv4UMatE", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN2cv4UMatESaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!35, !34, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"p1 float", !10, i64 0}
!40 = !{!24, !7, i64 0}
!41 = !{!24, !7, i64 4}
!42 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!43 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !42, i64 4, !7, i64 8, !6, i64 12}
!44 = !{!43, !7, i64 0}
!45 = !{!"p1 omnipotent char", !10, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!47 = !{!"long", !6, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !46, i64 0, !47, i64 8, !6, i64 16}
!49 = !{!48, !45, i64 0}
!50 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!51 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!52 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!53 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !50, i64 56, !51, i64 64, !43, i64 72, !52, i64 128}
!54 = !{!53, !7, i64 8}
!55 = !{!53, !45, i64 24}
!56 = !{!47, !47, i64 0}
!57 = !{!"llvm.loop.unswitch.partial.disable"}
!58 = !{!"short", !6, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!53, !7, i64 12}
!61 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!62 = !{!"double", !6, i64 0}
!63 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!64 = !{!"_ZTSN2cv3VecIdLi4EEE", !63, i64 0}
!65 = !{!"_ZTSN2cv7Scalar_IdEE", !64, i64 0}
!66 = !{!"_ZTSN2cv7MatExprE", !61, i64 0, !7, i64 8, !53, i64 16, !53, i64 224, !53, i64 432, !62, i64 640, !62, i64 648, !65, i64 656}
!67 = !{!66, !61, i64 0}
!68 = !{!"_ZTSN2cv14UMatUsageFlagsE", !6, i64 0}
!69 = !{!"_ZTSN2cv4UMatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !50, i64 16, !68, i64 24, !51, i64 32, !47, i64 40, !43, i64 48, !52, i64 104}
!70 = !{!69, !7, i64 0}
!71 = !{!62, !62, i64 0}
!72 = !{!"p1 int", !10, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!73, !72, i64 0}
!76 = !{!34, !34, i64 0}
!77 = !{!35, !34, i64 16}
!78 = !{!73, !72, i64 16}
!79 = !{!69, !7, i64 8}
!80 = !{!53, !7, i64 0}
!81 = !{!"p1 _ZTSN2cv4MatxIfLi3ELi3EEE", !10, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN2cv4MatxIfLi3ELi3EEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 0}
!84 = !{i64 0, i64 36, !19}
!85 = !{!53, !7, i64 16}
!86 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!87 = !{!86, !7, i64 0}
!88 = !{!86, !7, i64 4}
!89 = !{!82, !81, i64 16}
!90 = !{!82, !81, i64 8}
!91 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !39, i64 0, !47, i64 8, !6, i64 16}
!92 = !{!91, !39, i64 0}
!93 = !{!91, !47, i64 8}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = !{!53, !7, i64 4}
!97 = !{!"p1 _ZTSN2cv4MatxIfLi6ELi7EEE", !10, i64 0}
!98 = !{!"p1 _ZTSSt15recursive_mutex", !10, i64 0}
!99 = !{!"p1 _ZTSN2cv4Mat_INS_3VecIfLi4EEEEE", !10, i64 0}
!100 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!101 = !{!"_ZTSN2cv4MatxIfLi4ELi4EEE", !6, i64 0}
!102 = !{!"_ZTSN2cv7Affine3IfEE", !101, i64 0}
!103 = !{!"_ZTSN2cv4Intr9ProjectorE", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!104 = !{!"_ZTSN2cv12GetAbInvokerE", !100, i64 0, !97, i64 8, !98, i64 16, !99, i64 24, !99, i64 32, !99, i64 40, !99, i64 48, !102, i64 56, !103, i64 120, !22, i64 136, !22, i64 140}
!105 = !{!104, !22, i64 136}
!106 = !{!104, !22, i64 140}
!107 = !{!"_ZTSN2cv8DualQuatIdEE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56}
!108 = !{!107, !62, i64 0}
!109 = !{!107, !62, i64 24}
!110 = !{!"_ZTSN2cv4QuatIdEE", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!111 = !{!110, !62, i64 0}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38, !57}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!116 = distinct !{!116, !115, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!117 = distinct !{!117, !38}
!118 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!119 = !{!118, !39, i64 8}
!120 = !{!118, !39, i64 0}
!121 = !{!39, !39, i64 0}
!122 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!123 = !{!116}
!124 = !{!118, !39, i64 16}
!125 = distinct !{null, null, null}
!126 = distinct !{null, null, null, null, null}
!127 = distinct !{null, null, null}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38, !57}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38, !57}
!133 = distinct !{!133, !38}
!134 = distinct !{!134, !38}
!135 = !{!"p1 _ZTSN2cv11RgbdNormalsE", !10, i64 0}
!136 = !{!"_ZTSSt12__shared_ptrIN2cv11RgbdNormalsELN9__gnu_cxx12_Lock_policyE2EE", !135, i64 0, !12, i64 8}
!137 = !{!136, !135, i64 0}
!138 = !{!69, !7, i64 12}
!139 = distinct !{!139, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!140 = distinct !{!140, !139, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!143 = distinct !{!143, !142, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!144 = distinct !{!144, !"_ZNK2cv3Mat8rowRangeEii"}
!145 = distinct !{!145, !144, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!146 = distinct !{!146, !"_ZNK2cv3Mat8rowRangeEii"}
!147 = distinct !{!147, !146, !"_ZNK2cv3Mat8rowRangeEii: argument 0"}
!148 = distinct !{null}
!149 = distinct !{!149, !38}
!150 = distinct !{!150, !"_ZNK2cv11_InputArray6getMatEi"}
!151 = distinct !{!151, !150, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!152 = !{!140}
!153 = !{!143}
!154 = !{!145}
!155 = !{!147}
!156 = !{!151}
!157 = !{!46, !45, i64 0}
!158 = !{!48, !47, i64 8}
!159 = distinct !{!159, !"_ZN2cvmlIfLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEEfRKS3_"}
!160 = distinct !{!160, !159, !"_ZN2cvmlIfLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEEfRKS3_: argument 0"}
!161 = distinct !{!161, !38, !163}
!162 = !{!160}
!163 = !{!"llvm.loop.peeled.count", i32 1}
!164 = distinct !{!164, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!165 = distinct !{!165, !164, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
end_hunk_1
