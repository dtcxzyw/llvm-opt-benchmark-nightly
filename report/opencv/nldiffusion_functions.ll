Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nldiffusion_functions?download=true
inline.NumInlined: 315
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv20weickert_diffusivityERKNS_11_InputArrayES2_RKNS_12_OutputArrayEf:bb.a
  %i.ca = fmul <4 x float> %i.bz, %i.bz
  %i.cb = fmul <4 x float> %i.bz, %i.ca
  %i.cc = fmul <4 x float> %i.bz, %i.cb
  %i.cd = fdiv <4 x float> splat (float -3.315000e+00), %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index
  store <4 x float> %i.cd, ptr %i.ce, align 4, !tbaa !32, !alias.scope !120, !noalias !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.ph
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !32 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.ph
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !32 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ck)
  %i.cm = fmul float %i.ak, %i.cl                 ; 4 uses
  %i.cn = fmul float %i.cm, %i.cm
  %i.co = fmul float %i.cm, %i.cn
  %i.cp = fmul float %i.cm, %i.co
  %i.cq = fdiv float -3.315000e+00, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.ph
  store float %i.cq, ptr %i.cr, align 4, !tbaa !32
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cs = icmp eq i64 %indvars.iv.ph, %i.bl
  br i1 %i.cs, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge63.split, label %.lr.ph, !llvm.loop !112

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !32 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !32 ; 2 uses
  %i.cx = fmul float %i.cw, %i.cw
  %i.cy = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.cx)
  %i.cz = fmul float %i.ak, %i.cy                 ; 4 uses
  %i.da = fmul float %i.cz, %i.cz
  %i.db = fmul float %i.cz, %i.da
  %i.dc = fmul float %i.cz, %i.db
  %i.dd = fdiv float -3.315000e+00, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store float %i.dd, ptr %i.de, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next
  %i.dg = load float, ptr %i.df, align 4, !tbaa !32 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next
  %i.di = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  %i.dj = fmul float %i.di, %i.di
  %i.dk = call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dj)
  %i.dl = fmul float %i.ak, %i.dk                 ; 4 uses
  %i.dm = fmul float %i.dl, %i.dl
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = fmul float %i.dl, %i.dn
  %i.dp = fdiv float -3.315000e+00, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next
  store float %i.dp, ptr %i.dq, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !113

._crit_edge63.split:                              ; preds = %._crit_edge, %.lr.ph62, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.dr, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.ds, align 4, !tbaa !10
  store i32 16842752, ptr %9, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %8, ptr %i.dt, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.dv, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !13
  store ptr %8, ptr %i.du, align 8, !tbaa !14
  invoke void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %._crit_edge63.split
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store double 1.000000e+00, ptr %12, align 8, !tbaa !122
  %i.dw = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i8 0, i64 24, i1 false)
  invoke void @_ZN2cvmiERKNS_7Scalar_IdEERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dx = load ptr, ptr %11, align 8, !tbaa !45   ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(688) %11, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.v, !inline_history !114

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.eb) #17
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ec) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ed) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.t:                                             ; preds = %._crit_edge63.split
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.body

bb.u:                                             ; preds = %bb.r
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %11) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn43 = phi { ptr, i32 } [ %i.eg, %bb.v ], [ %i.ef, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %.body

.body:                                            ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t, %bb.w
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.t ], [ %.pn43, %bb.w ], [ %i.bo, %bb.q ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.p
  %.pn43.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %.body ], [ %i.bn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn, %bb.x ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn43.pn.pn.pn.pn
}

declare void @_ZN2cvmiERKNS_7Scalar_IdEERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23charbonnier_diffusivityERKNS_11_InputArrayES2_RKNS_12_OutputArrayEf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %i.a = tail call i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  %i.b = tail call noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  tail call void @_ZNK2cv12_OutputArray6createENS_5Size_IiEEiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.a, i32 noundef %i.b, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.c = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !136
  %i.d = icmp eq i32 %i.c, 65536
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !136
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.f)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.g = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.h = icmp eq i32 %i.g, 65536
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14, !noalias !137
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.j)
          to label %_ZNK2cv11_InputArray6getMatEi.exit37 unwind label %bb.o

bb.e:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit37 unwind label %bb.o

_ZNK2cv11_InputArray6getMatEi.exit37:             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.k = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc38 unwind label %bb.p

.noexc38:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit37
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc38
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14, !noalias !138
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %_ZNK2cv11_InputArray6getMatEi.exit41 unwind label %bb.p

bb.g:                                             ; preds = %.noexc38
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit41 unwind label %bb.p

_ZNK2cv11_InputArray6getMatEi.exit41:             ; preds = %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !17   ; 6 uses
  %i.q = icmp slt i32 %i.p, 3
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc42 unwind label %bb.q

.noexc42:                                         ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #18
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc42
  unreachable

bb.j:                                             ; preds = %.noexc42
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.body

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit41
  %i.x = icmp sgt i32 %i.p, 0
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = icmp eq i32 %i.p, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.y, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.z = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i32 %i.p, 0
  %i.ab = zext i1 %i.aa to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = phi i32 [ %i.z, %bb.l ], [ %i.ab, %bb.m ] ; 3 uses
  %i.ad = icmp eq i32 %i.p, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sgt i32 %i.p, -1
  %i.ah = zext i1 %i.ag to i32
  %i.ai = select i1 %i.ad, i32 %i.af, i32 %i.ah   ; 2 uses
  %i.aj = fmul float %3, %3
  %i.ak = fdiv float 1.000000e+00, %i.aj          ; 4 uses
  %i.al = icmp sgt i32 %i.ai, 0
  br i1 %i.al, label %.lr.ph47, label %._crit_edge48.split

.lr.ph47:                                         ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !30 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !29 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30 ; 3 uses
  %i.ay = icmp sgt i32 %i.ac, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge48.split

.lr.ph.preheader:                                 ; preds = %.lr.ph47
  %wide.trip.count53 = zext nneg i32 %i.ai to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 6 uses
  %9 = add nsw i64 %wide.trip.count53, -1         ; 3 uses
  %10 = mul i64 %i.at, %9
  %11 = shl nuw nsw i64 %wide.trip.count, 2       ; 3 uses
  %12 = getelementptr i8, ptr %i.ar, i64 %10
  %scevgep = getelementptr i8, ptr %12, i64 %11
  %13 = mul i64 %i.ap, %9
  %14 = getelementptr i8, ptr %i.an, i64 %13
  %scevgep67 = getelementptr i8, ptr %14, i64 %11
  %15 = mul i64 %i.ax, %9
  %16 = getelementptr i8, ptr %i.av, i64 %15
  %scevgep68 = getelementptr i8, ptr %16, i64 %11 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  %bound0 = icmp ult ptr %i.av, %scevgep67
  %bound1 = icmp ult ptr %i.an, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  %17 = or i64 %i.ap, %i.ax
  %18 = icmp slt i64 %17, 0
  %19 = or i1 %found.conflict, %18
  %bound070 = icmp ult ptr %i.av, %scevgep
  %bound171 = icmp ult ptr %i.ar, %scevgep68
  %found.conflict72 = and i1 %bound070, %bound171
  %stride.check73 = icmp slt i64 %i.at, 0
  %20 = or i1 %found.conflict72, %stride.check73
  %conflict.rdx = or i1 %19, %20
  %xtraiter.a = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.az = icmp eq i64 %xtraiter.a, %wide.trip.count
  %unroll_iter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %unroll_iter, 0
  %21 = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge48.split:                              ; preds = %._crit_edge, %.lr.ph47, %bb.n
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.o:                                             ; preds = %bb.e, %bb.d, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %bb.g, %bb.f, %_ZNK2cv11_InputArray6getMatEi.exit37
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.q ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next51, %._crit_edge ] ; 4 uses
  %i.bd = mul i64 %i.ap, %indvars.iv50
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bd ; 4 uses
  %i.bf = mul i64 %i.at, %indvars.iv50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bf ; 4 uses
  %i.bh = mul i64 %i.ax, %indvars.iv50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %._crit_edge.unr-lcssa, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index
  %wide.load = load <4 x float>, ptr %22, align 4, !tbaa !32, !alias.scope !139 ; 2 uses
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %wide.load74 = load <4 x float>, ptr %23, align 4, !tbaa !32, !alias.scope !140 ; 2 uses
  %24 = fmul <4 x float> %wide.load74, %wide.load74
  %25 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load, <4 x float> %24)
  %26 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %25, <4 x float> splat (float 1.000000e+00))
  %27 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %26)
  %28 = fdiv <4 x float> splat (float 1.000000e+00), %27
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index
  store <4 x float> %28, ptr %29, align 4, !tbaa !32, !alias.scope !141, !noalias !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %30 = icmp eq i64 %index.next, %xtraiter.a
  br i1 %30, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  br i1 %i.az, label %._crit_edge, label %._crit_edge.unr-lcssa

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %xtraiter.a, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.ph
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !32 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.ph
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !32 ; 2 uses
  %i.bn = fmul float %i.bm, %i.bm
  %i.bo = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bn)
  %i.bp = call float @llvm.fmuladd.f32(float %i.ak, float %i.bo, float 1.000000e+00)
  %i.bq = call float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv float 1.000000e+00, %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.ph
  store float %i.br, ptr %i.bs, align 4, !tbaa !32
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %.epil.preheader, %._crit_edge.unr-lcssa
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %._crit_edge.unr-lcssa ], [ %indvars.iv.next.prol, %.epil.preheader ]
  %31 = icmp eq i64 %indvars.iv.ph, %21
  br i1 %31, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %.lr.ph.new, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count53
  br i1 %exitcond54.not, label %._crit_edge48.split, label %.lr.ph, !llvm.loop !134

