inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii:bb.a
  %.02129 = phi i64 [ 1, %.lr.ph.split.new ], [ %i.be, %_ZNK2cv8MatShapeixEm.exit ]
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !122
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %.02129, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !122
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !122
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !122
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !122
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !122
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.au, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !122
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul i64 %i.az, %i.bd                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !146

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 103) #27
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %3, align 8, !tbaa !135   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !138
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bf
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3Mat8elemSizeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !127    ; 2 uses
  %i.b = lshr i32 %i.a, 5
  %i.c = and i32 %i.b, 127
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = shl i32 %i.a, 2
  %i.f = and i32 %i.e, 124
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 1275511473185297, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 15
  %i.k = mul nuw nsw i32 %i.j, %i.d
  %i.l = zext nneg i32 %i.k to i64
  ret i64 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv3dnn13fastGemmPackBEbmmPKfmPfRKNS0_11FastGemmOptE(i1 noundef zeroext %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(5) %6) local_unnamed_addr #2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i64 [ %2, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %.013 = phi i64 [ %1, %bb.b ], [ %2, %bb.a ]    ; 4 uses
  %.012 = phi i64 [ 1, %bb.b ], [ %4, %bb.a ]     ; 2 uses
  %.0 = phi i64 [ %4, %bb.b ], [ 1, %bb.a ]       ; 2 uses
  %i.a = tail call i64 @llvm.umin.i64(i64 %.014, i64 240)
  %i.b = add nuw nsw i64 %i.a, 11                 ; 2 uses
  %.lhs.trunc.i = trunc nuw i64 %i.b to i8
  %i.c = urem i8 %.lhs.trunc.i, 12
  %.zext.i = zext nneg i8 %i.c to i64
  %i.d = sub nuw nsw i64 %i.b, %.zext.i           ; 5 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.013, i64 64) ; 2 uses
  %i.e = add i64 %.014, -1
  %i.f = add i64 %i.e, %i.d                       ; 2 uses
  %i.g = udiv i64 %i.f, %i.d
  %factor.op.mul58.i = shl i64 %.0, 2
  %.not.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not.i, label %_ZN2cv3dnn12cpu_baseline19fastGemmPackBKernelEPKcPcmmmmm.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.c
  %factor.op.mul54.i = shl i64 %.012, 2
  %.not64.i = icmp eq i64 %.013, 0
  %i.h = trunc i64 %.0 to i32
  %i.i = trunc i64 %.012 to i32
  br i1 %.not64.i, label %_ZN2cv3dnn12cpu_baseline19fastGemmPackBKernelEPKcPcmmmmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph62.i, %._crit_edge.i
  %.060.i = phi ptr [ %i.x, %._crit_edge.i ], [ %5, %.lr.ph62.i ]
  %.04759.i = phi i64 [ %i.r, %._crit_edge.i ], [ 0, %.lr.ph62.i ] ; 2 uses
  %i.j = mul i64 %.04759.i, %i.d                  ; 2 uses
  %i.k = sub i64 %.014, %i.j
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.d)
  %.fr49.i = freeze i64 %i.l                      ; 2 uses
  %i.m = add nuw nsw i64 %.fr49.i, 11             ; 2 uses
  %i.n = urem i64 %i.m, 12
  %i.o = sub nuw nsw i64 %i.m, %i.n
  %i.p = shl i64 %i.o, 2
  %factor.op.mul.reass.i = mul i64 %factor.op.mul58.i, %i.j
  %i.q = trunc nuw i64 %.fr49.i to i32
  %invariant.gep.i = getelementptr i8, ptr %3, i64 %factor.op.mul.reass.i
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.d
  %i.r = add nuw i64 %.04759.i, 1                 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.g
  br i1 %i.s, label %.lr.ph.i, label %_ZN2cv3dnn12cpu_baseline19fastGemmPackBKernelEPKcPcmmmmm.exit, !llvm.loop !8

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.157.i = phi ptr [ %.060.i, %.lr.ph.i ], [ %i.x, %bb.d ] ; 2 uses
  %.04656.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.d ] ; 3 uses
  %i.t = sub nuw i64 %.013, %.04656.i
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.speculated.i) ; 2 uses
  %i.v = trunc nuw nsw i64 %i.u to i32
  %.reass55.i = mul i64 %factor.op.mul54.i, %.04656.i
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.reass55.i
  tail call fastcc void @_ZN2cv3dnn12cpu_baselineL20fast_gemm_pack12_f32EiiPKviiPv(i32 noundef %i.q, i32 noundef %i.v, ptr noundef readonly %gep.i, i32 noundef %i.h, i32 noundef %i.i, ptr noundef %.157.i)
  %i.w = mul i64 %i.p, %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %.157.i, i64 %i.w ; 2 uses
  %i.y = add i64 %.04656.i, %.sroa.speculated.i   ; 2 uses
  %i.z = icmp ult i64 %i.y, %.013
  br i1 %i.z, label %bb.d, label %._crit_edge.i, !llvm.loop !10

