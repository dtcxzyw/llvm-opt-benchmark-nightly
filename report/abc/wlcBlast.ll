Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcBlast?download=true
inline.NumInlined: 1166
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Wlc_BlastMultiplier2:bb.a

bb.s:                                             ; preds = %bb.q
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #26
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.r, %bb.s, %bb.n, %bb.o
  %i.at = phi ptr [ %i.am, %bb.o ], [ %i.al, %bb.n ], [ %i.ar, %bb.r ], [ %i.as, %bb.s ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %bb.s ]
  store ptr %i.at, ptr %i.o, align 8, !tbaa !39
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !38
  %.pre51 = load i32, ptr %i.p, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.p, %Vec_IntGrow.exit11.sink.split.i
  %i.au = phi i32 [ %i.ag, %.Vec_IntPush.exit_crit_edge ], [ %i.ag, %bb.p ], [ %.pre51, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.av = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre50, %bb.p ], [ %i.at, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aw = add nsw i32 %i.au, 1
  store i32 %i.aw, ptr %i.p, align 4, !tbaa !40
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  store i32 %i.af, ptr %i.ay, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val22 = load i32, ptr %i.p, align 4, !tbaa !40
  %i.az = icmp slt i32 %.val22, %3
  br i1 %i.az, label %bb.k, label %.lr.ph.preheader.i, !llvm.loop !134

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit
  %.val21 = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %Wlc_BlastFullAdder.exit, %.lr.ph.preheader.i
  %.042 = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1, %Wlc_BlastFullAdder.exit ] ; 2 uses
  %indvars.iv.i36 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i37, %Wlc_BlastFullAdder.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv.i36 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i36
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22 ; 2 uses
  %i.be = icmp eq i32 %i.bb, 1
  %i.bf = icmp eq i32 %i.bd, 1
  %or.cond.i = or i1 %i.be, %i.bf
  %i.bg = icmp eq i32 %.042, 1
  %spec.select.i39 = or i1 %i.bg, %or.cond.i      ; 2 uses
  %i.bh = zext i1 %spec.select.i39 to i32         ; 3 uses
  %.054.i = xor i32 %.042, %i.bh                  ; 2 uses
  %.053.i = xor i32 %i.bd, %i.bh                  ; 2 uses
  %.0.i = xor i32 %i.bb, %i.bh                    ; 2 uses
  %i.bi = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.bj = xor i32 %.0.i, 1
  %i.bk = xor i32 %.053.i, 1
  %i.bl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk) #27
  %i.bm = xor i32 %i.bi, 1
  %i.bn = xor i32 %i.bl, 1
  %i.bo = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bm, i32 noundef %i.bn) #27 ; 2 uses
  %i.bp = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.bo) #27 ; 2 uses
  %i.bq = xor i32 %.054.i, 1
  %i.br = xor i32 %i.bo, 1
  %i.bs = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bq, i32 noundef %i.br) #27
  %i.bt = xor i32 %i.bp, 1
  %i.bu = xor i32 %i.bs, 1
  %i.bv = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bu) #27
  store i32 %i.bv, ptr %i.ba, align 4, !tbaa !22
  %i.bw = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bp) #27 ; 2 uses
  br i1 %spec.select.i39, label %bb.t, label %Wlc_BlastFullAdder.exit

bb.t:                                             ; preds = %.lr.ph.i35
  %i.bx = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.by = xor i32 %i.bx, 1
  store i32 %i.by, ptr %i.ba, align 4, !tbaa !22
  %i.bz = xor i32 %i.bw, 1
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %.lr.ph.i35, %bb.t
  %.1 = phi i32 [ %i.bz, %bb.t ], [ %i.bw, %.lr.ph.i35 ]
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, %wide.trip.count.i34
  br i1 %exitcond.not.i38, label %Wlc_BlastAdder.exit.loopexit, label %.lr.ph.i35, !llvm.loop !5

Wlc_BlastAdder.exit.loopexit:                     ; preds = %Wlc_BlastFullAdder.exit
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count.i34
  br i1 %exitcond.not, label %._crit_edge47, label %bb.f, !llvm.loop !135

