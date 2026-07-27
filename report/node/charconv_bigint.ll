inline.NumInlined: 259
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj:bb.a
  tail call void @_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %i.a, ptr noundef %2, i32 noundef %1, i32 noundef %.012)
  %i.e = add nsw i32 %.012, -1
  %.not = icmp eq i32 %.012, 0
  br i1 %.not, label %select.unfold._crit_edge, label %select.unfold, !llvm.loop !17
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted = load i32, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit
  %.015 = phi i32 [ %1, %.lr.ph ], [ %i.ag, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit ] ; 2 uses
  %i.c = phi i32 [ %.promoted, %.lr.ph ], [ %i.af, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit ] ; 8 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit

.lr.ph.i:                                         ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.c

._crit_edge.i.unr-lcssa:                          ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.01418.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod30 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = zext i32 %i.g to i64
  %i.i = mul nuw nsw i64 %i.h, 1220703125
  %i.j = add nuw nsw i64 %i.i, %.01418.i.epil.init ; 2 uses
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %i.f, align 4
  %i.l = lshr i64 %i.j, 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa27 = phi i64 [ %i.ab, %._crit_edge.i.unr-lcssa ], [ %i.l, %.epil.preheader ] ; 2 uses
  %.not.i = icmp ne i64 %.lcssa27, 0
  %i.m = icmp samesign ult i32 %i.c, 4
  %or.cond17.i = and i1 %i.m, %.not.i
  br i1 %or.cond17.i, label %bb.d, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.c ] ; 3 uses
  %.01418.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ab, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw nsw i64 %i.p, 1220703125
  %i.r = add nuw nsw i64 %i.q, %.01418.i          ; 2 uses
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.n, align 4
  %i.t = lshr i64 %i.r, 32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = mul nuw nsw i64 %i.x, 1220703125
  %i.z = add nuw nsw i64 %i.y, %i.t               ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  store i32 %i.aa, ptr %i.v, align 4
  %i.ab = lshr i64 %i.z, 32                       ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.c, !llvm.loop !11

bb.d:                                             ; preds = %._crit_edge.i
  %i.ac = trunc nuw nsw i64 %.lcssa27 to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %wide.trip.count.i
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = add nuw nsw i32 %i.c, 1                 ; 2 uses
  store i32 %i.ae, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit

_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit: ; preds = %bb.b, %._crit_edge.i, %bb.d
  %i.af = phi i32 [ %i.c, %bb.b ], [ %i.c, %._crit_edge.i ], [ %i.ae, %bb.d ]
  %i.ag = add nsw i32 %.015, -13                  ; 2 uses
  %i.ah = icmp sgt i32 %.015, 25
  br i1 %i.ah, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ag, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit ] ; 2 uses
  %i.ai = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.ai, label %bb.e, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

bb.e:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %0, align 4               ; 7 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext nneg i32 %.0.lcssa to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl16strings_internal10kFiveToNthE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = zext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp sgt i32 %i.aj, 0
  br i1 %i.ap, label %.lr.ph.i4, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

.lr.ph.i4:                                        ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5 = zext nneg i32 %i.aj to i64 ; 3 uses
  %xtraiter32 = and i64 %wide.trip.count.i5, 1
  %i.ar = icmp eq i32 %i.aj, 1
  br i1 %i.ar, label %.epil.preheader31, label %.lr.ph.i4.new

.lr.ph.i4.new:                                    ; preds = %.lr.ph.i4
  %unroll_iter36 = and i64 %wide.trip.count.i5, 2147483646
  br label %bb.g

._crit_edge.i10.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %._crit_edge.i10, label %.epil.preheader31

.epil.preheader31:                                ; preds = %._crit_edge.i10.unr-lcssa, %.lr.ph.i4
  %indvars.iv.i6.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i8.1, %._crit_edge.i10.unr-lcssa ]
  %.01418.i7.epil.init = phi i64 [ 0, %.lr.ph.i4 ], [ %i.bo, %._crit_edge.i10.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %i.aj to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ao
  %i.aw = add nuw i64 %i.av, %.01418.i7.epil.init ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4
  %i.ay = lshr i64 %i.aw, 32
  br label %._crit_edge.i10

._crit_edge.i10:                                  ; preds = %._crit_edge.i10.unr-lcssa, %.epil.preheader31
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i10.unr-lcssa ], [ %i.ay, %.epil.preheader31 ] ; 2 uses
  %.not.i11 = icmp ne i64 %.lcssa, 0
  %i.az = icmp samesign ult i32 %i.aj, 4
  %or.cond17.i12 = and i1 %i.az, %.not.i11
  br i1 %or.cond17.i12, label %._crit_edge.thread.sink.split.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