_ZN2cv3dnn12cpu_baseline19fastGemmPackBKernelEPKcPcmmmmm.exit: ; preds = %._crit_edge.i, %bb.c, %.lr.ph62.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN2cv3dnn20fastGemmThinEligibleEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond.not16 = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond3.not13 = and i1 %or.cond.not16, %i.c
  %i.d = icmp slt i32 %0, 13
  %or.cond11.not = and i1 %i.d, %or.cond3.not13
  %i.e = icmp samesign ugt i32 %1, 7
  %spec.select = select i1 %or.cond11.not, i1 %i.e, i1 false
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i64 -4611686009837453312, 4611686009837453313) i64 @_ZN2cv3dnn21fastGemmThinPackBSizeEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 3
  %i.b = sdiv i32 %i.a, 4
  %i.c = sext i32 %i.b to i64
  %i.d = sext i32 %1 to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = mul nsw i64 %i.e, %i.c
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv3dnn17fastGemmThinPackBEiiPKfmmPf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %0, 3
  %6 = sdiv i32 %i.a, 4
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge47.split

.lr.ph:                                           ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = shl nsw i64 %i.c, 2
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph43.preheader, label %._crit_edge47.split

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.f = shl nuw nsw i64 %i.c, 4
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = zext nneg i32 %0 to i64
  %smax64 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %wide.trip.count65 = zext nneg i32 %smax64 to i64
  br label %.lr.ph43

._crit_edge47.split:                              ; preds = %._crit_edge44, %.lr.ph, %bb.a
  ret void

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge44
  %indvar = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvar.next, %._crit_edge44 ] ; 5 uses
  %i.j = mul i64 %i.f, %indvar                    ; 2 uses
  %indvar.tr = trunc i64 %indvar to i32
  %i.k = shl i32 %indvar.tr, 2
  %i.l = sub i32 %0, %i.k
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.l, i32 1)
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 4)
  %i.o = tail call i32 @llvm.usub.sat.i32(i32 3, i32 %i.n)
  %i.p = shl nuw nsw i32 %i.o, 2
  %narrow = add nuw nsw i32 %i.p, 4
  %i.q = zext nneg i32 %narrow to i64
  %i.r = shl nuw nsw i64 %indvar, 2               ; 5 uses
  %i.s = sub nsw i64 %i.i, %i.r                   ; 4 uses
  %i.t = mul nuw nsw i64 %i.d, %indvar
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.t
  %i.v = icmp sgt i64 %i.s, 0
  br i1 %i.v, label %.lr.ph.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph43
  %scevgep52 = getelementptr i8, ptr %5, i64 %i.j
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep52, i8 0, i64 %i.h, i1 false), !tbaa !11
  br label %._crit_edge44

