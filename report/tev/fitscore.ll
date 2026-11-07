Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fitscore?download=true
inline.NumInlined: 175
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@strcmp
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @fits_translate_keyword(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef captures(none) %12) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %12, align 4, !tbaa !27    ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.critedge14, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 115, ptr %12, align 4, !tbaa !27
  br label %.critedge14

bb.d:                                             ; preds = %bb.b
  store i8 0, ptr %1, align 1, !tbaa !29
  %i.e = load i8, ptr %0, align 1, !tbaa !29
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) @.str.173, i64 9, i1 false) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %bb.f
  %i.h = icmp ne i32 %6, 0
  %i.i = icmp ne i32 %6, -1
  %i.j = icmp ne i32 %6, 1
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph360, %.thread303
  %indvars.iv439 = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next440, %.thread303 ] ; 5 uses
  %.0183358 = phi i32 [ 0, %.lr.ph360 ], [ %.2, %.thread303 ]
  %.0198355 = phi i8 [ 0, %.lr.ph360 ], [ %.1199, %.thread303 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv439
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29    ; 10 uses
  %i.n = icmp eq i8 %i.m, 42
  br i1 %i.n, label %._crit_edge361.loopexit.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp ne i32 %.0183358, 0
  %i.o = icmp eq i8 %i.m, %.0198355
  %or.cond270 = select i1 %.not, i1 %i.o, i1 false
  br i1 %or.cond270, label %.thread303, label %.preheader321

.preheader321:                                    ; preds = %bb.h
  %.not418 = icmp eq i8 %i.m, 0
  br i1 %.not418, label %.thread303, label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader321, %.thread
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %.thread ], [ 0, %.preheader321 ]
  %i.p = phi i8 [ %i.bo, %.thread ], [ %i.m, %.preheader321 ] ; 3 uses
  %.1345 = phi i32 [ 0, %.thread ], [ 1, %.preheader321 ] ; 5 uses
  %.not260344 = phi i1 [ false, %.thread ], [ true, %.preheader321 ]
  %.0188343 = phi i32 [ %i.bm, %.thread ], [ 0, %.preheader321 ] ; 7 uses
  %.1201341 = phi i8 [ %.2202289, %.thread ], [ 32, %.preheader321 ] ; 13 uses
  %.1211340 = phi i32 [ %.3213288, %.thread ], [ -1, %.preheader321 ] ; 13 uses
  %.1218339 = phi i32 [ %.3220287, %.thread ], [ -1, %.preheader321 ] ; 13 uses
  %.1228338 = phi i32 [ %.2229286, %.thread ], [ 0, %.preheader321 ] ; 13 uses
  %.1234337 = phi i32 [ %.2235285, %.thread ], [ 0, %.preheader321 ] ; 13 uses
  %i.q = sext i32 %.0188343 to i64                ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29    ; 10 uses
  switch i8 %i.p, label %bb.s [
    i8 105, label %bb.i
    i8 106, label %bb.k
    i8 110, label %bb.m
    i8 109, label %bb.m
    i8 35, label %bb.m
    i8 97, label %bb.r
    i8 63, label %.thread
  ]

bb.i:                                             ; preds = %.lr.ph346
  %i.t = tail call ptr @__ctype_b_loc() #30
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  %i.v = sext i8 %i.s to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !53
  %i.y = and i16 %i.x, 2048
  %.not258 = icmp eq i16 %i.y, 0
  br i1 %.not258, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = sext i8 %i.s to i32
  %i.aa = add nsw i32 %i.z, -48
  br label %.thread

bb.k:                                             ; preds = %.lr.ph346
  %i.ab = tail call ptr @__ctype_b_loc() #30
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = sext i8 %i.s to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !53
  %i.ag = and i16 %i.af, 2048
  %.not257 = icmp eq i16 %i.ag, 0
  br i1 %.not257, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = sext i8 %i.s to i32
  %i.ai = add nsw i32 %i.ah, -48
  br label %.thread