bb.g:                                             ; preds = %bb.g, %.lr.ph.i4.new
  %indvars.iv.i6 = phi i64 [ 0, %.lr.ph.i4.new ], [ %indvars.iv.next.i8.1, %bb.g ] ; 3 uses
  %.01418.i7 = phi i64 [ 0, %.lr.ph.i4.new ], [ %i.bo, %bb.g ]
  %niter37 = phi i64 [ 0, %.lr.ph.i4.new ], [ %niter37.next.1, %bb.g ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = mul nuw i64 %i.bc, %i.ao
  %i.be = add nuw i64 %i.bd, %.01418.i7           ; 2 uses
  %i.bf = trunc i64 %i.be to i32
  store i32 %i.bf, ptr %i.ba, align 4
  %i.bg = lshr i64 %i.be, 32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = mul nuw i64 %i.bk, %i.ao
  %i.bm = add nuw i64 %i.bl, %i.bg                ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  store i32 %i.bn, ptr %i.bi, align 4
  %i.bo = lshr i64 %i.bm, 32                      ; 3 uses
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.i6, 2 ; 2 uses
  %niter37.next.1 = add i64 %niter37, 2           ; 2 uses
  %niter37.ncmp.1 = icmp eq i64 %niter37.next.1, %unroll_iter36
  br i1 %niter37.ncmp.1, label %._crit_edge.i10.unr-lcssa, label %bb.g, !llvm.loop !11

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i10
  %i.bp = trunc nuw i64 %.lcssa to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %wide.trip.count.i5
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = add nuw nsw i32 %i.aj, 1
  store i32 %i.br, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13

_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit13: ; preds = %._crit_edge.thread.sink.split.i, %._crit_edge.i10, %bb.f, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi4EE12FiveToTheNthEi(ptr dead_on_unwind noalias writable sret(%"class.absl::strings_internal::BigUnsigned") align 4 %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4absl16strings_internal11BigUnsignedILi4EEC1Em(ptr noundef nonnull align 4 dereferenceable(20) %0, i64 noundef 1) #10
  %i.a = icmp sgt i32 %1, 26
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit
  %.023 = phi i32 [ %1, %.lr.ph ], [ %i.ck, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 2 uses
  %.01122 = phi i1 [ true, %.lr.ph ], [ false, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ]
  %i.c = udiv i32 %.023, 27
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.c, i32 20) ; 8 uses
  br i1 %.01122, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit, label %bb.c

_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit:              ; preds = %bb.b
  %i.d = add nsw i32 %.sroa.speculated, -1
  %i.e = mul nuw nsw i32 %i.d, %.sroa.speculated
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl16strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.f
  %i.h = shl nuw nsw i32 %.sroa.speculated, 1
  %i.i = shl nuw nsw i32 %.sroa.speculated, 3
  %.idx.i.i = zext nneg i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.b, ptr nonnull align 4 %i.g, i64 %.idx.i.i, i1 false)
  store i32 %i.h, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %.sroa.speculated, 1     ; 5 uses
  %i.k = add nsw i32 %.sroa.speculated, -1
  %i.l = mul nuw nsw i32 %i.k, %.sroa.speculated
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl16strings_internal12_GLOBAL__N_118kLargePowersOfFiveE, i64 %i.m ; 4 uses
  %i.o = load i32, ptr %0, align 4                ; 2 uses
  %i.p = add nsw i32 %i.o, %i.j                   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %select.unfold.preheader.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit

select.unfold.preheader.i:                        ; preds = %bb.c
  %i.r = add nsw i32 %i.o, -1
  %i.s = tail call i32 @llvm.umin.i32(i32 %i.p, i32 5)
  %umin = zext nneg i32 %i.s to i64
  %i.t = add nsw i64 %umin, -2
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %select.unfold.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit ], [ %i.t, %select.unfold.preheader.i ] ; 13 uses
  %i.u = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.r) ; 5 uses
  %i.v = sub i32 %i.u, %.sroa.speculated.i        ; 2 uses
  %i.w = icmp sgt i32 %.sroa.speculated.i, -1
  %i.x = icmp slt i32 %i.v, %i.j
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i12, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i: ; preds = %select.unfold.i
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 0, ptr %i.z, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

.lr.ph.i12:                                       ; preds = %select.unfold.i
  %2 = zext nneg i32 %.sroa.speculated.i to i64   ; 4 uses
  %3 = zext i32 %i.v to i64                       ; 4 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %2
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %3
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  %10 = mul nuw i64 %9, %6                        ; 3 uses
  %11 = lshr i64 %10, 32                          ; 2 uses
  %12 = and i64 %10, 4294967295                   ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %3, 1    ; 2 uses
  %13 = icmp ne i32 %.sroa.speculated.i, 0
  %14 = trunc nuw i64 %indvars.iv.next38.i to i32
  %15 = icmp sgt i32 %i.j, %14
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %.lr.ph.i12.a, label %._crit_edge.i13

.lr.ph.i12.a:                                     ; preds = %.lr.ph.i12
  %17 = getelementptr [4 x i8], ptr %0, i64 %2
  %18 = load i32, ptr %17, align 4
  %i.aa = zext i32 %18 to i64
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i
  %20 = load i32, ptr %19, align 4
  %i.ab = zext i32 %20 to i64
  %21 = mul nuw i64 %i.ab, %i.aa
  %22 = add nuw i64 %21, %12                      ; 3 uses
  %23 = lshr i64 %22, 32
  %24 = add nuw nsw i64 %23, %11                  ; 2 uses
  %25 = and i64 %22, 4294967295                   ; 2 uses
  %indvars.iv.next38.i.1 = add nuw nsw i64 %3, 2  ; 2 uses
  %26 = icmp ne i32 %.sroa.speculated.i, 1
  %27 = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %28 = icmp sgt i32 %i.j, %27
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %bb.d, label %._crit_edge.i13

bb.d:                                             ; preds = %.lr.ph.i12.a
  %indvars.iv.next.i.1 = add nsw i64 %2, -2       ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.1
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae
  %i.aj = add nuw i64 %i.ai, %25                  ; 3 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = add nuw nsw i64 %i.ak, %24              ; 2 uses
  %i.am = and i64 %i.aj, 4294967295               ; 2 uses
  %indvars.iv.next38.i.a = add nuw nsw i64 %3, 3  ; 2 uses
  %i.an = icmp ne i64 %indvars.iv.next.i.1, 0
  %i.ao = trunc nuw i64 %indvars.iv.next38.i.a to i32
  %i.ap = icmp sgt i32 %i.j, %i.ao
  %i.aq = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %i.aq, label %30, label %._crit_edge.i13