._crit_edge47:                                    ; preds = %Wlc_BlastAdder.exit.loopexit, %Vec_IntFill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastFullAdderCtrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, ptr nofree noundef captures(none) initializes((0, 4)) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #27
  %i.b = icmp sgt i32 %7, 0
  %i.c = zext i1 %i.b to i32
  %i.d = xor i32 %i.a, %i.c
  tail call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastFullAdderSubtr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) initializes((0, 4)) %4, ptr nofree noundef captures(none) initializes((0, 4)) %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %1, i32 noundef %6) #27
  tail call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.a, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastMultiplier(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((4, 8)) %5, ptr nofree noundef captures(none) initializes((4, 8)) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 %7, ptr %i.a, align 4, !tbaa !22
  %i.b = add nsw i32 %4, %3                       ; 6 uses
  %i.c = load i32, ptr %6, align 8, !tbaa !38
  %.not.i.i = icmp slt i32 %i.c, %i.b
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.e, null
  %i.f = sext i32 %i.b to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @realloc(ptr noundef nonnull %i.e, i64 noundef %i.g) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.g) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  store ptr %i.j, ptr %i.d, align 8, !tbaa !39
  store i32 %i.b, ptr %6, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.k = icmp sgt i32 %i.b, 0
  %i.l = getelementptr i8, ptr %6, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 3 uses
  br i1 %i.k, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  %i.n = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.n, i1 false), !tbaa !22
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.o, align 4, !tbaa !40
  %i.p = shl nsw i32 %3, 1                        ; 6 uses
  %i.q = load i32, ptr %5, align 8, !tbaa !38
  %.not.i.i56 = icmp slt i32 %i.q, %i.p
  br i1 %.not.i.i56, label %bb.f, label %Vec_IntGrow.exit.i57

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i63 = icmp eq ptr %i.s, null
  %i.t = sext i32 %i.p to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  br i1 %.not9.i.i63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @realloc(ptr noundef nonnull %i.s, i64 noundef %i.u) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi ptr [ %i.v, %bb.g ], [ %i.w, %bb.h ]
  store ptr %i.x, ptr %i.r, align 8, !tbaa !39
  store i32 %i.p, ptr %5, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.i, %Vec_IntFill.exit
  %i.y = icmp sgt i32 %3, 0
  %i.z = getelementptr i8, ptr %5, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 9 uses
  br i1 %i.y, label %Vec_IntFill.exit64, label %Vec_IntFill.exit64.thread

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i57
  %wide.trip.count.i59 = zext nneg i32 %i.p to i64
  %i.ab = shl nuw nsw i64 %wide.trip.count.i59, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %i.ab, i1 false), !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.p, ptr %i.ac, align 4, !tbaa !40
  %i.ad = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = icmp sgt i32 %4, 0
  br i1 %i.af, label %.preheader.preheader, label %._crit_edge67.split

Vec_IntFill.exit64.thread:                        ; preds = %Vec_IntGrow.exit.i57
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.p, ptr %i.ag, align 4, !tbaa !40
  %i.ah = sext i32 %3 to i64                      ; 2 uses
  %8 = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ah
  %9 = getelementptr [4 x i8], ptr %8, i64 %i.ah
  %i.ai = getelementptr i8, ptr %9, i64 -4
  store i32 %7, ptr %i.ai, align 4, !tbaa !22
  br label %._crit_edge70