bb.m:                                             ; preds = %.lr.ph346, %.lr.ph346, %.lr.ph346
  %i.aj = tail call ptr @__ctype_b_loc() #30
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %i.al = sext i8 %i.s to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !53
  %i.ao = and i16 %i.an, 2048
  %.not253 = icmp eq i16 %i.ao, 0
  br i1 %.not253, label %.thread303, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %i.q, %bb.m ] ; 2 uses
  %.0332 = phi i32 [ %i.aw, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.0197330 = phi i8 [ %i.ay, %bb.n ], [ %i.s, %bb.m ] ; 2 uses
  %i.ap = sext i8 %.0197330 to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53
  %i.as = and i16 %i.ar, 2048
  %.not254 = icmp eq i16 %i.as, 0
  br i1 %.not254, label %.critedge.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.at = sext i8 %.0197330 to i32
  %i.au = mul nsw i32 %.0332, 10
  %i.av = add nsw i32 %i.at, -48
  %i.aw = add nsw i32 %i.av, %i.au                ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !109

.critedge.split.loop.exit:                        ; preds = %.lr.ph
  %i.az = trunc nsw i64 %indvars.iv to i32
  %i.ba = add nsw i32 %i.az, -1
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %.critedge.split.loop.exit
  %.1189.lcssa.ph = phi i32 [ %i.ba, %.critedge.split.loop.exit ], [ 7, %bb.n ] ; 3 uses
  %.0.lcssa.ph = phi i32 [ %.0332, %.critedge.split.loop.exit ], [ %i.aw, %bb.n ] ; 6 uses
  switch i8 %i.p, label %.thread [
    i8 110, label %bb.o
    i8 109, label %bb.q
  ]

bb.o:                                             ; preds = %.critedge
  %i.bb = add i32 %.0.lcssa.ph, -1
  %or.cond9 = icmp ult i32 %i.bb, 999
  br i1 %or.cond9, label %bb.p, label %.thread303

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp ne i32 %.0.lcssa.ph, %4
  %or.cond271.not421 = select i1 %i.h, i1 true, i1 %i.bc
  %.not255 = icmp sgt i32 %.0.lcssa.ph, %4
  %or.cond272 = select i1 %i.i, i1 true, i1 %.not255
  %or.cond416 = select i1 %or.cond271.not421, i1 %or.cond272, i1 false
  %.not256 = icmp slt i32 %.0.lcssa.ph, %4
  %or.cond273 = select i1 %i.j, i1 true, i1 %.not256
  %or.cond417 = select i1 %or.cond416, i1 %or.cond273, i1 false
  br i1 %or.cond417, label %.thread303, label %.thread

bb.q:                                             ; preds = %.critedge
  br label %.thread

bb.r:                                             ; preds = %.lr.ph346
  %i.bd = tail call ptr @__ctype_b_loc() #30
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !51
  %i.bf = sext i8 %i.s to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !53
  %i.bi = and i16 %i.bh, 256
  %i.bj = icmp ne i16 %i.bi, 0
  %i.bk = icmp eq i8 %i.s, 32
  %or.cond12 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond12, label %.thread, label %bb.t

bb.s:                                             ; preds = %.lr.ph346
  %i.bl = icmp eq i8 %i.s, %i.p
  br i1 %i.bl, label %.thread, label %.thread303

bb.t:                                             ; preds = %bb.r, %bb.k, %bb.i
  br i1 %.not260344, label %.thread303, label %.thread

.thread:                                          ; preds = %.lr.ph346, %bb.s, %bb.r, %.critedge, %bb.q, %bb.p, %bb.l, %bb.j, %bb.t
  %.3191290 = phi i32 [ %.0188343, %bb.t ], [ %.0188343, %bb.r ], [ %.0188343, %bb.j ], [ %.0188343, %bb.l ], [ %.1189.lcssa.ph, %.critedge ], [ %.1189.lcssa.ph, %bb.q ], [ %.0188343, %bb.s ], [ %.1189.lcssa.ph, %bb.p ], [ %.0188343, %.lr.ph346 ] ; 3 uses
  %.2202289 = phi i8 [ %.1201341, %bb.t ], [ %i.s, %bb.r ], [ %.1201341, %bb.j ], [ %.1201341, %bb.l ], [ %.1201341, %.critedge ], [ %.1201341, %bb.q ], [ %.1201341, %bb.s ], [ %.1201341, %bb.p ], [ %.1201341, %.lr.ph346 ] ; 4 uses
  %.3213288 = phi i32 [ %.1211340, %bb.t ], [ %.1211340, %bb.r ], [ %.1211340, %bb.j ], [ %.1211340, %bb.l ], [ %.1211340, %.critedge ], [ %.0.lcssa.ph, %bb.q ], [ %.1211340, %bb.s ], [ %.1211340, %bb.p ], [ %.1211340, %.lr.ph346 ] ; 4 uses
  %.3220287 = phi i32 [ %.1218339, %bb.t ], [ %.1218339, %bb.r ], [ %.1218339, %bb.j ], [ %.1218339, %bb.l ], [ %.1218339, %.critedge ], [ %.1218339, %bb.q ], [ %.1218339, %bb.s ], [ %.0.lcssa.ph, %bb.p ], [ %.1218339, %.lr.ph346 ] ; 4 uses
  %.2229286 = phi i32 [ %.1228338, %bb.t ], [ %.1228338, %bb.r ], [ %.1228338, %bb.j ], [ %i.ai, %bb.l ], [ %.1228338, %.critedge ], [ %.1228338, %bb.q ], [ %.1228338, %bb.s ], [ %.1228338, %bb.p ], [ %.1228338, %.lr.ph346 ] ; 4 uses
  %.2235285 = phi i32 [ %.1234337, %bb.t ], [ %.1234337, %bb.r ], [ %i.aa, %bb.j ], [ %.1234337, %bb.l ], [ %.1234337, %.critedge ], [ %.1234337, %bb.q ], [ %.1234337, %bb.s ], [ %.1234337, %bb.p ], [ %.1234337, %.lr.ph346 ] ; 4 uses
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %i.bm = add nsw i32 %.3191290, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.next438
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29  ; 2 uses
  %i.bp = icmp ne i8 %i.bo, 0
  %i.bq = icmp slt i32 %.3191290, 7
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %.lr.ph346, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %.thread
  %i.bs = icmp sgt i32 %.3191290, 6
  br i1 %i.bs, label %._crit_edge361.loopexit.split.loop.exit495, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.bt = sext i32 %i.bm to i64
  %i.bu = getelementptr inbounds i8, ptr %0, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !29
  %i.bw = icmp eq i8 %i.bv, 32
  br i1 %i.bw, label %._crit_edge361.loopexit.split.loop.exit503, label %.thread303

.thread303:                                       ; preds = %bb.o, %bb.m, %bb.s, %bb.t, %bb.p, %.preheader321, %bb.h, %bb.u
  %.4237 = phi i32 [ 0, %bb.h ], [ %.2235285, %bb.u ], [ 0, %.preheader321 ], [ %.1234337, %bb.p ], [ %.1234337, %bb.t ], [ %.1234337, %bb.s ], [ %.1234337, %bb.m ], [ %.1234337, %bb.o ]
  %.4231 = phi i32 [ 0, %bb.h ], [ %.2229286, %bb.u ], [ 0, %.preheader321 ], [ %.1228338, %bb.p ], [ %.1228338, %bb.t ], [ %.1228338, %bb.s ], [ %.1228338, %bb.m ], [ %.1228338, %bb.o ]
  %.5222 = phi i32 [ -1, %bb.h ], [ %.3220287, %bb.u ], [ -1, %.preheader321 ], [ %.1218339, %bb.p ], [ %.1218339, %bb.t ], [ %.1218339, %bb.s ], [ %.1218339, %bb.m ], [ %.1218339, %bb.o ]
  %.5215 = phi i32 [ -1, %bb.h ], [ %.3213288, %bb.u ], [ -1, %.preheader321 ], [ %.1211340, %bb.p ], [ %.1211340, %bb.t ], [ %.1211340, %bb.s ], [ %.1211340, %bb.m ], [ %.1211340, %bb.o ]
  %.4204 = phi i8 [ 32, %bb.h ], [ %.2202289, %bb.u ], [ 32, %.preheader321 ], [ %.1201341, %bb.p ], [ %.1201341, %bb.t ], [ %.1201341, %bb.s ], [ %.1201341, %bb.m ], [ %.1201341, %bb.o ]
  %.1199 = phi i8 [ %.0198355, %bb.h ], [ %i.m, %bb.u ], [ 0, %.preheader321 ], [ %i.m, %bb.p ], [ %i.m, %bb.t ], [ %i.m, %bb.s ], [ %i.m, %bb.m ], [ %i.m, %bb.o ]
  %i.bx = phi i1 [ true, %bb.h ], [ false, %bb.u ], [ true, %.preheader321 ], [ true, %bb.p ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.m ], [ true, %bb.o ]
  %.2 = phi i32 [ 1, %bb.h ], [ 0, %bb.u ], [ 1, %.preheader321 ], [ %.1345, %bb.p ], [ %.1345, %bb.t ], [ %.1345, %bb.s ], [ %.1345, %bb.m ], [ %.1345, %bb.o ]
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond441.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count
  br i1 %exitcond441.not, label %._crit_edge361, label %bb.g, !llvm.loop !111

._crit_edge361.loopexit.split.loop.exit:          ; preds = %bb.g
  %i.by = trunc nuw nsw i64 %indvars.iv439 to i32
  br label %._crit_edge361

._crit_edge361.loopexit.split.loop.exit495:       ; preds = %._crit_edge
  %i.bz = trunc nuw nsw i64 %indvars.iv439 to i32
  br label %._crit_edge361

._crit_edge361.loopexit.split.loop.exit503:       ; preds = %bb.u
  %i.ca = trunc nuw nsw i64 %indvars.iv439 to i32
  br label %._crit_edge361

._crit_edge361:                                   ; preds = %.thread303, %._crit_edge361.loopexit.split.loop.exit, %._crit_edge361.loopexit.split.loop.exit495, %._crit_edge361.loopexit.split.loop.exit503, %bb.f
  %.0187.lcssa = phi i32 [ 0, %bb.f ], [ %i.ca, %._crit_edge361.loopexit.split.loop.exit503 ], [ %i.bz, %._crit_edge361.loopexit.split.loop.exit495 ], [ %i.by, %._crit_edge361.loopexit.split.loop.exit ], [ %3, %.thread303 ] ; 2 uses
  %.5238 = phi i32 [ 0, %bb.f ], [ %.2235285, %._crit_edge361.loopexit.split.loop.exit503 ], [ %.2235285, %._crit_edge361.loopexit.split.loop.exit495 ], [ 0, %._crit_edge361.loopexit.split.loop.exit ], [ %.4237, %.thread303 ] ; 2 uses
  %.5232 = phi i32 [ 0, %bb.f ], [ %.2229286, %._crit_edge361.loopexit.split.loop.exit503 ], [ %.2229286, %._crit_edge361.loopexit.split.loop.exit495 ], [ 0, %._crit_edge361.loopexit.split.loop.exit ], [ %.4231, %.thread303 ] ; 2 uses
  %.6223 = phi i32 [ 0, %bb.f ], [ %.3220287, %._crit_edge361.loopexit.split.loop.exit503 ], [ %.3220287, %._crit_edge361.loopexit.split.loop.exit495 ], [ -1, %._crit_edge361.loopexit.split.loop.exit ], [ %.5222, %.thread303 ] ; 2 uses
  %.6216 = phi i32 [ 0, %bb.f ], [ %.3213288, %._crit_edge361.loopexit.split.loop.exit503 ], [ %.3213288, %._crit_edge361.loopexit.split.loop.exit495 ], [ -1, %._crit_edge361.loopexit.split.loop.exit ], [ %.5215, %.thread303 ] ; 5 uses
  %.5205 = phi i8 [ 32, %bb.f ], [ %.2202289, %._crit_edge361.loopexit.split.loop.exit503 ], [ %.2202289, %._crit_edge361.loopexit.split.loop.exit495 ], [ 32, %._crit_edge361.loopexit.split.loop.exit ], [ %.4204, %.thread303 ]
  %.6 = phi i1 [ true, %bb.f ], [ false, %._crit_edge361.loopexit.split.loop.exit503 ], [ false, %._crit_edge361.loopexit.split.loop.exit495 ], [ false, %._crit_edge361.loopexit.split.loop.exit ], [ %i.bx, %.thread303 ]
  %.not261 = icmp eq ptr %8, null
  br i1 %.not261, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge361
  store i32 %.5238, ptr %8, align 4, !tbaa !27
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge361
  %.not262 = icmp eq ptr %9, null
  br i1 %.not262, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.5232, ptr %9, align 4, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not263 = icmp eq ptr %11, null
  br i1 %.not263, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %.6223, ptr %11, align 4, !tbaa !27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not264 = icmp eq ptr %10, null
  br i1 %.not264, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %.6216, ptr %10, align 4, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not265 = icmp eq ptr %7, null
  br i1 %.not265, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %.0187.lcssa, ptr %7, align 4, !tbaa !27
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cb = zext nneg i32 %.0187.lcssa to i64
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !30 ; 6 uses
  br i1 %.6, label %.critedge14, label %sub_0

sub_0:                                            ; preds = %bb.ae
  %i.cf = load i8, ptr %i.ce, align 1
  switch i8 %i.cf, label %.tail312.thread [
    i8 45, label %sub_1
    i8 0, label %.critedge14
  ]

sub_1:                                            ; preds = %sub_0
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ch = load i8, ptr %i.cg, align 1
  %.not423 = icmp eq i8 %i.ch, 45
  br i1 %.not423, label %.tail, label %.tail312

.tail:                                            ; preds = %sub_1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %bb.af, label %.tail312

bb.af:                                            ; preds = %.tail
  store i16 45, ptr %1, align 1
  %i.cl = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 8) #28 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 0, ptr %i.cm, align 1, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cp = icmp eq i8 %i.co, 32
  br i1 %i.cp, label %bb.ag, label %.critedge14