30:                                               ; preds = %bb.d
  %31 = getelementptr [4 x i8], ptr %i.b, i64 %2
  %32 = getelementptr i8, ptr %31, i64 -12
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next38.i.a
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = mul nuw i64 %37, %34
  %39 = add nuw i64 %38, %i.am                    ; 3 uses
  %40 = lshr i64 %39, 32
  %41 = add nuw nsw i64 %40, %i.al
  %42 = and i64 %39, 4294967295
  br label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %30, %bb.d, %.lr.ph.i12.a, %.lr.ph.i12
  %.lcssa58 = phi i64 [ %10, %.lr.ph.i12 ], [ %22, %.lr.ph.i12.a ], [ %i.aj, %bb.d ], [ %39, %30 ]
  %.lcssa57 = phi i64 [ %11, %.lr.ph.i12 ], [ %24, %.lr.ph.i12.a ], [ %i.al, %bb.d ], [ %41, %30 ] ; 3 uses
  %.lcssa56 = phi i64 [ %12, %.lr.ph.i12 ], [ %25, %.lr.ph.i12.a ], [ %i.am, %bb.d ], [ %42, %30 ]
  %i.ar = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.as = icmp ne i64 %.lcssa57, 0
  %i.at = icmp slt i64 %indvars.iv, 3
  %or.cond.i.i = and i1 %i.at, %i.as
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

bb.e:                                             ; preds = %._crit_edge.i13
  %i.au = lshr i64 %.lcssa57, 32                  ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = trunc i64 %.lcssa57 to i32              ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = add i32 %i.ay, %i.aw                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = icmp ult i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bb = add i32 %i.av, 1                        ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %indvars.iv, 1
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, 3                        ; 2 uses
  br i1 %i.bd, label %.lr.ph.i.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.017.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i ], [ 1, %bb.g ] ; 2 uses
  %.0916.i.i.i = phi i32 [ %.110.i.i.i, %.lr.ph.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.bg = sext i32 %.0916.i.i.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, %.017.i.i.i              ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = icmp ugt i32 %.017.i.i.i, %i.bj         ; 2 uses
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %.110.i.i.i = add nsw i32 %.0916.i.i.i, %i.bl   ; 3 uses
  %i.bm = icmp slt i32 %.110.i.i.i, 4
  %i.bn = and i1 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.09.lcssa.i.i.i = phi i32 [ %i.bf, %bb.g ], [ %.110.i.i.i, %.lr.ph.i.i.i ]
  %i.bo = add nsw i32 %.09.lcssa.i.i.i, 1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %.not.i.i15 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i15, label %bb.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %bb.f
  %.031.i.i = phi i32 [ %i.av, %bb.h ], [ %i.bb, %bb.f ]
  %i.bp = icmp slt i64 %indvars.iv, 2
  br i1 %i.bp, label %.lr.ph.i21.preheader.i.i, label %.sink.split.i.i

.lr.ph.i21.preheader.i.i:                         ; preds = %.preheader.i.i.i
  %i.bq = trunc i64 %indvars.iv to i32
  %i.br = add i32 %i.bq, 2
  br label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.lr.ph.i21.i.i, %.lr.ph.i21.preheader.i.i
  %.017.i22.i.i = phi i32 [ %i.bx, %.lr.ph.i21.i.i ], [ %.031.i.i, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %.0916.i23.i.i = phi i32 [ %.110.i24.i.i, %.lr.ph.i21.i.i ], [ %i.br, %.lr.ph.i21.preheader.i.i ] ; 2 uses
  %i.bs = sext i32 %.0916.i23.i.i to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, %.017.i22.i.i            ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp ugt i32 %.017.i22.i.i, %i.bv       ; 2 uses
  %i.bx = zext i1 %i.bw to i32                    ; 2 uses
  %.110.i24.i.i = add nsw i32 %.0916.i23.i.i, %i.bx ; 3 uses
  %i.by = icmp slt i32 %.110.i24.i.i, 4
  %i.bz = and i1 %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i21.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i: ; preds = %.lr.ph.i21.i.i
  %i.ca = add nsw i32 %.110.i24.i.i, 1
  br label %.sink.split.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = trunc i64 %indvars.iv to i32
  %i.cc = add i32 %i.cb, 2
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.i, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i, %.preheader.i.i.i, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i
  %.sink35.i.i = phi i32 [ %i.bo, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i.i ], [ %i.cc, %bb.i ], [ 5, %.preheader.i.i.i ], [ %i.ca, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i.i ]
  %i.cd = load i32, ptr %0, align 4
  %i.ce = tail call i32 @llvm.smax.i32(i32 %.sink35.i.i, i32 %i.cd)
  %.sroa.speculated.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 4)
  store i32 %.sroa.speculated.i.i.i, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i: ; preds = %.sink.split.i.i, %._crit_edge.i13
  %i.cf = trunc i64 %.lcssa58 to i32
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4
  %.not.i14 = icmp eq i64 %.lcssa56, 0
  %i.ch = load i32, ptr %0, align 4
  %i.ci = sext i32 %i.ch to i64
  %.not23.i = icmp slt i64 %indvars.iv, %i.ci
  %or.cond = select i1 %.not.i14, i1 true, i1 %.not23.i
  br i1 %or.cond, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i
  %i.cj = trunc nsw i64 %i.ar to i32
  store i32 %i.cj, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit

_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread.i, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.i = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, label %select.unfold.i, !llvm.loop !17

_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii.exit, %bb.c, %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit
  %.neg = mul nsw i32 %.sroa.speculated, -27
  %i.ck = add nsw i32 %.neg, %.023                ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 26
  br i1 %i.cl, label %bb.b, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit, %bb.a
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %i.ck, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEiPKj.exit ] ; 3 uses
  %i.cm = icmp sgt i32 %.0.lcssa, 12
  br i1 %i.cm, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted.i = load i32, ptr %0, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %.lr.ph.i
  %.015.i = phi i32 [ %.0.lcssa, %.lr.ph.i ], [ %i.ds, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.co = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.dr, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 8 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %wide.trip.count.i.i = zext nneg i32 %i.co to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.cq = icmp eq i32 %i.co, 1
  br i1 %i.cq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.l

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dn, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.co to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw nsw i64 %i.ct, 1220703125
  %i.cv = add nuw nsw i64 %i.cu, %.01418.i.i.epil.init ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.cr, align 4
  %i.cx = lshr i64 %i.cv, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi i64 [ %i.dn, %._crit_edge.i.i.unr-lcssa ], [ %i.cx, %.epil.preheader ] ; 2 uses
  %.not.i.i = icmp ne i64 %.lcssa54, 0
  %i.cy = icmp samesign ult i32 %i.co, 4
  %or.cond17.i.i = and i1 %i.cy, %.not.i.i
  br i1 %or.cond17.i.i, label %bb.m, label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.l ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dn, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.l ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw nsw i64 %i.db, 1220703125
  %i.dd = add nuw nsw i64 %i.dc, %.01418.i.i      ; 2 uses
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.cz, align 4
  %i.df = lshr i64 %i.dd, 32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw nsw i64 %i.dj, 1220703125
  %i.dl = add nuw nsw i64 %i.dk, %i.df            ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dh, align 4
  %i.dn = lshr i64 %i.dl, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.l, !llvm.loop !11

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.do = trunc nuw nsw i64 %.lcssa54 to i32
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %wide.trip.count.i.i
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = add nuw nsw i32 %i.co, 1                ; 2 uses
  store i32 %i.dq, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i

_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i: ; preds = %bb.m, %._crit_edge.i.i, %bb.k
  %i.dr = phi i32 [ %i.co, %bb.k ], [ %i.co, %._crit_edge.i.i ], [ %i.dq, %bb.m ]
  %i.ds = add nsw i32 %.015.i, -13                ; 2 uses
  %i.dt = icmp sgt i32 %.015.i, 25
  br i1 %i.dt, label %bb.k, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i, %._crit_edge
  %.0.lcssa.i = phi i32 [ %.0.lcssa, %._crit_edge ], [ %i.ds, %_ZN4absl16strings_internal11BigUnsignedILi4EE10MultiplyByEj.exit.i ] ; 2 uses
  %i.du = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.du, label %bb.n, label %_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.dv = load i32, ptr %0, align 4               ; 7 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = zext nneg i32 %.0.lcssa.i to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl16strings_internal10kFiveToNthE, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = zext i32 %i.dz to i64                   ; 3 uses
  %i.eb = icmp sgt i32 %i.dv, 0
  br i1 %i.eb, label %.lr.ph.i4.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

.lr.ph.i4.i:                                      ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %wide.trip.count.i5.i = zext nneg i32 %i.dv to i64 ; 3 uses
  %xtraiter63 = and i64 %wide.trip.count.i5.i, 1
  %i.ed = icmp eq i32 %i.dv, 1
  br i1 %i.ed, label %.epil.preheader62, label %.lr.ph.i4.i.new

.lr.ph.i4.i.new:                                  ; preds = %.lr.ph.i4.i
  %unroll_iter67 = and i64 %wide.trip.count.i5.i, 2147483646
  br label %bb.p

._crit_edge.i10.i.unr-lcssa:                      ; preds = %bb.p
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge.i10.i, label %.epil.preheader62

.epil.preheader62:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.lr.ph.i4.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %indvars.iv.next.i8.i.1, %._crit_edge.i10.i.unr-lcssa ]
  %.01418.i7.i.epil.init = phi i64 [ 0, %.lr.ph.i4.i ], [ %i.fa, %._crit_edge.i10.i.unr-lcssa ]
  %lcmp.mod66 = trunc i32 %i.dv to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw i64 %i.eg, %i.ea
  %i.ei = add nuw i64 %i.eh, %.01418.i7.i.epil.init ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  store i32 %i.ej, ptr %i.ee, align 4
  %i.ek = lshr i64 %i.ei, 32
  br label %._crit_edge.i10.i

