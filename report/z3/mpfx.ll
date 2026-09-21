Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpfx?download=true
inline.NumInlined: 638
inline.NumDeleted: 209
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12mpfx_manager6is_intERK4mpfx
define hidden noundef zeroext i1 @_ZNK12mpfx_manager6is_intERK4mpfx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load i32, ptr %1, align 4
  %i.d = lshr i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = mul i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29   ; 2 uses
  %.not910 = icmp eq i32 %i.k, 0
  br i1 %.not910, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.not9.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.not9.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK12mpfx_manager10is_abs_oneERK4mpfx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load i32, ptr %1, align 4
  %i.d = lshr i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = mul i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29   ; 2 uses
  %.not910.i = icmp eq i32 %i.k, 0
  br i1 %.not910.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.k to i64       ; 2 uses
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.pre-phi = phi i64 [ 0, %bb.a ], [ %wide.trip.count.i, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.pre-phi ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit

bb.c:                                             ; preds = %.loopexit
  %i.q = load i32, ptr %0, align 8, !tbaa !28
  %i.r = add i32 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.t = zext i32 %i.r to i64
  %i.u = tail call noundef zeroext i1 @_Z7is_zeroSt4spanIKjLm18446744073709551615EE(ptr nonnull %i.s, i64 %i.t)
  br label %_ZNK12mpfx_manager6is_intERK4mpfx.exit

_ZNK12mpfx_manager6is_intERK4mpfx.exit:           ; preds = %.lr.ph.i, %bb.c, %.loopexit
  %i.v = phi i1 [ false, %.loopexit ], [ %i.u, %bb.c ], [ false, %.lr.ph.i ]
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12mpfx_manager8is_int64ERK4mpfx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load i32, ptr %1, align 4                ; 3 uses
  %i.d = lshr i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = mul i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29   ; 3 uses
  %.not910.i = icmp eq i32 %i.k, 0
  br i1 %.not910.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.k to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.n = icmp ult i32 %i.c, 2
  br i1 %i.n, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.o = load i32, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext i32 %i.k to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33   ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = icmp eq i32 %i.t, -2147483648
  %i.w = trunc i32 %i.c to i1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  %or.cond19 = select i1 %i.u, i1 true, i1 %or.cond
  br i1 %or.cond19, label %.preheader, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit

.preheader:                                       ; preds = %bb.d
  %.not1621 = icmp eq i32 %i.o, 2
  br i1 %.not1621, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.o to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  %.not = icmp eq i32 %i.y, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond31.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond31.not, label %.lr.ph, label %_ZNK12mpfx_manager6is_intERK4mpfx.exit, !llvm.loop !83

_ZNK12mpfx_manager6is_intERK4mpfx.exit:           ; preds = %.lr.ph.i, %.lr.ph, %.preheader, %bb.d, %.loopexit, %bb.c
  %.2 = phi i1 [ true, %.preheader ], [ true, %.loopexit ], [ true, %bb.c ], [ false, %bb.d ], [ %.not, %.lr.ph ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK12mpfx_manager9is_uint64ERK4mpfx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(85) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load i32, ptr %1, align 4                ; 3 uses
  %i.d = lshr i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %i.g = mul i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29   ; 3 uses
  %.not910.i = icmp eq i32 %i.k, 0
  br i1 %.not910.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %i.k to i64
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.b, label %.critedge

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.n = trunc i32 %i.c to i1
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %2 = icmp ugt i32 %i.c, 1
  %i.o = load i32, ptr %0, align 8
  %i.p = icmp ugt i32 %i.o, 2
  %or.cond.not23 = select i1 %2, i1 %i.p, i1 false
  %i.q = add i32 %i.k, 2                          ; 2 uses
  %.not12.not15 = icmp ult i32 %i.q, %i.f
  %or.cond = select i1 %or.cond.not23, i1 %.not12.not15, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.r, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !33
  %.not = icmp eq i32 %i.t, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp ne i32 %i.f, %lftr.wideiv
  %or.cond25.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond25.not, label %.lr.ph, label %.critedge, !llvm.loop !84

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %.loopexit
  %.2 = phi i1 [ true, %bb.c ], [ %.not, %.lr.ph ], [ false, %.loopexit ], [ false, %.lr.ph.i ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12mpfx_manager3setER4mpfxj(ptr noundef nonnull align 8 dereferenceable(85) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = load i32, ptr %1, align 4                ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN12mpfx_manager5resetER4mpfx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.d, label %_ZN6id_gen7recycleEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !33
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.f, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !33
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %bb.f, %bb.e
  %i.m = phi i32 [ %.pre2.i.i.i.i, %bb.f ], [ %i.i, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %.pre.i.i.i.i, %bb.f ], [ %i.f, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.p
  store i32 %i.c, ptr %i.q, align 4, !tbaa !33
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !33
  br label %_ZN6id_gen7recycleEj.exit.i.i

_ZN6id_gen7recycleEj.exit.i.i:                    ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = load i32, ptr %1, align 4
  %i.v = lshr i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = mul i32 %i.v, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %.not10.i.i = icmp eq i32 %i.x, 0
  br i1 %.not10.i.i, label %_ZN12mpfx_manager5resetER4mpfx.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6id_gen7recycleEj.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %_ZN6id_gen7recycleEj.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  store i32 0, ptr %i.ab, align 4, !tbaa !33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !30
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZN12mpfx_manager5resetER4mpfx.exit, !llvm.loop !2

_ZN12mpfx_manager5resetER4mpfx.exit:              ; preds = %.lr.ph.i.i, %bb.b, %_ZN6id_gen7recycleEj.exit.i.i
  store i32 0, ptr %1, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %i.b, 2
  br i1 %i.af, label %bb.h, label %_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !20 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i.i:           ; preds = %bb.h
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i.i.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i.i:    ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i.i, %bb.h
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !23
  br label %_ZN12mpfx_manager8allocateER4mpfx.exit.i

_ZN6vectorIjLb0EjE4backEv.exit.i.i.i:             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i.i.i
  %i.ap = add i32 %i.al, -1                       ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !33
  br label %_ZN12mpfx_manager8allocateER4mpfx.exit.i

_ZN12mpfx_manager8allocateER4mpfx.exit.i:         ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i.i.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.an, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i.i.i ], [ %i.as, %_ZN6vectorIjLb0EjE4backEv.exit.i.i.i ] ; 2 uses
  tail call void @_ZN12mpfx_manager15ensure_capacityEj(ptr noundef nonnull align 8 dereferenceable(85) %0, i32 noundef %.0.i.i.i)
  %i.at = load i32, ptr %1, align 4
  %i.au = shl i32 %.0.i.i.i, 1
  %i.av = and i32 %i.at, 1
  %i.aw = or disjoint i32 %i.av, %i.au
  br label %_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit

_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit: ; preds = %bb.g, %_ZN12mpfx_manager8allocateER4mpfx.exit.i
  %i.ax = phi i32 [ %i.b, %bb.g ], [ %i.aw, %_ZN12mpfx_manager8allocateER4mpfx.exit.i ] ; 2 uses
  %i.ay = and i32 %i.ax, -2
  store i32 %i.ay, ptr %1, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20
  %i.bb = lshr i32 %i.ax, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %i.be = mul i32 %i.bd, %i.bb
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bf ; 2 uses
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !29
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bj
  store i32 %2, ptr %i.bk, align 4, !tbaa !33
  br label %bb.i

.lr.ph:                                           ; preds = %_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZN12mpfx_manager18allocate_if_neededER4mpfx.exit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  store i32 0, ptr %i.bl, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.bc, align 8, !tbaa !30
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !1

bb.i:                                             ; preds = %._crit_edge, %_ZN12mpfx_manager5resetER4mpfx.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12mpfx_manager3setER4mpfxl(ptr noundef nonnull align 8 dereferenceable(85) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !28
  %i.b = icmp eq i32 %i.a, 1
  %i.c = add i64 %2, -4294967296
  %or.cond = icmp ult i64 %i.c, -8589934591
  %or.cond11 = and i1 %or.cond, %i.b
  br i1 %or.cond11, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12mpfx_manager18overflow_exceptionE, i64 16), ptr %i.d, align 8, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN12mpfx_manager18overflow_exceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4
  %i.g = lshr i32 %i.f, 1                         ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZN12mpfx_manager5resetER4mpfx.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noundef zeroext i1 @_ZN6memory16is_out_of_memoryEv()
  br i1 %i.h, label %_ZN6id_gen7recycleEj.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !33
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
end_hunk_0