bb.ag:                                            ; preds = %bb.af
  store i8 0, ptr %i.cn, align 1, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %i.cs = icmp eq i8 %i.cr, 32
  br i1 %i.cs, label %bb.ah, label %.critedge14

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.cq, align 1, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = icmp eq i8 %i.cu, 32
  br i1 %i.cv, label %bb.ai, label %.critedge14

bb.ai:                                            ; preds = %bb.ah
  store i8 0, ptr %i.ct, align 1, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %i.cy = icmp eq i8 %i.cx, 32
  br i1 %i.cy, label %bb.aj, label %.critedge14

bb.aj:                                            ; preds = %bb.ai
  store i8 0, ptr %i.cw, align 1, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !29
  %i.db = icmp eq i8 %i.da, 32
  br i1 %i.db, label %bb.ak, label %.critedge14

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.cz, align 1, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.de = icmp eq i8 %i.dd, 32
  br i1 %i.de, label %bb.al, label %.critedge14

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.dc, align 1, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = icmp eq i8 %i.dg, 32
  br i1 %i.dh, label %bb.am, label %.critedge14

bb.am:                                            ; preds = %bb.al
  store i8 0, ptr %i.df, align 1, !tbaa !29
  br label %.critedge14

.tail312:                                         ; preds = %.tail, %sub_1
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %.critedge14, label %.tail312.thread