.preheader.preheader:                             ; preds = %Vec_IntFill.exit64
  %.not54 = icmp ne i32 %7, 0                     ; 2 uses
  %i.aj = zext nneg i32 %3 to i64
  %i.ak = zext nneg i32 %4 to i64
  %i.al = icmp eq i32 %3, 1                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv73 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next74, %._crit_edge ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv73 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv73 ; 3 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.ao = icmp eq i64 %indvars.iv.next74, %i.ak   ; 3 uses
  %i.ap = load i32, ptr %1, align 4, !tbaa !22
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ar = load i32, ptr %i.ae, align 4, !tbaa !22 ; 2 uses
  %i.as = load i32, ptr %i.aa, align 4, !tbaa !22 ; 2 uses
  %i.at = xor i1 %i.ao, %i.al
  %narrow.peel = select i1 %.not54, i1 %i.at, i1 false
  %i.au = zext i1 %narrow.peel to i32
  %i.av = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.aq) #27
  %i.aw = xor i32 %i.av, %i.au                    ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = icmp eq i32 %i.ar, 1
  %or.cond.i.peel = or i1 %i.ay, %i.ax
  %i.az = icmp eq i32 %i.as, 1
  %spec.select.i.peel = or i1 %i.az, %or.cond.i.peel ; 2 uses
  %i.ba = zext i1 %spec.select.i.peel to i32      ; 3 uses
  %.054.i.peel = xor i32 %i.as, %i.ba             ; 2 uses
  %.053.i.peel = xor i32 %i.ar, %i.ba             ; 2 uses
  %.0.i.peel = xor i32 %i.aw, %i.ba               ; 2 uses
  %i.bb = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i.peel, i32 noundef %.053.i.peel) #27 ; 2 uses
  %i.bc = xor i32 %.0.i.peel, 1
  %i.bd = xor i32 %.053.i.peel, 1
  %i.be = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.bd) #27
  %i.bf = xor i32 %i.bb, 1
  %i.bg = xor i32 %i.be, 1
  %i.bh = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bg) #27 ; 2 uses
  %i.bi = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i.peel, i32 noundef %i.bh) #27 ; 2 uses
  %i.bj = xor i32 %.054.i.peel, 1
  %i.bk = xor i32 %i.bh, 1
  %i.bl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk) #27
  %i.bm = xor i32 %i.bi, 1
  %i.bn = xor i32 %i.bl, 1
  %i.bo = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bm, i32 noundef %i.bn) #27
  store i32 %i.bo, ptr %i.an, align 4, !tbaa !22
  %i.bp = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bi) #27
  store i32 %i.bp, ptr %i.aa, align 4, !tbaa !22
  br i1 %spec.select.i.peel, label %bb.j, label %Wlc_BlastFullAdder.exit.peel

bb.j:                                             ; preds = %.preheader
  %i.bq = load i32, ptr %i.an, align 4, !tbaa !22
  %i.br = xor i32 %i.bq, 1
  store i32 %i.br, ptr %i.an, align 4, !tbaa !22
  %i.bs = load i32, ptr %i.aa, align 4, !tbaa !22
  %i.bt = xor i32 %i.bs, 1
  store i32 %i.bt, ptr %i.aa, align 4, !tbaa !22
  br label %Wlc_BlastFullAdder.exit.peel

Wlc_BlastFullAdder.exit.peel:                     ; preds = %bb.j, %.preheader
  br i1 %i.al, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %Wlc_BlastFullAdder.exit.peel, %Wlc_BlastFullAdder.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Wlc_BlastFullAdder.exit ], [ 1, %Wlc_BlastFullAdder.exit.peel ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = load i32, ptr %i.am, align 4, !tbaa !22
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !22 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 -4     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = icmp eq i64 %indvars.iv.next, %i.aj     ; 2 uses
  %i.cd = xor i1 %i.ao, %i.cc
  %narrow = select i1 %.not54, i1 %i.cd, i1 false
  %i.ce = zext i1 %narrow to i32
  %i.cf = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.bw) #27
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 1
  %i.ci = icmp eq i32 %i.by, 1
  %or.cond.i = or i1 %i.ci, %i.ch
  %i.cj = icmp eq i32 %i.ca, 1
  %spec.select.i = or i1 %i.cj, %or.cond.i        ; 2 uses
  %i.ck = zext i1 %spec.select.i to i32           ; 3 uses
  %.054.i = xor i32 %i.ca, %i.ck                  ; 2 uses
  %.053.i = xor i32 %i.by, %i.ck                  ; 2 uses
  %.0.i = xor i32 %i.cg, %i.ck                    ; 2 uses
  %i.cl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.cm = xor i32 %.0.i, 1
  %i.cn = xor i32 %.053.i, 1
  %i.co = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cm, i32 noundef %i.cn) #27
  %i.cp = xor i32 %i.cl, 1
  %i.cq = xor i32 %i.co, 1
  %i.cr = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cq) #27 ; 2 uses
  %i.cs = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.cr) #27 ; 2 uses
  %i.ct = xor i32 %.054.i, 1
  %i.cu = xor i32 %i.cr, 1
  %i.cv = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu) #27
  %i.cw = xor i32 %i.cs, 1
  %i.cx = xor i32 %i.cv, 1
  %i.cy = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cw, i32 noundef %i.cx) #27
  store i32 %i.cy, ptr %i.cb, align 4, !tbaa !22
  %i.cz = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cl, i32 noundef %i.cs) #27
  store i32 %i.cz, ptr %i.bz, align 4, !tbaa !22
  br i1 %spec.select.i, label %bb.k, label %Wlc_BlastFullAdder.exit