.lr.ph.new:                                       ; preds = %scalar.ph.prol.loopexit, %.lr.ph.new
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %niter
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !32 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %niter
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !32 ; 2 uses
  %i.bx = fmul float %i.bw, %i.bw
  %i.by = call float @llvm.fmuladd.f32(float %i.bu, float %i.bu, float %i.bx)
  %i.bz = call float @llvm.fmuladd.f32(float %i.ak, float %i.by, float 1.000000e+00)
  %i.ca = call float @llvm.sqrt.f32(float %i.bz)
  %i.cb = fdiv float 1.000000e+00, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %niter
  store float %i.cb, ptr %i.cc, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %niter, 1    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !32 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ch)
  %i.cj = call float @llvm.fmuladd.f32(float %i.ak, float %i.ci, float 1.000000e+00)
  %i.ck = call float @llvm.sqrt.f32(float %i.cj)
  %i.cl = fdiv float 1.000000e+00, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next
  store float %i.cl, ptr %i.cm, align 4, !tbaa !32
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count
  br i1 %niter.ncmp.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !135

bb.r:                                             ; preds = %.body, %bb.p
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.ba, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv20compute_k_percentileERKNS_3MatEffiii(ptr noundef nonnull align 8 dereferenceable(208) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 14 uses
  %10 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %12 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv20compute_k_percentileERKNS_3MatEffiiiE25__cv_trace_location_fn230)
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i32 %3, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 2                  ; 2 uses
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #21
          to label %.noexc113 unwind label %bb.p  ; 3 uses

.noexc113:                                        ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.a
  %i.f = ptrtoint ptr %i.e to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc113, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.f, %.noexc113 ] ; 2 uses
  %.sroa.0123.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.d, %.noexc113 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %10, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 5)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #17
  %i.k = load ptr, ptr %10, align 8, !tbaa !45, !noalias !154 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(688) %10, ptr noundef nonnull align 8 dereferenceable(208) %9, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %10) #17
  br label %bb.r

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.s = load i32, ptr %i.g, align 8, !tbaa !48
  %i.t = load i32, ptr %i.i, align 4, !tbaa !49
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i32 noundef %i.s, i32 noundef %i.t, i32 noundef 5)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #17
  %i.u = load ptr, ptr %12, align 8, !tbaa !45, !noalias !155 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit116 unwind label %.body114

.body114:                                         ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #17
  br label %bb.t

_ZNK2cv7MatExprcvNS_3MatEEv.exit116:              ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.z) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aa) #17
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ab) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !48
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !49
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef 5)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit116
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #17
  %i.ae = load ptr, ptr %14, align 8, !tbaa !45, !noalias !156 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit119 unwind label %.body117

.body117:                                         ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #17
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #17
  br label %bb.v