.tail312.thread:                                  ; preds = %sub_0, %.tail312
  %i.dl = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #28 ; 0 uses
  %i.dm = load i8, ptr %i.ce, align 1, !tbaa !29  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 43
  br i1 %i.dn, label %.critedge14, label %.preheader319

.preheader319:                                    ; preds = %.tail312.thread
  %i.do = trunc i32 %.5232 to i8
  %i.dp = add i8 %i.do, 48
  %i.dq = trunc i32 %.5238 to i8
  %i.dr = add i8 %i.dq, 48
  %i.ds = icmp sgt i32 %.6216, -1
  %.not521 = icmp eq i32 %.6216, 0
  br label %bb.an
end_hunk_0
begin_hunk_1_@ffgkcl:bb.a
  %i.amn = load i32, ptr %i.at, align 1
  %i.amo = icmp ne i32 %i.amn, 1280725571
  %i.amp = zext i1 %i.amo to i32
  %i.amq = icmp eq i32 %i.amp, 0
  br i1 %i.amq, label %bb.ft, label %.critedge1414

bb.ft:                                            ; preds = %.critedge1411
  %i.amr = load i8, ptr %i.au, align 1, !tbaa !29
  %i.ams = add i8 %i.amr, -48
  %or.cond1415 = icmp ult i8 %i.ams, 10
  br i1 %or.cond1415, label %.thread, label %.critedge1106

.critedge1414:                                    ; preds = %.critedge1411
  %i.amt = load i16, ptr %i.at, align 1
  %i.amu = xor i16 %i.amt, 21059
  %i.amv = getelementptr i8, ptr %i.at, i64 2
  %i.amw = load i8, ptr %i.amv, align 1
  %i.amx = zext i8 %i.amw to i16
  %i.amy = xor i16 %i.amx, 86
  %i.amz = or i16 %i.amu, %i.amy
  %i.ana = icmp ne i16 %i.amz, 0
  %i.anb = zext i1 %i.ana to i32
  %i.anc = icmp eq i32 %i.anb, 0
  br i1 %i.anc, label %bb.fu, label %.critedge1418