.lr.ph.us.preheader:                              ; preds = %.lr.ph43
  %invariant.gep = getelementptr i8, ptr %5, i64 %i.j
  %i.w = mul i64 %4, %i.r
  %.not = icmp eq i64 %i.s, 1
  %i.x = or disjoint i64 %i.r, 1
  %i.y = mul i64 %4, %i.x
  %i.z = icmp sgt i64 %i.s, 2
  %i.aa = or disjoint i64 %i.r, 2
  %i.ab = mul i64 %4, %i.aa
  %.not68 = icmp eq i64 %i.s, 3
  %i.ac = or disjoint i64 %i.r, 3
  %i.ad = mul i64 %4, %i.ac
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar55 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next56, %._crit_edge.us ] ; 4 uses
  %i.ae = shl nuw nsw i64 %indvar55, 4
  %.idx = shl nuw nsw i64 %indvar55, 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx ; 4 uses
  %i.ag = mul i64 %3, %indvar55
  %i.ah = getelementptr [4 x i8], ptr %2, i64 %i.ag ; 4 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.w
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !11
  store float %i.aj, ptr %i.af, align 4, !tbaa !11
  br i1 %.not, label %.lr.ph40.us.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.ak = getelementptr [4 x i8], ptr %i.ah, i64 %i.y
  %i.al = load float, ptr %i.ak, align 4, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !11
  br i1 %i.z, label %bb.c, label %.lr.ph40.us.preheader

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr [4 x i8], ptr %i.ah, i64 %i.ab
  %i.ao = load float, ptr %i.an, align 4, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !11
  br i1 %.not68, label %.lr.ph40.us.preheader, label %._crit_edge.us.critedge

._crit_edge.us.critedge:                          ; preds = %bb.c
  %i.aq = getelementptr [4 x i8], ptr %i.ah, i64 %i.ad
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store float %i.ar, ptr %i.as, align 4, !tbaa !11
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.critedge, %.lr.ph40.us.preheader
  %indvar.next56 = add nuw nsw i64 %indvar55, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next56, %i.g
  br i1 %exitcond.not, label %._crit_edge44, label %.lr.ph.us, !llvm.loop !147

.lr.ph40.us.preheader:                            ; preds = %.lr.ph.us, %bb.b, %bb.c
  %indvars.iv.lcssa = phi i64 [ 0, %.lr.ph.us ], [ 4, %bb.b ], [ 8, %bb.c ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.lcssa
  %i.at = getelementptr i8, ptr %gep, i64 4
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.q, i1 false), !tbaa !11
  br label %._crit_edge.us