_ZNK2cv7MatExprcvNS_3MatEEv.exit119:              ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aj) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ak) #17
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.al) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.am = sitofp i32 %4 to float
  %i.an = fcmp ogt float %2, %i.am
  br i1 %i.an, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit119
  %i.ao = sitofp i32 %5 to float
  %i.ap = fcmp ogt float %2, %i.ao
  %i.aq = icmp eq i32 %4, 0
  %or.cond.i = or i1 %i.aq, %i.ap
  %i.ar = icmp eq i32 %5, 0
  %or.cond3.i = or i1 %i.ar, %or.cond.i
  br i1 %or.cond3.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZNK2cv7MatExprcvNS_3MatEEv.exit119
  %i.as = fadd float %2, -8.000000e-01
  %i.at = fdiv float %i.as, 3.000000e-01
  %i.au = fadd float %i.at, 1.000000e+00
  %i.av = fmul float %i.au, 2.000000e+00
  %i.aw = call float @llvm.ceil.f32(float %i.av)
  %i.ax = fptosi float %i.aw to i32
  %i.ay = or i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, 4294967297
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.023.i = phi i64 [ %i.ba, %bb.h ], [ 4294967297, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bb, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.bc, align 4, !tbaa !10
  store i32 16842752, ptr %6, align 8, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.bd, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.bf, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !13
  store ptr %9, ptr %i.be, align 8, !tbaa !14
  %i.bg = fpext float %2 to double                ; 2 uses
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 %.023.i, double noundef %i.bg, double noundef %i.bg, i32 noundef 1, i32 noundef 0)
          to label %bb.j unwind label %bb.w

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.bh, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.bi, align 4, !tbaa !10
  store i32 16842752, ptr %15, align 8, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %9, ptr %i.bj, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.bl, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !13
  store ptr %11, ptr %i.bk, align 8, !tbaa !14
  invoke void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 5, i32 noundef 1, i32 noundef 0, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.bm, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.bn, align 4, !tbaa !10
  store i32 16842752, ptr %17, align 8, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %9, ptr %i.bo, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.bp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.bq, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !13
  store ptr %13, ptr %i.bp, align 8, !tbaa !14
  invoke void @_ZN2cv6ScharrERKNS_11_InputArrayERKNS_12_OutputArrayEiiiddi(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef 5, i32 noundef 0, i32 noundef 1, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !48 ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.bu = icmp sgt i32 %i.bs, 2
  br i1 %i.bu, label %.lr.ph134, label %._crit_edge145

.lr.ph134:                                        ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !49 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 2
  br i1 %i.cf, label %.lr.ph.us.preheader, label %.lr.ph144

.lr.ph.us.preheader:                              ; preds = %.lr.ph134
  %i.cg = add nsw i32 %i.ce, -1                   ; 2 uses
  %wide.trip.count162 = zext nneg i32 %i.bt to i64
  %wide.trip.count = zext i32 %i.cg to i64
  %i.ch = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ch, 1
  %i.ci = icmp eq i32 %i.cg, 2
  %unroll_iter = and i64 %i.ch, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod187 = trunc i64 %i.ch to i1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv159 = phi i64 [ 1, %.lr.ph.us.preheader ], [ %indvars.iv.next160, %._crit_edge.us ] ; 3 uses
  %.084131.us = phi float [ 0.000000e+00, %.lr.ph.us.preheader ], [ %.286.us.lcssa, %._crit_edge.us ] ; 2 uses
  %i.cj = mul i64 %i.by, %indvars.iv159
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cj ; 3 uses
  %i.cl = mul i64 %i.cc, %indvars.iv159
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cl ; 3 uses
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.new ], [ 1, %.lr.ph.us ] ; 4 uses
  %.185129.us = phi float [ %.286.us.1, %.lr.ph.us.new ], [ %.084131.us, %.lr.ph.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !32 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !32 ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cr) ; 2 uses
  %i.ct = fcmp ogt float %i.cs, %.185129.us
  %.286.us = select i1 %i.ct, float %i.cs, float %.185129.us ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !32 ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !32 ; 2 uses
  %i.cy = fmul float %i.cx, %i.cx
  %i.cz = call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cy) ; 2 uses
  %i.da = fcmp ogt float %i.cz, %.286.us
  %.286.us.1 = select i1 %i.da, float %i.cz, float %.286.us ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !149

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.185129.us.epil.init = phi float [ %.084131.us, %.lr.ph.us ], [ %.286.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.epil.init
  %i.dc = load float, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.epil.init
  %i.de = load float, ptr %i.dd, align 4, !tbaa !32 ; 2 uses
  %i.df = fmul float %i.de, %i.de
  %i.dg = call float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.df) ; 2 uses
  %i.dh = fcmp ogt float %i.dg, %.185129.us.epil.init
  %.286.us.epil = select i1 %i.dh, float %i.dg, float %.185129.us.epil.init
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.286.us.lcssa = phi float [ %.286.us.1, %._crit_edge.us.unr-lcssa ], [ %.286.us.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge135, label %.lr.ph.us, !llvm.loop !150

._crit_edge135:                                   ; preds = %._crit_edge.us
  %i.di = call noundef float @sqrtf(float noundef %.286.us.lcssa) #17
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph134, %._crit_edge135
  %i.dj = phi float [ %i.di, %._crit_edge135 ], [ 0.000000e+00, %.lr.ph134 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 128
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !49 ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 2
  %i.dv = uitofp nneg i32 %3 to float
  br i1 %i.du, label %.lr.ph.us147.preheader, label %._crit_edge145

.lr.ph.us147.preheader:                           ; preds = %.lr.ph144
  %i.dw = add nsw i32 %i.dt, -1
  %wide.trip.count172 = zext nneg i32 %i.bt to i64
  %wide.trip.count167 = zext i32 %i.dw to i64
  br label %.lr.ph.us147

.lr.ph.us147:                                     ; preds = %.lr.ph.us147.preheader, %._crit_edge.us148
  %indvars.iv169 = phi i64 [ 1, %.lr.ph.us147.preheader ], [ %indvars.iv.next170, %._crit_edge.us148 ] ; 3 uses
  %.087141.us = phi float [ 0.000000e+00, %.lr.ph.us147.preheader ], [ %.289.us, %._crit_edge.us148 ]
  %i.dx = mul i64 %i.dn, %indvars.iv169
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dx
  %i.dz = mul i64 %i.dr, %indvars.iv169
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dz
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.us147, %bb.o
  %indvars.iv164 = phi i64 [ 1, %.lr.ph.us147 ], [ %indvars.iv.next165, %bb.o ] ; 3 uses
  %.188139.us = phi float [ %.087141.us, %.lr.ph.us147 ], [ %.289.us, %bb.o ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv164
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !32 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv164
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !32 ; 2 uses
  %i.ef = fmul float %i.ee, %i.ee
  %i.eg = call float @llvm.fmuladd.f32(float %i.ec, float %i.ec, float %i.ef) ; 2 uses
  %i.eh = fcmp une float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %sqrt.us = call float @llvm.sqrt.f32(float %i.eg)
  %i.ei = fdiv float %sqrt.us, %i.dj
  %i.ej = fmul float %i.ei, %i.dv
  %i.ek = call noundef float @llvm.floor.f32(float %i.ej)
  %i.el = fptosi float %i.ek to i32               ; 2 uses
  %i.em = icmp eq i32 %3, %i.el
  %i.en = sext i1 %i.em to i32
  %spec.select.us = add nsw i32 %i.en, %i.el
  %i.eo = sext i32 %spec.select.us to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0123.0, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !24
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !24
  %i.es = fadd float %.188139.us, 1.000000e+00
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.289.us = phi float [ %i.es, %bb.n ], [ %.188139.us, %bb.m ] ; 3 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge.us148, label %bb.m, !llvm.loop !151

._crit_edge.us148:                                ; preds = %bb.o
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %._crit_edge145, label %.lr.ph.us147, !llvm.loop !152

bb.p:                                             ; preds = %bb.c, %bb.b
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.q
  %.pn = phi { ptr, i32 } [ %i.o, %.body ], [ %i.eu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.af

bb.s:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.body114, %bb.s
  %.pn98 = phi { ptr, i32 } [ %i.y, %.body114 ], [ %i.ev, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.ae

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit116
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.body117, %bb.u
  %.pn100 = phi { ptr, i32 } [ %i.ai, %.body117 ], [ %i.ew, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ad

bb.w:                                             ; preds = %bb.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %bb.j
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ac

bb.y:                                             ; preds = %bb.k
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  br label %bb.ac

._crit_edge145:                                   ; preds = %._crit_edge.us148, %bb.l, %.lr.ph144
  %i.fa = phi float [ 0.000000e+00, %bb.l ], [ %i.dj, %.lr.ph144 ], [ %i.dj, %._crit_edge.us148 ]
  %.087.lcssa = phi float [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %.lr.ph144 ], [ %.289.us, %._crit_edge.us148 ]
  %i.fb = fmul float %1, %.087.lcssa
  %i.fc = fptosi float %i.fb to i32               ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0                   ; 2 uses
  %i.fe = and i1 %i.fd, %.not.i.i.i.i
  br i1 %i.fe, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge145, %.lr.ph
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %.lr.ph ], [ 0, %._crit_edge145 ] ; 2 uses
  %.092151 = phi i32 [ %i.fh, %.lr.ph ], [ 0, %._crit_edge145 ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0123.0, i64 %indvars.iv174
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !24
  %i.fh = add nsw i32 %i.fg, %.092151             ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 3 uses
  %i.fi = icmp slt i32 %i.fh, %i.fc               ; 2 uses
  %i.fj = icmp slt i64 %indvars.iv.next175, %i.a
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %i.fk, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !153

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.fl = trunc nuw nsw i64 %indvars.iv.next175 to i32
  %i.fm = uitofp nneg i32 %i.fl to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge145
  %.091.lcssa = phi float [ 0.000000e+00, %._crit_edge145 ], [ %i.fm, %._crit_edge.loopexit ]
  %.lcssa = phi i1 [ %i.fd, %._crit_edge145 ], [ %i.fi, %._crit_edge.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.not.i.i.i = icmp eq ptr %.sroa.0123.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.0123.0 to i64
  %i.fo = sub i64 %.sroa.11.0, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0, i64 noundef %i.fo) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.aa
  %i.ft = uitofp nneg i32 %3 to float
  %i.fu = fdiv float %.091.lcssa, %i.ft
  %i.fv = fmul float %i.fa, %i.fu
  %.090 = select i1 %.lcssa, float 3.000000e-02, float %i.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret float %.090

bb.ac:                                            ; preds = %bb.y, %bb.x, %bb.w
  %.pn105.pn.pn = phi { ptr, i32 } [ %i.ez, %bb.y ], [ %i.ey, %bb.x ], [ %i.ex, %bb.w ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.pn105.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn, %bb.ac ], [ %.pn100, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.t
  %.pn105.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn, %bb.ad ], [ %.pn98, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.r
  %.pn105.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn105.pn.pn.pn.pn, %bb.ae ], [ %.pn, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %.not.i.i.i121 = icmp eq ptr %.sroa.0123.0, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fw = ptrtoint ptr %.sroa.0123.0 to i64
  %i.fx = sub i64 %.sroa.11.0, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0123.0, i64 noundef %i.fx) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %bb.ag, %bb.af, %bb.p
  %.pn105.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.et, %bb.p ], [ %.pn105.pn.pn.pn.pn.pn, %bb.af ], [ %.pn105.pn.pn.pn.pn.pn, %bb.ag ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn105.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv26compute_scharr_derivativesERKNS_3MatERS0_iii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.b, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !13
  store ptr %5, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.d, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !13
  store ptr %6, ptr %i.c, align 8, !tbaa !14
  invoke void @_ZN2cv26compute_derivative_kernelsERKNS_12_OutputArrayES2_iii(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef %2, i32 noundef %3, i32 noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !10
  store i32 16842752, ptr %9, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.g, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.i, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !13
  store ptr %1, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !10
  store i32 16842752, ptr %11, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %5, ptr %i.l, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !10
  store i32 16842752, ptr %12, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %6, ptr %i.o, align 8, !tbaa !14
  invoke void @_ZN2cv11sepFilter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_S2_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 -1, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.p, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv26compute_derivative_kernelsERKNS_12_OutputArrayES2_iii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv26compute_derivative_kernelsERKNS_12_OutputArrayES2_iiiE25__cv_trace_location_fn329)
  %i.a = shl i32 %4, 1                            ; 3 uses
  %i.b = or disjoint i32 %i.a, 1                  ; 4 uses
  %i.c = icmp eq i32 %4, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv15getDerivKernelsERKNS_12_OutputArrayES2_iiibi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i1 noundef zeroext true, i32 noundef 5)
          to label %bb.x unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.b, i32 noundef 1, i32 noundef 5, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.b, i32 noundef 1, i32 noundef 5, i32 noundef -1, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  %i.f = icmp eq i32 %i.e, 65536
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14, !noalias !161
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.h)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.k

bb.h:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.k

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.i = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc53 unwind label %bb.l

.noexc53:                                         ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc53
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14, !noalias !162
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %.noexc53
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.m unwind label %bb.l

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.idx = shl nuw nsw i64 %i.s, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %.idx) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.x

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %bb.j, %bb.i, %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.o = sitofp i32 %4 to float
  %i.p = fmul nnan float %i.o, 2.000000e+00
  %i.q = fmul nnan float %i.p, f0x40AAAAAA
  %i.r = fdiv float 1.000000e+00, %i.q            ; 5 uses
  %i.s = sext i32 %i.b to i64                     ; 3 uses
  %.idx.i.i.i = shl nsw i64 %i.s, 2               ; 3 uses
  %i.t = sdiv i32 %i.b, 2
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = sext i32 %i.a to i64                     ; 2 uses
  %i.w = fmul nnan float %i.r, f0x40555555        ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp slt i32 %i.a, 0
  br i1 %i.z, label %bb.n, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #18
          to label %.noexc60 unwind label %.loopexit.split-lp

.noexc60:                                         ; preds = %bb.n
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.m
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i.i.i) #21
          to label %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit unwind label %.loopexit.split-lp ; 12 uses

_ZNSt6vectorIfSaIfEE6assignEmRKf.exit:            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !32
  switch i32 %2, label %bb.p [
    i32 0, label %.sink.split
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit, %bb.o
  %.sink127 = phi float [ -1.000000e+00, %bb.o ], [ %i.r, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit ]
  %.sink125 = phi float [ 0.000000e+00, %bb.o ], [ %i.w, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit ]
  %.sink = phi float [ 1.000000e+00, %bb.o ], [ %i.r, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit ]
  store float %.sink127, ptr %i.aa, align 4, !tbaa !32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.u
  store float %.sink125, ptr %i.ab, align 4, !tbaa !32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.v
  store float %.sink, ptr %i.ac, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load i32, ptr %..sroa.sel, align 8, !tbaa !48
  %..sroa.sel80 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ae = load i32, ptr %..sroa.sel80, align 4, !tbaa !49
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef 5, ptr noundef nonnull %i.aa, i64 noundef 0)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i64 0, ptr %i.y, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !13
  store ptr %6, ptr %i.x, align 8, !tbaa !14
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1 unwind label %bb.v

_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1:          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !32
  switch i32 %3, label %bb.s [
    i32 0, label %bb.r
    i32 1, label %.sink.split128
  ]

bb.r:                                             ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1
  br label %.sink.split128

.sink.split128:                                   ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1, %bb.r
  %.sink133 = phi float [ %i.r, %bb.r ], [ -1.000000e+00, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1 ]
  %.sink131 = phi float [ %i.w, %bb.r ], [ 0.000000e+00, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1 ]
  %.sink129 = phi float [ %i.r, %bb.r ], [ 1.000000e+00, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1 ]
  store float %.sink133, ptr %i.aa, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.u
  store float %.sink131, ptr %i.af, align 4, !tbaa !32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.v
  store float %.sink129, ptr %i.ag, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %.sink.split128, %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %..sroa.sel.1 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i32, ptr %..sroa.sel.1, align 8, !tbaa !48
  %..sroa.sel80.1 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ai = load i32, ptr %..sroa.sel80.1, align 4, !tbaa !49
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef %i.ah, i32 noundef %i.ai, i32 noundef 5, ptr noundef nonnull %i.aa, i64 noundef 0)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store i64 0, ptr %i.y, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !13
  store ptr %7, ptr %i.x, align 8, !tbaa !14
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #17
  br label %bb.w

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.aj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %.idx134 = shl nuw nsw i64 %i.s, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %.idx134) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit59