bb.fu:                                            ; preds = %.critedge1414
  %i.and = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ane = load i8, ptr %i.and, align 4, !tbaa !29
  %i.anf = add i8 %i.ane, -48
  %or.cond153 = icmp ult i8 %i.anf, 10
  br i1 %or.cond153, label %.thread, label %.critedge1106

.critedge1418:                                    ; preds = %.critedge1414
  %i.ang = load i32, ptr %i.at, align 1
  %i.anh = icmp ne i32 %i.ang, 1481658947
  %i.ani = zext i1 %i.anh to i32
  %i.anj = icmp eq i32 %i.ani, 0
  br i1 %i.anj, label %bb.fv, label %.critedge1421

bb.fv:                                            ; preds = %.critedge1418
  %i.ank = load i8, ptr %i.au, align 1, !tbaa !29
  %i.anl = add i8 %i.ank, -48
  %or.cond1422 = icmp ult i8 %i.anl, 10
  br i1 %or.cond1422, label %.thread, label %.critedge1106

.critedge1421:                                    ; preds = %.critedge1418
  %i.anm = load i16, ptr %i.at, align 1
  %i.ann = xor i16 %i.anm, 21059
  %i.ano = getelementptr i8, ptr %i.at, i64 2
  %i.anp = load i8, ptr %i.ano, align 1
  %i.anq = zext i8 %i.anp to i16
  %i.anr = xor i16 %i.anq, 80
  %i.ans = or i16 %i.ann, %i.anr
  %i.ant = icmp ne i16 %i.ans, 0
  %i.anu = zext i1 %i.ant to i32
  %i.anv = icmp eq i32 %i.anu, 0
  br i1 %i.anv, label %bb.fw, label %.critedge1425

bb.fw:                                            ; preds = %.critedge1421
  %i.anw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.anx = load i8, ptr %i.anw, align 4, !tbaa !29
  %i.any = add i8 %i.anx, -48
  %or.cond158 = icmp ult i8 %i.any, 10
  br i1 %or.cond158, label %.thread, label %.critedge1106

.critedge1425:                                    ; preds = %.critedge1421
  %i.anz = load i32, ptr %i.at, align 1
  %i.aoa = icmp ne i32 %i.anz, 1414484547
  %i.aob = zext i1 %i.aoa to i32
  %i.aoc = icmp eq i32 %i.aob, 0
  br i1 %i.aoc, label %bb.fx, label %.critedge1428

bb.fx:                                            ; preds = %.critedge1425
  %i.aod = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aoe = add i8 %i.aod, -48
  %or.cond1429 = icmp ult i8 %i.aoe, 10
  br i1 %or.cond1429, label %.thread, label %.critedge1106

.critedge1428:                                    ; preds = %.critedge1425
  %i.aof = load i32, ptr %i.at, align 1
  %i.aog = icmp ne i32 %i.aof, 1414284355
  %i.aoh = zext i1 %i.aog to i32
  %i.aoi = icmp eq i32 %i.aoh, 0
  br i1 %i.aoi, label %bb.fy, label %.critedge1432

bb.fy:                                            ; preds = %.critedge1428
  %i.aoj = load i8, ptr %i.au, align 1, !tbaa !29
  %i.aok = add i8 %i.aoj, -48
  %or.cond1433 = icmp ult i8 %i.aok, 10
  br i1 %or.cond1433, label %.thread, label %.critedge1106

.critedge1432:                                    ; preds = %.critedge1428
  %i.aol = load i16, ptr %i.at, align 1
  %i.aom = xor i16 %i.aol, 17475
  %i.aon = getelementptr i8, ptr %i.at, i64 2
  %i.aoo = load i8, ptr %i.aon, align 1
  %i.aop = zext i8 %i.aoo to i16
  %i.aoq = xor i16 %i.aop, 69
  %i.aor = or i16 %i.aom, %i.aoq
  %i.aos = icmp ne i16 %i.aor, 0
  %i.aot = zext i1 %i.aos to i32
  %i.aou = icmp eq i32 %i.aot, 0
  br i1 %i.aou, label %bb.fz, label %.critedge1436

bb.fz:                                            ; preds = %.critedge1432
  %i.aov = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aow = load i8, ptr %i.aov, align 4, !tbaa !29
  %i.aox = add i8 %i.aow, -48
  %or.cond163 = icmp ult i8 %i.aox, 10
  br i1 %or.cond163, label %.thread, label %.critedge1106

.critedge1436:                                    ; preds = %.critedge1432
  %i.aoy = load i16, ptr %i.at, align 1
  %i.aoz = xor i16 %i.aoy, 21059
  %i.apa = getelementptr i8, ptr %i.at, i64 2
  %i.apb = load i8, ptr %i.apa, align 1
  %i.apc = zext i8 %i.apb to i16
  %i.apd = xor i16 %i.apc, 68
  %i.ape = or i16 %i.aoz, %i.apd
  %i.apf = icmp ne i16 %i.ape, 0
  %i.apg = zext i1 %i.apf to i32
  %i.aph = icmp eq i32 %i.apg, 0
  br i1 %i.aph, label %bb.ga, label %.critedge1439