bb.k:                                             ; preds = %.peel.next
  %i.da = load i32, ptr %i.cb, align 4, !tbaa !22
  %i.db = xor i32 %i.da, 1
  store i32 %i.db, ptr %i.cb, align 4, !tbaa !22
  %i.dc = load i32, ptr %i.bz, align 4, !tbaa !22
  %i.dd = xor i32 %i.dc, 1
  store i32 %i.dd, ptr %i.bz, align 4, !tbaa !22
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %.peel.next, %bb.k
  br i1 %i.cc, label %._crit_edge, label %.peel.next, !llvm.loop !136

._crit_edge:                                      ; preds = %Wlc_BlastFullAdder.exit, %Wlc_BlastFullAdder.exit.peel
  br i1 %i.ao, label %._crit_edge67.split, label %.preheader, !llvm.loop !137

._crit_edge67.split:                              ; preds = %._crit_edge, %Vec_IntFill.exit64
  %i.de = getelementptr [4 x i8], ptr %i.ae, i64 %i.ad
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  store i32 %7, ptr %i.df, align 4, !tbaa !22
  %i.dg = sext i32 %4 to i64
  %wide.trip.count81 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.m, i64 %i.dg
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge67.split, %.lr.ph
  %indvars.iv78 = phi i64 [ 0, %._crit_edge67.split ], [ %indvars.iv.next79, %.lr.ph ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv78
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv78
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !22
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !22
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv78
  %i.dm = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 1, i32 noundef %i.di) #27
  call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.dm, i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull %i.a, ptr noundef %gep)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge70, label %.lr.ph, !llvm.loop !138

