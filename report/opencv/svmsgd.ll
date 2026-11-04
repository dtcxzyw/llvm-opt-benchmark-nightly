Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/svmsgd?download=true
inline.NumInlined: 387
inline.NumDeleted: 131
begin_hunk_0_@_ZN2cv2ml10SVMSGDImpl13updateWeightsERKNS_11_InputArrayEbfRNS_3MatE:bb.a
          to label %_ZN2cvmIERNS_3MatERKNS_7MatExprE.exit unwind label %bb.q, !inline_history !120

_ZN2cvmIERNS_3MatERKNS_7MatExprE.exit:            ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ag) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ah) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ai) #18
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aj) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ak) #18
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.al) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.am) #18
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.an) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.u

bb.n:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %8) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn19 = phi { ptr, i32 } [ %i.as, %bb.q ], [ %i.ar, %bb.p ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.r ], [ %i.aq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %9) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.s ], [ %i.ap, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.v

bb.u:                                             ; preds = %_ZN2cvmIERNS_3MatERKNS_7MatExprE.exit, %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

bb.v:                                             ; preds = %bb.t, %bb.i, %bb.h
  %.pn23 = phi { ptr, i32 } [ %i.u, %bb.i ], [ %.pn19.pn.pn, %bb.t ], [ %i.t, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn23
}

declare noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @_ZN2cvmiERKNS_7MatExprES2_(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(688), ptr noundef nonnull align 8 dereferenceable(688)) local_unnamed_addr #2

declare void @_ZN2cvmlEdRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, double noundef, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZNK2cv2ml10SVMSGDImpl9calcShiftERKNS_11_InputArrayES4_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 4         ; 5 uses
  %4 = alloca %"class.cv::Range", align 8         ; 4 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !129
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48, !noalias !129
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48, !noalias !130
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %_ZNK2cv11_InputArray6getMatEi.exit35 unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit35 unwind label %bb.f

_ZNK2cv11_InputArray6getMatEi.exit35:             ; preds = %bb.d, %bb.e
  %i.k = load i32, ptr %6, align 8, !tbaa !39
  %i.l = and i32 %i.k, 4095
  %i.m = icmp eq i32 %i.l, 5
  br i1 %i.m, label %.preheader, label %bb.g

.preheader:                                       ; preds = %_ZNK2cv11_InputArray6getMatEi.exit35
  %i.n = icmp sgt i32 %i.f, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv2ml10SVMSGDImpl9calcShiftERKNS_11_InputArrayES4_, ptr noundef nonnull @.str.1, i32 noundef 211) #20
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ab, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.x