_ZNSt6vectorIfSaIfEED2Ev.exit59:                  ; preds = %.loopexit.split-lp, %bb.w
  %.pn.pn.pn88 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #17
  br label %bb.aa

bb.x:                                             ; preds = %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit59, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn88, %_ZNSt6vectorIfSaIfEED2Ev.exit59 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aa ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.c
  %.pn49 = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn.pn.pn.pn.pn, %bb.ab ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn49
}

declare void @_ZN2cv11sepFilter2DERKNS_11_InputArrayERKNS_12_OutputArrayEiS2_S2_NS_6Point_IiEEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv15getDerivKernelsERKNS_12_OutputArrayES2_iiibi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv15nld_step_scalarERNS_3MatERKS0_S1_f(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, float noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Range", align 4         ; 6 uses
  %9 = alloca %"class.cv::Nld_Step_Scalar_Invoker", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv15nld_step_scalarERNS_3MatERKS0_S1_fE25__cv_trace_location_fn427)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48
  %i.c = add nsw i32 %i.b, -1
  store i32 1, ptr %8, align 4, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv23Nld_Step_Scalar_InvokerE, i64 16), ptr %9, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %1, ptr %i.f, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %2, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  store float %3, ptr %i.h, align 8, !tbaa !59
  %i.i = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = uitofp i64 %i.i to double
  %i.k = fmul nnan double %i.j, f0x3EF0000000000000
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef %i.k)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !49   ; 3 uses
  %i.aa = add i32 %i.z, -1                        ; 3 uses
  %i.ab = icmp sgt i32 %i.z, 2                    ; 2 uses
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ac = fmul float %3, 5.000000e-01             ; 2 uses
  %wide.trip.count = zext i32 %i.aa to i64        ; 3 uses
  %i.ad = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ae = getelementptr i8, ptr %i.m, i64 4       ; 4 uses
  %i.af = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.af   ; 4 uses
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.r
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.r
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.af
  %i.al = add nuw nsw i64 %i.af, 4                ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.al
  %i.an = getelementptr i8, ptr %i.u, i64 %i.w
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = getelementptr i8, ptr %i.u, i64 %i.w
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.af
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.al
  %bound0 = icmp ult ptr %i.ae, %i.ak
  %bound1 = icmp ult ptr %i.ai, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %bound0210 = icmp ult ptr %i.ae, %i.am
  %bound1211 = icmp ult ptr %i.p, %i.ag
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx = or i1 %found.conflict, %found.conflict212
  %bound0213 = icmp ult ptr %i.ae, %i.aq
  %bound1214 = icmp ult ptr %i.ao, %i.ag
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx, %found.conflict215
  %bound0217 = icmp ult ptr %i.ae, %i.ar
  %bound1218 = icmp ult ptr %i.u, %i.ag
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  br i1 %conflict.rdx220, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -4                      ; 3 uses
  %i.as = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.at = or disjoint i64 %index, 1               ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.at
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !32, !alias.scope !180 ; 3 uses
  %i.av = or disjoint i64 %index, 2               ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.av
  %wide.load221 = load <4 x float>, ptr %i.aw, align 4, !tbaa !32, !alias.scope !180
  %i.ax = fadd <4 x float> %wide.load, %wide.load221
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.av
  %wide.load222 = load <4 x float>, ptr %i.ay, align 4, !tbaa !32, !alias.scope !181
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.at
  %wide.load223 = load <4 x float>, ptr %i.az, align 4, !tbaa !32, !alias.scope !181 ; 3 uses
  %i.ba = fsub <4 x float> %wide.load222, %wide.load223
  %i.bb = fmul <4 x float> %i.ax, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %index
  %wide.load224 = load <4 x float>, ptr %i.bc, align 4, !tbaa !32, !alias.scope !180
  %i.bd = fadd <4 x float> %wide.load, %wide.load224
  %i.be = getelementptr inbounds [4 x i8], ptr %i.u, i64 %index
  %wide.load225 = load <4 x float>, ptr %i.be, align 4, !tbaa !32, !alias.scope !181
  %i.bf = fsub <4 x float> %wide.load223, %wide.load225
  %i.bg = fmul <4 x float> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.at
  %wide.load226 = load <4 x float>, ptr %i.bh, align 4, !tbaa !32, !alias.scope !182
  %i.bi = fadd <4 x float> %wide.load, %wide.load226
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.at
  %wide.load227 = load <4 x float>, ptr %i.bj, align 4, !tbaa !32, !alias.scope !183
  %i.bk = fsub <4 x float> %wide.load227, %wide.load223
  %i.bl = fmul <4 x float> %i.bi, %i.bk
  %i.bm = fsub <4 x float> %i.bb, %i.bg
  %i.bn = fadd <4 x float> %i.bm, %i.bl
  %i.bo = fmul <4 x float> %broadcast.splat, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.at
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !32, !alias.scope !184, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.as, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.c
  %i.br = load i32, ptr %i.a, align 8, !tbaa !48  ; 3 uses
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  %i.bt = load i64, ptr %i.n, align 8, !tbaa !30  ; 2 uses
  %i.bu = sext i32 %i.bs to i64                   ; 3 uses
  %i.bv = mul i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bv ; 2 uses
  %i.bx = mul i64 %i.r, %i.bu                     ; 2 uses
  %i.by = getelementptr i8, ptr %i.p, i64 %i.bx   ; 6 uses
  %i.bz = add i32 %i.br, -2
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = mul i64 %i.r, %i.ca                     ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cb ; 2 uses
  %i.cd = mul i64 %i.w, %i.bu                     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.u, i64 %i.cd   ; 6 uses
  %i.cf = mul i64 %i.w, %i.ca                     ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cf ; 2 uses
  br i1 %i.ab, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %._crit_edge
  %i.ch = fmul float %3, 5.000000e-01             ; 2 uses
  %wide.trip.count185 = zext i32 %i.aa to i64     ; 3 uses
  %i.ci = add nsw i64 %wide.trip.count185, -1     ; 3 uses
  %min.iters.check252 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check252, label %scalar.ph251.preheader, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph171
  %i.cj = getelementptr i8, ptr %i.m, i64 %i.bv
  %i.ck = getelementptr i8, ptr %i.cj, i64 4      ; 4 uses
  %i.cl = shl nuw nsw i64 %wide.trip.count185, 2  ; 5 uses
  %i.cm = getelementptr i8, ptr %i.m, i64 %i.bv
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.cl  ; 4 uses
  %i.co = getelementptr i8, ptr %i.p, i64 %i.cb
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = getelementptr i8, ptr %i.p, i64 %i.cb
  %i.cr = getelementptr i8, ptr %i.cq, i64 %i.cl
  %i.cs = getelementptr i8, ptr %i.p, i64 %i.bx
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cl
  %i.cu = getelementptr i8, ptr %i.ct, i64 4
  %i.cv = getelementptr i8, ptr %i.u, i64 %i.cf
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %i.cx = getelementptr i8, ptr %i.u, i64 %i.cf
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cl
  %i.cz = getelementptr i8, ptr %i.u, i64 %i.cd
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cl
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %bound0254 = icmp ult ptr %i.ck, %i.cr
  %bound1255 = icmp ult ptr %i.cp, %i.cn
  %found.conflict256 = and i1 %bound0254, %bound1255
  %bound0257 = icmp ult ptr %i.ck, %i.cu
  %bound1258 = icmp ult ptr %i.by, %i.cn
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %found.conflict256, %found.conflict259
  %bound0261 = icmp ult ptr %i.ck, %i.cy
  %bound1262 = icmp ult ptr %i.cw, %i.cn
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.ck, %i.db
  %bound1266 = icmp ult ptr %i.ce, %i.cn
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  br i1 %conflict.rdx268, label %scalar.ph251.preheader, label %vector.ph269