._crit_edge70:                                    ; preds = %.lr.ph, %Vec_IntFill.exit64.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastMultiplierC(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) initializes((4, 8)) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  %i.b = zext i1 %.not to i32                     ; 3 uses
  store i32 %i.b, ptr %i.a, align 4, !tbaa !22
  %i.c = add nsw i32 %4, %3                       ; 8 uses
  %i.d = load i32, ptr %6, align 8, !tbaa !38
  %.not.i.i = icmp slt i32 %i.d, %i.c
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.f, null
  %i.g = sext i32 %i.c to i64
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.h) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.h) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  store ptr %i.k, ptr %i.e, align 8, !tbaa !39
  store i32 %i.c, ptr %6, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.l = icmp sgt i32 %i.c, 0                     ; 2 uses
  %i.m = getelementptr i8, ptr %6, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 5 uses
  br i1 %i.l, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %i.o = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.o, i1 false), !tbaa !22
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.c, ptr %i.p, align 4, !tbaa !40
  %i.q = shl nsw i32 %3, 1                        ; 7 uses
  %i.r = load i32, ptr %5, align 8, !tbaa !38
  %.not.i.i65 = icmp slt i32 %i.r, %i.q
  br i1 %.not.i.i65, label %bb.f, label %Vec_IntGrow.exit.i66

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %.not9.i.i72 = icmp eq ptr %i.t, null
  %i.u = sext i32 %i.q to i64
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  br i1 %.not9.i.i72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %i.w, %bb.g ], [ %i.x, %bb.h ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !39
  store i32 %i.q, ptr %5, align 8, !tbaa !38
  br label %Vec_IntGrow.exit.i66

Vec_IntGrow.exit.i66:                             ; preds = %bb.i, %Vec_IntFill.exit
  %i.z = icmp sgt i32 %3, 0
  %i.aa = getelementptr i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 10 uses
  br i1 %i.z, label %.lr.ph.i67, label %._crit_edge77.split.thread116

._crit_edge77.split.thread116:                    ; preds = %Vec_IntGrow.exit.i66
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.q, ptr %i.ac, align 4, !tbaa !40
  %i.ad = sext i32 %3 to i64                      ; 2 uses
  %8 = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  %9 = getelementptr [4 x i8], ptr %8, i64 %i.ad
  %i.ae = getelementptr i8, ptr %9, i64 -4
  store i32 %i.b, ptr %i.ae, align 4, !tbaa !22
  br label %.preheader

.lr.ph.i67:                                       ; preds = %Vec_IntGrow.exit.i66
  %wide.trip.count.i68 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i67
  %n.vec = and i64 %wide.trip.count.i68, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> splat (i32 1), ptr %i.af, align 4, !tbaa !22
  store <4 x i32> splat (i32 1), ptr %i.ag, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i68
  br i1 %cmp.n, label %Vec_IntFill.exit73, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i67, %middle.block
  %indvars.iv.i69.ph = phi i64 [ 0, %.lr.ph.i67 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %scalar.ph ], [ %indvars.iv.i69.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i69
  store i32 1, ptr %i.ai, align 4, !tbaa !22
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i68
  br i1 %exitcond.not.i71, label %Vec_IntFill.exit73, label %scalar.ph, !llvm.loop !140

Vec_IntFill.exit73:                               ; preds = %scalar.ph, %middle.block
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.q, ptr %i.aj, align 4, !tbaa !40
  %i.ak = zext nneg i32 %3 to i64                 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ak ; 4 uses
  %i.am = icmp sgt i32 %4, 0
  br i1 %i.am, label %.preheader74.preheader, label %.lr.ph.preheader

.preheader74.preheader:                           ; preds = %Vec_IntFill.exit73
  %i.an = zext nneg i32 %3 to i64
  %i.ao = zext nneg i32 %4 to i64
  %i.ap = icmp eq i32 %3, 1                       ; 2 uses
  br label %.preheader74

.preheader74:                                     ; preds = %.preheader74.preheader, %._crit_edge
  %indvars.iv85 = phi i64 [ 0, %.preheader74.preheader ], [ %indvars.iv.next86, %._crit_edge ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv85 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv85 ; 3 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.as = icmp ne i64 %indvars.iv.next86, %i.ao   ; 3 uses
  %i.at = load i32, ptr %1, align 4, !tbaa !22
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.av = load i32, ptr %i.al, align 4, !tbaa !22 ; 2 uses
  %i.aw = load i32, ptr %i.ab, align 4, !tbaa !22 ; 2 uses
  %i.ax = xor i1 %i.as, %i.ap
  %narrow.peel = select i1 %.not, i1 true, i1 %i.ax
  %i.ay = zext i1 %narrow.peel to i32
  %i.az = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.at, i32 noundef %i.au) #27
  %i.ba = xor i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = icmp eq i32 %i.av, 1
  %or.cond.i.peel = or i1 %i.bc, %i.bb
  %i.bd = icmp eq i32 %i.aw, 1
  %spec.select.i.peel = or i1 %i.bd, %or.cond.i.peel ; 2 uses
  %i.be = zext i1 %spec.select.i.peel to i32      ; 3 uses
  %.054.i.peel = xor i32 %i.aw, %i.be             ; 2 uses
  %.053.i.peel = xor i32 %i.av, %i.be             ; 2 uses
  %.0.i.peel = xor i32 %i.ba, %i.be               ; 2 uses
  %i.bf = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i.peel, i32 noundef %.053.i.peel) #27 ; 2 uses
  %i.bg = xor i32 %.0.i.peel, 1
  %i.bh = xor i32 %.053.i.peel, 1
  %i.bi = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.bh) #27
  %i.bj = xor i32 %i.bf, 1
  %i.bk = xor i32 %i.bi, 1
  %i.bl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk) #27 ; 2 uses
  %i.bm = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i.peel, i32 noundef %i.bl) #27 ; 2 uses
  %i.bn = xor i32 %.054.i.peel, 1
  %i.bo = xor i32 %i.bl, 1
  %i.bp = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.bo) #27
  %i.bq = xor i32 %i.bm, 1
  %i.br = xor i32 %i.bp, 1
  %i.bs = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bq, i32 noundef %i.br) #27
  store i32 %i.bs, ptr %i.ar, align 4, !tbaa !22
  %i.bt = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bm) #27
  store i32 %i.bt, ptr %i.ab, align 4, !tbaa !22
  br i1 %spec.select.i.peel, label %bb.j, label %Wlc_BlastFullAdder.exit.peel

bb.j:                                             ; preds = %.preheader74
  %i.bu = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.bv = xor i32 %i.bu, 1
  store i32 %i.bv, ptr %i.ar, align 4, !tbaa !22
  %i.bw = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.bx = xor i32 %i.bw, 1
  store i32 %i.bx, ptr %i.ab, align 4, !tbaa !22
  br label %Wlc_BlastFullAdder.exit.peel

