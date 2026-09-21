Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/optical_flow_evaluation?download=true
inline.NumInlined: 672
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL13flowToDisplayN2cv3MatE:bb.a
  br label %bb.y

bb.t:                                             ; preds = %bb.d, %bb.c
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.y

bb.u:                                             ; preds = %bb.g, %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #25
  br label %.body

.body:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.v
  %.pn27 = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %i.bi, %bb.u ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.y

bb.w:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.y

bb.x:                                             ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.body, %bb.t, %bb.s, %bb.r
  %.pn31.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.x ], [ %i.bk, %bb.w ], [ %i.bf, %bb.r ], [ %.pn27, %.body ], [ %i.bh, %bb.t ], [ %i.bg, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 416
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #25
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 208
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bo) #25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn31.pn.pn
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv15readOpticalFlowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL13endpointErrorRKN2cv4Mat_INS_6Point_IfEEEES5_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.45, i32 noundef 109) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.k = icmp eq i32 %i.b, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.n = icmp eq i32 %i.b, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !36
  br label %_ZNK2cv8MatShapeclEv.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.s = phi i32 [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.t = icmp sgt i32 %i.b, -1
  %i.u = zext i1 %i.t to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.g, %bb.h
  %i.v = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.w = phi i32 [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge53.split

.preheader.lr.ph:                                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %i.ac, label %.preheader.lr.ph.split, label %._crit_edge53.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %i.an = icmp slt i32 %i.am, 2
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.aq = icmp slt i32 %i.ap, 2
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !28
  %wide.trip.count58 = zext nneg i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %i.as = load i32, ptr %i.af, align 4, !tbaa !63
  %i.at = icmp slt i32 %i.as, 2
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv55 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next56, %._crit_edge ] ; 4 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge53.split, label %.preheader, !llvm.loop !125

bb.i:                                             ; preds = %.preheader, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread ] ; 4 uses
  %i.av = load i64, ptr %i.ad, align 8
  %i.aw = mul i64 %i.av, %indvars.iv55
  %.sink.idx.i = select i1 %i.an, i64 0, i64 %i.aw
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink.idx.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv
  %i.ay = load <2 x float>, ptr %i.ax, align 4    ; 3 uses
  %i.az = load i64, ptr %i.ae, align 8
  %i.ba = mul i64 %i.az, %indvars.iv55
  %.sink.idx.i28 = select i1 %i.aq, i64 0, i64 %i.ba
  %.sink.i29 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink.idx.i28
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sink.i29, i64 %indvars.iv
  %i.bc = load <2 x float>, ptr %i.bb, align 4    ; 3 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bd = fcmp ord float %.sroa.0.0.vec.extract.i, 0.000000e+00
  br i1 %i.bd, label %bb.j, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.ay, i64 1
  %5 = tail call float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i)
  %6 = fcmp olt float %5, 1.000000e+09
  %7 = tail call float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i)
  %8 = fcmp olt float %7, 1.000000e+09
  %or.cond = and i1 %8, %6
  br i1 %or.cond, label %9, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

9:                                                ; preds = %bb.j
  %.sroa.0.0.vec.extract.i30 = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %10 = fcmp ord float %.sroa.0.0.vec.extract.i30, 0.000000e+00
  br i1 %10, label %bb.k, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

bb.k:                                             ; preds = %9
  %.sroa.0.4.vec.extract.i31 = extractelement <2 x float> %i.bc, i64 1
  %11 = tail call float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i30)
  %12 = fcmp olt float %11, 1.000000e+09
  %13 = tail call float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i31)
  %14 = fcmp olt float %13, 1.000000e+09
  %or.cond50 = and i1 %14, %12
  br i1 %or.cond50, label %bb.l, label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.be = fsub <2 x float> %i.ay, %i.bc           ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fpext float %i.bf to double             ; 2 uses
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fpext float %i.bh to double             ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = tail call noundef double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double %i.bj)
  %i.bl = fptrunc double %i.bk to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bl)
  br label %_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread

_Z13isFlowCorrectN2cv6Point_IfEE.exit.thread:     ; preds = %bb.j, %bb.i, %bb.k, %9, %bb.l
  %.sink = phi float [ %sqrt, %bb.l ], [ +qnan, %9 ], [ +qnan, %bb.k ], [ +qnan, %bb.i ], [ +qnan, %bb.j ]
  %i.bm = load i64, ptr %i.ah, align 8
  %i.bn = mul i64 %i.bm, %indvars.iv55
  %.sink.idx.i36 = select i1 %i.at, i64 0, i64 %i.bn
  %.sink.i37 = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sink.idx.i36
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i37, i64 %indvars.iv
  store float %.sink, ptr %i.bo, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !126