vector.ph269:                                     ; preds = %vector.memcheck253
  %n.vec270 = and i64 %i.ci, -4                   ; 3 uses
  %i.dc = or disjoint i64 %n.vec270, 1
  %broadcast.splatinsert271 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat272 = shufflevector <4 x float> %broadcast.splatinsert271, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next283, %vector.body273 ] ; 5 uses
  %i.dd = or disjoint i64 %index274, 1            ; 5 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dd
  %wide.load275 = load <4 x float>, ptr %i.de, align 4, !tbaa !32, !alias.scope !186 ; 3 uses
  %i.df = or disjoint i64 %index274, 2            ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.df
  %wide.load276 = load <4 x float>, ptr %i.dg, align 4, !tbaa !32, !alias.scope !186
  %i.dh = fadd <4 x float> %wide.load275, %wide.load276
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.df
  %wide.load277 = load <4 x float>, ptr %i.di, align 4, !tbaa !32, !alias.scope !187
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dd
  %wide.load278 = load <4 x float>, ptr %i.dj, align 4, !tbaa !32, !alias.scope !187 ; 3 uses
  %i.dk = fsub <4 x float> %wide.load277, %wide.load278
  %i.dl = fmul <4 x float> %i.dh, %i.dk
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %index274
  %wide.load279 = load <4 x float>, ptr %i.dm, align 4, !tbaa !32, !alias.scope !186
  %i.dn = fadd <4 x float> %wide.load275, %wide.load279
  %i.do = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %index274
  %wide.load280 = load <4 x float>, ptr %i.do, align 4, !tbaa !32, !alias.scope !187
  %i.dp = fsub <4 x float> %wide.load278, %wide.load280
  %i.dq = fmul <4 x float> %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dd
  %wide.load281 = load <4 x float>, ptr %i.dr, align 4, !tbaa !32, !alias.scope !188
  %i.ds = fadd <4 x float> %wide.load275, %wide.load281
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.dd
  %wide.load282 = load <4 x float>, ptr %i.dt, align 4, !tbaa !32, !alias.scope !189
  %i.du = fsub <4 x float> %wide.load278, %wide.load282
  %i.dv = fmul <4 x float> %i.ds, %i.du
  %i.dw = fsub <4 x float> %i.dl, %i.dq
  %i.dx = fsub <4 x float> %i.dw, %i.dv
  %i.dy = fmul <4 x float> %broadcast.splat272, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.dd
  store <4 x float> %i.dy, ptr %i.dz, align 4, !tbaa !32, !alias.scope !190, !noalias !191
  %index.next283 = add nuw i64 %index274, 4       ; 2 uses
  %i.ea = icmp eq i64 %index.next283, %n.vec270
  br i1 %i.ea, label %middle.block284, label %vector.body273, !llvm.loop !176

middle.block284:                                  ; preds = %vector.body273
  %cmp.n285 = icmp eq i64 %i.ci, %n.vec270
  br i1 %cmp.n285, label %._crit_edge172, label %scalar.ph251.preheader

scalar.ph251.preheader:                           ; preds = %vector.memcheck253, %.lr.ph171, %middle.block284
  %indvars.iv182.ph = phi i64 [ 1, %vector.memcheck253 ], [ 1, %.lr.ph171 ], [ %i.dc, %middle.block284 ]
  br label %scalar.ph251

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.j

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ee = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ee
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ee
  %i.eh = load <2 x float>, ptr %i.ec, align 4, !tbaa !32 ; 2 uses
  %i.ei = load <2 x float>, ptr %i.ed, align 4, !tbaa !32 ; 2 uses
  %i.ej = load <2 x float>, ptr %i.ef, align 4, !tbaa !32
  %i.ek = fadd <2 x float> %i.eh, %i.ej
  %i.el = load <2 x float>, ptr %i.eg, align 4, !tbaa !32
  %i.em = fsub <2 x float> %i.ei, %i.el
  %i.en = fmul <2 x float> %i.ek, %i.em           ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !32
  %i.eq = extractelement <2 x float> %i.eh, i64 0
  %i.er = fadd float %i.eq, %i.ep
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.et = load float, ptr %i.es, align 4, !tbaa !32
  %i.eu = extractelement <2 x float> %i.ei, i64 0
  %i.ev = fsub float %i.et, %i.eu
  %i.ew = fmul float %i.er, %i.ev
  %shift = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.en
  %i.ex = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ey = fadd float %i.ex, %i.ew
  %i.ez = fmul float %i.ac, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  store float %i.ez, ptr %i.fa, align 4, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !177

._crit_edge172:                                   ; preds = %scalar.ph251, %middle.block284, %._crit_edge
  %i.fb = icmp sgt i32 %i.br, 2
  br i1 %i.fb, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %._crit_edge172
  %i.fc = add nsw i32 %i.z, -2
  %i.fd = fmul float %3, 5.000000e-01             ; 2 uses
  %i.fe = sext i32 %i.fc to i64                   ; 2 uses
  %i.ff = sext i32 %i.aa to i64                   ; 7 uses
  %wide.trip.count190 = zext nneg i32 %i.bs to i64
  br label %bb.e

scalar.ph251:                                     ; preds = %scalar.ph251.preheader, %scalar.ph251
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph251 ], [ %indvars.iv182.ph, %scalar.ph251.preheader ] ; 7 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv182
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv182
  %i.fi = add nsw i64 %indvars.iv182, -1          ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.fi
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.fi
  %i.fl = load <2 x float>, ptr %i.fg, align 4, !tbaa !32 ; 2 uses
  %i.fm = load <2 x float>, ptr %i.fh, align 4, !tbaa !32 ; 2 uses
  %i.fn = load <2 x float>, ptr %i.fj, align 4, !tbaa !32
  %i.fo = fadd <2 x float> %i.fl, %i.fn
  %i.fp = load <2 x float>, ptr %i.fk, align 4, !tbaa !32
  %i.fq = fsub <2 x float> %i.fm, %i.fp
  %i.fr = fmul <2 x float> %i.fo, %i.fq           ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv182
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !32
  %i.fu = extractelement <2 x float> %i.fl, i64 0
  %i.fv = fadd float %i.fu, %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv182
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !32
  %i.fy = extractelement <2 x float> %i.fm, i64 0
  %i.fz = fsub float %i.fy, %i.fx
  %i.ga = fmul float %i.fv, %i.fz
  %shift288 = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop289 = fsub <2 x float> %shift288, %i.fr
  %i.gb = extractelement <2 x float> %foldExtExtBinop289, i64 0
  %i.gc = fsub float %i.gb, %i.ga
  %i.gd = fmul float %i.ch, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv182
  store float %i.gd, ptr %i.ge, align 4, !tbaa !32
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %._crit_edge172, label %scalar.ph251, !llvm.loop !178

._crit_edge180:                                   ; preds = %bb.e, %._crit_edge172
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.gf, align 8, !tbaa !9
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 0, ptr %i.gg, align 4, !tbaa !10
  store i32 16842752, ptr %4, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.gh, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.gi, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.gj, align 4, !tbaa !10
  store i32 16842752, ptr %5, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.gk, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.gm, align 8
  store i32 -1040121856, ptr %6, align 8, !tbaa !13
  store ptr %0, ptr %i.gl, align 8, !tbaa !14
  %i.gn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %._crit_edge180
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i32 noundef -1)
          to label %bb.f unwind label %bb.i

