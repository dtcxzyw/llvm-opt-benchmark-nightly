Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaBlast?download=true
inline.NumInlined: 409
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Cba_BlastMultiplier2:bb.a

bb.n:                                             ; preds = %bb.m
  %i.al = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ak, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.am = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.an = icmp samesign ult i32 %i.ag, 1073741823
  %i.ao = shl nuw nsw i32 %i.ag, 1
  %spec.select.i = select i1 %i.an, i32 %i.ao, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ag, %spec.select.i
  %.pre41 = load ptr, ptr %i.o, align 8, !tbaa !17 ; 3 uses
  br i1 %.not.i9.i, label %bb.q, label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.p
  %.not9.i10.i = icmp eq ptr %.pre41, null
  %i.ap = zext nneg i32 %spec.select.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %.pre41, i64 noundef %i.aq) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.s:                                             ; preds = %bb.q
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.r, %bb.s, %bb.n, %bb.o
  %i.at = phi ptr [ %i.am, %bb.o ], [ %i.al, %bb.n ], [ %i.ar, %bb.r ], [ %i.as, %bb.s ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.o ], [ 16, %bb.n ], [ %spec.select.i, %bb.r ], [ %spec.select.i, %bb.s ]
  store ptr %i.at, ptr %i.o, align 8, !tbaa !17
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !16
  %.pre42 = load i32, ptr %i.p, align 4, !tbaa !19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.p, %Vec_IntGrow.exit11.sink.split.i
  %i.au = phi i32 [ %i.ag, %.Vec_IntPush.exit_crit_edge ], [ %i.ag, %bb.p ], [ %.pre42, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.av = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre41, %bb.p ], [ %i.at, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aw = add nsw i32 %i.au, 1
  store i32 %i.aw, ptr %i.p, align 4, !tbaa !19
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  store i32 %i.af, ptr %i.ay, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val = load i32, ptr %i.p, align 4, !tbaa !19
  %i.az = icmp slt i32 %.val, %3
  br i1 %i.az, label %bb.k, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %.val22 = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.ba = tail call i32 @Cba_BlastAdder(ptr noundef %0, i32 noundef 0, ptr noundef %.val22, ptr noundef nonnull %i.av, i32 noundef %3) ; 0 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge38, label %bb.f, !llvm.loop !89

._crit_edge38:                                    ; preds = %._crit_edge, %Vec_IntFill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cba_BlastFullAdderCtrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #24
  %i.b = icmp sgt i32 %7, 0
  %i.c = zext i1 %i.b to i32
  %i.d = xor i32 %i.a, %i.c                       ; 2 uses
  %i.e = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.d, i32 noundef %3) #24 ; 2 uses
  %i.f = xor i32 %i.d, 1
  %i.g = xor i32 %3, 1
  %i.h = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g) #24
  %i.i = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.h) #24 ; 2 uses
  %i.j = xor i32 %i.i, 1
  %i.k = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %4, i32 noundef %i.j) #24 ; 2 uses
  %i.l = xor i32 %4, 1
  %i.m = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.l, i32 noundef %i.i) #24
  %i.n = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.m) #24
  %i.o = xor i32 %i.n, 1
  store i32 %i.o, ptr %6, align 4, !tbaa !18
  %i.p = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.e, i32 noundef %i.k) #24
  store i32 %i.p, ptr %5, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cba_BlastFullAdderSubtr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %1, i32 noundef %6) #24 ; 2 uses
  %i.b = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.a, i32 noundef %2) #24 ; 2 uses
  %i.c = xor i32 %i.a, 1
  %i.d = xor i32 %2, 1
  %i.e = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d) #24
  %i.f = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.e) #24 ; 2 uses
  %i.g = xor i32 %i.f, 1
  %i.h = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %3, i32 noundef %i.g) #24 ; 2 uses
  %i.i = xor i32 %3, 1
  %i.j = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.f) #24
  %i.k = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j) #24
  %i.l = xor i32 %i.k, 1
  store i32 %i.l, ptr %5, align 4, !tbaa !18
  %i.m = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.b, i32 noundef %i.h) #24
  store i32 %i.m, ptr %4, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cba_BlastMultiplier(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) initializes((4, 8)) %5, ptr nofree noundef captures(none) initializes((4, 8)) %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %4, %3                       ; 6 uses
  %i.b = load i32, ptr %6, align 8, !tbaa !16
  %.not.i.i = icmp slt i32 %i.b, %i.a
  br i1 %.not.i.i, label %bb.b, label %Vec_IntGrow.exit.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.d, null
  %i.e = sext i32 %i.a to i64
  %i.f = shl nsw i64 %i.e, 2                      ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @realloc(ptr noundef nonnull %i.d, i64 noundef %i.f) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.f) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !17
  store i32 %i.a, ptr %6, align 8, !tbaa !16
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.a
  %i.j = icmp sgt i32 %i.a, 0
  %i.k = getelementptr i8, ptr %6, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 3 uses
  br i1 %i.j, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  %i.m = shl nuw nsw i64 %wide.trip.count.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.m, i1 false), !tbaa !18
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.a, ptr %i.n, align 4, !tbaa !19
  %i.o = shl nsw i32 %3, 1                        ; 6 uses
  %i.p = load i32, ptr %5, align 8, !tbaa !16
  %.not.i.i56 = icmp slt i32 %i.p, %i.o
  br i1 %.not.i.i56, label %bb.f, label %Vec_IntGrow.exit.i57