bb.ga:                                            ; preds = %.critedge1436
  %i.api = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.apj = load i8, ptr %i.api, align 4, !tbaa !29
  %i.apk = add i8 %i.apj, -48
  %or.cond168 = icmp ult i8 %i.apk, 10
  br i1 %or.cond168, label %.thread, label %.critedge1106

.critedge1439:                                    ; preds = %.critedge1436
  %i.apl = load i16, ptr %i.at, align 1
  %i.apm = xor i16 %i.apl, 21315
  %i.apn = getelementptr i8, ptr %i.at, i64 2
  %i.apo = load i8, ptr %i.apn, align 1
  %i.app = zext i8 %i.apo to i16
  %i.apq = xor i16 %i.app, 89
  %i.apr = or i16 %i.apm, %i.apq
  %i.aps = icmp ne i16 %i.apr, 0
  %i.apt = zext i1 %i.aps to i32
  %i.apu = icmp eq i32 %i.apt, 0
  br i1 %i.apu, label %bb.gb, label %.critedge1106

bb.gb:                                            ; preds = %.critedge1439
  %i.apv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.apw = load i8, ptr %i.apv, align 4, !tbaa !29
  %i.apx = add i8 %i.apw, -48
  %or.cond173 = icmp ult i8 %i.apx, 10
  br i1 %or.cond173, label %.thread, label %.critedge1106

bb.gc:                                            ; preds = %bb.fm
  %i.apy = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.apz = load i8, ptr %i.apy, align 2, !tbaa !29
  %i.aqa = add i8 %i.apz, -48
  %or.cond178 = icmp ult i8 %i.aqa, 10
  br i1 %or.cond178, label %.thread, label %.critedge1106

bb.gd:                                            ; preds = %bb.fm
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aqc = load i8, ptr %i.aqb, align 2, !tbaa !29
  %i.aqd = add i8 %i.aqc, -48
  %or.cond183 = icmp ult i8 %i.aqd, 10
  br i1 %or.cond183, label %.thread, label %.critedge1106

bb.ge:                                            ; preds = %bb.fm
  %i.aqe = add i8 %i.ala, -48
  %or.cond1445 = icmp ult i8 %i.aqe, 10
  br i1 %or.cond1445, label %bb.gf, label %.critedge1106

bb.gf:                                            ; preds = %bb.ge
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aqg = load i8, ptr %i.aqf, align 2, !tbaa !29 ; 2 uses
  %i.aqh = icmp eq i8 %i.aqg, 80
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aqj = load i8, ptr %i.aqi, align 1           ; 2 uses
  %i.aqk = icmp eq i8 %i.aqj, 67
  %or.cond188 = select i1 %i.aqh, i1 %i.aqk, i1 false
  br i1 %or.cond188, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.aql = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aqm = load i8, ptr %i.aql, align 4, !tbaa !29
  %i.aqn = add i8 %i.aqm, -48
  %or.cond193 = icmp ult i8 %i.aqn, 10
  br i1 %or.cond193, label %.thread, label %.critedge1106

bb.gh:                                            ; preds = %bb.gf
  %i.aqo = icmp eq i8 %i.aqg, 67
  %i.aqp = icmp eq i8 %i.aqj, 68
  %or.cond198 = select i1 %i.aqo, i1 %i.aqp, i1 false
  br i1 %or.cond198, label %bb.gi, label %.critedge1106

bb.gi:                                            ; preds = %bb.gh
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aqr = load i8, ptr %i.aqq, align 4, !tbaa !29
  %i.aqs = add i8 %i.aqr, -48
  %or.cond203 = icmp ult i8 %i.aqs, 10
  br i1 %or.cond203, label %.thread, label %.critedge1106

.critedge1106:                                    ; preds = %bb.cx, %bb.d, %bb.cy, %bb.de, %bb.df, %bb.dc, %bb.dg, %bb.r, %bb.n, %.critedge1082.thread, %.critedge1085.thread1645, %.critedge1328, %.critedge1091, %bb.du, %bb.ey, %bb.bz, %bb.bt, %bb.bq, %bb.bh, %bb.ad, %bb.w, %bb.cm, %bb.cc, %bb.dq, %bb.dk, %bb.f, %bb.e, %bb.am, %bb.al, %.critedge1145, %bb.i, %bb.q, %bb.bw, %bb.br, %.critedge1206, %.critedge1212.thread, %bb.bo, %bb.bj, %bb.av, %bb.ao, %bb.z, %bb.x, %bb.aa, %bb.ab, %bb.s, %bb.t, %bb.u, %bb.fe, %bb.cq, %bb.cf, %bb.bc, %bb.ax, %bb.fc, %bb.cv, %bb.cj, %bb.cl, %bb.ap, %bb.at, %bb.aw, %bb.ba, %bb.bb, %bb.ay, %bb.au, %bb.ar, %bb.an, %bb.bp, %bb.bx, %bb.ci, %bb.ch, %bb.co, %bb.cp, %.critedge1264.thread, %bb.cw, %bb.fd, %bb.fl, %bb.gc, %bb.ge, %bb.gh, %bb.gi, %bb.gg, %bb.gd, %bb.fo, %bb.fr, %bb.ft, %bb.fv, %bb.fx, %bb.fz, %.critedge1439, %bb.gb, %bb.ga, %bb.fy, %bb.fw, %bb.fu, %bb.fs, %bb.fq, %bb.fi, %bb.fk, %bb.fj, %bb.cz, %bb.dd, %bb.dj, %bb.dn, %bb.dr, %bb.dv, %bb.dx, %bb.eb, %bb.ef, %bb.ej, %bb.en, %bb.er, %bb.ev, %bb.ez, %bb.fa, %.critedge1378.thread1702.thread.thread.thread, %bb.fb, %.critedge1381, %bb.ex, %bb.et, %bb.ep, %bb.el, %bb.eh, %bb.ed, %bb.dz, %bb.dw, %bb.dt, %bb.dp, %bb.dl, %bb.dh, %bb.db, %bb.ct, %bb.cu, %bb.ck, %bb.cd, %bb.ce, %.critedge1243.thread.thread, %bb.bs, %bb.bg, %bb.ac, %bb.h, %bb.l, %bb.o, %bb.v, %bb.j
  br label %.thread