bb.e:                                             ; preds = %.lr.ph179, %bb.e
  %indvars.iv187 = phi i64 [ 1, %.lr.ph179 ], [ %indvars.iv.next188, %bb.e ] ; 2 uses
  %.0158176 = phi ptr [ %i.x, %.lr.ph179 ], [ %i.gr, %bb.e ] ; 5 uses
  %.0159175 = phi ptr [ %i.u, %.lr.ph179 ], [ %.0158176, %bb.e ] ; 2 uses
  %.0160174 = phi ptr [ %i.s, %.lr.ph179 ], [ %i.gp, %bb.e ] ; 5 uses
  %.0161173 = phi ptr [ %i.p, %.lr.ph179 ], [ %.0160174, %bb.e ] ; 2 uses
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 4 uses
  %i.go = mul i64 %i.r, %indvars.iv.next188
  %i.gp = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.go ; 3 uses
  %i.gq = mul i64 %i.w, %indvars.iv.next188
  %i.gr = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.gq ; 3 uses
  %i.gs = mul i64 %i.bt, %indvars.iv187
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %.0160174, align 4, !tbaa !32 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0160174, i64 4
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !32
  %i.gx = fadd float %i.gu, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.0158176, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !32
  %i.ha = load float, ptr %.0158176, align 4, !tbaa !32 ; 3 uses
  %i.hb = fsub float %i.gz, %i.ha
  %i.hc = fmul float %i.gx, %i.hb
  %i.hd = load float, ptr %i.gp, align 4, !tbaa !32
  %i.he = fadd float %i.gu, %i.hd
  %i.hf = load float, ptr %i.gr, align 4, !tbaa !32
  %i.hg = fsub float %i.hf, %i.ha
  %i.hh = fmul float %i.he, %i.hg
  %i.hi = load float, ptr %.0161173, align 4, !tbaa !32
  %i.hj = fadd float %i.gu, %i.hi
  %i.hk = load float, ptr %.0159175, align 4, !tbaa !32
  %i.hl = fsub float %i.ha, %i.hk
  %i.hm = fmul float %i.hj, %i.hl
  %i.hn = fadd float %i.hc, %i.hh
  %i.ho = fsub float %i.hn, %i.hm
  %i.hp = fmul float %i.fd, %i.ho
  store float %i.hp, ptr %i.gt, align 4, !tbaa !32
  %i.hq = getelementptr inbounds [4 x i8], ptr %.0160174, i64 %i.fe
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !32
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0160174, i64 %i.ff
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !32 ; 3 uses
  %i.hu = fadd float %i.hr, %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0158176, i64 %i.ff
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !32 ; 3 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0158176, i64 %i.fe
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !32
  %i.hz = fsub float %i.hw, %i.hy
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.ff
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !32
  %i.ic = fadd float %i.ht, %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.ff
  %i.ie = load float, ptr %i.id, align 4, !tbaa !32
  %i.if = fsub float %i.ie, %i.hw
  %i.ig = fmul float %i.ic, %i.if
  %i.ih = getelementptr inbounds [4 x i8], ptr %.0161173, i64 %i.ff
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !32
  %i.ij = fadd float %i.ht, %i.ii
  %i.ik = getelementptr inbounds [4 x i8], ptr %.0159175, i64 %i.ff
  %i.il = load float, ptr %i.ik, align 4, !tbaa !32
  %i.im = fsub float %i.hw, %i.il
  %i.in = fmul float %i.ij, %i.im
  %i.io = fmul float %i.hu, %i.hz
  %i.ip = fsub float %i.ig, %i.io
  %i.iq = fsub float %i.ip, %i.in
  %i.ir = fmul float %i.fd, %i.iq
  %i.is = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.ff
  store float %i.ir, ptr %i.is, align 4, !tbaa !32
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count190
  br i1 %exitcond191.not, label %._crit_edge180, label %bb.e, !llvm.loop !179

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !38
  %.not.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %7)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  ret void

bb.i:                                             ; preds = %.noexc, %._crit_edge180
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ix, %bb.i ], [ %i.eb, %bb.d ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

declare noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv16halfsample_imageERKNS_3MatERS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49
  %i.c = sdiv i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv16halfsample_imageERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 498) #18
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !48
  %i.p = sdiv i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !48
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv16halfsample_imageERKNS_3MatERS0_, ptr noundef nonnull @.str.1, i32 noundef 499) #18
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.l
  %i.y = load i64, ptr %i.w, align 8, !tbaa !23
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.k
  %.pn13 = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.u, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.ab, align 4, !tbaa !10
  store i32 16842752, ptr %8, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %0, ptr %i.ac, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.ae, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !13
  store ptr %1, ptr %i.ad, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17 ; 6 uses
  %i.ah = icmp slt i32 %i.ag, 3
  br i1 %i.ah, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #18
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.noexc
  unreachable

bb.p:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

bb.q:                                             ; preds = %bb.m
  %i.ao = icmp sgt i32 %i.ag, 0
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aq = icmp eq i32 %i.ag, 2
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.au = icmp eq i32 %i.ag, 0
  %i.av = zext i1 %i.au to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = phi i32 [ %i.at, %bb.r ], [ %i.av, %bb.s ]
  %i.ax = icmp eq i32 %i.ag, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp sgt i32 %i.ag, -1
  %i.bb = zext i1 %i.ba to i32
  %i.bc = select i1 %i.ax, i32 %i.az, i32 %i.bb
  %.sroa.2.0.insert.ext.i = zext i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.0.0.insert.insert.i, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 3)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.v:                                             ; preds = %bb.n, %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn15 = phi { ptr, i32 } [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bd, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.w

bb.w:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %.body ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn15.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !192
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.d, ptr %i.a, align 8, !tbaa !30
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !30
  store i64 %i.g, ptr %i.b, align 8, !tbaa !23
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.i, ptr %i.h, align 1, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !193
  %i.l = load ptr, ptr %0, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2cv27check_maximum_neighbourhoodERKNS_3MatEifiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #7 {
bb.a:
  %i.a = add nsw i32 %3, %1                       ; 2 uses
  %.not60 = icmp slt i32 %1, 0
  br i1 %.not60, label %.thread, label %.lr.ph65.split

.lr.ph65.split:                                   ; preds = %bb.a
  %i.b = sub nsw i32 %3, %1                       ; 2 uses
  %i.c = sub nsw i32 %4, %1                       ; 2 uses
  %i.d = add nsw i32 %4, %1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %5, label %.lr.ph.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph65.split
  %i.j = load i32, ptr %i.f, align 4
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = load i64, ptr %i.h, align 8
  br label %.lr.ph

.lr.ph.us.preheader:                              ; preds = %.lr.ph65.split
  %i.m = load i32, ptr %i.f, align 4
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = load i64, ptr %i.h, align 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.03961.us68 = phi i32 [ %i.ab, %._crit_edge.us ], [ %i.b, %.lr.ph.us.preheader ] ; 6 uses
  %i.p = icmp sgt i32 %.03961.us68, -1
  %.not46.us = icmp eq i32 %.03961.us68, %3
  %i.q = zext nneg i32 %.03961.us68 to i64
  br i1 %i.p, label %.lr.ph.split.us.us, label %._crit_edge.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.r = icmp slt i32 %.03961.us68, %i.i
  %.fr.us = freeze i1 %i.r
  br i1 %.fr.us, label %.lr.ph.split.us.split.us73.preheader, label %._crit_edge.us

.lr.ph.split.us.split.us73.preheader:             ; preds = %.lr.ph.split.us.us
  %i.s = mul i64 %i.o, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  br label %.lr.ph.split.us.split.us73

.lr.ph.split.us.split.us73:                       ; preds = %.lr.ph.split.us.split.us73.preheader, %bb.d
  %.054.us.us55.us = phi i32 [ %i.aa, %bb.d ], [ %i.c, %.lr.ph.split.us.split.us73.preheader ] ; 6 uses
  %i.u = icmp sgt i32 %.054.us.us55.us, -1
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split.us.split.us73
  %i.v = icmp sge i32 %.054.us.us55.us, %i.m
  %.not47.us.us.us = icmp eq i32 %.054.us.us55.us, %4
  %or.cond48.us.us.us = and i1 %.not46.us, %.not47.us.us.us
  %or.cond = or i1 %i.v, %or.cond48.us.us.us
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = zext nneg i32 %.054.us.us55.us to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !32
  %i.z = fcmp ogt float %i.y, %2
  br i1 %i.z, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us.split.us73
  %i.aa = add nsw i32 %.054.us.us55.us, 1
  %.not45.us.us56.us.not = icmp slt i32 %.054.us.us55.us, %i.d
  br i1 %.not45.us.us56.us.not, label %.lr.ph.split.us.split.us73, label %._crit_edge.us, !llvm.loop !194

._crit_edge.us:                                   ; preds = %bb.d, %.lr.ph.split.us.us, %.lr.ph.us
  %i.ab = add nsw i32 %.03961.us68, 1
  %.not.us75.not = icmp slt i32 %.03961.us68, %i.a
  br i1 %.not.us75.not, label %.lr.ph.us, label %.thread, !llvm.loop !195

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.03961 = phi i32 [ %i.ao, %._crit_edge ], [ %i.b, %.lr.ph.preheader ] ; 5 uses
  %i.ac = icmp sgt i32 %.03961, -1
  %i.ad = zext nneg i32 %.03961 to i64
  br i1 %i.ac, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ae = icmp slt i32 %.03961, %i.i
  %.fr = freeze i1 %i.ae
  br i1 %.fr, label %.lr.ph.split.us.split.preheader, label %._crit_edge

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.af = mul i64 %i.l, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.af
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %bb.f
  %.054.us = phi i32 [ %i.an, %bb.f ], [ %i.c, %.lr.ph.split.us.split.preheader ] ; 5 uses
  %i.ah = icmp sgt i32 %.054.us, -1
  %i.ai = icmp slt i32 %.054.us, %i.j
  %or.cond94 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond94, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.aj = zext nneg i32 %.054.us to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !32
  %i.am = fcmp ogt float %i.al, %2
  br i1 %i.am, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.split
  %i.an = add nsw i32 %.054.us, 1
  %.not45.us.not = icmp slt i32 %.054.us, %i.d
  br i1 %.not45.us.not, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %bb.f, %.lr.ph.split.us, %.lr.ph
  %i.ao = add nsw i32 %.03961, 1
  %.not.not = icmp slt i32 %.03961, %i.a
  br i1 %.not.not, label %.lr.ph, label %.thread, !llvm.loop !195

.thread:                                          ; preds = %._crit_edge, %bb.e, %._crit_edge.us, %bb.c, %bb.a
  %.not52 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.a ], [ true, %._crit_edge.us ], [ true, %._crit_edge ]
  ret i1 %.not52
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv23Nld_Step_Scalar_InvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv23Nld_Step_Scalar_InvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !51     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph62, label %._crit_edge.split