._crit_edge53.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK2cv8MatShapeclEv.exit
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL12angularErrorRKN2cv4Mat_INS_6Point_IfEEEES5_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %2) unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.45, i32 noundef 109) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.k = icmp eq i32 %i.b, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.n = icmp eq i32 %i.b, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !36   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !36
  br label %_ZNK2cv8MatShapeclEv.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.s = phi i32 [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.t = icmp sgt i32 %i.b, -1
  %i.u = zext i1 %i.t to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.g, %bb.h
  %i.v = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ]
  %i.w = phi i32 [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.w to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  tail call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !67   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.preheader.lr.ph, label %._crit_edge64.split

.preheader.lr.ph:                                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !68 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %i.ac, label %.preheader.lr.ph.split, label %._crit_edge64.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %i.an = icmp slt i32 %i.am, 2
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.aq = icmp slt i32 %i.ap, 2
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !28
  %wide.trip.count69 = zext nneg i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %i.as = load i32, ptr %i.af, align 4, !tbaa !63
  %i.at = icmp slt i32 %i.as, 2
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 4 uses
  br label %bb.i

._crit_edge:                                      ; preds = %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge64.split, label %.preheader, !llvm.loop !127

bb.i:                                             ; preds = %.preheader, %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread ] ; 4 uses
  %i.av = load i64, ptr %i.ad, align 8
  %i.aw = mul i64 %i.av, %indvars.iv66
  %.sink.idx.i = select i1 %i.an, i64 0, i64 %i.aw
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sink.idx.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %indvars.iv ; 2 uses
  %.sroa.08.0.copyload = load float, ptr %i.ax, align 4, !tbaa !71 ; 3 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.sroa.59.0.copyload = load float, ptr %.sroa.59.0..sroa_idx, align 4, !tbaa !71
  %.sroa.59.0.copyload.fr = freeze float %.sroa.59.0.copyload ; 3 uses
  %i.ay = load i64, ptr %i.ae, align 8
  %i.az = mul i64 %i.ay, %indvars.iv66
  %.sink.idx.i30 = select i1 %i.aq, i64 0, i64 %i.az
  %.sink.i31 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sink.idx.i30
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sink.i31, i64 %indvars.iv ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !71 ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !71 ; 2 uses
  %or.cond = fcmp ord float %.sroa.08.0.copyload, %.sroa.59.0.copyload.fr
  br i1 %or.cond, label %bb.j, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call float @llvm.fabs.f32(float %.sroa.08.0.copyload)
  %i.bd = fcmp olt float %i.bc, 1.000000e+09
  %i.be = tail call float @llvm.fabs.f32(float %.sroa.59.0.copyload.fr)
  %i.bf = fcmp olt float %i.be, 1.000000e+09
  %or.cond11.i = and i1 %i.bd, %i.bf
  %i.bg = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bh = fcmp ord float %i.bg, 0.000000e+00
  %or.cond60 = select i1 %or.cond11.i, i1 %i.bh, i1 false
  %i.bi = fcmp ord float %.sroa.5.0.copyload, 0.000000e+00
  %or.cond61 = select i1 %or.cond60, i1 %i.bi, i1 false
  br i1 %or.cond61, label %bb.k, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bj = tail call float @llvm.fabs.f32(float %i.bg)
  %i.bk = fcmp olt float %i.bj, 1.000000e+09
  %i.bl = tail call float @llvm.fabs.f32(float %.sroa.5.0.copyload)
  %i.bm = fcmp olt float %i.bl, 1.000000e+09
  %or.cond11.i35 = and i1 %i.bk, %i.bm
  br i1 %or.cond11.i35, label %bb.l, label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bn = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %.sroa.08.0.copyload, i64 0
  %i.bp = fpext <2 x float> %i.bo to <2 x double> ; 4 uses
  %i.bq = insertelement <2 x float> %i.bb, float %.sroa.59.0.copyload.fr, i64 0
  %i.br = fpext <2 x float> %i.bq to <2 x double> ; 4 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x double> %shift, %i.br
  %i.bs = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bt = extractelement <2 x double> %i.bp, i64 0
  %i.bu = extractelement <2 x double> %i.bp, i64 1
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bu, double %i.bs)
  %i.bw = fadd double %i.bv, 1.000000e+00
  %i.bx = fmul <2 x double> %i.br, %i.br
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bp, <2 x double> %i.bx)
  %i.bz = fadd <2 x double> %i.by, splat (double 1.000000e+00)
  %i.ca = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bz) ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = fdiv double %i.bw, %i.cb
  %i.cd = extractelement <2 x double> %i.ca, i64 1
  %i.ce = fmul double %i.cc, %i.cd
  %i.cf = fptrunc double %i.ce to float
  %i.cg = tail call noundef float @acosf(float noundef %i.cf) #25
  br label %_Z13isFlowCorrectN2cv7Point3_IfEE.exit.thread

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNS0_3PtrINS1_8PCAPriorEEEEEES3_DpOT_:bb.a
  store i32 0, ptr %i.n, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !61
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !139
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25, !inline_history !139
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !62

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #25
  br label %bb.l