.thread:                                          ; preds = %bb.bl, %bb.bk, %bb.gi, %bb.gg, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fo, %bb.fk, %bb.fi, %bb.fg, %bb.ff, %ffupch.exit, %bb.fd, %.critedge1378.thread1702.thread.thread.thread, %bb.fb, %bb.fa, %.critedge1381, %bb.ez, %bb.ex, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.en, %bb.el, %bb.ej, %bb.eh, %bb.ef, %bb.ed, %bb.eb, %bb.dz, %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.de, %bb.dd, %bb.db, %bb.cz, %bb.cw, %bb.cu, %bb.cs, %bb.cr, %bb.cp, %bb.co, %.critedge1264.thread, %bb.cn, %bb.cl, %bb.ci, %bb.cg, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.by, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %.critedge1206, %bb.bm, %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.an, %.critedge1145, %bb.al, %.critedge1142, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %.critedge1091, %bb.r, %.critedge1085.thread1645, %.critedge1082.thread, %.critedge1079.thread1502, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.e, %.critedge1106
  %.0 = phi i32 [ 110, %bb.gg ], [ 20, %bb.e ], [ 20, %bb.f ], [ 150, %.critedge1106 ], [ 20, %bb.h ], [ 20, %bb.j ], [ 20, %bb.l ], [ 20, %bb.m ], [ 20, %bb.o ], [ 20, %bb.p ], [ 20, %bb.q ], [ 20, %.critedge1079.thread1502 ], [ 20, %.critedge1082.thread ], [ 20, %.critedge1085.thread1645 ], [ 20, %bb.r ], [ 20, %.critedge1091 ], [ 20, %bb.s ], [ 20, %bb.t ], [ 20, %bb.u ], [ 20, %bb.v ], [ 130, %ffupch.exit ], [ 10, %bb.x ], [ 10, %bb.y ], [ 40, %bb.z ], [ 30, %bb.aa ], [ 30, %bb.ab ], [ 70, %bb.ac ], [ 10, %bb.ag ], [ 10, %bb.ah ], [ 10, %bb.ai ], [ 10, %bb.aj ], [ %., %.critedge1142 ], [ 10, %bb.ak ], [ 110, %bb.gd ], [ 100, %bb.al ], [ 140, %.critedge1145 ], [ 110, %bb.an ], [ 110, %bb.ap ], [ 110, %bb.ar ], [ 110, %bb.at ], [ 110, %bb.au ], [ 110, %bb.aw ], [ 110, %bb.ay ], [ 110, %bb.ba ], [ 110, %bb.bb ], [ 100, %bb.bd ], [ 60, %bb.be ], [ 60, %bb.bf ], [ 120, %bb.bg ], [ 10, %bb.bi ], [ 110, %bb.gi ], [ 10, %bb.bj ], [ 110, %bb.gc ], [ 90, %bb.bm ], [ 90, %.critedge1206 ], [ 120, %bb.bn ], [ 120, %bb.bo ], [ 120, %bb.bp ], [ 10, %bb.br ], [ 10, %bb.bs ], [ 90, %bb.bu ], [ 90, %bb.bv ], [ %.1237, %bb.by ], [ 90, %bb.bw ], [ 110, %bb.gb ], [ 110, %bb.ca ], [ 110, %bb.cb ], [ 110, %bb.cd ], [ 110, %bb.ce ], [ 120, %bb.cg ], [ 120, %bb.ci ], [ 10, %bb.cl ], [ 10, %bb.cn ], [ 110, %.critedge1264.thread ], [ 110, %bb.co ], [ 110, %bb.cp ], [ 120, %bb.cr ], [ 120, %bb.cs ], [ 120, %bb.cu ], [ 10, %bb.cw ], [ 10, %bb.cz ], [ 10, %bb.db ], [ 10, %bb.dd ], [ 10, %bb.de ], [ 10, %bb.df ], [ 40, %bb.dh ], [ 50, %bb.dj ], [ 70, %bb.dl ], [ 80, %bb.dn ], [ 30, %bb.dp ], [ 30, %bb.dr ], [ 60, %bb.dt ], [ 60, %bb.dv ], [ 60, %bb.dw ], [ 60, %bb.dx ], [ 110, %bb.dz ], [ 110, %bb.eb ], [ 110, %bb.ed ], [ 110, %bb.ef ], [ 110, %bb.eh ], [ 110, %bb.ej ], [ 110, %bb.el ], [ 110, %bb.en ], [ 110, %bb.ep ], [ 110, %bb.er ], [ 110, %bb.et ], [ 110, %bb.ev ], [ 110, %bb.ex ], [ 110, %bb.ez ], [ 110, %.critedge1381 ], [ 110, %bb.fa ], [ 110, %bb.fb ], [ 110, %.critedge1378.thread1702.thread.thread.thread ], [ 10, %bb.fd ], [ 110, %bb.ff ], [ 110, %bb.fg ], [ 110, %bb.fi ], [ 110, %bb.fk ], [ 110, %bb.fo ], [ 110, %bb.fq ], [ 110, %bb.fr ], [ 110, %bb.fs ], [ 110, %bb.ft ], [ 110, %bb.fu ], [ 110, %bb.fv ], [ 110, %bb.fw ], [ 110, %bb.fx ], [ 110, %bb.fy ], [ 110, %bb.fz ], [ 110, %bb.ga ], [ 90, %bb.bk ], [ %spec.select, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i32 @ffdtyp(ptr nofree noundef readonly %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.c
    i8 39, label %bb.i
    i8 84, label %bb.d
    i8 70, label %bb.d
    i8 40, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  store i32 204, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.d:                                             ; preds = %bb.b, %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.e = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 69) #29
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.f = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 68) #29
  %.not21 = icmp eq ptr %i.f, null
  %spec.select = select i1 %.not21, i8 73, i8 70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.e, %bb.d
  %.sink = phi i8 [ 76, %bb.d ], [ 88, %bb.e ], [ 70, %bb.f ], [ 70, %bb.g ], [ 67, %bb.b ], [ %spec.select, %bb.h ]
  store i8 %.sink, ptr %1, align 1, !tbaa !29
  %i.g = load i32, ptr %2, align 4, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.c
  %.0 = phi i32 [ %i.g, %bb.i ], [ 204, %bb.c ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ffinttyp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !27     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.bf, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !27
  store i32 0, ptr %2, align 4, !tbaa !27
  %i.c = load i8, ptr %0, align 1, !tbaa !29      ; 2 uses
  switch i8 %i.c, label %bb.d [
    i8 43, label %thread-pre-split
    i8 45, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !27
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %bb.c
  %i.d = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %.0.ph = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pr = load i8, ptr %.0.ph, align 1, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %bb.b
  %.not = phi i1 [ %i.d, %thread-pre-split ], [ true, %bb.b ]
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.b ]
  %.0 = phi ptr [ %.0.ph, %thread-pre-split ], [ %0, %bb.b ] ; 2 uses
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d, %bb.e
  %i.g = phi i8 [ %.pre, %bb.e ], [ 48, %bb.d ]
  %.1 = phi ptr [ %i.h, %bb.e ], [ %.0, %bb.d ]   ; 2 uses
  switch i8 %i.g, label %.loopexit [
    i8 48, label %bb.e
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.h, align 1, !tbaa !29
  br label %.preheader, !llvm.loop !230

bb.f:                                             ; preds = %.preheader
  store i32 12, ptr %1, align 4, !tbaa !27
  %i.i = load i32, ptr %3, align 4, !tbaa !27
  br label %bb.bf

.loopexit:                                        ; preds = %.preheader, %bb.d
  %.2 = phi ptr [ %.0, %bb.d ], [ %.1, %.preheader ] ; 14 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2) #29 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 9 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %i.m = tail call ptr @__ctype_b_loc() #30
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %wide.trip.count = and i64 %i.j, 2147483647
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !231

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.2, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = sext i8 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.n, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !53
  %i.t = and i16 %i.s, 2048
  %.not91 = icmp eq i16 %i.t, 0
  br i1 %.not91, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  store i32 403, ptr %3, align 4, !tbaa !27
  br label %bb.bf

._crit_edge:                                      ; preds = %bb.g, %.loopexit
  %i.u = icmp eq i32 %i.k, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  store i32 204, ptr %3, align 4, !tbaa !27
  br label %bb.be

bb.k:                                             ; preds = %._crit_edge
  %i.v = icmp slt i32 %i.k, 3
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 12, ptr %1, align 4, !tbaa !27
  br label %bb.be

bb.m:                                             ; preds = %bb.k
  %i.w = icmp eq i32 %i.k, 4
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 21, ptr %1, align 4, !tbaa !27
  br label %bb.be

bb.o:                                             ; preds = %bb.m
  %i.x = add nsw i32 %i.k, -6
  %or.cond = icmp ult i32 %i.x, 4
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 31, ptr %1, align 4, !tbaa !27
  br label %bb.be

bb.q:                                             ; preds = %bb.o
  %i.y = add nsw i32 %i.k, -11
  %or.cond3 = icmp ult i32 %i.y, 8
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 81, ptr %1, align 4, !tbaa !27
  br label %bb.be

bb.s:                                             ; preds = %bb.q
  %i.z = icmp samesign ugt i32 %i.k, 20
  br i1 %i.z, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 403, ptr %3, align 4, !tbaa !27
  br label %bb.be

bb.u:                                             ; preds = %bb.s
  br i1 %.not, label %bb.v, label %bb.ar

bb.v:                                             ; preds = %bb.u
end_hunk_1