._crit_edge44:                                    ; preds = %._crit_edge.us, %.preheader.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond66.not = icmp eq i64 %indvar.next, %wide.trip.count65
  br i1 %exitcond66.not, label %._crit_edge47.split, label %.lr.ph43, !llvm.loop !148
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn12fastGemmThinEiiifPKfiiS2_fPfib(i32 noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, float noundef %8, ptr noundef %9, i32 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca float, align 4                    ; 9 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca float, align 4                    ; 9 uses
  %i.i = alloca ptr, align 8                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.anon.10, align 8            ; 16 uses
  %13 = alloca %"class.cv::Range", align 4        ; 6 uses
  %14 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !122
  store i32 %2, ptr %i.b, align 4, !tbaa !122
  store float %3, ptr %i.c, align 4, !tbaa !11
  store ptr %4, ptr %i.d, align 8, !tbaa !30
  store i32 %5, ptr %i.e, align 4, !tbaa !122
  store i32 %6, ptr %i.f, align 4, !tbaa !122
  store ptr %7, ptr %i.g, align 8, !tbaa !30
  store float %8, ptr %i.h, align 4, !tbaa !11
  store ptr %9, ptr %i.i, align 8, !tbaa !30
  store i32 %10, ptr %i.j, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i32 4, ptr %i.k, align 4, !tbaa !122
  %i.l = sdiv i32 %1, 4                           ; 6 uses
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sub i32 %1, %i.m                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %i.g, ptr %12, align 8, !tbaa !149
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.k, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.b, ptr %i.p, align 8, !tbaa !123
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.i, ptr %i.q, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.a, ptr %i.r, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.c, ptr %i.s, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.d, ptr %i.t, align 8, !tbaa !149
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.e, ptr %i.u, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.f, ptr %i.v, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.h, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr %i.j, ptr %i.x, align 8, !tbaa !123
  %i.y = icmp sgt i32 %1, 7
  %or.cond = and i1 %i.y, %11
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i32 0, ptr %13, align 4, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.l, ptr %i.z, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(88) %12, i64 88, i1 false), !tbaa.struct !151
  store ptr %i.ad, ptr %14, align 8, !tbaa !36
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12fastGemmThinEiiifPKfiiS7_fPfibE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.ab, align 8, !tbaa !37
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12fastGemmThinEiiifPKfiiS7_fPfibE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation", ptr %i.aa, align 8, !tbaa !40
  %i.ae = uitofp nneg i32 %i.l to double
  %i.af = sitofp i32 %0 to double
  %i.ag = fmul nnan double %i.af, %i.ae
  %i.ah = sitofp i32 %2 to double
  %i.ai = fmul double %i.ag, %i.ah
  %i.aj = fmul double %i.ai, 4.000000e+00
  %i.ak = fmul double %i.aj, f0x3F50000000000000
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef align 8 %14, double noundef %i.ak)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastGemmBatchEmPKmS7_S7_iiifPKfiiS9_iifPfiRNS5_11FastGemmOptEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !505, !nonnull !46, !align !60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !122
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !506, !nonnull !46, !align !49
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !507, !nonnull !46, !align !49
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bf = shl i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !508, !nonnull !46, !align !60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !122
  tail call fastcc void @_ZN2cv3dnnL14fast_gemm_thinEffiiiPKciiS2_iPcib(float noundef %i.u, float noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ac, ptr noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef %i.aw, i32 noundef %i.ay, ptr noundef %i.bg, i32 noundef %i.bi, i1 noundef zeroext false)
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !34
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i.i.i, %i.bk
  br i1 %i.bl, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastGemmBatchEmPKmS3_S3_iiifPKfiiS5_iifPfiRNS1_11FastGemmOptEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", !llvm.loop !509

"_ZSt10__invoke_rIvRZN2cv3dnn13fastGemmBatchEmPKmS3_S3_iiifPKfiiS5_iifPfiRNS1_11FastGemmOptEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastGemmBatchEmPKmS7_S7_iiifPKfiiS9_iifPfiRNS5_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn13fastGemmBatchEmPKmS2_S2_iiifPKfiiS4_iifPfiRNS0_11FastGemmOptEE3$_0", ptr %0, align 8, !tbaa !263
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %.val, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(120) %.val6, i64 120, i1 false), !tbaa.struct !510
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 120) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmPKmS4_S4_iiifPKfiiS6_iifPfiRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastGemmBatchEmRKSt6vectorImSaImEESA_SA_iiifRKNS0_3MatEiiSD_iifRSB_iRNS5_11FastGemmOptEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !36    ; 15 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !32     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES6_S6_iiifRKNS0_3MatEiiS9_iifRS7_iRNS1_11FastGemmOptEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.s = sext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 4 uses
  %i.t = load ptr, ptr %.val, align 8, !tbaa !511, !nonnull !46, !align !60
  %i.u = load float, ptr %i.t, align 4, !tbaa !11
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !513, !nonnull !46, !align !60
  %i.w = load float, ptr %i.v, align 4, !tbaa !11
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !514, !nonnull !46, !align !60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !515, !nonnull !46, !align !60
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !122
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !516, !nonnull !46, !align !60
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !122
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !517, !nonnull !46, !align !49
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !518, !nonnull !46, !align !49
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !196
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = shl i64 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !519, !nonnull !46, !align !60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !122
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !520, !nonnull !46, !align !60
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !122
  %i.ap = load ptr, ptr %i.m, align 8, !tbaa !521, !nonnull !46, !align !49
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !522, !nonnull !46, !align !49
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !196
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = shl i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !523, !nonnull !46, !align !60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !122
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !524, !nonnull !46, !align !49
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !525, !nonnull !46, !align !49
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.bf = shl i64 %i.be, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !526, !nonnull !46, !align !60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !122
  tail call fastcc void @_ZN2cv3dnnL14fast_gemm_thinEffiiiPKciiS2_iPcib(float noundef %i.u, float noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa, i32 noundef %i.ac, ptr noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, ptr noundef %i.aw, i32 noundef %i.ay, ptr noundef %i.bg, i32 noundef %i.bi, i1 noundef zeroext false)
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bj = load i32, ptr %i.b, align 4, !tbaa !34
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i.i.i, %i.bk
  br i1 %i.bl, label %bb.b, label %"_ZSt10__invoke_rIvRZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES6_S6_iiifRKNS0_3MatEiiS9_iifRS7_iRNS1_11FastGemmOptEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit", !llvm.loop !527