.body:                                            ; preds = %_ZN2cv3PtrIKNS_7optflow8PCAPriorEEC2IS2_EERKNS0_IT_EE.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN2cv7optflow8PCAPriorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(53) %i.a) #25, !inline_history !141
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv7optflow18OpticalFlowPCAFlowESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #25
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv7optflow18OpticalFlowPCAFlowC1ENS_3PtrIKNS0_8PCAPriorEEENS_5Size_IiEEfffff(ptr noundef nonnull align 8 dereferenceable(53), ptr noundef align 8, i64, float noundef, float noundef, float noundef, float noundef, float noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN2cv7optflow8PCAPriorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !61
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_optical_flow_evaluation.cpp() #21 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), ptr @_ZL4keysB5cxx11, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 719, ptr %i.a, align 8, !tbaa !16
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL4keysB5cxx11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.b, ptr @_ZL4keysB5cxx11, align 8, !tbaa !18
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 16), align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(719) %i.b, ptr noundef nonnull align 1 dereferenceable(719) @.str, i64 719, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL4keysB5cxx11, i64 8), align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  store i8 0, ptr %i.d, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL4keysB5cxx11, ptr nonnull @__dso_handle) #25 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress norecurse uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { noreturn }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !7, i64 16}
!18 = !{!17, !12, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!17, !15, i64 8}
!21 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!22 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!23 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!24 = !{!"_ZTSN2cv8MatShapeE", !8, i64 0, !23, i64 4, !8, i64 8, !7, i64 12}
!25 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!26 = !{!"_ZTSN2cv3MatE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !21, i64 56, !22, i64 64, !24, i64 72, !25, i64 128}
!27 = !{!26, !8, i64 0}
!28 = !{!26, !12, i64 24}
!29 = !{!24, !8, i64 0}
!30 = !{!"_ZTSN2cv5Size_IiEE", !8, i64 0, !8, i64 4}
!31 = !{!"_ZTSN2cv11_InputArrayE", !8, i64 0, !11, i64 8, !30, i64 16}
!32 = !{!31, !8, i64 0}
!33 = !{!31, !11, i64 8}
!34 = !{!30, !8, i64 0}
!35 = !{!30, !8, i64 4}
!36 = !{!8, !8, i64 0}
!37 = !{!"p1 _ZTSN2cv7optflow20DenseRLOFOpticalFlowE", !11, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!39 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow20DenseRLOFOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0, !39, i64 8}
!41 = !{!40, !37, i64 0}
!42 = !{!"vtable pointer", !6, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"p1 _ZTSN2cv16DenseOpticalFlowE", !11, i64 0}
!45 = !{!"_ZTSSt12__shared_ptrIN2cv16DenseOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0, !39, i64 8}
!46 = !{!45, !44, i64 0}
!47 = !{!"p1 _ZTSN2cv5MatOpE", !11, i64 0}
!48 = !{!"double", !7, i64 0}
!49 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!50 = !{!"_ZTSN2cv3VecIdLi4EEE", !49, i64 0}
!51 = !{!"_ZTSN2cv7Scalar_IdEE", !50, i64 0}
!52 = !{!"_ZTSN2cv7MatExprE", !47, i64 0, !8, i64 8, !26, i64 16, !26, i64 224, !26, i64 432, !48, i64 640, !48, i64 648, !51, i64 656}
!53 = !{!52, !47, i64 0}
!54 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!48, !48, i64 0}
!58 = !{!39, !38, i64 0}
!59 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!60 = !{!59, !8, i64 8}
!61 = !{!59, !8, i64 12}
!62 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!63 = !{!26, !8, i64 4}
!64 = !{!"p1 _ZTSN2cv7optflow18OpticalFlowPCAFlowE", !11, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow18OpticalFlowPCAFlowELN9__gnu_cxx12_Lock_policyE2EE", !64, i64 0, !39, i64 8}
!66 = !{!65, !64, i64 0}
!67 = !{!26, !8, i64 8}
!68 = !{!26, !8, i64 12}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"float", !7, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTSSt9type_info", !12, i64 8}
!73 = !{!72, !12, i64 8}
!74 = distinct !{!74, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib"}
!75 = distinct !{!75, !74, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib: argument 0"}
!76 = distinct !{!76, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib"}
!77 = distinct !{!77, !76, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib: argument 0"}
!78 = distinct !{!78, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib"}
!79 = distinct !{!79, !78, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib: argument 0"}
!80 = distinct !{!80, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib"}
!81 = distinct !{!81, !80, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_ib: argument 0"}
!82 = distinct !{!82, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!83 = distinct !{!83, !82, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!84 = distinct !{!84, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b"}
!85 = distinct !{!85, !84, !"_ZNK2cv17CommandLineParser3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_RKS7_b: argument 0"}
!86 = distinct !{!86, !"_ZN2cvL28morphologyDefaultBorderValueEv"}
!87 = distinct !{!87, !86, !"_ZN2cvL28morphologyDefaultBorderValueEv: argument 0"}
!88 = distinct !{!88, !"_ZN2cv7Scalar_IdE3allEd"}
!89 = distinct !{!89, !88, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!90 = distinct !{!90, !"_ZN2cvL28morphologyDefaultBorderValueEv"}
!91 = distinct !{!91, !90, !"_ZN2cvL28morphologyDefaultBorderValueEv: argument 0"}
!92 = distinct !{!92, !"_ZN2cv7Scalar_IdE3allEd"}
!93 = distinct !{!93, !92, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!94 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv16DenseOpticalFlowELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!95 = !{!75}
!96 = !{!77}
!97 = !{!79}
!98 = !{!81}
!99 = !{!83}
!100 = !{!85}
!101 = !{!89, !87}
!102 = !{!93, !91}
!103 = distinct !{null, null, null, null}
!104 = distinct !{null, null, null, null}
!105 = !{!"p1 _ZTSN2cv7optflow19DualTVL1OpticalFlowE", !11, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow19DualTVL1OpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !39, i64 8}
!107 = !{!106, !105, i64 0}
!108 = distinct !{!108, !"_ZSt20dynamic_pointer_castIN2cv7optflow20DenseRLOFOpticalFlowENS0_16DenseOpticalFlowEESt10shared_ptrIT_ERKS4_IT0_E"}
!109 = distinct !{!109, !108, !"_ZSt20dynamic_pointer_castIN2cv7optflow20DenseRLOFOpticalFlowENS0_16DenseOpticalFlowEESt10shared_ptrIT_ERKS4_IT0_E: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !"_ZSt11make_sharedIN2cv7optflow18OpticalFlowPCAFlowEJRKNS0_3PtrINS1_8PCAPriorEEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!112 = distinct !{!112, !111, !"_ZSt11make_sharedIN2cv7optflow18OpticalFlowPCAFlowEJRKNS0_3PtrINS1_8PCAPriorEEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!113 = !{!112}
!114 = distinct !{!114, !"_ZSt11make_sharedIN2cv7optflow8PCAPriorEJRKPKcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!115 = distinct !{!115, !114, !"_ZSt11make_sharedIN2cv7optflow8PCAPriorEJRKPKcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_: argument 0"}
!116 = !{!115}
!117 = !{!"p1 _ZTSN2cv7optflow8PCAPriorE", !11, i64 0}
!118 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow8PCAPriorELN9__gnu_cxx12_Lock_policyE2EE", !117, i64 0, !39, i64 8}
!119 = !{!118, !117, i64 0}
!120 = distinct !{null, null, null, null}
!121 = distinct !{null, null, null, null}
!122 = !{!"p1 _ZTSN2cv14DISOpticalFlowE", !11, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrIN2cv14DISOpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !122, i64 0, !39, i64 8}
!124 = !{!123, !122, i64 0}
!125 = distinct !{!125, !69}
!126 = distinct !{!126, !69}
!127 = distinct !{!127, !69}
!128 = distinct !{!128, !69}
!129 = distinct !{!129, !69}
!130 = !{!55, !54, i64 8}
!131 = !{!55, !54, i64 16}
!132 = distinct !{!132, !69}
!133 = distinct !{!133, !69}
!134 = distinct !{!134, !69}
!135 = distinct !{!135, !69}
!136 = !{!"p1 float", !11, i64 0}
!137 = !{!136, !136, i64 0}
!138 = distinct !{null}
!139 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN2cv7optflow8PCAPriorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!140 = !{!11, !11, i64 0}
!141 = distinct !{null}
end_hunk_1
