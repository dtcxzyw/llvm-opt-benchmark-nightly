inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @j12init_downsampler(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !28   ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.f, -13
  %or.cond77 = icmp ult i32 %i.g, -4
  br i1 %or.cond77, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not73 = icmp eq i32 %i.f, 12
  br i1 %.not73, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 16, ptr %i.i, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.f, ptr %i.j, align 4, !tbaa !35
  %i.k = load ptr, ptr %0, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  tail call void %i.l(ptr noundef nonnull %0) #6
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = tail call ptr %i.o(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 120) #6 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %i.p, ptr %i.q, align 8, !tbaa !40
  store ptr @start_pass_downsample, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @sep_downsample, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.u = load i32, ptr %i.t, align 4, !tbaa !46
  %.not74 = icmp eq i32 %i.u, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 26, ptr %i.w, align 8, !tbaa !30
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !36
  tail call void %i.x(ptr noundef nonnull %0) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !47   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.w
  %i.ah = phi i32 [ %i.z, %.lr.ph ], [ %i.bo, %bb.w ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 5 uses
  %.081 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.w ]  ; 5 uses
  %.07080 = phi ptr [ %i.ac, %.lr.ph ], [ %i.bp, %bb.w ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.07080, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !49 ; 3 uses
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !51 ; 3 uses
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.07080, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  %i.ao = load i32, ptr %i.ae, align 8, !tbaa !53
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.ag, align 4, !tbaa !54
  %.not76 = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr @fullsize_smooth_downsample, ptr %i.ar, align 8, !tbaa !55
  store i32 1, ptr %i.s, align 8, !tbaa !45
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  store ptr @fullsize_downsample, ptr %i.ar, align 8, !tbaa !55
  br label %bb.w

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.as = shl nsw i32 %i.aj, 1
  %i.at = icmp eq i32 %i.as, %i.ak
  br i1 %i.at, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.07080, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !52 ; 2 uses
  %i.aw = load i32, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  store ptr @h2v1_downsample, ptr %i.ay, align 8, !tbaa !55
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.az = shl nsw i32 %i.av, 1
  %i.ba = icmp eq i32 %i.az, %i.aw
  br i1 %i.ba, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr %i.ag, align 4, !tbaa !54
  %.not75 = icmp eq i32 %i.bb, 0
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @h2v2_smooth_downsample, ptr %i.bc, align 8, !tbaa !55
  store i32 1, ptr %i.s, align 8, !tbaa !45
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  store ptr @h2v2_downsample, ptr %i.bc, align 8, !tbaa !55
  br label %bb.w

bb.s:                                             ; preds = %bb.l, %bb.o
  %i.bd = srem i32 %i.ak, %i.aj
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.ae, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %.07080, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !52
  %i.bi = srem i32 %i.bf, %i.bh
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  store ptr @int_downsample, ptr %i.bk, align 8, !tbaa !55
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bl = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i32 39, ptr %i.bm, align 8, !tbaa !30
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !36
  tail call void %i.bn(ptr noundef nonnull %0) #6
  %.pre = load i32, ptr %i.y, align 4, !tbaa !47
  br label %bb.w

bb.w:                                             ; preds = %bb.k, %bb.j, %bb.r, %bb.q, %bb.v, %bb.u, %bb.n
  %i.bo = phi i32 [ %i.ah, %bb.j ], [ %i.ah, %bb.k ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %i.ah, %bb.r ], [ %i.ah, %bb.u ], [ %.pre, %bb.v ] ; 2 uses
  %.1 = phi i32 [ %.081, %bb.j ], [ %.081, %bb.k ], [ 0, %bb.n ], [ %.081, %bb.q ], [ %.081, %bb.r ], [ 0, %bb.u ], [ %.081, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.07080, i64 96
  %i.bq = sext i32 %i.bo to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %bb.g, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.w
  %i.bs = icmp ne i32 %.1, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !54
  %i.bv = icmp eq i32 %i.bu, 0
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bs
  br i1 %or.cond, label %._crit_edge.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.bw = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 101, ptr %i.bx, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !58
  tail call void %i.bz(ptr noundef nonnull %0, i32 noundef 0) #6
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f, %bb.x, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @start_pass_downsample(ptr readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sep_downsample(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = zext i32 %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.01819 = phi ptr [ %i.e, %.lr.ph ], [ %i.v, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !52
  %i.q = mul i32 %i.p, %4
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  tail call void %i.u(ptr noundef nonnull %0, ptr noundef %.01819, ptr noundef %i.l, ptr noundef %i.s) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01819, i64 96
  %i.w = load i32, ptr %i.a, align 4, !tbaa !47
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @fullsize_smooth_downsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 -8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i32, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !63   ; 2 uses
  %i.n = sub i32 %i.h, %i.m                       ; 7 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp sgt i32 %i.k, -2
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.q = add nsw i32 %i.k, 2
  %i.r = zext i32 %i.m to i64
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  %i.s = zext nneg i32 %i.n to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  %min.iters.check112 = icmp ult i32 %i.n, 16
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 2147483632               ; 5 uses
  %i.t = shl nuw nsw i64 %n.vec, 1
  %i.u = trunc nuw nsw i64 %n.vec to i32
  %i.v = sub nsw i32 %i.n, %i.u
  %cmp.n = icmp eq i64 %n.vec, %i.s
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec115 = and i64 %i.s, 2147483644            ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec115, 1
  %i.x = trunc nuw nsw i64 %n.vec115 to i32
  %i.y = sub nsw i32 %i.n, %i.x
  %cmp.n121 = icmp eq i64 %n.vec115, %i.s
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.r ; 6 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !66 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.t
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.w
  %broadcast.splatinsert116 = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat117 = shufflevector <4 x i16> %broadcast.splatinsert116, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = shl i64 %index118, 1
  %next.gep119 = getelementptr i8, ptr %i.ab, i64 %i.aj
  store <4 x i16> %broadcast.splat117, ptr %next.gep119, align 2, !tbaa !66
  %index.next120 = add nuw i64 %index118, 4       ; 2 uses
  %i.ak = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n121, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.us.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01517.us.i.ph = phi i32 [ %i.n, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.us.i = phi ptr [ %i.al, %vec.epilog.scalar.ph ], [ %.018.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.us.i = phi i32 [ %i.am, %vec.epilog.scalar.ph ], [ %.01517.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.018.us.i, i64 2
  store i16 %i.ad, ptr %.018.us.i, align 2, !tbaa !66
  %i.am = add nsw i32 %.01517.us.i, -1
  %i.an = icmp sgt i32 %.01517.us.i, 1
  br i1 %i.an, label %vec.epilog.scalar.ph, label %._crit_edge.us.i, !llvm.loop !72

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.us.i, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 9
  %i.as = sub nsw i64 65536, %i.ar                ; 6 uses
  %i.at = shl nsw i32 %i.ap, 6
  %i.au = zext i32 %i.at to i64                   ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !52 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %expand_right_edge.exit
  %i.ay = add i32 %i.h, -2                        ; 6 uses
  %.not7782 = icmp eq i32 %i.ay, 0
  %wide.trip.count102 = zext nneg i32 %i.aw to i64 ; 2 uses
  %.pre104 = load ptr, ptr %2, align 8, !tbaa !64 ; 2 uses
  br i1 %.not7782, label %.lr.ph94.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph94
  %i.az = add i32 %i.h, -3
  %i.ba = zext i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 6                ; 3 uses
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %min.iters.check136 = icmp ult i32 %i.ay, 8
  %n.vec139 = and i64 %i.bd, 4294967288           ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec139, 1            ; 4 uses
  %i.bf = trunc nuw i64 %n.vec139 to i32
  %i.bg = sub i32 %i.ay, %i.bf
  %broadcast.splatinsert140 = insertelement <8 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat141 = shufflevector <8 x i64> %broadcast.splatinsert140, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <8 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat143 = shufflevector <8 x i64> %broadcast.splatinsert142, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n158 = icmp eq i64 %n.vec139, %i.bd
  br label %.lr.ph

.lr.ph94.split.us:                                ; preds = %.lr.ph94, %.lr.ph94.split.us
  %i.bh = phi ptr [ %i.bo, %.lr.ph94.split.us ], [ %.pre104, %.lr.ph94 ] ; 2 uses
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph94.split.us ], [ 0, %.lr.ph94 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv99
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv99
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64 ; 2 uses
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next100
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.bq = load i16, ptr %i.bm, align 2, !tbaa !66
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bt = load i16, ptr %i.bo, align 2, !tbaa !66
  %i.bu = sext i16 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.br
  %i.bw = load i16, ptr %i.bh, align 2, !tbaa !66 ; 2 uses
  %i.bx = sext i16 %i.bw to i64
  %i.by = add nsw i64 %i.bv, %i.bx                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.ca = sext i16 %i.bw to i64                   ; 2 uses
  %i.cb = load i16, ptr %i.bp, align 2, !tbaa !66
  %i.cc = sext i16 %i.cb to i32
  %i.cd = load i16, ptr %i.bs, align 2, !tbaa !66
  %i.ce = sext i16 %i.cd to i32
  %i.cf = add nsw i32 %i.ce, %i.cc
  %i.cg = load i16, ptr %i.bz, align 2, !tbaa !66
  %i.ch = sext i16 %i.cg to i32
  %i.ci = add nsw i32 %i.cf, %i.ch                ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %factor.us = shl nsw i64 %i.by, 1
  %i.ck = sub nsw i64 %factor.us, %i.ca
  %i.cl = add nsw i64 %i.ck, %i.cj
  %i.cm = mul nsw i64 %i.as, %i.ca
  %i.cn = mul i64 %i.cl, %i.au
  %i.co = add nsw i64 %i.cm, 32768
  %i.cp = add i64 %i.co, %i.cn
  %i.cq = lshr i64 %i.cp, 16
  %i.cr = trunc i64 %i.cq to i16
  store i16 %i.cr, ptr %i.bj, align 2, !tbaa !66
  %.07381.us = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.cs = load i16, ptr %i.bz, align 2, !tbaa !66
  %i.ct = sext i16 %i.cs to i64                   ; 2 uses
  %i.cu = sext i32 %i.ci to i64
  %factor80.us = shl nsw i64 %i.cu, 1
  %i.cv = add nsw i64 %factor80.us, %i.by
  %i.cw = sub nsw i64 %i.cv, %i.ct
  %i.cx = mul nsw i64 %i.as, %i.ct
  %i.cy = mul nsw i64 %i.cw, %i.au
  %i.cz = add nsw i64 %i.cx, 32768
  %i.da = add nsw i64 %i.cz, %i.cy
  %i.db = lshr i64 %i.da, 16
  %i.dc = trunc i64 %i.db to i16
  store i16 %i.dc, ptr %.07381.us, align 2, !tbaa !66
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge95, label %.lr.ph94.split.us, !llvm.loop !74

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.dd = phi ptr [ %i.dk, %._crit_edge ], [ %.pre104, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !64 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !64 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !64 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 2 ; 5 uses
  %i.dm = load i16, ptr %i.di, align 2, !tbaa !66
  %i.dn = sext i16 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 5 uses
  %i.dp = load i16, ptr %i.dk, align 2, !tbaa !66
  %i.dq = sext i16 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load i16, ptr %i.dd, align 2, !tbaa !66 ; 2 uses
  %i.dt = sext i16 %i.ds to i32
  %i.du = add nsw i32 %i.dr, %i.dt                ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 6 uses
  %i.dw = sext i16 %i.ds to i64                   ; 2 uses
  %i.dx = load i16, ptr %i.dl, align 2, !tbaa !66
  %i.dy = sext i16 %i.dx to i32
  %i.dz = load i16, ptr %i.do, align 2, !tbaa !66
  %i.ea = sext i16 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, %i.dy
  %i.ec = load i16, ptr %i.dv, align 2, !tbaa !66
  %i.ed = sext i16 %i.ec to i32
  %i.ee = add nsw i32 %i.eb, %i.ed                ; 4 uses
  %i.ef = sext i32 %i.du to i64
  %i.eg = zext i32 %i.ee to i64
  %factor = shl nsw i64 %i.ef, 1
  %i.eh = sub nsw i64 %factor, %i.dw
  %i.ei = add nsw i64 %i.eh, %i.eg
  %i.ej = mul nsw i64 %i.as, %i.dw
  %i.ek = mul i64 %i.ei, %i.au
  %i.el = add nsw i64 %i.ej, 32768
  %i.em = add i64 %i.el, %i.ek
  %i.en = lshr i64 %i.em, 16
  %i.eo = trunc i64 %i.en to i16
  store i16 %i.eo, ptr %i.df, align 2, !tbaa !66
  %.07381 = getelementptr i8, ptr %i.df, i64 2    ; 7 uses
  br i1 %min.iters.check136, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ep = getelementptr i8, ptr %i.df, i64 %i.bb
  %scevgep = getelementptr i8, ptr %i.ep, i64 4   ; 3 uses
  %scevgep124 = getelementptr i8, ptr %i.dd, i64 %i.bc
  %scevgep125 = getelementptr i8, ptr %i.di, i64 4
  %scevgep126 = getelementptr i8, ptr %i.di, i64 %i.bc
  %scevgep127 = getelementptr i8, ptr %i.dk, i64 4
  %scevgep128 = getelementptr i8, ptr %i.dk, i64 %i.bc
  %bound0 = icmp ult ptr %.07381, %scevgep124
  %bound1 = icmp ult ptr %i.dv, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0129 = icmp ult ptr %.07381, %scevgep126
  %bound1130 = icmp ult ptr %scevgep125, %scevgep
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx = or i1 %found.conflict, %found.conflict131
  %bound0132 = icmp ult ptr %.07381, %scevgep128
  %bound1133 = icmp ult ptr %scevgep127, %scevgep
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %conflict.rdx, %found.conflict134
  br i1 %conflict.rdx135, label %scalar.ph.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck
  %i.eq = getelementptr i8, ptr %.07381, i64 %i.be ; 2 uses
  %i.er = getelementptr i8, ptr %i.do, i64 %i.be
  %i.es = getelementptr i8, ptr %i.dl, i64 %i.be
  %i.et = getelementptr i8, ptr %i.dv, i64 %i.be  ; 2 uses
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.du, i64 7
  %vector.recur.init146 = insertelement <8 x i32> poison, i32 %i.ee, i64 7
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph137
  %index145 = phi i64 [ 0, %vector.ph137 ], [ %index.next155, %vector.body144 ] ; 2 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph137 ], [ %i.fe, %vector.body144 ]
  %vector.recur147 = phi <8 x i32> [ %vector.recur.init146, %vector.ph137 ], [ %i.fd, %vector.body144 ]
  %i.eu = shl i64 %index145, 1                    ; 4 uses
  %next.gep148 = getelementptr i8, ptr %.07381, i64 %i.eu
  %next.gep149 = getelementptr i8, ptr %i.do, i64 %i.eu
  %next.gep150 = getelementptr i8, ptr %i.dl, i64 %i.eu
  %next.gep151 = getelementptr i8, ptr %i.dv, i64 %i.eu ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %next.gep151, i64 2
  %wide.load = load <8 x i16>, ptr %next.gep151, align 2, !tbaa !66, !alias.scope !75
  %i.ew = sext <8 x i16> %wide.load to <8 x i64>  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep150, i64 2
  %i.ey = getelementptr inbounds nuw i8, ptr %next.gep149, i64 2
  %wide.load152 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !66, !alias.scope !78
  %i.ez = sext <8 x i16> %wide.load152 to <8 x i32>
  %wide.load153 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !66, !alias.scope !80
  %i.fa = sext <8 x i16> %wide.load153 to <8 x i32>
  %i.fb = add nsw <8 x i32> %i.fa, %i.ez
  %wide.load154 = load <8 x i16>, ptr %i.ev, align 2, !tbaa !66, !alias.scope !75
  %i.fc = sext <8 x i16> %wide.load154 to <8 x i32>
  %i.fd = add nsw <8 x i32> %i.fb, %i.fc          ; 6 uses
  %i.fe = shufflevector <8 x i32> %vector.recur147, <8 x i32> %i.fd, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.ff = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.fe, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.fg = zext <8 x i32> %i.fd to <8 x i64>
  %i.fh = add nsw <8 x i32> %i.ff, %i.fe
  %i.fi = zext <8 x i32> %i.fh to <8 x i64>
  %i.fj = sub nsw <8 x i64> %i.fi, %i.ew
  %i.fk = add nsw <8 x i64> %i.fj, %i.fg
  %i.fl = mul nsw <8 x i64> %broadcast.splat141, %i.ew
  %i.fm = mul <8 x i64> %i.fk, %broadcast.splat143
  %i.fn = add nsw <8 x i64> %i.fl, splat (i64 32768)
  %i.fo = add <8 x i64> %i.fn, %i.fm
  %i.fp = lshr <8 x i64> %i.fo, splat (i64 16)
  %i.fq = trunc <8 x i64> %i.fp to <8 x i16>
  store <8 x i16> %i.fq, ptr %next.gep148, align 2, !tbaa !66, !alias.scope !82, !noalias !84
  %index.next155 = add nuw i64 %index145, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next155, %n.vec139
  br i1 %i.fr, label %middle.block156, label %vector.body144, !llvm.loop !85

middle.block156:                                  ; preds = %vector.body144
  %vector.recur.extract.for.phi = extractelement <8 x i32> %i.fd, i64 6
  %vector.recur.extract = extractelement <8 x i32> %i.fd, i64 6
  %vector.recur.extract157 = extractelement <8 x i32> %i.fd, i64 7 ; 2 uses
  br i1 %cmp.n158, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block156
  %.07389.ph = phi ptr [ %.07381, %vector.memcheck ], [ %.07381, %.lr.ph ], [ %i.eq, %middle.block156 ]
  %.088.ph = phi i32 [ %i.du, %vector.memcheck ], [ %i.du, %.lr.ph ], [ %vector.recur.extract, %middle.block156 ]
  %.07087.ph = phi i32 [ %i.ee, %vector.memcheck ], [ %i.ee, %.lr.ph ], [ %vector.recur.extract157, %middle.block156 ]
  %.07286.ph = phi i32 [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph ], [ %i.bg, %middle.block156 ]
  %.07485.ph = phi ptr [ %i.do, %vector.memcheck ], [ %i.do, %.lr.ph ], [ %i.er, %middle.block156 ]
  %.07584.ph = phi ptr [ %i.dl, %vector.memcheck ], [ %i.dl, %.lr.ph ], [ %i.es, %middle.block156 ]
  %.07683.ph = phi ptr [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph ], [ %i.et, %middle.block156 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07389 = phi ptr [ %.073, %scalar.ph ], [ %.07389.ph, %scalar.ph.preheader ] ; 2 uses
  %.088 = phi i32 [ %.07087, %scalar.ph ], [ %.088.ph, %scalar.ph.preheader ]
  %.07087 = phi i32 [ %i.ge, %scalar.ph ], [ %.07087.ph, %scalar.ph.preheader ] ; 3 uses
  %.07286 = phi i32 [ %i.gp, %scalar.ph ], [ %.07286.ph, %scalar.ph.preheader ]
  %.07485 = phi ptr [ %i.fw, %scalar.ph ], [ %.07485.ph, %scalar.ph.preheader ]
  %.07584 = phi ptr [ %i.fv, %scalar.ph ], [ %.07584.ph, %scalar.ph.preheader ]
  %.07683 = phi ptr [ %i.fs, %scalar.ph ], [ %.07683.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.07683, i64 2 ; 3 uses
  %i.ft = load i16, ptr %.07683, align 2, !tbaa !66
  %i.fu = sext i16 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.07584, i64 2 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.07485, i64 2 ; 2 uses
  %i.fx = load i16, ptr %i.fv, align 2, !tbaa !66
  %i.fy = sext i16 %i.fx to i32
  %i.fz = load i16, ptr %i.fw, align 2, !tbaa !66
  %i.ga = sext i16 %i.fz to i32
  %i.gb = add nsw i32 %i.ga, %i.fy
  %i.gc = load i16, ptr %i.fs, align 2, !tbaa !66
  %i.gd = sext i16 %i.gc to i32
  %i.ge = add nsw i32 %i.gb, %i.gd                ; 3 uses
  %i.gf = zext i32 %i.ge to i64
  %narrow = add nsw i32 %.088, %.07087
  %i.gg = zext i32 %narrow to i64
  %i.gh = sub nsw i64 %i.gg, %i.fu
  %i.gi = add nsw i64 %i.gh, %i.gf
  %i.gj = mul nsw i64 %i.as, %i.fu
  %i.gk = mul i64 %i.gi, %i.au
  %i.gl = add nsw i64 %i.gj, 32768
  %i.gm = add i64 %i.gl, %i.gk
  %i.gn = lshr i64 %i.gm, 16
  %i.go = trunc i64 %i.gn to i16
  store i16 %i.go, ptr %.07389, align 2, !tbaa !66
  %i.gp = add i32 %.07286, -1                     ; 2 uses
  %.073 = getelementptr inbounds nuw i8, ptr %.07389, i64 2 ; 2 uses
  %.not77 = icmp eq i32 %i.gp, 0
  br i1 %.not77, label %._crit_edge, label %scalar.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %scalar.ph, %middle.block156
  %.07087.lcssa = phi i32 [ %vector.recur.extract.for.phi, %middle.block156 ], [ %.07087, %scalar.ph ]
  %.lcssa111 = phi ptr [ %i.et, %middle.block156 ], [ %i.fs, %scalar.ph ]
  %.lcssa = phi i32 [ %vector.recur.extract157, %middle.block156 ], [ %i.ge, %scalar.ph ]
  %.073.lcssa = phi ptr [ %i.eq, %middle.block156 ], [ %.073, %scalar.ph ]
  %i.gq = load i16, ptr %.lcssa111, align 2, !tbaa !66
  %i.gr = sext i16 %i.gq to i64                   ; 2 uses
  %i.gs = zext i32 %.07087.lcssa to i64
  %i.gt = sext i32 %.lcssa to i64
  %factor80 = shl nsw i64 %i.gt, 1
  %i.gu = add nsw i64 %factor80, %i.gs
  %i.gv = sub nsw i64 %i.gu, %i.gr
  %i.gw = mul nsw i64 %i.as, %i.gr
  %i.gx = mul i64 %i.gv, %i.au
  %i.gy = add nsw i64 %i.gw, 32768
  %i.gz = add i64 %i.gy, %i.gx
  %i.ha = lshr i64 %i.gz, 16
  %i.hb = trunc i64 %i.ha to i16
  store i16 %i.hb, ptr %.073.lcssa, align 2, !tbaa !66
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count102
  br i1 %exitcond.not, label %._crit_edge95, label %.lr.ph, !llvm.loop !74

._crit_edge95:                                    ; preds = %._crit_edge, %.lr.ph94.split.us, %expand_right_edge.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63
  tail call void @j12copy_sample_rows(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef %i.f, i32 noundef %i.h) #6
  %i.i = load i32, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.j = load i32, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !62
  %i.m = select i1 %.not, i32 3, i32 0
  %i.n = shl i32 %i.l, %i.m
  %i.o = sub i32 %i.n, %i.j                       ; 7 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = icmp sgt i32 %i.i, 0
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.r = zext i32 %i.j to i64
  %wide.trip.count.i = zext nneg i32 %i.i to i64
  %i.s = zext nneg i32 %i.o to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.o, 4
  %min.iters.check10 = icmp ult i32 %i.o, 16
  %n.mod.vf = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 2147483632               ; 5 uses
  %i.t = shl nuw nsw i64 %n.vec, 1
  %i.u = trunc nuw nsw i64 %n.vec to i32
  %i.v = sub nsw i32 %i.o, %i.u
  %cmp.n = icmp eq i64 %n.vec, %i.s
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec13 = and i64 %i.s, 2147483644             ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec13, 1
  %i.x = trunc nuw nsw i64 %n.vec13 to i32
  %i.y = sub nsw i32 %i.o, %i.x
  %cmp.n19 = icmp eq i64 %n.vec13, %i.s
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.r ; 6 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !66 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = getelementptr i8, ptr %i.ab, i64 %i.t
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ai = getelementptr i8, ptr %i.ab, i64 %i.w
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %i.ad, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.aj = shl i64 %index16, 1
  %next.gep17 = getelementptr i8, ptr %i.ab, i64 %i.aj
  store <4 x i16> %broadcast.splat15, ptr %next.gep17, align 2, !tbaa !66
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n19, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.us.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01517.us.i.ph = phi i32 [ %i.o, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.us.i = phi ptr [ %i.al, %vec.epilog.scalar.ph ], [ %.018.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.us.i = phi i32 [ %i.am, %vec.epilog.scalar.ph ], [ %.01517.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.018.us.i, i64 2
  store i16 %i.ad, ptr %.018.us.i, align 2, !tbaa !66
  %i.am = add nsw i32 %.01517.us.i, -1
  %i.an = icmp sgt i32 %.01517.us.i, 1
  br i1 %i.an, label %vec.epilog.scalar.ph, label %._crit_edge.us.i, !llvm.loop !89

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.us.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_downsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load i32, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !63   ; 2 uses
  %i.m = shl i32 %i.h, 1
  %i.n = sub i32 %i.m, %i.l                       ; 7 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.q = zext i32 %i.l to i64
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  %i.r = zext nneg i32 %i.n to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 4
  %min.iters.check40 = icmp ult i32 %i.n, 16
  %n.mod.vf = and i64 %i.r, 12
  %n.vec = and i64 %i.r, 2147483632               ; 5 uses
  %i.s = shl nuw nsw i64 %n.vec, 1
  %i.t = trunc nuw nsw i64 %n.vec to i32
  %i.u = sub nsw i32 %i.n, %i.t
  %cmp.n = icmp eq i64 %n.vec, %i.r
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec43 = and i64 %i.r, 2147483644             ; 4 uses
  %i.v = shl nuw nsw i64 %n.vec43, 1
  %i.w = trunc nuw nsw i64 %n.vec43 to i32
  %i.x = sub nsw i32 %i.n, %i.w
  %cmp.n49 = icmp eq i64 %n.vec43, %i.r
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.q ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !66 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.s
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ac, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.af, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ah = getelementptr i8, ptr %i.aa, i64 %i.v
  %broadcast.splatinsert44 = insertelement <4 x i16> poison, i16 %i.ac, i64 0
  %broadcast.splat45 = shufflevector <4 x i16> %broadcast.splatinsert44, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 2 uses
  %i.ai = shl i64 %index46, 1
  %next.gep47 = getelementptr i8, ptr %i.aa, i64 %i.ai
  store <4 x i16> %broadcast.splat45, ptr %next.gep47, align 2, !tbaa !66
  %index.next48 = add nuw i64 %index46, 4         ; 2 uses
end_hunk_0
begin_hunk_1_@h2v2_downsample:bb.a
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !66
  %i.bz = sext i16 %i.by to i32
  %i.ca = add nsw i32 %i.br, 2
  %i.cb = add nsw i32 %i.ca, %i.bu
  %i.cc = add nsw i32 %i.cb, %i.bw
  %i.cd = add nsw i32 %i.cc, %i.bz
  %i.ce = lshr i32 %i.cd, 2
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %.02837.us, i64 4 ; 2 uses
  store i16 %i.cf, ptr %i.bn, align 2, !tbaa !66
  %i.ch = getelementptr inbounds nuw i8, ptr %.03035.us, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02936.us, i64 8 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !116

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %.02837.us.epil.init = phi ptr [ %i.as, %.lr.ph.us ], [ %i.cg, %._crit_edge.us.unr-lcssa ]
  %.02936.us.epil.init = phi ptr [ %i.aw, %.lr.ph.us ], [ %i.ci, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.03035.us.epil.init = phi ptr [ %i.au, %.lr.ph.us ], [ %i.ch, %._crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.cj = load i16, ptr %.03035.us.epil.init, align 2, !tbaa !66
  %i.ck = sext i16 %i.cj to i32
  %i.cl = getelementptr inbounds nuw i8, ptr %.03035.us.epil.init, i64 2
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !66
  %i.cn = sext i16 %i.cm to i32
  %i.co = load i16, ptr %.02936.us.epil.init, align 2, !tbaa !66
  %i.cp = sext i16 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %.02936.us.epil.init, i64 2
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !66
  %i.cs = sext i16 %i.cr to i32
  %i.ct = add nsw i32 %i.ck, 1
  %i.cu = add nsw i32 %i.ct, %i.cn
  %i.cv = add nsw i32 %i.cu, %i.cp
  %i.cw = add nsw i32 %i.cv, %i.cs
  %i.cx = lshr i32 %i.cw, 2
  %i.cy = trunc i32 %i.cx to i16
  store i16 %i.cy, ptr %.02837.us.epil.init, align 2, !tbaa !66
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond50.not, label %._crit_edge42, label %.lr.ph.us, !llvm.loop !117

._crit_edge42:                                    ; preds = %._crit_edge.us, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_downsample(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.j = load i32, ptr %i.i, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = sdiv i32 %i.j, %i.l                      ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.o = load i32, ptr %i.n, align 8, !tbaa !53   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !52   ; 5 uses
  %i.r = sdiv i32 %i.o, %i.q                      ; 3 uses
  %i.s = mul nsw i32 %i.r, %i.m                   ; 2 uses
  %i.t = sdiv i32 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = mul i32 %i.m, %i.h
  %i.x = sub i32 %i.w, %i.v                       ; 7 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp sgt i32 %i.o, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.aa = zext i32 %i.v to i64
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  %i.ab = zext nneg i32 %i.x to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 4
  %min.iters.check120 = icmp ult i32 %i.x, 16
  %n.mod.vf = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 2147483632              ; 5 uses
  %i.ac = shl nuw nsw i64 %n.vec, 1
  %i.ad = trunc nuw nsw i64 %n.vec to i32
  %i.ae = sub nsw i32 %i.x, %i.ad
  %cmp.n = icmp eq i64 %n.vec, %i.ab
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec123 = and i64 %i.ab, 2147483644           ; 4 uses
  %i.af = shl nuw nsw i64 %n.vec123, 1
  %i.ag = trunc nuw nsw i64 %n.vec123 to i32
  %i.ah = sub nsw i32 %i.x, %i.ag
  %cmp.n129 = icmp eq i64 %n.vec123, %i.ab
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i, %._crit_edge.us.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.aa ; 6 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !66 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = getelementptr i8, ptr %i.ak, i64 %i.ac
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat, ptr %i.ap, align 2, !tbaa !66
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.af
  %broadcast.splatinsert124 = insertelement <4 x i16> poison, i16 %i.am, i64 0
  %broadcast.splat125 = shufflevector <4 x i16> %broadcast.splatinsert124, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index126, 1
  %next.gep127 = getelementptr i8, ptr %i.ak, i64 %i.as
  store <4 x i16> %broadcast.splat125, ptr %next.gep127, align 2, !tbaa !66
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !119

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n129, label %._crit_edge.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.us.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.01517.us.i.ph = phi i32 [ %i.x, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.us.i = phi ptr [ %i.au, %vec.epilog.scalar.ph ], [ %.018.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01517.us.i = phi i32 [ %i.av, %vec.epilog.scalar.ph ], [ %.01517.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.018.us.i, i64 2
  store i16 %i.am, ptr %.018.us.i, align 2, !tbaa !66
  %i.av = add nsw i32 %.01517.us.i, -1
  %i.aw = icmp sgt i32 %.01517.us.i, 1
  br i1 %i.aw, label %vec.epilog.scalar.ph, label %._crit_edge.us.i, !llvm.loop !120

._crit_edge.us.i:                                 ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %expand_right_edge.exit, label %iter.check, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %._crit_edge.us.i, %bb.a
  %i.ax = icmp sgt i32 %i.q, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge68

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %.not81 = icmp eq i32 %i.h, 0
  %i.ay = icmp sgt i32 %i.m, 0
  %i.az = sext i32 %i.t to i64                    ; 3 uses
  %i.ba = sext i32 %i.s to i64                    ; 3 uses
  br i1 %.not81, label %._crit_edge68, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bb = icmp sgt i32 %i.r, 0
  br i1 %i.bb, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %i.ay, label %.preheader.lr.ph.us.us.us.preheader, label %.lr.ph.split.us.split.us.split

.preheader.lr.ph.us.us.us.preheader:              ; preds = %.lr.ph.split.us.split.us
  %i.bc = zext nneg i32 %i.r to i64               ; 2 uses
  %wide.trip.count107 = zext nneg i32 %i.q to i64
  %4 = zext nneg i32 %i.m to i64                  ; 2 uses
  %min.iters.check198 = icmp ult i32 %i.m, 4
  %n.vec201 = and i64 %4, 2147483644              ; 4 uses
  %5 = shl nuw nsw i64 %n.vec201, 1
  %6 = trunc nuw nsw i64 %n.vec201 to i32
  %cmp.n209 = icmp eq i64 %n.vec201, %4
  br label %.preheader.lr.ph.us.us.us

.preheader.lr.ph.us.us.us:                        ; preds = %.preheader.lr.ph.us.us.us.preheader, %._crit_edge.split.us.split.us.us.us.us
  %indvars.iv102 = phi i64 [ 0, %.preheader.lr.ph.us.us.us.preheader ], [ %indvars.iv.next103, %._crit_edge.split.us.split.us.us.us.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 0, %.preheader.lr.ph.us.us.us.preheader ], [ %indvars.iv.next101, %._crit_edge.split.us.split.us.us.us.us ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv102
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv100
  br label %.preheader.us.us.us.us.us

.preheader.us.us.us.us.us:                        ; preds = %._crit_edge56.split.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us
  %.04260.us.us.us.us.us = phi ptr [ %i.be, %.preheader.lr.ph.us.us.us ], [ %i.bs, %._crit_edge56.split.us.us.us.us.us.us ] ; 2 uses
  %.04659.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us ], [ %i.bu, %._crit_edge56.split.us.us.us.us.us.us ] ; 2 uses
  %.04758.us.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.us ], [ %i.bt, %._crit_edge56.split.us.us.us.us.us.us ]
  %i.bf = zext i32 %.04659.us.us.us.us.us to i64
  br label %.lr.ph.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader.us.us.us.us.us
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 2 uses
  %.054.us.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv94
  %i.bg = load ptr, ptr %gep, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf ; 3 uses
  br i1 %min.iters.check198, label %scalar.ph.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.us.us.us.us.us.us
  %7 = getelementptr i8, ptr %i.bh, i64 %5
  %8 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.054.us.us.us.us.us.us, i64 0
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next207, %vector.body202 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %8, %vector.ph199 ], [ %12, %vector.body202 ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph199 ], [ %13, %vector.body202 ]
  %9 = shl i64 %index203, 1
  %next.gep205 = getelementptr i8, ptr %i.bh, i64 %9 ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep205, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep205, align 2, !tbaa !66
  %wide.load206 = load <2 x i16>, ptr %i.bi, align 2, !tbaa !66
  %10 = sext <2 x i16> %wide.load to <2 x i64>
  %11 = sext <2 x i16> %wide.load206 to <2 x i64>
  %12 = add <2 x i64> %vec.phi, %10               ; 2 uses
  %13 = add <2 x i64> %vec.phi204, %11            ; 2 uses
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.bj, label %middle.block208, label %vector.body202, !llvm.loop !121

middle.block208:                                  ; preds = %vector.body202
  %bin.rdx = add <2 x i64> %13, %12
  %14 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n209, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.us.us.us, %middle.block208
  %.152.us.us.us.us.us.us.ph = phi i64 [ %.054.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us ], [ %14, %middle.block208 ]
  %.04351.us.us.us.us.us.us.ph = phi ptr [ %i.bh, %.lr.ph.us.us.us.us.us.us ], [ %7, %middle.block208 ]
  %.04950.us.us.us.us.us.us.ph = phi i32 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %6, %middle.block208 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.152.us.us.us.us.us.us = phi i64 [ %i.bn, %scalar.ph ], [ %.152.us.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %.04351.us.us.us.us.us.us.a = phi ptr [ %i.bk, %scalar.ph ], [ %.04351.us.us.us.us.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.04950.us.us.us.us.us.us = phi i32 [ %i.bo, %scalar.ph ], [ %.04950.us.us.us.us.us.us.ph, %scalar.ph.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us.us.a, i64 2
  %i.bl = load i16, ptr %.04351.us.us.us.us.us.us.a, align 2, !tbaa !66
  %i.bm = sext i16 %i.bl to i64
  %i.bn = add nsw i64 %.152.us.us.us.us.us.us, %i.bm ; 2 uses
  %i.bo = add nuw nsw i32 %.04950.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond93.not = icmp eq i32 %i.bo, %i.m
  br i1 %exitcond93.not, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !122

._crit_edge.us.us.us.us.us.us:                    ; preds = %scalar.ph, %middle.block208
  %.lcssa = phi i64 [ %14, %middle.block208 ], [ %i.bn, %scalar.ph ] ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %i.bc
  br i1 %exitcond98.not, label %._crit_edge56.split.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !123

._crit_edge56.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %i.bp = add nsw i64 %.lcssa, %i.az
  %i.bq = sdiv i64 %i.bp, %i.ba
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.04260.us.us.us.us.us, i64 2
  store i16 %i.br, ptr %.04260.us.us.us.us.us, align 2, !tbaa !66
  %i.bt = add nuw i32 %.04758.us.us.us.us.us, 1   ; 2 uses
  %i.bu = add i32 %.04659.us.us.us.us.us, %i.m
  %exitcond99.not = icmp eq i32 %i.bt, %i.h
  br i1 %exitcond99.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !124

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge56.split.us.us.us.us.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, %i.bc
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count107
  br i1 %exitcond108.not, label %._crit_edge68, label %.preheader.lr.ph.us.us.us, !llvm.loop !125

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us
  %i.bv = sdiv i64 %i.az, %i.ba
  %i.bw = trunc i64 %i.bv to i16                  ; 3 uses
  %wide.trip.count91 = zext nneg i32 %i.q to i64
  %i.bx = zext i32 %i.h to i64                    ; 5 uses
  %min.iters.check165 = icmp ult i32 %i.h, 4
  %min.iters.check167 = icmp ult i32 %i.h, 16
  %n.mod.vf169 = and i64 %i.bx, 12
  %n.vec170 = and i64 %i.bx, 4294967280           ; 5 uses
  %i.by = shl nuw nsw i64 %n.vec170, 1
  %i.bz = trunc nuw i64 %n.vec170 to i32
  %broadcast.splatinsert171 = insertelement <8 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat172 = shufflevector <8 x i16> %broadcast.splatinsert171, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n178 = icmp eq i64 %n.vec170, %i.bx
  %min.epilog.iters.check184 = icmp eq i64 %n.mod.vf169, 0
  %n.vec187 = and i64 %i.bx, 4294967292           ; 4 uses
  %i.ca = shl nuw nsw i64 %n.vec187, 1
  %i.cb = trunc nuw i64 %n.vec187 to i32
  %broadcast.splatinsert188 = insertelement <4 x i16> poison, i16 %i.bw, i64 0
  %broadcast.splat189 = shufflevector <4 x i16> %broadcast.splatinsert188, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n195 = icmp eq i64 %n.vec187, %i.bx
  br label %iter.check181

iter.check181:                                    ; preds = %._crit_edge.split.us.split.us79.us, %.lr.ph.split.us.split.us.split
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %._crit_edge.split.us.split.us79.us ], [ 0, %.lr.ph.split.us.split.us.split ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64 ; 5 uses
  br i1 %min.iters.check165, label %.preheader.us.us75.us.preheader, label %vector.main.loop.iter.check166

vector.main.loop.iter.check166:                   ; preds = %iter.check181
  br i1 %min.iters.check167, label %vec.epilog.ph185, label %vector.ph168

vector.ph168:                                     ; preds = %vector.main.loop.iter.check166
  %i.ce = getelementptr i8, ptr %i.cd, i64 %i.by
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph168
  %index174 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body173 ] ; 2 uses
  %i.cf = shl i64 %index174, 1
  %next.gep175 = getelementptr i8, ptr %i.cd, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep175, i64 16
  store <8 x i16> %broadcast.splat172, ptr %next.gep175, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat172, ptr %i.cg, align 2, !tbaa !66
  %index.next176 = add nuw i64 %index174, 16      ; 2 uses
  %i.ch = icmp eq i64 %index.next176, %n.vec170
  br i1 %i.ch, label %middle.block177, label %vector.body173, !llvm.loop !126

middle.block177:                                  ; preds = %vector.body173
  br i1 %cmp.n178, label %._crit_edge.split.us.split.us79.us, label %vec.epilog.iter.check183

vec.epilog.iter.check183:                         ; preds = %middle.block177
  br i1 %min.epilog.iters.check184, label %.preheader.us.us75.us.preheader, label %vec.epilog.ph185, !prof !70

vec.epilog.ph185:                                 ; preds = %vector.main.loop.iter.check166, %vec.epilog.iter.check183
  %vec.epilog.resume.val179 = phi i64 [ %n.vec170, %vec.epilog.iter.check183 ], [ 0, %vector.main.loop.iter.check166 ]
  %i.ci = getelementptr i8, ptr %i.cd, i64 %i.ca
  br label %vec.epilog.vector.body190

vec.epilog.vector.body190:                        ; preds = %vec.epilog.vector.body190, %vec.epilog.ph185
  %index191 = phi i64 [ %vec.epilog.resume.val179, %vec.epilog.ph185 ], [ %index.next193, %vec.epilog.vector.body190 ] ; 2 uses
  %i.cj = shl i64 %index191, 1
  %next.gep192 = getelementptr i8, ptr %i.cd, i64 %i.cj
  store <4 x i16> %broadcast.splat189, ptr %next.gep192, align 2, !tbaa !66
  %index.next193 = add nuw i64 %index191, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.ck, label %vec.epilog.middle.block194, label %vec.epilog.vector.body190, !llvm.loop !127

vec.epilog.middle.block194:                       ; preds = %vec.epilog.vector.body190
  br i1 %cmp.n195, label %._crit_edge.split.us.split.us79.us, label %.preheader.us.us75.us.preheader

.preheader.us.us75.us.preheader:                  ; preds = %iter.check181, %vec.epilog.iter.check183, %vec.epilog.middle.block194
  %.04260.us.us76.us.ph = phi ptr [ %i.cd, %iter.check181 ], [ %i.ce, %vec.epilog.iter.check183 ], [ %i.ci, %vec.epilog.middle.block194 ]
  %.04758.us.us78.us.ph = phi i32 [ 0, %iter.check181 ], [ %i.bz, %vec.epilog.iter.check183 ], [ %i.cb, %vec.epilog.middle.block194 ]
  br label %.preheader.us.us75.us

.preheader.us.us75.us:                            ; preds = %.preheader.us.us75.us.preheader, %.preheader.us.us75.us
  %.04260.us.us76.us = phi ptr [ %i.cl, %.preheader.us.us75.us ], [ %.04260.us.us76.us.ph, %.preheader.us.us75.us.preheader ] ; 2 uses
  %.04758.us.us78.us = phi i32 [ %i.cm, %.preheader.us.us75.us ], [ %.04758.us.us78.us.ph, %.preheader.us.us75.us.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.04260.us.us76.us, i64 2
  store i16 %i.bw, ptr %.04260.us.us76.us, align 2, !tbaa !66
  %i.cm = add nuw i32 %.04758.us.us78.us, 1       ; 2 uses
  %exitcond87.not = icmp eq i32 %i.cm, %i.h
  br i1 %exitcond87.not, label %._crit_edge.split.us.split.us79.us, label %.preheader.us.us75.us, !llvm.loop !128

._crit_edge.split.us.split.us79.us:               ; preds = %.preheader.us.us75.us, %vec.epilog.middle.block194, %middle.block177
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %._crit_edge68, label %iter.check181, !llvm.loop !125

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.cn = sdiv i64 %i.az, %i.ba
  %i.co = trunc i64 %i.cn to i16                  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.q to i64
  %i.cp = zext i32 %i.h to i64                    ; 5 uses
  %min.iters.check132 = icmp ult i32 %i.h, 4
  %min.iters.check134 = icmp ult i32 %i.h, 16
  %n.mod.vf136 = and i64 %i.cp, 12
  %n.vec137 = and i64 %i.cp, 4294967280           ; 5 uses
  %i.cq = shl nuw nsw i64 %n.vec137, 1
  %i.cr = trunc nuw i64 %n.vec137 to i32
  %broadcast.splatinsert138 = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %broadcast.splat139 = shufflevector <8 x i16> %broadcast.splatinsert138, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n145 = icmp eq i64 %n.vec137, %i.cp
  %min.epilog.iters.check151 = icmp eq i64 %n.mod.vf136, 0
  %n.vec154 = and i64 %i.cp, 4294967292           ; 4 uses
  %i.cs = shl nuw nsw i64 %n.vec154, 1
  %i.ct = trunc nuw i64 %n.vec154 to i32
  %broadcast.splatinsert155 = insertelement <4 x i16> poison, i16 %i.co, i64 0
  %broadcast.splat156 = shufflevector <4 x i16> %broadcast.splatinsert155, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n162 = icmp eq i64 %n.vec154, %i.cp
  br label %iter.check148

iter.check148:                                    ; preds = %._crit_edge.split.us73, %.lr.ph.split.us.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split.us73 ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !64 ; 5 uses
  br i1 %min.iters.check132, label %.preheader.us69.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %iter.check148
  br i1 %min.iters.check134, label %vec.epilog.ph152, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check133
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cq
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph135
  %index141 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body140 ] ; 2 uses
  %i.cx = shl i64 %index141, 1
  %next.gep142 = getelementptr i8, ptr %i.cv, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep142, i64 16
  store <8 x i16> %broadcast.splat139, ptr %next.gep142, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat139, ptr %i.cy, align 2, !tbaa !66
  %index.next143 = add nuw i64 %index141, 16      ; 2 uses
  %i.cz = icmp eq i64 %index.next143, %n.vec137
  br i1 %i.cz, label %middle.block144, label %vector.body140, !llvm.loop !129

middle.block144:                                  ; preds = %vector.body140
  br i1 %cmp.n145, label %._crit_edge.split.us73, label %vec.epilog.iter.check150

vec.epilog.iter.check150:                         ; preds = %middle.block144
  br i1 %min.epilog.iters.check151, label %.preheader.us69.preheader, label %vec.epilog.ph152, !prof !70

vec.epilog.ph152:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check150
  %vec.epilog.resume.val146 = phi i64 [ %n.vec137, %vec.epilog.iter.check150 ], [ 0, %vector.main.loop.iter.check133 ]
  %i.da = getelementptr i8, ptr %i.cv, i64 %i.cs
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph152
  %index158 = phi i64 [ %vec.epilog.resume.val146, %vec.epilog.ph152 ], [ %index.next160, %vec.epilog.vector.body157 ] ; 2 uses
  %i.db = shl i64 %index158, 1
  %next.gep159 = getelementptr i8, ptr %i.cv, i64 %i.db
  store <4 x i16> %broadcast.splat156, ptr %next.gep159, align 2, !tbaa !66
  %index.next160 = add nuw i64 %index158, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.dc, label %vec.epilog.middle.block161, label %vec.epilog.vector.body157, !llvm.loop !130

vec.epilog.middle.block161:                       ; preds = %vec.epilog.vector.body157
  br i1 %cmp.n162, label %._crit_edge.split.us73, label %.preheader.us69.preheader

.preheader.us69.preheader:                        ; preds = %iter.check148, %vec.epilog.iter.check150, %vec.epilog.middle.block161
  %.04260.us70.ph = phi ptr [ %i.cv, %iter.check148 ], [ %i.cw, %vec.epilog.iter.check150 ], [ %i.da, %vec.epilog.middle.block161 ]
  %.04758.us72.ph = phi i32 [ 0, %iter.check148 ], [ %i.cr, %vec.epilog.iter.check150 ], [ %i.ct, %vec.epilog.middle.block161 ]
  br label %.preheader.us69

.preheader.us69:                                  ; preds = %.preheader.us69.preheader, %.preheader.us69
  %.04260.us70 = phi ptr [ %i.dd, %.preheader.us69 ], [ %.04260.us70.ph, %.preheader.us69.preheader ] ; 2 uses
  %.04758.us72 = phi i32 [ %i.de, %.preheader.us69 ], [ %.04758.us72.ph, %.preheader.us69.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.04260.us70, i64 2
  store i16 %i.co, ptr %.04260.us70, align 2, !tbaa !66
  %i.de = add nuw i32 %.04758.us72, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %i.h
  br i1 %exitcond.not, label %._crit_edge.split.us73, label %.preheader.us69, !llvm.loop !131

._crit_edge.split.us73:                           ; preds = %.preheader.us69, %vec.epilog.middle.block161, %middle.block144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond86.not, label %._crit_edge68, label %iter.check148, !llvm.loop !125

._crit_edge68:                                    ; preds = %._crit_edge.split.us73, %._crit_edge.split.us.split.us79.us, %._crit_edge.split.us.split.us.us.us.us, %.lr.ph, %expand_right_edge.exit
  ret void
}

declare void @j12copy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !17, i64 496}
!8 = !{!"jpeg_compress_struct", !9, i64 0, !11, i64 8, !12, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !13, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !15, i64 332, !15, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !16, i64 480, !4, i64 488, !17, i64 496, !18, i64 504, !19, i64 512, !20, i64 520, !21, i64 528, !22, i64 536, !23, i64 544, !24, i64 552, !25, i64 560, !10, i64 568, !4, i64 576}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!12 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!13 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"short", !5, i64 0}
!16 = !{!"p1 int", !10, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!26 = !{!27, !4, i64 32}
!27 = !{!"jpeg_comp_master", !10, i64 0, !10, i64 8, !10, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!28 = !{!8, !4, i64 88}
!29 = !{!8, !9, i64 0}
!30 = !{!31, !4, i64 40}
!31 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !32, i64 128, !33, i64 136, !4, i64 144, !33, i64 152, !4, i64 160, !4, i64 164}
!32 = !{!"long", !5, i64 0}
!33 = !{!"p2 omnipotent char", !34, i64 0}
!34 = !{!"any p2 pointer", !10, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!31, !10, i64 0}
!37 = !{!8, !11, i64 8}
!38 = !{!39, !10, i64 0}
!39 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !32, i64 88, !32, i64 96}
!40 = !{!8, !23, i64 544}
!41 = !{!42, !10, i64 0}
!42 = !{!"", !43, i64 0, !5, i64 40}
!43 = !{!"jpeg_downsampler", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32}
!44 = !{!42, !10, i64 16}
!45 = !{!42, !4, i64 32}
!46 = !{!8, !4, i64 300}
!47 = !{!8, !4, i64 92}
!48 = !{!8, !10, i64 104}
!49 = !{!50, !4, i64 8}
!50 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!51 = !{!8, !4, i64 348}
!52 = !{!50, !4, i64 12}
!53 = !{!8, !4, i64 352}
!54 = !{!8, !4, i64 308}
!55 = !{!10, !10, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!31, !10, i64 8}
!59 = !{!60, !60, i64 0}
!60 = !{!"p2 short", !34, i64 0}
!61 = distinct !{!61, !57}
!62 = !{!50, !4, i64 28}
!63 = !{!8, !4, i64 48}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 short", !10, i64 0}
!66 = !{!15, !15, i64 0}
!67 = distinct !{!67, !57, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!"branch_weights", i32 4, i32 12}
!71 = distinct !{!71, !57, !68, !69}
!72 = distinct !{!72, !57, !69, !68}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = !{!81}
!81 = distinct !{!81, !77}
!82 = !{!83}
!83 = distinct !{!83, !77}
!84 = !{!76, !79, !81}
!85 = distinct !{!85, !57, !68, !69}
!86 = distinct !{!86, !57, !68}
!87 = distinct !{!87, !57, !68, !69}
!88 = distinct !{!88, !57, !68, !69}
!89 = distinct !{!89, !57, !69, !68}
!90 = distinct !{!90, !57, !68, !69}
!91 = distinct !{!91, !57, !68, !69}
!92 = distinct !{!92, !57, !69, !68}
!93 = distinct !{!93, !57}
!94 = distinct !{!94, !57}
!95 = distinct !{!95, !57, !68, !69}
!96 = distinct !{!96, !57, !68, !69}
!97 = distinct !{!97, !57, !69, !68}
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !{!102}
!102 = distinct !{!102, !100}
!103 = !{!104}
!104 = distinct !{!104, !100}
!105 = !{!106}
!106 = distinct !{!106, !100}
!107 = !{!108}
!108 = distinct !{!108, !100}
!109 = !{!99, !102, !104, !106}
!110 = distinct !{!110, !57, !68, !69}
!111 = distinct !{!111, !57, !68}
!112 = distinct !{!112, !57}
!113 = distinct !{!113, !57, !68, !69}
!114 = distinct !{!114, !57, !68, !69}
!115 = distinct !{!115, !57, !69, !68}
!116 = distinct !{!116, !57}
!117 = distinct !{!117, !57}
!118 = distinct !{!118, !57, !68, !69}
!119 = distinct !{!119, !57, !68, !69}
!120 = distinct !{!120, !57, !69, !68}
!121 = distinct !{!121, !57, !68, !69}
!122 = distinct !{!122, !57, !69, !68}
!123 = distinct !{!123, !57}
!124 = distinct !{!124, !57}
!125 = distinct !{!125, !57}
!126 = distinct !{!126, !57, !68, !69}
!127 = distinct !{!127, !57, !68, !69}
!128 = distinct !{!128, !57, !69, !68}
!129 = distinct !{!129, !57, !68, !69}
!130 = distinct !{!130, !57, !68, !69}
!131 = distinct !{!131, !57, !69, !68}
end_hunk_1