._crit_edge.loopexit:                             ; preds = %12
  %i.ah = fsub float %.sroa.0.1, %.sroa.7.1
  %i.ai = fmul float %i.ah, -5.000000e-01
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.aj = phi float [ -0.000000e+00, %.preheader ], [ %i.ai, %._crit_edge.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret float %i.aj

bb.l:                                             ; preds = %.lr.ph, %12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ] ; 5 uses
  %.sroa.6.043 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.7.1, %12 ] ; 3 uses
  %.sroa.0.042 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.sroa.0.1, %12 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !131
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  store i32 %i.ak, ptr %3, align 4, !tbaa !41, !noalias !131
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.al, ptr %i.o, align 4, !tbaa !42, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !131
  store i64 9223372034707292160, ptr %4, align 8, !noalias !131
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i32 0, ptr %i.q, align 8, !tbaa !44
  store i32 0, ptr %i.r, align 4, !tbaa !45
  store i32 16842752, ptr %10, align 8, !tbaa !47
  store ptr %i.p, ptr %i.s, align 8, !tbaa !48
  %i.am = invoke noundef double @_ZNK2cv3Mat3dotERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.an = load i32, ptr %i.t, align 4, !tbaa !51
  %i.ao = icmp slt i32 %i.an, 2
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.p:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %6, align 8, !tbaa !39
  %i.as = and i32 %i.ar, 16384
  %i.at = icmp ne i32 %i.as, 0
  %i.au = load i32, ptr %i.u, align 4
  %i.av = icmp eq i32 %i.au, 1
  %or.cond.i = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = load i32, ptr %i.v, align 8, !tbaa !26
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.bb = load i64, ptr %i.y, align 8, !tbaa !53
  %i.bc = mul i64 %i.bb, %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.t:                                             ; preds = %bb.r
  %i.be = load i32, ptr %i.w, align 4, !tbaa !37  ; 3 uses
  %i.bf = sdiv i32 %i.ak, %i.be                   ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.be                ; 0 uses
  %.recomposed = srem i32 %i.ak, %i.be
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.bi = load i64, ptr %i.y, align 8, !tbaa !53
  %i.bj = sext i32 %i.bf to i64
  %i.bk = mul i64 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  %i.bm = sext i32 %.recomposed to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.t, %bb.s, %bb.q, %bb.o
  %.0.i = phi ptr [ %i.aq, %bb.o ], [ %i.ax, %bb.q ], [ %i.bd, %bb.s ], [ %i.bn, %bb.t ]
  %i.bo = fptrunc double %i.am to float           ; 3 uses
  %i.bp = load float, ptr %.0.i, align 4, !tbaa !55
  %11 = fcmp ogt float %i.bp, 0.000000e+00        ; 4 uses
  %i.bq = fneg float %i.bo                        ; 2 uses
  %i.br = select i1 %11, float %i.bo, float %i.bq
  %.sroa.speculated = select i1 %11, float %.sroa.0.042, float %.sroa.6.043
  %i.bs = fcmp olt float %i.br, %.sroa.speculated
  br i1 %i.bs, label %.cont, label %12

.cont:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit
  %..sroa.0.0 = select i1 %11, float %i.bo, float %.sroa.0.042
  %.sroa.7.0. = select i1 %11, float %.sroa.6.043, float %i.bq
  br label %12

bb.u:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  br label %bb.w

12:                                               ; preds = %.cont, %_ZN2cv3Mat2atIfEERT_i.exit
  %.sroa.0.1 = phi float [ %..sroa.0.0, %.cont ], [ %.sroa.0.042, %_ZN2cv3Mat2atIfEERT_i.exit ] ; 2 uses
  %.sroa.7.1 = phi float [ %.sroa.7.0., %.cont ], [ %.sroa.6.043, %_ZN2cv3Mat2atIfEERT_i.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !128

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn28.pn = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.x ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn28.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv2ml10SVMSGDImpl5trainERKNS_3PtrINS0_9TrainDataEEEi(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 25 uses
  %22 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %24 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %26 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %31 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %34 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %35 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %37 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %38 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 5 uses
  %40 = alloca %"class.cv::MatExpr", align 8      ; 9 uses
  %41 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %42 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::allocator", align 1   ; 3 uses
  %46 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %47 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !142
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv2ml10SVMSGDImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.1, i32 noundef 233) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn141 = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ey

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store float 0.000000e+00, ptr %i.l, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !71
  %switch.i = icmp ult i32 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %switch4.i = icmp ult i32 %i.p, 2
  %or.cond6.i = select i1 %switch.i, i1 %switch4.i, i1 false
  br i1 %or.cond6.i, label %bb.h, label %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !69
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.u = load float, ptr %i.t, align 4
  %i.v = fcmp ogt float %i.u, 0.000000e+00
  %or.cond.i = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond.i, label %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit, label %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread

_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit:      ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !72
  %i.y = fcmp ult float %i.x, 0.000000e+00
  br i1 %i.y, label %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread, label %bb.m

_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv2ml10SVMSGDImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.1, i32 noundef 235) #20
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.l
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !21
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.k
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.aa, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ey

bb.m:                                             ; preds = %_ZNK2cv2ml10SVMSGDImpl12isClassifierEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ag = load ptr, ptr %1, align 8, !tbaa !142   ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.am = load ptr, ptr %1, align 8, !tbaa !142   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
end_hunk_0