Wlc_BlastFullAdder.exit.peel:                     ; preds = %bb.j, %.preheader74
  br i1 %i.ap, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %Wlc_BlastFullAdder.exit.peel, %Wlc_BlastFullAdder.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Wlc_BlastFullAdder.exit ], [ 1, %Wlc_BlastFullAdder.exit.peel ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22
  %i.ca = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !22 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv ; 4 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.cb, i64 -4     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = icmp eq i64 %indvars.iv.next, %i.an     ; 2 uses
  %i.ch = xor i1 %i.as, %i.cg
  %narrow = select i1 %.not, i1 true, i1 %i.ch
  %i.ci = zext i1 %narrow to i32
  %i.cj = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.ca) #27
  %i.ck = xor i32 %i.cj, %i.ci                    ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 1
  %i.cm = icmp eq i32 %i.cc, 1
  %or.cond.i = or i1 %i.cm, %i.cl
  %i.cn = icmp eq i32 %i.ce, 1
  %spec.select.i = or i1 %i.cn, %or.cond.i        ; 2 uses
  %i.co = zext i1 %spec.select.i to i32           ; 3 uses
  %.054.i = xor i32 %i.ce, %i.co                  ; 2 uses
  %.053.i = xor i32 %i.cc, %i.co                  ; 2 uses
  %.0.i = xor i32 %i.ck, %i.co                    ; 2 uses
  %i.cp = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.cq = xor i32 %.0.i, 1
  %i.cr = xor i32 %.053.i, 1
  %i.cs = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr) #27
  %i.ct = xor i32 %i.cp, 1
  %i.cu = xor i32 %i.cs, 1
  %i.cv = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu) #27 ; 2 uses
  %i.cw = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.cv) #27 ; 2 uses
  %i.cx = xor i32 %.054.i, 1
  %i.cy = xor i32 %i.cv, 1
  %i.cz = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cx, i32 noundef %i.cy) #27
  %i.da = xor i32 %i.cw, 1
  %i.db = xor i32 %i.cz, 1
  %i.dc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.da, i32 noundef %i.db) #27
  store i32 %i.dc, ptr %i.cf, align 4, !tbaa !22
  %i.dd = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cw) #27
  store i32 %i.dd, ptr %i.cd, align 4, !tbaa !22
  br i1 %spec.select.i, label %bb.k, label %Wlc_BlastFullAdder.exit

bb.k:                                             ; preds = %.peel.next
  %i.de = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.df = xor i32 %i.de, 1
  store i32 %i.df, ptr %i.cf, align 4, !tbaa !22
  %i.dg = load i32, ptr %i.cd, align 4, !tbaa !22
  %i.dh = xor i32 %i.dg, 1
  store i32 %i.dh, ptr %i.cd, align 4, !tbaa !22
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %.peel.next, %bb.k
  br i1 %i.cg, label %._crit_edge, label %.peel.next, !llvm.loop !141

._crit_edge:                                      ; preds = %Wlc_BlastFullAdder.exit, %Wlc_BlastFullAdder.exit.peel
  br i1 %i.as, label %.preheader74, label %.lr.ph.preheader, !llvm.loop !142

.lr.ph.preheader:                                 ; preds = %._crit_edge, %Vec_IntFill.exit73
  %i.di = getelementptr [4 x i8], ptr %i.al, i64 %i.ak
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  store i32 %i.b, ptr %i.dj, align 4, !tbaa !22
  %i.dk = sext i32 %4 to i64
  %wide.trip.count93 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.dk
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %._crit_edge77.split.thread116
  br i1 %i.l, label %.lr.ph81.preheader, label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %.preheader
  %wide.trip.count98 = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check119 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check119, label %.lr.ph81.preheader130, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph81.preheader
  %n.vec121 = and i64 %wide.trip.count98, 2147483640 ; 3 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next125, %vector.body122 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index123 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !22
  %wide.load124 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !22
  %i.dn = xor <4 x i32> %wide.load, splat (i32 1)
  %i.do = xor <4 x i32> %wide.load124, splat (i32 1)
  store <4 x i32> %i.dn, ptr %i.dl, align 4, !tbaa !22
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !22
  %index.next125 = add nuw i64 %index123, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next125, %n.vec121
end_hunk_0