.lr.ph62:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !30   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30   ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !49   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph62
  %i.aa = add nsw i32 %i.x, -1
  %i.ab = sext i32 %i.a to i64                    ; 6 uses
  %wide.trip.count67 = sext i32 %i.c to i64       ; 5 uses
  %wide.trip.count = zext i32 %i.aa to i64        ; 3 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = add nsw i64 %wide.trip.count67, -1      ; 3 uses
  %i.ad = mul i64 %i.r, %i.ac
  %i.ae = shl nuw nsw i64 %wide.trip.count, 2     ; 7 uses
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.ae
  %scevgep109 = getelementptr i8, ptr %i.ag, i64 4
  %i.ah = mul i64 %i.r, %i.ab
  %scevgep110 = getelementptr i8, ptr %i.p, i64 %i.ah
  %i.ai = mul i64 %i.r, %wide.trip.count67
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai
  %scevgep111 = getelementptr i8, ptr %i.aj, i64 %i.ae
  %i.ak = add nsw i64 %i.ab, 1                    ; 2 uses
  %i.al = mul i64 %i.r, %i.ak
  %i.am = getelementptr i8, ptr %i.p, i64 %i.al
  %scevgep112 = getelementptr i8, ptr %i.am, i64 4
  %i.an = add nsw i64 %wide.trip.count67, -2      ; 2 uses
  %i.ao = mul i64 %i.r, %i.an
  %i.ap = getelementptr i8, ptr %i.p, i64 %i.ao
  %scevgep113 = getelementptr i8, ptr %i.ap, i64 %i.ae
  %i.aq = add nsw i64 %i.ab, -1                   ; 2 uses
  %i.ar = mul i64 %i.r, %i.aq
  %i.as = getelementptr i8, ptr %i.p, i64 %i.ar
  %scevgep114 = getelementptr i8, ptr %i.as, i64 4
  %i.at = mul i64 %i.n, %i.ac
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ae
  %scevgep115 = getelementptr i8, ptr %i.av, i64 4
  %i.aw = mul i64 %i.n, %i.ab
  %scevgep116 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = mul i64 %i.n, %wide.trip.count67
  %i.ay = getelementptr i8, ptr %i.l, i64 %i.ax
  %scevgep117 = getelementptr i8, ptr %i.ay, i64 %i.ae
  %i.az = mul i64 %i.n, %i.ak
  %i.ba = getelementptr i8, ptr %i.l, i64 %i.az
  %i.bb = mul i64 %i.n, %i.an
  %i.bc = getelementptr i8, ptr %i.l, i64 %i.bb
  %scevgep119 = getelementptr i8, ptr %i.bc, i64 %i.ae
  %i.bd = mul i64 %i.n, %i.aq
  %i.be = getelementptr i8, ptr %i.l, i64 %i.bd
  %i.bf = insertelement <2 x ptr> poison, ptr %i.be, i64 0
  %i.bg = insertelement <2 x ptr> %i.bf, ptr %i.ba, i64 1
  %i.bh = getelementptr i8, <2 x ptr> %i.bg, i64 4
  %i.bi = mul i64 %i.v, %i.ac
  %i.bj = getelementptr i8, ptr %i.t, i64 %i.bi
  %scevgep121 = getelementptr i8, ptr %i.bj, i64 %i.ae ; 3 uses
  %i.bk = mul i64 %i.v, %i.ab
  %i.bl = getelementptr i8, ptr %i.t, i64 %i.bk
  %scevgep122 = getelementptr i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep122, i64 0 ; 2 uses
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = insertelement <4 x ptr> poison, ptr %scevgep119, i64 0
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %scevgep117, i64 1
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep115, i64 2
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep113, i64 3
  %i.bs = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep111, i64 0
  %i.bu = insertelement <2 x ptr> %i.bt, ptr %scevgep109, i64 1
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep121, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep112, i64 0
  %i.by = insertelement <2 x ptr> %i.bx, ptr %scevgep110, i64 1
  %i.bz = insertelement <2 x ptr> poison, ptr %scevgep121, i64 0
  %i.ca = shufflevector <2 x ptr> %i.bz, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x ptr> %i.bh, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cc = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 4
  %i.cd = icmp ult <4 x ptr> %i.bn, %i.br
  %i.ce = insertelement <4 x ptr> %i.cb, ptr %scevgep116, i64 2
  %i.cf = insertelement <4 x ptr> %i.ce, ptr %scevgep114, i64 3
  %i.cg = icmp ult <4 x ptr> %i.cf, %i.bw
  %i.ch = or i64 %i.n, %i.v
  %stride.check134 = icmp slt i64 %i.r, 0
  %i.ci = icmp ult <2 x ptr> %i.bs, %i.bu
  %i.cj = icmp ult <2 x ptr> %i.by, %i.ca
  %bound0144 = icmp ult ptr %scevgep122, %scevgep
  %bound1145 = icmp ult ptr %i.z, %scevgep121
  %i.ck = icmp slt i64 %i.ch, 0
  %i.cl = insertelement <8 x i1> poison, i1 %bound0144, i64 6
  %i.cm = insertelement <8 x i1> %i.cl, i1 %i.ck, i64 7
  %i.cn = shufflevector <4 x i1> %i.cd, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.co = shufflevector <8 x i1> %i.cn, <8 x i1> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.cp = shufflevector <2 x i1> %i.ci, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <8 x i1> %i.co, <8 x i1> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.cr = shufflevector <2 x i1> %i.cj, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.cr, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.ct = insertelement <8 x i1> %i.cs, i1 %bound1145, i64 6
  %i.cu = shufflevector <4 x i1> %i.cg, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cv = shufflevector <8 x i1> %i.cu, <8 x i1> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cw = and <8 x i1> %i.cq, %i.cv
  %i.cx = bitcast <8 x i1> %i.cw to i8
  %i.cy = icmp ne i8 %i.cx, 0
  %op.rdx = or i1 %i.cy, %stride.check134
  %n.vec = and i64 %i.cc, -4                      ; 3 uses
  %i.cz = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !196

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph62, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv64 = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next65, %..loopexit_crit_edge ] ; 5 uses
  %i.da = add nsw i64 %indvars.iv64, -1           ; 2 uses
  %i.db = mul i64 %i.n, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.db ; 2 uses
  %i.dd = mul i64 %i.n, %indvars.iv64
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dd ; 5 uses
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1 ; 4 uses
  %i.df = mul i64 %i.n, %indvars.iv.next65
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.df ; 2 uses
  %i.dh = mul i64 %i.r, %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dh ; 2 uses
  %i.dj = mul i64 %i.r, %indvars.iv64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dj ; 5 uses
  %i.dl = mul i64 %i.r, %indvars.iv.next65
  %i.dm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.dl ; 2 uses
  %i.dn = mul i64 %i.v, %indvars.iv64
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dn ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.dp = load float, ptr %i.z, align 8, !tbaa !59, !alias.scope !208
  %i.dq = fmul float %i.dp, 5.000000e-01
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dr = or disjoint i64 %index, 1               ; 7 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dr
  %wide.load = load <4 x float>, ptr %i.ds, align 4, !tbaa !32, !alias.scope !209 ; 4 uses
  %i.dt = or disjoint i64 %index, 2               ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dt
  %wide.load148 = load <4 x float>, ptr %i.du, align 4, !tbaa !32, !alias.scope !209
  %i.dv = fadd <4 x float> %wide.load, %wide.load148
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dt
  %wide.load149 = load <4 x float>, ptr %i.dw, align 4, !tbaa !32, !alias.scope !210
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dr
  %wide.load150 = load <4 x float>, ptr %i.dx, align 4, !tbaa !32, !alias.scope !210 ; 4 uses
  %i.dy = fsub <4 x float> %wide.load149, %wide.load150
  %i.dz = fmul <4 x float> %i.dv, %i.dy
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.de, i64 %index
  %wide.load151 = load <4 x float>, ptr %i.ea, align 4, !tbaa !32, !alias.scope !209
  %i.eb = fadd <4 x float> %wide.load, %wide.load151
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %index
  %wide.load152 = load <4 x float>, ptr %i.ec, align 4, !tbaa !32, !alias.scope !210
  %i.ed = fsub <4 x float> %wide.load150, %wide.load152
  %i.ee = fmul <4 x float> %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dr
  %wide.load153 = load <4 x float>, ptr %i.ef, align 4, !tbaa !32, !alias.scope !211
  %i.eg = fadd <4 x float> %wide.load, %wide.load153
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dr
  %wide.load154 = load <4 x float>, ptr %i.eh, align 4, !tbaa !32, !alias.scope !212
  %i.ei = fsub <4 x float> %wide.load154, %wide.load150
  %i.ej = fmul <4 x float> %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dr
  %wide.load155 = load <4 x float>, ptr %i.ek, align 4, !tbaa !32, !alias.scope !213
  %i.el = fadd <4 x float> %wide.load, %wide.load155
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dr
  %wide.load156 = load <4 x float>, ptr %i.em, align 4, !tbaa !32, !alias.scope !214
  %i.en = fsub <4 x float> %wide.load150, %wide.load156
  %i.eo = fmul <4 x float> %i.el, %i.en
  %i.ep = fsub <4 x float> %i.dz, %i.ee
  %i.eq = fadd <4 x float> %i.ep, %i.ej
  %i.er = fsub <4 x float> %i.eq, %i.eo
  %i.es = fmul <4 x float> %broadcast.splat, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dr
  store <4 x float> %i.es, ptr %i.et, align 4, !tbaa !32, !alias.scope !215, !noalias !216
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cz, %middle.block ], [ 1, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 9 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  %i.ex = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.ex
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.ex
  %i.fa = load <2 x float>, ptr %i.ev, align 4, !tbaa !32 ; 2 uses
  %i.fb = load <2 x float>, ptr %i.ew, align 4, !tbaa !32 ; 2 uses
  %i.fc = load <2 x float>, ptr %i.ey, align 4, !tbaa !32
  %i.fd = fadd <2 x float> %i.fa, %i.fc
  %i.fe = load <2 x float>, ptr %i.ez, align 4, !tbaa !32
  %i.ff = fsub <2 x float> %i.fb, %i.fe
  %i.fg = fmul <2 x float> %i.fd, %i.ff           ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !32
  %i.fj = extractelement <2 x float> %i.fa, i64 0 ; 2 uses
  %i.fk = fadd float %i.fj, %i.fi
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !32
  %i.fn = extractelement <2 x float> %i.fb, i64 0 ; 2 uses
  %i.fo = fsub float %i.fm, %i.fn
  %i.fp = fmul float %i.fk, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !32
  %i.fs = fadd float %i.fj, %i.fr
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !32
  %i.fv = fsub float %i.fn, %i.fu
  %i.fw = fmul float %i.fs, %i.fv
  %i.fx = load float, ptr %i.z, align 8, !tbaa !59
  %i.fy = fmul float %i.fx, 5.000000e-01
  %shift = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.fg
  %i.fz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ga = fadd float %i.fz, %i.fp
  %i.gb = fsub float %i.ga, %i.fw
  %i.gc = fmul float %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv
  store float %i.gc, ptr %i.gd, align 4, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !207
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!9 = !{!8, !5, i64 0}
!10 = !{!8, !5, i64 4}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !11, i64 8, !8, i64 16}
!13 = !{!12, !5, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!16 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !15, i64 4, !5, i64 8, !4, i64 12}
!17 = !{!16, !5, i64 0}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !4, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !4, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!4, !4, i64 0}
!24 = !{!5, !5, i64 0}
!25 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!26 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!27 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!28 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !25, i64 56, !26, i64 64, !16, i64 72, !27, i64 128}
!29 = !{!28, !18, i64 24}
!30 = !{!20, !20, i64 0}
!31 = !{!"float", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!37 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !36, i64 0, !5, i64 8}
!38 = !{!37, !5, i64 8}
!39 = !{!"double", !4, i64 0}
!40 = !{!"p1 _ZTSN2cv5MatOpE", !11, i64 0}
!41 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !4, i64 0}
!42 = !{!"_ZTSN2cv3VecIdLi4EEE", !41, i64 0}
!43 = !{!"_ZTSN2cv7Scalar_IdEE", !42, i64 0}
!44 = !{!"_ZTSN2cv7MatExprE", !40, i64 0, !5, i64 8, !28, i64 16, !28, i64 224, !28, i64 432, !39, i64 640, !39, i64 648, !43, i64 656}
!45 = !{!44, !40, i64 0}
!46 = !{!"vtable pointer", !3, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!28, !5, i64 8}
!49 = !{!28, !5, i64 12}
!50 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!51 = !{!50, !5, i64 0}
!52 = !{!50, !5, i64 4}
!53 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!54 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!55 = !{!"_ZTSN2cv23Nld_Step_Scalar_InvokerE", !53, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !31, i64 32}
!56 = !{!55, !54, i64 8}
!57 = !{!55, !54, i64 16}
!58 = !{!55, !54, i64 24}
!59 = !{!55, !31, i64 32}
!60 = distinct !{!60, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!61 = distinct !{!61, !60, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!63 = distinct !{!63, !62, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!65 = distinct !{!65, !64, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !33, !34, !35}
!71 = distinct !{!71, !33}
!72 = distinct !{!72, !33, !34}
!73 = !{!61}
!74 = !{!63}
!75 = !{!65}
!76 = !{!67}
!77 = !{!68}
!78 = !{!69}
!79 = !{!67, !68}
!80 = distinct !{!80, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!81 = distinct !{!81, !80, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!83 = distinct !{!83, !82, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!84 = distinct !{!84, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!85 = distinct !{!85, !84, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !33, !34, !35}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33, !34}
!93 = !{!81}
!94 = !{!83}
!95 = !{!85}
!96 = !{!28, !5, i64 0}
!97 = !{!87}
!98 = !{!88}
!99 = !{!89}
!100 = !{!87, !88}
!101 = distinct !{!101, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!102 = distinct !{!102, !101, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!104 = distinct !{!104, !103, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!106 = distinct !{!106, !105, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !107}
!111 = distinct !{!111, !33, !34, !35}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33, !34}
!114 = distinct !{null}
!115 = !{!102}
!116 = !{!104}
!117 = !{!106}
!118 = !{!108}
!119 = !{!109}
!120 = !{!110}
!121 = !{!108, !109}
!122 = !{!39, !39, i64 0}
!123 = distinct !{!123, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!124 = distinct !{!124, !123, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!126 = distinct !{!126, !125, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!128 = distinct !{!128, !127, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!129 = distinct !{!129, i1 false, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !129}
!133 = distinct !{!133, !33, !34, !35}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33, !34}
!136 = !{!124}
!137 = !{!126}
!138 = !{!128}
!139 = !{!130}
!140 = !{!131}
!141 = !{!132}
!142 = !{!130, !131}
!143 = distinct !{!143, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!144 = distinct !{!144, !143, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!145 = distinct !{!145, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!146 = distinct !{!146, !145, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!148 = distinct !{!148, !147, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = !{!144}
!155 = !{!146}
!156 = !{!148}
!157 = distinct !{!157, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!158 = distinct !{!158, !157, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!159 = distinct !{!159, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!160 = distinct !{!160, !159, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!161 = !{!158}
!162 = !{!160}
!163 = distinct !{!163, i1 false, !"LVerDomain"}
!164 = distinct !{!164, !163}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !163}
!167 = distinct !{!167, !163}
!168 = distinct !{!168, !163}
!169 = distinct !{!169, !33, !34, !35}
!170 = distinct !{!170, i1 false, !"LVerDomain"}
!171 = distinct !{!171, !170}
!172 = distinct !{!172, !170}
!173 = distinct !{!173, !170}
!174 = distinct !{!174, !170}
!175 = distinct !{!175, !170}
!176 = distinct !{!176, !33, !34, !35}
!177 = distinct !{!177, !33, !34}
!178 = distinct !{!178, !33, !34}
!179 = distinct !{!179, !33}
!180 = !{!164}
!181 = !{!165}
!182 = !{!166}
!183 = !{!167}
!184 = !{!168}
!185 = !{!166, !164, !167, !165}
!186 = !{!171}
!187 = !{!172}
!188 = !{!173}
!189 = !{!174}
!190 = !{!175}
!191 = !{!173, !171, !174, !172}
!192 = !{!19, !18, i64 0}
!193 = !{!21, !20, i64 8}
!194 = distinct !{!194, !33}
!195 = distinct !{!195, !33}
!196 = distinct !{!196, !33}
!197 = distinct !{!197, i1 false, !"LVerDomain"}
!198 = distinct !{!198, !197}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !197}
!201 = distinct !{!201, !197}
!202 = distinct !{!202, !197}
!203 = distinct !{!203, !197}
!204 = distinct !{!204, !197}
!205 = distinct !{!205, !197}
!206 = distinct !{!206, !33, !34, !35}
!207 = distinct !{!207, !33, !34}
!208 = !{!198}
!209 = !{!199}
!210 = !{!200}
!211 = !{!201}
!212 = !{!202}
!213 = !{!203}
!214 = !{!204}
!215 = !{!205}
!216 = !{!203, !201, !199, !204, !202, !200, !198}
end_hunk_0