._crit_edge.i10.i:                                ; preds = %._crit_edge.i10.i.unr-lcssa, %.epil.preheader62
  %.lcssa = phi i64 [ %i.fa, %._crit_edge.i10.i.unr-lcssa ], [ %i.ek, %.epil.preheader62 ] ; 2 uses
  %.not.i11.i = icmp ne i64 %.lcssa, 0
  %i.el = icmp samesign ult i32 %i.dv, 4
  %or.cond17.i12.i = and i1 %i.el, %.not.i11.i
  br i1 %or.cond17.i12.i, label %._crit_edge.thread.sink.split.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

bb.p:                                             ; preds = %bb.p, %.lr.ph.i4.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %indvars.iv.next.i8.i.1, %bb.p ] ; 3 uses
  %.01418.i7.i = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %i.fa, %bb.p ]
  %niter68 = phi i64 [ 0, %.lr.ph.i4.i.new ], [ %niter68.next.1, %bb.p ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = zext i32 %i.en to i64
  %i.ep = mul nuw i64 %i.eo, %i.ea
  %i.eq = add nuw i64 %i.ep, %.01418.i7.i         ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  store i32 %i.er, ptr %i.em, align 4
  %i.es = lshr i64 %i.eq, 32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i6.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = zext i32 %i.ev to i64
  %i.ex = mul nuw i64 %i.ew, %i.ea
  %i.ey = add nuw i64 %i.ex, %i.es                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.eu, align 4
  %i.fa = lshr i64 %i.ey, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.p, !llvm.loop !11

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.fb = trunc nuw i64 %.lcssa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %wide.trip.count.i5.i
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = add nuw nsw i32 %i.dv, 1
  store i32 %i.fd, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit

_ZN4absl16strings_internal11BigUnsignedILi4EE22MultiplyByFiveToTheNthEi.exit: ; preds = %._crit_edge.i, %bb.n, %bb.o, %._crit_edge.i10.i, %._crit_edge.thread.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK4absl16strings_internal11BigUnsignedILi4EE7GetWordEi(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = load i32, ptr %0, align 4
  %.not = icmp slt i32 %1, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK4absl16strings_internal11BigUnsignedILi4EE8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.absl::strings_internal::BigUnsigned", align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load i32, ptr %2, align 4                ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.e = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.c, %bb.a ]
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.0911.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.b ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = shl nuw nsw i64 %.0911.i, 32
  %i.h = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j               ; 2 uses
  %i.l = udiv i64 %i.k, 10
  %i.m = trunc nuw i64 %i.l to i32
  store i32 %i.m, ptr %i.h, align 4
  %i.n = urem i64 %i.k, 10                        ; 2 uses
  %i.o = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.o, label %bb.b, label %thread-pre-split.i, !llvm.loop !19

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.pre.i = load i32, ptr %2, align 4          ; 4 uses
  %i.p = icmp sgt i32 %.pr.pre.i, 0
  br i1 %i.p, label %.lr.ph13.i.preheader, label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit

.lr.ph13.i.preheader:                             ; preds = %thread-pre-split.i
  %i.q = zext nneg i32 %.pr.pre.i to i64          ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit

.lr.ph13.i:                                       ; preds = %.lr.ph
  %i.u = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !20

.lr.ph:                                           ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv21 = phi i64 [ %indvars.iv.next, %.lr.ph13.i ], [ %i.q, %.lr.ph13.i.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv21, -1 ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = icmp samesign ugt i64 %indvars.iv21, 1
  br i1 %i.y, label %.lr.ph13.i, label %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, !llvm.loop !20

._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit, !llvm.loop !20

_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit: ; preds = %.lr.ph13.i, %.lr.ph13.i.preheader, %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge, %thread-pre-split.i
  %i.z = phi i32 [ %.pr.pre.i, %thread-pre-split.i ], [ 0, %._ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit.loopexit_crit_edge ], [ %.pr.pre.i, %.lr.ph13.i.preheader ], [ %i.x, %.lr.ph13.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.n to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = load i64, ptr %i.b, align 8             ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit
  %i.ag = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE6DivModILj10EEEjv.exit
  %i.ah = load i64, ptr %i.a, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.c
  %i.ak = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 %i.ab, ptr %i.al, align 1
  store i64 %i.ad, ptr %i.b, align 8
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1
  %i.ao = icmp sgt i32 %i.z, 0
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre11.pre = load ptr, ptr %0, align 8         ; 3 uses
  %i.ap = icmp eq i64 %.pre, 0
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.aq = icmp ne ptr %.pre11.pre, %i.a
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = icmp eq i64 %i.ar, 0
  %or.cond = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i5 = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7: ; preds = %bb.a, %bb.d, %bb.e
  %i.at = phi ptr [ %.pre.i5, %bb.e ], [ %.pre11.pre, %bb.d ], [ %i.a, %bb.a ]
  store i8 48, ptr %i.at, align 1
  store i64 1, ptr %i.b, align 8
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1
  %.pre10 = load ptr, ptr %0, align 8
  %.pre12 = load i64, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7, %._crit_edge
  %i.aw = phi i64 [ %.pre12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ax = phi ptr [ %.pre10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7 ], [ %.pre11.pre, %._crit_edge ] ; 2 uses
  %.not11.i.i = icmp sgt i64 %i.aw, 1
  br i1 %.not11.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aw
  %.sroa.0.010.i.i = getelementptr i8, ptr %i.ay, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.az = load i8, ptr %.sroa.07.012.i.i, align 1
  %i.ba = load i8, ptr %.sroa.0.013.i.i, align 1
  store i8 %i.ba, ptr %.sroa.07.012.i.i, align 1
  store i8 %i.az, ptr %.sroa.0.013.i.i, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bb, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !22

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK4absl16strings_internal11BigUnsignedILi4EE4sizeEv(ptr noundef nonnull align 4 dereferenceable(20) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZNK4absl16strings_internal11BigUnsignedILi4EE5wordsEv(ptr noundef nonnull align 4 dereferenceable(20) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi i32 [ %2, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.0916 = phi i32 [ %1, %.lr.ph ], [ %.110, %bb.b ] ; 2 uses
  %i.c = sext i32 %.0916 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, %.017                      ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.017, %i.f                 ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 2 uses
  %.110 = add nsw i32 %.0916, %i.h                ; 3 uses
  %i.i = icmp slt i32 %.110, 4
  %i.j = and i1 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.09.lcssa = phi i32 [ %1, %.preheader ], [ %.110, %bb.b ]
  %i.k = add nsw i32 %.09.lcssa, 1
  %i.l = load i32, ptr %0, align 4
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.l)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.m, i32 4)
  store i32 %.sroa.speculated, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi4EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.a) ; 3 uses
  %i.b = sub i32 %4, %.sroa.speculated            ; 2 uses
  %i.c = icmp sgt i32 %.sroa.speculated, -1
  %i.d = icmp slt i32 %i.b, %3
  %i.e = and i1 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread: ; preds = %bb.a
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  store i32 0, ptr %i.h, align 4
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext nneg i32 %.sroa.speculated to i64
  %i.j = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv37 = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next38, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.01933 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  %.02032 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.b ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv37
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.m
  %i.r = add nuw i64 %i.q, %.02032                ; 3 uses
  %i.s = lshr i64 %i.r, 32
  %i.t = add i64 %i.s, %.01933                    ; 4 uses
  %i.u = and i64 %i.r, 4294967295                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.v = icmp ne i64 %indvars.iv, 0
  %i.w = trunc nuw i64 %indvars.iv.next38 to i32
  %i.x = icmp sgt i32 %3, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.b
  %i.z = add nsw i32 %4, 1                        ; 2 uses
  %i.aa = icmp ne i64 %i.t, 0
  %i.ab = icmp slt i32 %4, 3
  %or.cond.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %bb.c, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ac = lshr i64 %i.t, 32                       ; 2 uses
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = trunc i64 %i.t to i32                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ag = sext i32 %i.z to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp ult i32 %i.aj, %i.ae
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = add i32 %i.ad, 1                        ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = add nsw i32 %4, 3                       ; 2 uses
  %i.ao = icmp slt i32 %4, 1
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.017.i.i = phi i32 [ %i.au, %.lr.ph.i.i ], [ 1, %bb.e ] ; 2 uses
  %.0916.i.i = phi i32 [ %.110.i.i, %.lr.ph.i.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = sext i32 %.0916.i.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %.017.i.i                ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp ugt i32 %.017.i.i, %i.as           ; 2 uses
  %i.au = zext i1 %i.at to i32                    ; 2 uses
  %.110.i.i = add nsw i32 %.0916.i.i, %i.au       ; 3 uses
  %i.av = icmp slt i32 %.110.i.i, 4
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.09.lcssa.i.i = phi i32 [ %i.an, %bb.e ], [ %.110.i.i, %.lr.ph.i.i ]
  %i.ax = add nsw i32 %.09.lcssa.i.i, 1
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %bb.d
  %.031.i = phi i32 [ %i.ad, %bb.f ], [ %i.al, %bb.d ]
  %i.ay = icmp slt i32 %4, 2
  br i1 %i.ay, label %.lr.ph.i21.preheader.i, label %.sink.split.i

.lr.ph.i21.preheader.i:                           ; preds = %.preheader.i.i
  %i.az = add nsw i32 %4, 2
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i, %.lr.ph.i21.preheader.i
  %.017.i22.i = phi i32 [ %i.bf, %.lr.ph.i21.i ], [ %.031.i, %.lr.ph.i21.preheader.i ] ; 2 uses
  %.0916.i23.i = phi i32 [ %.110.i24.i, %.lr.ph.i21.i ], [ %i.az, %.lr.ph.i21.preheader.i ] ; 2 uses
  %i.ba = sext i32 %.0916.i23.i to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %i.bc, %.017.i22.i              ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = icmp ugt i32 %.017.i22.i, %i.bd         ; 2 uses
  %i.bf = zext i1 %i.be to i32                    ; 2 uses
  %.110.i24.i = add nsw i32 %.0916.i23.i, %i.bf   ; 3 uses
  %i.bg = icmp slt i32 %.110.i24.i, 4
  %i.bh = and i1 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i21.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i: ; preds = %.lr.ph.i21.i
  %i.bi = add nsw i32 %.110.i24.i, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.bj = add nsw i32 %4, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i, %.preheader.i.i, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i
  %.sink35.i = phi i32 [ %i.ax, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit.i ], [ %i.bj, %bb.g ], [ 5, %.preheader.i.i ], [ %i.bi, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit.i ]
  %i.bk = load i32, ptr %0, align 4
  %i.bl = tail call i32 @llvm.smax.i32(i32 %.sink35.i, i32 %i.bk)
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 4)
  store i32 %.sroa.speculated.i.i, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit: ; preds = %._crit_edge, %.sink.split.i
  %i.bm = trunc i64 %i.r to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = sext i32 %4 to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  store i32 %i.bm, ptr %i.bp, align 4
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit
  %i.bq = load i32, ptr %0, align 4
  %.not23 = icmp sgt i32 %i.bq, %4
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.z, ptr %0, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit.thread, %bb.i, %bb.h, %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEim(ptr noundef nonnull align 4 dereferenceable(20) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = icmp slt i32 %1, 4
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %2, 32                          ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32                ; 2 uses
  %i.e = trunc i64 %2 to i32                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, %i.e                       ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp ult i32 %i.j, %i.e
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.d, 1                          ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %1, 2                        ; 2 uses
  %i.o = icmp slt i32 %1, 2
  br i1 %i.o, label %.lr.ph.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i32 [ %i.u, %.lr.ph.i ], [ 1, %bb.d ] ; 2 uses
  %.0916.i = phi i32 [ %.110.i, %.lr.ph.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = sext i32 %.0916.i to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, %.017.i                    ; 2 uses
  store i32 %i.s, ptr %i.q, align 4
  %i.t = icmp ugt i32 %.017.i, %i.s               ; 2 uses
  %i.u = zext i1 %i.t to i32                      ; 2 uses
  %.110.i = add nsw i32 %.0916.i, %i.u            ; 3 uses
  %i.v = icmp slt i32 %.110.i, 4
  %i.w = and i1 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit: ; preds = %.lr.ph.i, %bb.d
  %.09.lcssa.i = phi i32 [ %i.n, %bb.d ], [ %.110.i, %.lr.ph.i ]
  %i.x = add nsw i32 %.09.lcssa.i, 1
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.e
  %.031 = phi i32 [ %i.d, %bb.e ], [ %i.l, %bb.c ]
  %i.y = icmp slt i32 %1, 3
  br i1 %i.y, label %.lr.ph.i21.preheader, label %.sink.split

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.z = add nsw i32 %1, 1
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21
  %.017.i22 = phi i32 [ %i.af, %.lr.ph.i21 ], [ %.031, %.lr.ph.i21.preheader ] ; 2 uses
  %.0916.i23 = phi i32 [ %.110.i24, %.lr.ph.i21 ], [ %i.z, %.lr.ph.i21.preheader ] ; 2 uses
  %i.aa = sext i32 %.0916.i23 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, %.017.i22                ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4
  %i.ae = icmp ugt i32 %.017.i22, %i.ad           ; 2 uses
  %i.af = zext i1 %i.ae to i32                    ; 2 uses
  %.110.i24 = add nsw i32 %.0916.i23, %i.af       ; 3 uses
  %i.ag = icmp slt i32 %.110.i24, 4
  %i.ah = and i1 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i21, label %_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit, !llvm.loop !12

_ZN4absl16strings_internal11BigUnsignedILi4EE12AddWithCarryEij.exit25.loopexit: ; preds = %.lr.ph.i21
  %i.ai = add nsw i32 %.110.i24, 1
  br label %.sink.split

end_hunk_0
begin_hunk_1_@_ZN4absl16strings_internal11BigUnsignedILi84EE12FiveToTheNthEi:bb.a
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = zext i32 %i.ev to i64
  %i.ex = mul nuw i64 %i.ew, %i.ea
  %i.ey = add nuw i64 %i.ex, %i.es                ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.eu, align 4
  %i.fa = lshr i64 %i.ey, 32                      ; 3 uses
  %indvars.iv.next.i8.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge.i10.i.unr-lcssa, label %bb.p, !llvm.loop !27

._crit_edge.thread.sink.split.i.i:                ; preds = %._crit_edge.i10.i
  %i.fb = trunc nuw i64 %.lcssa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %wide.trip.count.i5.i
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = add nuw nsw i32 %i.dv, 1
  store i32 %i.fd, ptr %0, align 4
  br label %_ZN4absl16strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit

_ZN4absl16strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi.exit: ; preds = %._crit_edge.i, %bb.n, %bb.o, %._crit_edge.i10.i, %._crit_edge.thread.sink.split.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK4absl16strings_internal11BigUnsignedILi84EE7GetWordEi(ptr noundef nonnull align 4 dereferenceable(340) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  %i.b = load i32, ptr %0, align 4
  %.not = icmp slt i32 %1, %i.b
  %or.cond = select i1 %i.a, i1 %.not, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZNK4absl16strings_internal11BigUnsignedILi84EE8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(340) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.absl::strings_internal::BigUnsigned.0", align 4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %2, ptr noundef nonnull align 4 dereferenceable(340) %1, i64 340, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load i32, ptr %2, align 4                ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.e = phi i32 [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %i.c, %bb.a ]
  %i.f = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.0911.i = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.b ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = shl nuw nsw i64 %.0911.i, 32
  %i.h = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = zext i32 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j               ; 2 uses
  %i.l = udiv i64 %i.k, 10
  %i.m = trunc nuw i64 %i.l to i32
  store i32 %i.m, ptr %i.h, align 4
  %i.n = urem i64 %i.k, 10                        ; 2 uses
  %i.o = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.o, label %bb.b, label %thread-pre-split.i, !llvm.loop !35

thread-pre-split.i:                               ; preds = %bb.b
  %.pr.pre.i = load i32, ptr %2, align 4          ; 4 uses
  %i.p = icmp sgt i32 %.pr.pre.i, 0
  br i1 %i.p, label %.lr.ph13.i.preheader, label %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit

.lr.ph13.i.preheader:                             ; preds = %thread-pre-split.i
  %i.q = zext nneg i32 %.pr.pre.i to i64          ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %2, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit

.lr.ph13.i:                                       ; preds = %.lr.ph
  %i.u = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph13.i.preheader, %.lr.ph13.i
  %indvars.iv21 = phi i64 [ %indvars.iv.next, %.lr.ph13.i ], [ %i.q, %.lr.ph13.i.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv21, -1 ; 3 uses
  %i.x = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.x, ptr %2, align 4
  %i.y = icmp samesign ugt i64 %indvars.iv21, 1
  br i1 %i.y, label %.lr.ph13.i, label %._ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit.loopexit_crit_edge, !llvm.loop !36

._ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit, !llvm.loop !36

_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit: ; preds = %.lr.ph13.i, %.lr.ph13.i.preheader, %._ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit.loopexit_crit_edge, %thread-pre-split.i
  %i.z = phi i32 [ %.pr.pre.i, %thread-pre-split.i ], [ 0, %._ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit.loopexit_crit_edge ], [ %.pr.pre.i, %.lr.ph13.i.preheader ], [ %i.x, %.lr.ph13.i ] ; 2 uses
  %i.aa = trunc nuw nsw i64 %i.n to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = load i64, ptr %i.b, align 8             ; 4 uses
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit
  %i.ag = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl16strings_internal11BigUnsignedILi84EE6DivModILj10EEEjv.exit
  %i.ah = load i64, ptr %i.a, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.c
  %i.ak = phi ptr [ %.pre.i, %bb.c ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 %i.ab, ptr %i.al, align 1
  store i64 %i.ad, ptr %i.b, align 8
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ad
  store i8 0, ptr %i.an, align 1
  %i.ao = icmp sgt i32 %i.z, 0
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre11.pre = load ptr, ptr %0, align 8         ; 3 uses
  %i.ap = icmp eq i64 %.pre, 0
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.aq = icmp ne ptr %.pre11.pre, %i.a
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = icmp eq i64 %i.ar, 0
  %or.cond = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i5 = load ptr, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7: ; preds = %bb.a, %bb.d, %bb.e
  %i.at = phi ptr [ %.pre.i5, %bb.e ], [ %.pre11.pre, %bb.d ], [ %i.a, %bb.a ]
  store i8 48, ptr %i.at, align 1
  store i64 1, ptr %i.b, align 8
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1
  %.pre10 = load ptr, ptr %0, align 8
  %.pre12 = load i64, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7, %._crit_edge
  %i.aw = phi i64 [ %.pre12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ax = phi ptr [ %.pre10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit7 ], [ %.pre11.pre, %._crit_edge ] ; 2 uses
  %.not11.i.i = icmp sgt i64 %i.aw, 1
  br i1 %.not11.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aw
  %.sroa.0.010.i.i = getelementptr i8, ptr %i.ay, i64 -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %i.ax, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.az = load i8, ptr %.sroa.07.012.i.i, align 1
  %i.ba = load i8, ptr %.sroa.0.013.i.i, align 1
  store i8 %i.ba, ptr %.sroa.07.012.i.i, align 1
  store i8 %i.az, ptr %.sroa.0.013.i.i, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 1 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -1 ; 2 uses
  %.not.i.i = icmp ult ptr %i.bb, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit, !llvm.loop !22

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef i32 @_ZNK4absl16strings_internal11BigUnsignedILi84EE4sizeEv(ptr noundef nonnull align 4 dereferenceable(340) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef ptr @_ZNK4absl16strings_internal11BigUnsignedILi84EE5wordsEv(ptr noundef nonnull align 4 dereferenceable(340) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij(ptr noundef nonnull align 4 dereferenceable(340) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp slt i32 %1, 84
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi i32 [ %2, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.0916 = phi i32 [ %1, %.lr.ph ], [ %.110, %bb.b ] ; 2 uses
  %i.c = sext i32 %.0916 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, %.017                      ; 2 uses
  store i32 %i.f, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.017, %i.f                 ; 2 uses
  %i.h = zext i1 %i.g to i32                      ; 2 uses
  %.110 = add nsw i32 %.0916, %i.h                ; 3 uses
  %i.i = icmp slt i32 %.110, 84
  %i.j = and i1 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.09.lcssa = phi i32 [ %1, %.preheader ], [ %.110, %bb.b ]
  %i.k = add nsw i32 %.09.lcssa, 1
  %i.l = load i32, ptr %0, align 4
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.l)
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.m, i32 84)
  store i32 %.sroa.speculated, ptr %0, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN4absl16strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.a) ; 3 uses
  %i.b = sub i32 %4, %.sroa.speculated            ; 2 uses
  %i.c = icmp sgt i32 %.sroa.speculated, -1
  %i.d = icmp slt i32 %i.b, %3
  %i.e = and i1 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br i1 %i.e, label %.lr.ph, label %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread

_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit.thread: ; preds = %bb.a
  %i.g = sext i32 %4 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  store i32 0, ptr %i.h, align 4
  br label %bb.j

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext nneg i32 %.sroa.speculated to i64
  %i.j = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv37 = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next38, %bb.b ] ; 2 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.01933 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.b ]
  %.02032 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.b ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv37
  %i.o = load i32, ptr %i.n, align 4
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.m
  %i.r = add nuw i64 %i.q, %.02032                ; 3 uses
  %i.s = lshr i64 %i.r, 32
  %i.t = add i64 %i.s, %.01933                    ; 4 uses
  %i.u = and i64 %i.r, 4294967295                 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.v = icmp ne i64 %indvars.iv, 0
  %i.w = trunc nuw i64 %indvars.iv.next38 to i32
  %i.x = icmp sgt i32 %3, %i.w
  %i.y = select i1 %i.v, i1 %i.x, i1 false
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.b
  %i.z = add nsw i32 %4, 1                        ; 2 uses
  %i.aa = icmp ne i64 %i.t, 0
  %i.ab = icmp slt i32 %4, 83
  %or.cond.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %bb.c, label %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEim.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ac = lshr i64 %i.t, 32                       ; 2 uses
  %i.ad = trunc nuw i64 %i.ac to i32              ; 2 uses
  %i.ae = trunc i64 %i.t to i32                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ag = sext i32 %i.z to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, %i.ae                    ; 2 uses
  store i32 %i.aj, ptr %i.ah, align 4
  %i.ak = icmp ult i32 %i.aj, %i.ae
  br i1 %i.ak, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = add i32 %i.ad, 1                        ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.an = add nsw i32 %4, 3                       ; 2 uses
  %i.ao = icmp slt i32 %4, 81
  br i1 %i.ao, label %.lr.ph.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.017.i.i = phi i32 [ %i.au, %.lr.ph.i.i ], [ 1, %bb.e ] ; 2 uses
  %.0916.i.i = phi i32 [ %.110.i.i, %.lr.ph.i.i ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = sext i32 %.0916.i.i to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %.017.i.i                ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp ugt i32 %.017.i.i, %i.as           ; 2 uses
  %i.au = zext i1 %i.at to i32                    ; 2 uses
  %.110.i.i = add nsw i32 %.0916.i.i, %i.au       ; 3 uses
  %i.av = icmp slt i32 %.110.i.i, 84
  %i.aw = and i1 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i, !llvm.loop !28

_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.09.lcssa.i.i = phi i32 [ %i.an, %bb.e ], [ %.110.i.i, %.lr.ph.i.i ]
  %i.ax = add nsw i32 %.09.lcssa.i.i, 1
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.c
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %bb.d
  %.031.i = phi i32 [ %i.ad, %bb.f ], [ %i.al, %bb.d ]
  %i.ay = icmp slt i32 %4, 82
  br i1 %i.ay, label %.lr.ph.i21.preheader.i, label %.sink.split.i

.lr.ph.i21.preheader.i:                           ; preds = %.preheader.i.i
  %i.az = add nsw i32 %4, 2
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i, %.lr.ph.i21.preheader.i
  %.017.i22.i = phi i32 [ %i.bf, %.lr.ph.i21.i ], [ %.031.i, %.lr.ph.i21.preheader.i ] ; 2 uses
  %.0916.i23.i = phi i32 [ %.110.i24.i, %.lr.ph.i21.i ], [ %i.az, %.lr.ph.i21.preheader.i ] ; 2 uses
  %i.ba = sext i32 %.0916.i23.i to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = add i32 %i.bc, %.017.i22.i              ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = icmp ugt i32 %.017.i22.i, %i.bd         ; 2 uses
  %i.bf = zext i1 %i.be to i32                    ; 2 uses
  %.110.i24.i = add nsw i32 %.0916.i23.i, %i.bf   ; 3 uses
  %i.bg = icmp slt i32 %.110.i24.i, 84
  %i.bh = and i1 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i21.i, label %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i, !llvm.loop !28

_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i: ; preds = %.lr.ph.i21.i
  %i.bi = add nsw i32 %.110.i24.i, 1
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.bj = add nsw i32 %4, 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i, %.preheader.i.i, %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i
  %.sink35.i = phi i32 [ %i.ax, %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit.i ], [ %i.bj, %bb.g ], [ 85, %.preheader.i.i ], [ %i.bi, %_ZN4absl16strings_internal11BigUnsignedILi84EE12AddWithCarryEij.exit25.loopexit.i ]
  %i.bk = load i32, ptr %0, align 4
  %i.bl = tail call i32 @llvm.smax.i32(i32 %.sink35.i, i32 %i.bk)
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 84)
end_hunk_1