"_ZSt10__invoke_rIvRZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES6_S6_iiifRKNS0_3MatEiiS9_iifRS7_iRNS1_11FastGemmOptEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESJ_E4typeEOSK_DpOSL_.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn13fastGemmBatchEmRKSt6vectorImSaImEESA_SA_iiifRKNS0_3MatEiiSD_iifRSB_iRNS5_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES5_S5_iiifRKNS_3MatEiiS8_iifRS6_iRNS0_11FastGemmOptEE3$_0", ptr %0, align 8, !tbaa !263
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !36
  store ptr %.val, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(120) %.val6, i64 120, i1 false), !tbaa.struct !528
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !36 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 120) #28
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES7_S7_iiifRKNS1_3MatEiiSA_iifRS8_iRNS2_11FastGemmOptEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"bool", !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 bool", !20, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 long", !20, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p2 omnipotent char", !29, i64 0}
!29 = !{!"any p2 pointer", !20, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 float", !20, i64 0}
!32 = !{!33, !5, i64 0}
!33 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!34 = !{!33, !5, i64 4}
!35 = !{i64 0, i64 8, !23, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !25, i64 32, i64 8, !25, i64 40, i64 8, !25, i64 48, i64 8, !25, i64 56, i64 8, !25, i64 64, i64 8, !25, i64 72, i64 8, !25, i64 80, i64 8, !27, i64 88, i64 8, !30, i64 96, i64 8, !25, i64 104, i64 8, !27, i64 112, i64 8, !25, i64 120, i64 8, !25, i64 128, i64 8, !27, i64 136, i64 8, !25, i64 144, i64 8, !25, i64 152, i64 8, !30}
!36 = !{!20, !20, i64 0}
!37 = !{!38, !20, i64 24}
!38 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !39, i64 0, !20, i64 24}
!39 = !{!"_ZTSSt14_Function_base", !6, i64 0, !20, i64 16}
!40 = !{!39, !20, i64 16}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!44 = !{!45, !24, i64 0}
!45 = !{!"_ZTSZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_mmfPcmmbE3$_0", !24, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !28, i64 80, !31, i64 88, !26, i64 96, !28, i64 104, !26, i64 112, !26, i64 120, !28, i64 128, !26, i64 136, !26, i64 144, !31, i64 152}
!46 = !{}
!47 = !{i8 0, i8 2}
!48 = !{!45, !26, i64 8}
!49 = !{i64 8}
!50 = !{!45, !26, i64 16}
!51 = !{!45, !26, i64 24}
!52 = !{!45, !26, i64 32}
!53 = !{!45, !26, i64 40}
!54 = !{!45, !26, i64 48}
!55 = !{!45, !26, i64 56}
!56 = !{!45, !26, i64 64}
!57 = !{!45, !26, i64 72}
!58 = !{!45, !28, i64 80}
!59 = !{!45, !31, i64 88}
!60 = !{i64 4}
!61 = distinct !{!61, !9}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !9, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9, !68}
!72 = !{!45, !26, i64 96}
!73 = distinct !{!73, !9}
!74 = !{!45, !28, i64 104}
!75 = !{!45, !26, i64 112}
!76 = !{!45, !26, i64 120}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = !{!45, !28, i64 128}
!81 = !{!45, !26, i64 136}
!82 = !{!45, !26, i64 144}
!83 = !{!45, !31, i64 152}
!84 = distinct !{!84, !9}
!85 = !{i64 0, i64 8, !23, i64 8, i64 8, !25, i64 16, i64 8, !27, i64 24, i64 8, !25, i64 32, i64 8, !25, i64 40, i64 8, !25, i64 48, i64 8, !25, i64 56, i64 8, !25, i64 64, i64 8, !25, i64 72, i64 8, !27, i64 80, i64 8, !25, i64 88, i64 8, !25, i64 96, i64 8, !30, i64 104, i64 8, !25, i64 112, i64 8, !25, i64 120, i64 8, !27, i64 128, i64 8, !25, i64 136, i64 8, !25, i64 144, i64 8, !30}
!86 = !{!87, !24, i64 0}
!87 = !{!"_ZTSZN2cv3dnn12cpu_baseline14fastGemmKernelEmmmfPKcmmS3_fPcmmbE3$_0", !24, i64 0, !26, i64 8, !28, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !28, i64 72, !26, i64 80, !26, i64 88, !31, i64 96, !26, i64 104, !26, i64 112, !28, i64 120, !26, i64 128, !26, i64 136, !31, i64 144}
!88 = !{!87, !26, i64 8}
!89 = !{!87, !26, i64 88}
!90 = !{!87, !26, i64 24}
!91 = !{!87, !26, i64 32}
!92 = !{!87, !26, i64 40}
!93 = !{!87, !26, i64 48}
!94 = !{!87, !26, i64 56}
!95 = !{!87, !26, i64 64}
!96 = !{!87, !28, i64 72}
!97 = !{!87, !26, i64 80}
!98 = !{!87, !28, i64 16}
!99 = !{!87, !31, i64 96}
!100 = distinct !{!100, !9}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !9, !68, !69}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !9, !68}
!109 = !{!87, !26, i64 104}
!110 = !{!87, !26, i64 112}
!111 = distinct !{!111, !9}
!112 = !{!87, !28, i64 120}
!113 = !{!87, !26, i64 128}
!114 = !{!87, !26, i64 136}
!115 = !{!87, !31, i64 144}
!116 = distinct !{!116, !9}
!117 = !{!118, !118, i64 0}
!118 = !{!"p2 long", !29, i64 0}
!119 = !{!120, !28, i64 8}
!120 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!121 = !{!120, !28, i64 0}
!122 = !{!5, !5, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"p1 int", !20, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"p1 _ZTSSt6vectorIPKcSaIS1_EE", !20, i64 0}
!127 = !{!128, !5, i64 0}
!128 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !129, i64 56, !130, i64 64, !131, i64 72, !133, i64 128}
!129 = !{!"p1 _ZTSN2cv12MatAllocatorE", !20, i64 0}
!130 = !{!"p1 _ZTSN2cv8UMatDataE", !20, i64 0}
!131 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !132, i64 4, !5, i64 8, !6, i64 12}
!132 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!133 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!134 = !{!131, !5, i64 0}
!135 = !{!136, !19, i64 0}
!136 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !137, i64 0, !17, i64 8, !6, i64 16}
!137 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!138 = !{!6, !6, i64 0}
!139 = !{!128, !19, i64 24}
!140 = !{!141, !31, i64 8}
!141 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!142 = !{!141, !31, i64 0}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !145}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = !{!150, !150, i64 0}
!150 = !{!"p2 float", !29, i64 0}
!151 = !{i64 0, i64 8, !149, i64 8, i64 8, !123, i64 16, i64 8, !123, i64 24, i64 8, !149, i64 32, i64 8, !123, i64 40, i64 8, !30, i64 48, i64 8, !149, i64 56, i64 8, !123, i64 64, i64 8, !123, i64 72, i64 8, !30, i64 80, i64 8, !123}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
end_hunk_1