bb.f:                                             ; preds = %Vec_IntFill.exit
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.not9.i.i63 = icmp eq ptr %i.r, null
  %i.s = sext i32 %i.o to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  br i1 %.not9.i.i63, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = phi ptr [ %i.u, %bb.g ], [ %i.v, %bb.h ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !17
  store i32 %i.o, ptr %5, align 8, !tbaa !16
  br label %Vec_IntGrow.exit.i57

Vec_IntGrow.exit.i57:                             ; preds = %bb.i, %Vec_IntFill.exit
  %i.x = icmp sgt i32 %3, 0
  %i.y = getelementptr i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 7 uses
  br i1 %i.x, label %Vec_IntFill.exit64, label %Vec_IntFill.exit64.thread

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i57
  %wide.trip.count.i59 = zext nneg i32 %i.o to i64
  %i.aa = shl nuw nsw i64 %wide.trip.count.i59, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %i.aa, i1 false), !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !19
  %i.ac = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac ; 4 uses
  %i.ae = icmp sgt i32 %4, 0
  br i1 %i.ae, label %.preheader.preheader, label %._crit_edge68.split

Vec_IntFill.exit64.thread:                        ; preds = %Vec_IntGrow.exit.i57
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.o, ptr %i.af, align 4, !tbaa !19
  %i.ag = sext i32 %3 to i64                      ; 2 uses
  %8 = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ag
  %9 = getelementptr [4 x i8], ptr %8, i64 %i.ag
  %i.ah = getelementptr i8, ptr %9, i64 -4
  store i32 %7, ptr %i.ah, align 4, !tbaa !18
  br label %._crit_edge72

.preheader.preheader:                             ; preds = %Vec_IntFill.exit64
  %.not54 = icmp ne i32 %7, 0                     ; 2 uses
  %i.ai = zext nneg i32 %3 to i64
  %i.aj = zext nneg i32 %4 to i64
  %i.ak = icmp eq i32 %3, 1                       ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv75 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv75
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.an = icmp eq i64 %indvars.iv.next76, %i.aj   ; 3 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !18
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !18
  %i.aq = load i32, ptr %i.ad, align 4, !tbaa !18 ; 2 uses
  %i.ar = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.as = xor i1 %i.an, %i.ak
  %narrow.peel = select i1 %.not54, i1 %i.as, i1 false
  %i.at = zext i1 %narrow.peel to i32
  %i.au = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.ap) #24
  %i.av = xor i32 %i.au, %i.at                    ; 2 uses
  %i.aw = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.av, i32 noundef %i.aq) #24 ; 2 uses
  %i.ax = xor i32 %i.av, 1
  %i.ay = xor i32 %i.aq, 1
  %i.az = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ay) #24
  %i.ba = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.az) #24 ; 2 uses
  %i.bb = xor i32 %i.ba, 1
  %i.bc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.bb) #24 ; 2 uses
  %i.bd = xor i32 %i.ar, 1
  %i.be = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.ba) #24
  %i.bf = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bc, i32 noundef %i.be) #24
  %i.bg = xor i32 %i.bf, 1
  store i32 %i.bg, ptr %i.am, align 4, !tbaa !18
  %i.bh = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.aw, i32 noundef %i.bc) #24
  store i32 %i.bh, ptr %i.z, align 4, !tbaa !18
  br i1 %i.ak, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %.preheader, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !18
  %i.bk = load i32, ptr %i.al, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 -4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = icmp eq i64 %indvars.iv.next, %i.ai     ; 2 uses
  %i.br = xor i1 %i.an, %i.bq
  %narrow = select i1 %.not54, i1 %i.br, i1 false
  %i.bs = zext i1 %narrow to i32
  %i.bt = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bk) #24
  %i.bu = xor i32 %i.bt, %i.bs                    ; 2 uses
  %i.bv = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bu, i32 noundef %i.bm) #24 ; 2 uses
  %i.bw = xor i32 %i.bu, 1
  %i.bx = xor i32 %i.bm, 1
  %i.by = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bw, i32 noundef %i.bx) #24
  %i.bz = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.by) #24 ; 2 uses
  %i.ca = xor i32 %i.bz, 1
  %i.cb = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bo, i32 noundef %i.ca) #24 ; 2 uses
  %i.cc = xor i32 %i.bo, 1
  %i.cd = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.bz) #24
  %i.ce = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cb, i32 noundef %i.cd) #24
  %i.cf = xor i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bp, align 4, !tbaa !18
  %i.cg = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bv, i32 noundef %i.cb) #24
  store i32 %i.cg, ptr %i.bn, align 4, !tbaa !18
  br i1 %i.bq, label %._crit_edge, label %.peel.next, !llvm.loop !90

._crit_edge:                                      ; preds = %.peel.next, %.preheader
  br i1 %i.an, label %._crit_edge68.split, label %.preheader, !llvm.loop !91

._crit_edge68.split:                              ; preds = %._crit_edge, %Vec_IntFill.exit64
  %i.ch = getelementptr [4 x i8], ptr %i.ad, i64 %i.ac
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  store i32 %7, ptr %i.ci, align 4, !tbaa !18
  %i.cj = sext i32 %4 to i64
  %wide.trip.count83 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.l, i64 %i.cj
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge68.split, %.lr.ph
  %indvars.iv80 = phi i64 [ 0, %._crit_edge68.split ], [ %indvars.iv.next81, %.lr.ph ] ; 4 uses
  %.06569 = phi i32 [ %7, %._crit_edge68.split ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv80
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !18
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv80
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18 ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv80
  %i.co = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 1, i32 noundef %i.cl) #24 ; 2 uses
  %i.cp = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.co, i32 noundef %i.cn) #24 ; 2 uses
  %i.cq = xor i32 %i.co, 1
  %i.cr = xor i32 %i.cn, 1
  %i.cs = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cq, i32 noundef %i.cr) #24
  %i.ct = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cs) #24 ; 2 uses
  %i.cu = xor i32 %i.ct, 1
  %i.cv = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.06569, i32 noundef %i.cu) #24 ; 2 uses
  %i.cw = xor i32 %.06569, 1
  %i.cx = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cw, i32 noundef %i.ct) #24
  %i.cy = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cv, i32 noundef %i.cx) #24
  %i.cz = xor i32 %i.cy, 1
  store i32 %i.cz, ptr %gep, align 4, !tbaa !18
  %i.da = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cp, i32 noundef %i.cv) #24
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge72, label %.lr.ph, !llvm.loop !92

._crit_edge72:                                    ; preds = %.lr.ph, %Vec_IntFill.exit64.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @Cba_BlastDivider(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((4, 8)) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Cba_VecCopy(ptr noundef %6, ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #23 ; 5 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #23 ; 5 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.preheader120.lr.ph, label %._crit_edge139

.preheader120.lr.ph:                              ; preds = %bb.a
  %i.g = add nsw i32 %2, -1                       ; 2 uses
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %.loopexit
  %indvars.iv152 = phi i64 [ %i.h, %.preheader120.lr.ph ], [ %indvars.iv.next153, %.loopexit ] ; 9 uses
  %i.k = sub nuw nsw i64 %i.j, %indvars.iv152
  %.not163 = icmp eq i64 %indvars.iv152, 0        ; 2 uses
  br i1 %.not163, label %.lr.ph129, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = icmp sgt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.lr.ph129, !llvm.loop !93

.lr.ph:                                           ; preds = %.preheader120, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.h, %.preheader120 ] ; 2 uses
  %.0105122 = phi i32 [ %i.o, %bb.b ], [ 0, %.preheader120 ]
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.0105122, i32 noundef %i.n) #24 ; 3 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152
  store i32 0, ptr %i.q, align 4, !tbaa !18
  br label %.loopexit

.lr.ph129:                                        ; preds = %bb.b, %.preheader120
  %.promoted.ph = phi i32 [ 0, %.preheader120 ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph129, %bb.e
  %indvars.iv141 = phi i64 [ %i.i, %.lr.ph129 ], [ %indvars.iv.next142, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted.ph, %.lr.ph129 ], [ %i.ab, %bb.e ]
  %.2127 = phi i32 [ %.promoted.ph, %.lr.ph129 ], [ %i.ae, %bb.e ] ; 2 uses
  %.not117 = icmp slt i64 %indvars.iv141, %indvars.iv152
  br i1 %.not117, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i64 %indvars.iv141, %indvars.iv152
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv141 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = xor i32 %i.y, 1
  %i.aa = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.z) #24
  %i.ab = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.2127, i32 noundef %i.s, i32 noundef %i.aa) #24 ; 4 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !18
  %i.ad = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.ac) #24
  %i.ae = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.2127, i32 noundef %i.ad) #24 ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.af = icmp slt i64 %indvars.iv141, 1
  %i.ag = icmp eq i32 %i.ae, 1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.f, label %bb.c, !llvm.loop !94

bb.f:                                             ; preds = %bb.e
  %i.ah = xor i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.r, align 4, !tbaa !18
  %i.ai = icmp eq i32 %i.ab, 1
  br i1 %i.ai, label %.loopexit, label %.lr.ph133
end_hunk_0
