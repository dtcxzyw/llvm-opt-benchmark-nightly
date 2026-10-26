Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgbbrd?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DGBBRD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@c_b8 = internal global double 0.000000e+00, align 8
@c_b9 = internal global double 1.000000e+00, align 8
@c__1 = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @dgbbrd_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8, ptr nofree noundef writeonly captures(none) %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr nofree noundef captures(none) initializes((0, 4)) %17) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %8 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %9 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 3 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 15 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca double, align 8                   ; 10 uses
  %i.k = alloca double, align 8                   ; 5 uses
  %i.l = alloca double, align 8                   ; 9 uses
  %i.m = alloca i32, align 4                      ; 19 uses
  %i.n = alloca double, align 8                   ; 9 uses
  %i.o = alloca i32, align 4                      ; 16 uses
  %i.p = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  %i.q = load i32, ptr %7, align 4, !tbaa !31     ; 21 uses
  %narrow = xor i32 %i.q, -1
  %i.r = sext i32 %narrow to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %6, i64 %i.r ; 37 uses
  %i.t = getelementptr inbounds i8, ptr %8, i64 -8 ; 19 uses
  %i.u = getelementptr inbounds i8, ptr %9, i64 -8 ; 10 uses
  %i.v = load i32, ptr %11, align 4, !tbaa !31    ; 4 uses
  %narrow596 = xor i32 %i.v, -1
  %i.w = sext i32 %narrow596 to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %10, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %13, align 4, !tbaa !31    ; 5 uses
  %narrow597 = xor i32 %i.y, -1
  %i.z = sext i32 %narrow597 to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %12, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %15, align 4, !tbaa !31   ; 5 uses
  %narrow593 = xor i32 %i.ab, -1
  %i.ac = sext i32 %narrow593 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %14, i64 %i.ac ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %16, i64 -8 ; 24 uses
  %i.af = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #5
  %i.ag = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %i.ah = icmp ne i32 %i.ag, 0
  %i.ai = icmp ne i32 %i.af, 0                    ; 2 uses
  %i.aj = select i1 %i.ah, i1 true, i1 %i.ai      ; 5 uses
  %i.ak = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = select i1 %i.al, i1 true, i1 %i.ai      ; 5 uses
  %i.an = load i32, ptr %3, align 4, !tbaa !31
  %i.ao = icmp sgt i32 %i.an, 0                   ; 3 uses
  %i.ap = load i32, ptr %4, align 4, !tbaa !31
  %i.aq = load i32, ptr %5, align 4, !tbaa !31
  %i.ar = add nsw i32 %i.aq, %i.ap                ; 2 uses
  %i.as = add nsw i32 %i.ar, 1                    ; 2 uses
  store i32 0, ptr %17, align 4, !tbaa !31
  %or.cond = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.at = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.au = load i32, ptr %1, align 4, !tbaa !31    ; 5 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %2, align 4, !tbaa !31    ; 3 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %3, align 4, !tbaa !31
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %4, align 4, !tbaa !31
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %5, align 4, !tbaa !31
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load i32, ptr %7, align 4, !tbaa !31
  %.not594 = icmp sgt i32 %i.be, %i.ar
  br i1 %.not594, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.bf = load i32, ptr %11, align 4, !tbaa !31   ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 1
  br i1 %i.bg, label %.thread.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp samesign ugt i32 %i.au, 1
  %i.bi = icmp samesign ult i32 %i.bf, %i.au
  %spec.select = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %spec.select, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = load i32, ptr %13, align 4, !tbaa !31   ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = icmp samesign ugt i32 %i.aw, 1
  %i.bm = icmp samesign ult i32 %i.bj, %i.aw
  %spec.select623 = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %spec.select623, label %.thread.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = load i32, ptr %15, align 4, !tbaa !31   ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 1
  br i1 %i.bo, label %.thread.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp samesign ugt i32 %i.au, 1
  %i.bq = icmp samesign ult i32 %i.bn, %i.au
  %spec.select624 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %spec.select624, label %.thread.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.pr = load i32, ptr %17, align 4, !tbaa !31    ; 2 uses
  %.not595 = icmp eq i32 %.pr, 0
  br i1 %.not595, label %bb.s, label %.thread

.thread.sink.split:                               ; preds = %bb.o, %bb.q, %bb.l, %bb.n, %bb.i, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ -2, %bb.c ], [ -4, %bb.e ], [ -6, %bb.g ], [ -12, %bb.i ], [ -14, %bb.l ], [ -8, %bb.h ], [ -5, %bb.f ], [ -3, %bb.d ], [ -12, %bb.k ], [ -14, %bb.n ], [ -16, %bb.q ], [ -16, %bb.o ] ; 2 uses
  store i32 %.sink, ptr %17, align 4, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.r
  %i.br = phi i32 [ %.pr, %bb.r ], [ %.sink, %.thread.sink.split ]
  %i.bs = sub nsw i32 0, %i.br
  store i32 %i.bs, ptr %i.d, align 4, !tbaa !31
  %i.bt = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.d, i32 noundef 6) #5 ; 0 uses
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %10, ptr noundef nonnull %11) #5
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %12, ptr noundef nonnull %13) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bu = load i32, ptr %1, align 4, !tbaa !31    ; 7 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = load i32, ptr %2, align 4, !tbaa !31    ; 4 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %. = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bw) ; 21 uses
  %i.by = load i32, ptr %4, align 4, !tbaa !31    ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !31    ; 6 uses
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.z, label %thread-pre-split630

bb.z:                                             ; preds = %bb.y
  %i.cc = icmp sgt i32 %i.bz, 0                   ; 2 uses
  %.625 = select i1 %i.cc, i32 1, i32 2           ; 2 uses
  %.626 = select i1 %i.cc, i32 2, i32 1
  %i.cd = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.bw) ; 7 uses
  %i.ce = add i32 %i.bu, -1
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.by) ; 4 uses
  %i.cg = add i32 %i.bw, -1
  %i.ch = tail call i32 @llvm.smin.i32(i32 %i.cg, i32 %i.bz) ; 9 uses
  %i.ci = add i32 %i.ch, %i.cf                    ; 11 uses
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 %i.cj, ptr %i.o, align 4, !tbaa !31
  %i.ck = load i32, ptr %7, align 4, !tbaa !31
  %i.cl = mul nsw i32 %i.ck, %i.cj
  store i32 %i.cl, ptr %i.i, align 4, !tbaa !31
  store i32 0, ptr %i.m, align 4, !tbaa !31
  store i32 %., ptr %i.d, align 4, !tbaa !31
  %.not602677 = icmp slt i32 %., 1
  br i1 %.not602677, label %thread-pre-split630, label %.lr.ph683

.lr.ph683:                                        ; preds = %bb.z
  %i.cm = add nsw i32 %i.cf, 1
  %i.cn = add nsw i32 %i.ch, 1
  %.not611667 = icmp slt i32 %i.ci, 1
  %i.co = xor i32 %i.cf, -1                       ; 3 uses
  %i.cp = add i32 %i.ab, -1
  %i.cq = add i32 %i.ch, %i.cd                    ; 4 uses
  %i.cr = add i32 %i.y, -1
  br i1 %.not611667, label %thread-pre-split630, label %.lr.ph674.preheader

.lr.ph674.preheader:                              ; preds = %.lr.ph683
  %i.cs = add nsw i32 %i.cf, 2
  %i.ct = sub nsw i32 1, %i.ch
  %i.cu = sext i32 %i.as to i64                   ; 2 uses
  %i.cv = sext i32 %i.cd to i64
  %i.cw = sext i32 %i.ch to i64                   ; 2 uses
  %i.cx = sext i32 %i.q to i64                    ; 2 uses
  %i.cy = zext nneg i32 %i.ci to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ae, i64 %i.cv
  %invariant.gep781 = getelementptr [8 x i8], ptr %i.s, i64 %i.cu
  %invariant.gep783 = getelementptr [8 x i8], ptr %i.ae, i64 %i.cy
  br label %.lr.ph674

.lr.ph674:                                        ; preds = %.lr.ph674.preheader, %._crit_edge675
  %.0567.neg681 = phi i32 [ %.0567.neg, %._crit_edge675 ], [ -1, %.lr.ph674.preheader ]
  %.0555680 = phi i32 [ %.3, %._crit_edge675 ], [ %i.ct, %.lr.ph674.preheader ]
  %.0557679 = phi i32 [ %.3560, %._crit_edge675 ], [ %i.cs, %.lr.ph674.preheader ]
  %.0567678 = phi i32 [ %i.dc, %._crit_edge675 ], [ 1, %.lr.ph674.preheader ] ; 10 uses
  %i.cz = add nsw i32 %.0567.neg681, 1            ; 2 uses
  %i.da = mul nsw i32 %.0567678, %i.q             ; 3 uses
  %invariant.op = add i32 %i.da, -1
  %i.db = add nsw i32 %.0567678, %i.cd            ; 2 uses
  %i.dc = add nuw nsw i32 %.0567678, 1            ; 2 uses
  %i.dd = mul nsw i32 %i.dc, %i.q                 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph674, %._crit_edge666
  %.0551672 = phi i32 [ %i.cn, %.lr.ph674 ], [ %.1, %._crit_edge666 ] ; 8 uses
  %.0552671 = phi i32 [ %i.cm, %.lr.ph674 ], [ %.1553, %._crit_edge666 ] ; 8 uses
  %.0554670 = phi i32 [ 1, %.lr.ph674 ], [ %i.oi, %._crit_edge666 ] ; 2 uses
  %.1556669 = phi i32 [ %.0555680, %.lr.ph674 ], [ %.3, %._crit_edge666 ]
  %.1558668 = phi i32 [ %.0557679, %.lr.ph674 ], [ %.3560, %._crit_edge666 ]
  %i.de = add nsw i32 %.1558668, %i.ci            ; 8 uses
  %i.df = add nsw i32 %.1556669, %i.ci            ; 10 uses
  %i.dg = load i32, ptr %i.m, align 4, !tbaa !31
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %bb.ab, label %.lr.ph

bb.ab:                                            ; preds = %bb.aa
  %i.di = add i32 %i.de, %i.co
  %i.dj = mul nsw i32 %i.di, %i.q
  %i.dk = add nsw i32 %i.dj, %i.as
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dl
  %i.dn = sext i32 %i.de to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dn
  %i.dp = add nsw i32 %i.de, %i.cd
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dq
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.dm, ptr noundef nonnull %i.i, ptr noundef nonnull %i.do, ptr noundef nonnull %i.o, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.o) #5
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa, %bb.ab
  store i32 %i.ci, ptr %i.e, align 4, !tbaa !31
  %i.ds = add i32 %i.df, %i.co
  %i.dt = add i32 %i.de, %i.co
  %i.du = add nsw i32 %i.de, %i.cd
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dv
  %i.dx = sext i32 %i.de to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dx
  %.pre745 = load i32, ptr %i.m, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ae
  %i.dz = phi i32 [ %i.ci, %.lr.ph ], [ %i.er, %bb.ae ]
  %i.ea = phi i32 [ %.pre745, %.lr.ph ], [ %i.es, %bb.ae ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.ae ] ; 4 uses
  %indvars712 = trunc i64 %indvars.iv to i32      ; 2 uses
  %i.eb = add i32 %i.ds, %indvars712
  %i.ec = load i32, ptr %2, align 4, !tbaa !31
  %i.ed = icmp sgt i32 %i.eb, %i.ec
  %i.ee = sext i1 %i.ed to i32
  %storemerge622 = add nsw i32 %i.ea, %i.ee       ; 2 uses
  store i32 %storemerge622, ptr %i.p, align 4, !tbaa !31
  %i.ef = icmp sgt i32 %storemerge622, 0
  br i1 %i.ef, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eg = sub nsw i64 %i.cu, %indvars.iv          ; 2 uses
  %i.eh = add i32 %i.dt, %indvars712
  %i.ei = mul nsw i32 %i.eh, %i.q                 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [8 x i8], ptr %i.s, i64 %i.eg
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = trunc nsw i64 %i.eg to i32
  %i.en = add i32 %i.ei, %i.em
  %i.eo = add i32 %i.en, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ep
  call void @dlartv_(ptr noundef nonnull %i.p, ptr noundef %i.el, ptr noundef nonnull %i.i, ptr noundef %i.eq, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.o) #5
  %.pre = load i32, ptr %i.m, align 4
  %.pre746 = load i32, ptr %i.e, align 4, !tbaa !31
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.er = phi i32 [ %i.dz, %bb.ac ], [ %.pre746, %bb.ad ] ; 2 uses
  %i.es = phi i32 [ %i.ea, %bb.ac ], [ %.pre, %bb.ad ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.et = sext i32 %i.er to i64
  %.not612.not = icmp slt i64 %indvars.iv, %i.et
  br i1 %.not612.not, label %bb.ac, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.ae
  %i.eu = icmp sgt i32 %.0552671, %.625           ; 3 uses
  br i1 %i.eu, label %bb.af, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre747.pre755.pre759.pre = load i32, ptr %i.o, align 4, !tbaa !31
  br label %bb.aj

bb.af:                                            ; preds = %._crit_edge
  %i.ev = load i32, ptr %1, align 4, !tbaa !31
  %i.ew = add i32 %i.cz, %i.ev
  %.not613 = icmp sgt i32 %.0552671, %i.ew
  br i1 %.not613, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i32, ptr %5, align 4, !tbaa !31
  %i.ey = add nsw i32 %i.ex, %.0552671            ; 2 uses
  %.reass = add i32 %i.ey, %invariant.op
  %i.ez = sext i32 %.reass to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ez
  %i.fb = add nsw i32 %i.ey, %i.da
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fc
  %i.fe = add nsw i32 %i.db, %.0552671
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr [8 x i8], ptr %i.ae, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8     ; 2 uses
  %i.fi = add nsw i32 %.0552671, %.0567678
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr [8 x i8], ptr %i.ae, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 -8     ; 2 uses
  call void @dlartg_(ptr noundef %i.fa, ptr noundef %i.fd, ptr noundef %i.fh, ptr noundef %i.fl, ptr noundef nonnull %i.j) #5
  %i.fm = load double, ptr %i.j, align 8, !tbaa !34
  %i.fn = load i32, ptr %5, align 4, !tbaa !31
  %i.fo = add nsw i32 %i.fn, %.0552671            ; 2 uses
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  %i.fq = add nsw i32 %i.fp, %i.da
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.fr
  store double %i.fm, ptr %i.fs, align 8, !tbaa !34
  %i.ft = load i32, ptr %2, align 4, !tbaa !31    ; 2 uses
  %i.fu = icmp slt i32 %.0567678, %i.ft
  br i1 %i.fu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fv = add nsw i32 %i.fo, -2                   ; 3 uses
  store i32 %i.fv, ptr %i.f, align 4, !tbaa !31
  %i.fw = sub nuw nsw i32 %i.ft, %.0567678
  %i.fx = call i32 @llvm.smin.i32(i32 %i.fv, i32 %i.fw)
  store i32 %i.fx, ptr %i.e, align 4, !tbaa !31
  %i.fy = load i32, ptr %7, align 4, !tbaa !31
  %i.fz = add nsw i32 %i.fy, -1                   ; 2 uses
  store i32 %i.fz, ptr %i.g, align 4, !tbaa !31
  store i32 %i.fz, ptr %i.h, align 4, !tbaa !31
  %i.ga = add nsw i32 %i.fv, %i.dd
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gb
  %i.gd = add nsw i32 %i.fp, %i.dd
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ge
  call void @drot_(ptr noundef nonnull %i.e, ptr noundef %i.gc, ptr noundef nonnull %i.g, ptr noundef %i.gf, ptr noundef nonnull %i.h, ptr noundef %i.fh, ptr noundef %i.fl) #5
end_hunk_0
begin_hunk_1_@dgbbrd_:bb.a
  %.1 = add nsw i32 %.0551672, %i.oh
  %i.oi = add nuw i32 %.0554670, 1
  %exitcond.not = icmp eq i32 %.0554670, %i.ci
  br i1 %exitcond.not, label %._crit_edge675, label %bb.aa, !llvm.loop !15

._crit_edge675:                                   ; preds = %._crit_edge666
  %.0567.neg = xor i32 %.0567678, -1
  %.not602.not = icmp slt i32 %.0567678, %.
  br i1 %.not602.not, label %.lr.ph674, label %thread-pre-split630.loopexit711, !llvm.loop !16

thread-pre-split630.loopexit711:                  ; preds = %._crit_edge675
  %.pr631.pre = load i32, ptr %5, align 4, !tbaa !31
  br label %thread-pre-split630

thread-pre-split630:                              ; preds = %bb.z, %thread-pre-split630.loopexit711, %.lr.ph683, %bb.y
  %i.oj = phi i32 [ %i.bu, %bb.y ], [ %i.ng, %thread-pre-split630.loopexit711 ], [ %i.bu, %bb.z ], [ %i.bu, %.lr.ph683 ] ; 6 uses
  %i.ok = phi i32 [ %i.bz, %bb.y ], [ %.pr631.pre, %thread-pre-split630.loopexit711 ], [ %i.bz, %bb.z ], [ %i.bz, %.lr.ph683 ] ; 5 uses
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.az, label %bb.bj

bb.az:                                            ; preds = %thread-pre-split630
  %i.om = load i32, ptr %4, align 4, !tbaa !31
  %i.on = icmp sgt i32 %i.om, 0
  br i1 %i.on, label %bb.ba, label %.thread632

bb.ba:                                            ; preds = %bb.az
  %i.oo = add nsw i32 %i.oj, -1
  %i.op = load i32, ptr %2, align 4, !tbaa !31    ; 2 uses
  %.628 = call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.op) ; 2 uses
  %.not609704 = icmp slt i32 %.628, 1
  br i1 %.not609704, label %._crit_edge708, label %.lr.ph707

.lr.ph707:                                        ; preds = %bb.ba
  %i.oq = add i32 %i.ab, 1
  %i.or = sext i32 %i.q to i64                    ; 2 uses
  %i.os = sext i32 %i.v to i64                    ; 2 uses
  %i.ot = sext i32 %i.ab to i64
  %invariant.gep791 = getelementptr [8 x i8], ptr %i.ad, i64 %i.ot
  %i.ou = zext nneg i32 %.628 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph707, %bb.bh
  %indvars.iv742 = phi i64 [ 1, %.lr.ph707 ], [ %indvars.iv.next743, %bb.bh ] ; 11 uses
  %i.ov = mul nsw i64 %indvars.iv742, %i.or
  %i.ow = getelementptr [8 x i8], ptr %i.s, i64 %i.ov ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 8
  %i.oy = getelementptr i8, ptr %i.ow, i64 16
  call void @dlartg_(ptr noundef %i.ox, ptr noundef %i.oy, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j) #5
  %i.oz = load double, ptr %i.j, align 8, !tbaa !34
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv742
  store double %i.oz, ptr %i.pa, align 8, !tbaa !34
  %i.pb = load i32, ptr %2, align 4, !tbaa !31
  %i.pc = sext i32 %i.pb to i64
  %i.pd = icmp slt i64 %indvars.iv742, %i.pc
  br i1 %i.pd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.pe = load double, ptr %i.n, align 8, !tbaa !34
  %i.pf = add nuw nsw i64 %indvars.iv742, 1
  %i.pg = mul nsw i64 %i.pf, %i.or
  %i.ph = getelementptr [8 x i8], ptr %i.s, i64 %i.pg
  %i.pi = getelementptr i8, ptr %i.ph, i64 8      ; 3 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !34
  %i.pk = fmul double %i.pe, %i.pj
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv742
  store double %i.pk, ptr %i.pl, align 8, !tbaa !34
  %i.pm = load double, ptr %i.l, align 8, !tbaa !34
  %i.pn = load double, ptr %i.pi, align 8, !tbaa !34
  %i.po = fmul double %i.pm, %i.pn
  store double %i.po, ptr %i.pi, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.aj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pp = mul nsw i64 %indvars.iv742, %i.os
  %i.pq = getelementptr [8 x i8], ptr %i.x, i64 %i.pp
  %i.pr = getelementptr i8, ptr %i.pq, i64 8
  %i.ps = add nuw nsw i64 %indvars.iv742, 1
  %i.pt = mul nsw i64 %i.ps, %i.os
  %i.pu = getelementptr [8 x i8], ptr %i.x, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 8
  call void @drot_(ptr noundef nonnull %1, ptr noundef %i.pr, ptr noundef nonnull @c__1, ptr noundef %i.pv, ptr noundef nonnull @c__1, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) #5
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.ao, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %gep792 = getelementptr [8 x i8], ptr %invariant.gep791, i64 %indvars.iv742
  %i.pw = trunc nuw nsw i64 %indvars.iv742 to i32
  %i.px = add i32 %i.oq, %i.pw
  %i.py = sext i32 %i.px to i64
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.py
  call void @drot_(ptr noundef nonnull %3, ptr noundef %gep792, ptr noundef nonnull %15, ptr noundef %i.pz, ptr noundef nonnull %15, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) #5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1
  %.not609.not = icmp samesign ult i64 %indvars.iv742, %i.ou
  br i1 %.not609.not, label %bb.bb, label %._crit_edge708.loopexit, !llvm.loop !17

._crit_edge708.loopexit:                          ; preds = %bb.bh
  %.pre753 = load i32, ptr %1, align 4, !tbaa !31
  %.pre754 = load i32, ptr %2, align 4, !tbaa !31
  br label %._crit_edge708

._crit_edge708:                                   ; preds = %._crit_edge708.loopexit, %bb.ba
  %i.qa = phi i32 [ %.pre754, %._crit_edge708.loopexit ], [ %i.op, %bb.ba ]
  %i.qb = phi i32 [ %.pre753, %._crit_edge708.loopexit ], [ %i.oj, %bb.ba ] ; 3 uses
  %.not610 = icmp sgt i32 %i.qb, %i.qa
  br i1 %.not610, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge708
  %i.qc = mul nsw i32 %i.qb, %i.q
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [8 x i8], ptr %i.s, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 8
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !34
  %i.qh = sext i32 %i.qb to i64
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.qh
  store double %i.qg, ptr %i.qi, align 8, !tbaa !34
  br label %.loopexit

bb.bj:                                            ; preds = %thread-pre-split630
  %i.qj = icmp sgt i32 %i.ok, 0
  br i1 %i.qj, label %bb.bk, label %.thread632

bb.bk:                                            ; preds = %bb.bj
  %i.qk = load i32, ptr %2, align 4, !tbaa !31
  %i.ql = icmp slt i32 %i.oj, %i.qk
  br i1 %i.ql, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %bb.bk
  %i.qm = add nsw i32 %i.oj, 1
  %i.qn = mul nsw i32 %i.qm, %i.q
  %i.qo = add nsw i32 %i.qn, %i.ok
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.qp
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !34
  store double %i.qr, ptr %i.k, align 8, !tbaa !34
  %i.qs = icmp sgt i32 %i.oj, 0
  br i1 %i.qs, label %.lr.ph695, label %.loopexit

.lr.ph695:                                        ; preds = %bb.bl
  %i.qt = add i32 %i.y, 1
  %i.qu = zext nneg i32 %i.oj to i64
  %i.qv = sext i32 %i.q to i64
  %i.qw = sext i32 %i.y to i64
  %invariant.gep789 = getelementptr [8 x i8], ptr %i.aa, i64 %i.qw
  br label %bb.bm

bb.bm:                                            ; preds = %.lr.ph695, %bb.bq
  %indvars.iv731 = phi i64 [ %i.qu, %.lr.ph695 ], [ %indvars.iv.next732, %bb.bq ] ; 7 uses
  %i.qx = load i32, ptr %5, align 4, !tbaa !31
  %i.qy = mul nsw i64 %indvars.iv731, %i.qv       ; 2 uses
  %i.qz = trunc nsw i64 %i.qy to i32
  %i.ra = add i32 %i.qz, 1
  %i.rb = add i32 %i.ra, %i.qx
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.rc
  call void @dlartg_(ptr noundef %i.rd, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j) #5
  %i.re = load double, ptr %i.j, align 8, !tbaa !34
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv731
  store double %i.re, ptr %i.rf, align 8, !tbaa !34
  %.not607 = icmp eq i64 %indvars.iv731, 1
  br i1 %.not607, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rg = load double, ptr %i.n, align 8, !tbaa !34
  %i.rh = fneg double %i.rg
  %i.ri = load i32, ptr %5, align 4, !tbaa !31
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr [8 x i8], ptr %i.s, i64 %i.qy
  %i.rl = getelementptr [8 x i8], ptr %i.rk, i64 %i.rj
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !34 ; 2 uses
  %i.rn = fmul double %i.rm, %i.rh
  store double %i.rn, ptr %i.k, align 8, !tbaa !34
  %i.ro = load double, ptr %i.l, align 8, !tbaa !34
  %i.rp = fmul double %i.rm, %i.ro
  %i.rq = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv731
  %i.rr = getelementptr i8, ptr %i.rq, i64 -8
  store double %i.rp, ptr %i.rr, align 8, !tbaa !34
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.am, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %gep790 = getelementptr [8 x i8], ptr %invariant.gep789, i64 %indvars.iv731
  %i.rs = load i32, ptr %1, align 4, !tbaa !31
  %i.rt = add i32 %i.qt, %i.rs
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ru
  call void @drot_(ptr noundef nonnull %2, ptr noundef %gep790, ptr noundef nonnull %13, ptr noundef %i.rv, ptr noundef nonnull %13, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n) #5
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %indvars.iv.next732 = add nsw i64 %indvars.iv731, -1
  %18 = icmp samesign ugt i64 %indvars.iv731, 1
  br i1 %18, label %bb.bm, label %.loopexit, !llvm.loop !18

bb.br:                                            ; preds = %bb.bk
  %.not605.not684 = icmp sgt i32 %., 1
  br i1 %.not605.not684, label %iter.check, label %._crit_edge688

iter.check:                                       ; preds = %bb.br
  %i.rw = sext i32 %i.q to i64                    ; 9 uses
  %i.rx = zext nneg i32 %i.ok to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %. to i64      ; 4 uses
  %invariant.gep785 = getelementptr [8 x i8], ptr %i.s, i64 %i.rx ; 11 uses
  %i.ry = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp samesign ugt i32 %., 4
  %ident.check.not = icmp eq i32 %i.q, 1
  %or.cond872 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond872, label %vector.memcheck, label %.lr.ph687.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.rz = shl nuw nsw i64 %i.rx, 3
  %i.sa = add i64 %i.rz, %i.c
  %i.sb = sub i64 %i.sa, %i.b
  %diff.check = icmp ugt i64 %i.sb, -128
  br i1 %diff.check, label %.lr.ph687.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check795 = icmp samesign ult i32 %., 17
  br i1 %min.iters.check795, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sc = and i64 %i.ry, 12
  %n.vec = and i64 %i.ry, -16                     ; 4 uses
  %i.sd = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.se = getelementptr [8 x i8], ptr %invariant.gep785, i64 %index ; 4 uses
  %i.sf = getelementptr i8, ptr %i.se, i64 16
  %i.sg = getelementptr i8, ptr %i.se, i64 48
  %i.sh = getelementptr i8, ptr %i.se, i64 80
  %i.si = getelementptr i8, ptr %i.se, i64 112
  %wide.load = load <4 x double>, ptr %i.sf, align 8, !tbaa !34
  %wide.load796 = load <4 x double>, ptr %i.sg, align 8, !tbaa !34
  %wide.load797 = load <4 x double>, ptr %i.sh, align 8, !tbaa !34
  %wide.load798 = load <4 x double>, ptr %i.si, align 8, !tbaa !34
  %i.sj = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 64
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 96
  store <4 x double> %wide.load, ptr %i.sj, align 8, !tbaa !34
  store <4 x double> %wide.load796, ptr %i.sk, align 8, !tbaa !34
  store <4 x double> %wide.load797, ptr %i.sl, align 8, !tbaa !34
  store <4 x double> %wide.load798, ptr %i.sm, align 8, !tbaa !34
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.sn = icmp eq i64 %index.next, %n.vec
  br i1 %i.sn, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ry, %n.vec
  br i1 %cmp.n, label %iter.check824, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph687.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec799 = and i64 %i.ry, -4                   ; 3 uses
  %i.so = or disjoint i64 %n.vec799, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index800 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next802, %vec.epilog.vector.body ] ; 3 uses
  %i.sp = getelementptr [8 x i8], ptr %invariant.gep785, i64 %index800
  %i.sq = getelementptr i8, ptr %i.sp, i64 16
  %wide.load801 = load <4 x double>, ptr %i.sq, align 8, !tbaa !34
  %i.sr = getelementptr [8 x i8], ptr %9, i64 %index800
  store <4 x double> %wide.load801, ptr %i.sr, align 8, !tbaa !34
  %index.next802 = add nuw i64 %index800, 4       ; 2 uses
  %i.ss = icmp eq i64 %index.next802, %n.vec799
  br i1 %i.ss, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n803 = icmp eq i64 %i.ry, %n.vec799
  br i1 %cmp.n803, label %iter.check824, label %.lr.ph687.preheader

.lr.ph687.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv722.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.sd, %vec.epilog.iter.check ], [ %i.so, %vec.epilog.middle.block ] ; 4 uses
  %i.st = sub nsw i64 %wide.trip.count, %indvars.iv722.ph
  %xtraiter = and i64 %i.st, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph687.prol.loopexit, label %.lr.ph687.prol

.lr.ph687.prol:                                   ; preds = %.lr.ph687.preheader, %.lr.ph687.prol
  %indvars.iv722.prol = phi i64 [ %indvars.iv.next723.prol, %.lr.ph687.prol ], [ %indvars.iv722.ph, %.lr.ph687.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph687.prol ], [ 0, %.lr.ph687.preheader ]
  %indvars.iv.next723.prol = add nuw nsw i64 %indvars.iv722.prol, 1 ; 3 uses
  %i.su = mul nsw i64 %indvars.iv.next723.prol, %i.rw
  %gep786.prol = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.su
  %i.sv = load double, ptr %gep786.prol, align 8, !tbaa !34
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv722.prol
  store double %i.sv, ptr %i.sw, align 8, !tbaa !34
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph687.prol.loopexit, label %.lr.ph687.prol, !llvm.loop !21

.lr.ph687.prol.loopexit:                          ; preds = %.lr.ph687.prol, %.lr.ph687.preheader
  %indvars.iv722.unr = phi i64 [ %indvars.iv722.ph, %.lr.ph687.preheader ], [ %indvars.iv.next723.prol, %.lr.ph687.prol ]
  %i.sx = sub nsw i64 %indvars.iv722.ph, %wide.trip.count
  %i.sy = icmp ugt i64 %i.sx, -8
  br i1 %i.sy, label %iter.check824, label %.lr.ph687

.lr.ph687:                                        ; preds = %.lr.ph687.prol.loopexit, %.lr.ph687
  %indvars.iv722 = phi i64 [ %indvars.iv.next723.7, %.lr.ph687 ], [ %indvars.iv722.unr, %.lr.ph687.prol.loopexit ] ; 10 uses
  %indvars.iv.next723 = add nuw nsw i64 %indvars.iv722, 1
  %i.sz = mul nsw i64 %indvars.iv.next723, %i.rw
  %gep786 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.sz
  %i.ta = load double, ptr %gep786, align 8, !tbaa !34
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv722
  store double %i.ta, ptr %i.tb, align 8, !tbaa !34
  %indvars.iv.next723.1 = add nuw nsw i64 %indvars.iv722, 2 ; 2 uses
  %i.tc = mul nsw i64 %indvars.iv.next723.1, %i.rw
  %gep786.1 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tc
  %i.td = load double, ptr %gep786.1, align 8, !tbaa !34
  %i.te = getelementptr [8 x i8], ptr %9, i64 %indvars.iv722
  store double %i.td, ptr %i.te, align 8, !tbaa !34
  %indvars.iv.next723.2 = add nuw nsw i64 %indvars.iv722, 3 ; 2 uses
  %i.tf = mul nsw i64 %indvars.iv.next723.2, %i.rw
  %gep786.2 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tf
  %i.tg = load double, ptr %gep786.2, align 8, !tbaa !34
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.1
  store double %i.tg, ptr %i.th, align 8, !tbaa !34
  %indvars.iv.next723.3 = add nuw nsw i64 %indvars.iv722, 4 ; 2 uses
  %i.ti = mul nsw i64 %indvars.iv.next723.3, %i.rw
  %gep786.3 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.ti
  %i.tj = load double, ptr %gep786.3, align 8, !tbaa !34
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.2
  store double %i.tj, ptr %i.tk, align 8, !tbaa !34
  %indvars.iv.next723.4 = add nuw nsw i64 %indvars.iv722, 5 ; 2 uses
  %i.tl = mul nsw i64 %indvars.iv.next723.4, %i.rw
  %gep786.4 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tl
  %i.tm = load double, ptr %gep786.4, align 8, !tbaa !34
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.3
  store double %i.tm, ptr %i.tn, align 8, !tbaa !34
  %indvars.iv.next723.5 = add nuw nsw i64 %indvars.iv722, 6 ; 2 uses
  %i.to = mul nsw i64 %indvars.iv.next723.5, %i.rw
  %gep786.5 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.to
  %i.tp = load double, ptr %gep786.5, align 8, !tbaa !34
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.4
  store double %i.tp, ptr %i.tq, align 8, !tbaa !34
  %indvars.iv.next723.6 = add nuw nsw i64 %indvars.iv722, 7 ; 2 uses
  %i.tr = mul nsw i64 %indvars.iv.next723.6, %i.rw
  %gep786.6 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tr
  %i.ts = load double, ptr %gep786.6, align 8, !tbaa !34
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.5
  store double %i.ts, ptr %i.tt, align 8, !tbaa !34
  %indvars.iv.next723.7 = add nuw nsw i64 %indvars.iv722, 8 ; 3 uses
  %i.tu = mul nsw i64 %indvars.iv.next723.7, %i.rw
  %gep786.7 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.tu
  %i.tv = load double, ptr %gep786.7, align 8, !tbaa !34
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next723.6
  store double %i.tv, ptr %i.tw, align 8, !tbaa !34
  %exitcond725.not.7 = icmp eq i64 %indvars.iv.next723.7, %wide.trip.count
  br i1 %exitcond725.not.7, label %iter.check824, label %.lr.ph687, !llvm.loop !22

._crit_edge688:                                   ; preds = %bb.br
  %.not606689.not = icmp eq i32 %., 1
  br i1 %.not606689.not, label %iter.check824, label %.loopexit

iter.check824:                                    ; preds = %.lr.ph687.prol.loopexit, %.lr.ph687, %middle.block, %vec.epilog.middle.block, %._crit_edge688
  %i.tx = sext i32 %i.q to i64                    ; 9 uses
  %i.ty = add nuw i32 %., 1
  %wide.trip.count729 = zext i32 %i.ty to i64     ; 2 uses
  %i.tz = zext nneg i32 %i.ok to i64              ; 2 uses
  %invariant.gep787 = getelementptr [8 x i8], ptr %i.s, i64 %i.tz ; 11 uses
  %i.ua = zext nneg i32 %. to i64                 ; 5 uses
  %min.iters.check808 = icmp samesign ugt i32 %., 3
  %ident.check805.not = icmp eq i32 %i.q, 1
  %or.cond873 = select i1 %min.iters.check808, i1 %ident.check805.not, i1 false
  br i1 %or.cond873, label %vector.memcheck809, label %vec.epilog.scalar.ph826.preheader

vector.memcheck809:                               ; preds = %iter.check824
  %i.ub = shl nuw nsw i64 %i.tz, 3
  %i.uc = add i64 %i.ub, %i.c
  %i.ud = sub i64 %i.uc, %i.a
  %diff.check810 = icmp ugt i64 %i.ud, -128
  br i1 %diff.check810, label %vec.epilog.scalar.ph826.preheader, label %vector.main.loop.iter.check811

vector.main.loop.iter.check811:                   ; preds = %vector.memcheck809
  %min.iters.check812 = icmp samesign ult i32 %., 16
  br i1 %min.iters.check812, label %vec.epilog.ph828, label %vector.ph813

vector.ph813:                                     ; preds = %vector.main.loop.iter.check811
  %i.ue = and i64 %i.ua, 12
  %n.vec814 = and i64 %i.ua, 2147483632           ; 4 uses
  %i.uf = or disjoint i64 %n.vec814, 1
  br label %vector.body815

vector.body815:                                   ; preds = %vector.ph813, %vector.body815
  %index816 = phi i64 [ 0, %vector.ph813 ], [ %index.next821, %vector.body815 ] ; 3 uses
  %i.ug = getelementptr [8 x i8], ptr %invariant.gep787, i64 %index816 ; 4 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %i.ui = getelementptr i8, ptr %i.ug, i64 48
  %i.uj = getelementptr i8, ptr %i.ug, i64 80
  %i.uk = getelementptr i8, ptr %i.ug, i64 112
  %wide.load817 = load <4 x double>, ptr %i.uh, align 8, !tbaa !34
  %wide.load818 = load <4 x double>, ptr %i.ui, align 8, !tbaa !34
  %wide.load819 = load <4 x double>, ptr %i.uj, align 8, !tbaa !34
  %wide.load820 = load <4 x double>, ptr %i.uk, align 8, !tbaa !34
  %i.ul = getelementptr [8 x i8], ptr %8, i64 %index816 ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ul, i64 96
  store <4 x double> %wide.load817, ptr %i.ul, align 8, !tbaa !34
  store <4 x double> %wide.load818, ptr %i.um, align 8, !tbaa !34
  store <4 x double> %wide.load819, ptr %i.un, align 8, !tbaa !34
  store <4 x double> %wide.load820, ptr %i.uo, align 8, !tbaa !34
  %index.next821 = add nuw i64 %index816, 16      ; 2 uses
  %i.up = icmp eq i64 %index.next821, %n.vec814
  br i1 %i.up, label %middle.block822, label %vector.body815, !llvm.loop !23

middle.block822:                                  ; preds = %vector.body815
  %cmp.n823 = icmp eq i64 %n.vec814, %i.ua
  br i1 %cmp.n823, label %.loopexit, label %vec.epilog.iter.check825

vec.epilog.iter.check825:                         ; preds = %middle.block822
  %min.epilog.iters.check827 = icmp eq i64 %i.ue, 0
  br i1 %min.epilog.iters.check827, label %vec.epilog.scalar.ph826.preheader, label %vec.epilog.ph828, !prof !37

vec.epilog.ph828:                                 ; preds = %vector.main.loop.iter.check811, %vec.epilog.iter.check825
  %vec.epilog.resume.val829 = phi i64 [ %n.vec814, %vec.epilog.iter.check825 ], [ 0, %vector.main.loop.iter.check811 ]
  %n.vec830 = and i64 %i.ua, 2147483644           ; 3 uses
  %i.uq = or disjoint i64 %n.vec830, 1
  br label %vec.epilog.vector.body831

vec.epilog.vector.body831:                        ; preds = %vec.epilog.vector.body831, %vec.epilog.ph828
  %index832 = phi i64 [ %vec.epilog.resume.val829, %vec.epilog.ph828 ], [ %index.next834, %vec.epilog.vector.body831 ] ; 3 uses
  %i.ur = getelementptr [8 x i8], ptr %invariant.gep787, i64 %index832
  %i.us = getelementptr i8, ptr %i.ur, i64 16
  %wide.load833 = load <4 x double>, ptr %i.us, align 8, !tbaa !34
  %i.ut = getelementptr [8 x i8], ptr %8, i64 %index832
  store <4 x double> %wide.load833, ptr %i.ut, align 8, !tbaa !34
  %index.next834 = add nuw i64 %index832, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next834, %n.vec830
  br i1 %i.uu, label %vec.epilog.middle.block835, label %vec.epilog.vector.body831, !llvm.loop !24

vec.epilog.middle.block835:                       ; preds = %vec.epilog.vector.body831
  %cmp.n836 = icmp eq i64 %n.vec830, %i.ua
  br i1 %cmp.n836, label %.loopexit, label %vec.epilog.scalar.ph826.preheader

vec.epilog.scalar.ph826.preheader:                ; preds = %iter.check824, %vector.memcheck809, %vec.epilog.iter.check825, %vec.epilog.middle.block835
  %indvars.iv726.ph = phi i64 [ 1, %iter.check824 ], [ 1, %vector.memcheck809 ], [ %i.uf, %vec.epilog.iter.check825 ], [ %i.uq, %vec.epilog.middle.block835 ] ; 4 uses
  %19 = sub nsw i64 %wide.trip.count729, %indvars.iv726.ph
  %20 = zext i32 %. to i64
  %i.uv = sub nsw i64 %20, %indvars.iv726.ph
  %xtraiter879 = and i64 %19, 7                   ; 2 uses
  %lcmp.mod880.not = icmp eq i64 %xtraiter879, 0
  br i1 %lcmp.mod880.not, label %vec.epilog.scalar.ph826.prol.loopexit, label %vec.epilog.scalar.ph826.prol

vec.epilog.scalar.ph826.prol:                     ; preds = %vec.epilog.scalar.ph826.preheader, %vec.epilog.scalar.ph826.prol
  %indvars.iv726.prol = phi i64 [ %indvars.iv.next727.prol, %vec.epilog.scalar.ph826.prol ], [ %indvars.iv726.ph, %vec.epilog.scalar.ph826.preheader ] ; 3 uses
  %prol.iter881 = phi i64 [ %prol.iter881.next, %vec.epilog.scalar.ph826.prol ], [ 0, %vec.epilog.scalar.ph826.preheader ]
  %i.uw = mul nsw i64 %indvars.iv726.prol, %i.tx
  %gep788.prol = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.uw
  %i.ux = getelementptr i8, ptr %gep788.prol, i64 8
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !34
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv726.prol
  store double %i.uy, ptr %i.uz, align 8, !tbaa !34
  %indvars.iv.next727.prol = add nuw nsw i64 %indvars.iv726.prol, 1 ; 2 uses
  %prol.iter881.next = add i64 %prol.iter881, 1   ; 2 uses
  %prol.iter881.cmp.not = icmp eq i64 %prol.iter881.next, %xtraiter879
  br i1 %prol.iter881.cmp.not, label %vec.epilog.scalar.ph826.prol.loopexit, label %vec.epilog.scalar.ph826.prol, !llvm.loop !25

vec.epilog.scalar.ph826.prol.loopexit:            ; preds = %vec.epilog.scalar.ph826.prol, %vec.epilog.scalar.ph826.preheader
  %indvars.iv726.unr = phi i64 [ %indvars.iv726.ph, %vec.epilog.scalar.ph826.preheader ], [ %indvars.iv.next727.prol, %vec.epilog.scalar.ph826.prol ]
  %21 = icmp ult i64 %i.uv, 7
  br i1 %21, label %.loopexit, label %vec.epilog.scalar.ph826

vec.epilog.scalar.ph826:                          ; preds = %vec.epilog.scalar.ph826.prol.loopexit, %vec.epilog.scalar.ph826
  %indvars.iv726 = phi i64 [ %indvars.iv.next727.7, %vec.epilog.scalar.ph826 ], [ %indvars.iv726.unr, %vec.epilog.scalar.ph826.prol.loopexit ] ; 11 uses
  %i.va = mul nsw i64 %indvars.iv726, %i.tx
  %gep788 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.va
  %i.vb = getelementptr i8, ptr %gep788, i64 8
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !34
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv726
  store double %i.vc, ptr %i.vd, align 8, !tbaa !34
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1
  %i.ve = mul nsw i64 %indvars.iv.next727, %i.tx
  %gep788.1 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.ve
  %i.vf = getelementptr i8, ptr %gep788.1, i64 8
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !34
  %i.vh = getelementptr [8 x i8], ptr %8, i64 %indvars.iv726
  store double %i.vg, ptr %i.vh, align 8, !tbaa !34
  %indvars.iv.next727.1 = add nuw nsw i64 %indvars.iv726, 2 ; 2 uses
  %i.vi = mul nsw i64 %indvars.iv.next727.1, %i.tx
  %gep788.2 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vi
  %i.vj = getelementptr i8, ptr %gep788.2, i64 8
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !34
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.1
  store double %i.vk, ptr %i.vl, align 8, !tbaa !34
  %indvars.iv.next727.2 = add nuw nsw i64 %indvars.iv726, 3 ; 2 uses
  %i.vm = mul nsw i64 %indvars.iv.next727.2, %i.tx
  %gep788.3 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vm
  %i.vn = getelementptr i8, ptr %gep788.3, i64 8
  %i.vo = load double, ptr %i.vn, align 8, !tbaa !34
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.2
  store double %i.vo, ptr %i.vp, align 8, !tbaa !34
  %indvars.iv.next727.3 = add nuw nsw i64 %indvars.iv726, 4 ; 2 uses
  %i.vq = mul nsw i64 %indvars.iv.next727.3, %i.tx
  %gep788.4 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vq
  %i.vr = getelementptr i8, ptr %gep788.4, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !34
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.3
  store double %i.vs, ptr %i.vt, align 8, !tbaa !34
  %indvars.iv.next727.4 = add nuw nsw i64 %indvars.iv726, 5 ; 2 uses
  %i.vu = mul nsw i64 %indvars.iv.next727.4, %i.tx
  %gep788.5 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vu
  %i.vv = getelementptr i8, ptr %gep788.5, i64 8
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !34
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.4
  store double %i.vw, ptr %i.vx, align 8, !tbaa !34
  %indvars.iv.next727.5 = add nuw nsw i64 %indvars.iv726, 6 ; 2 uses
  %i.vy = mul nsw i64 %indvars.iv.next727.5, %i.tx
  %gep788.6 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.vy
  %i.vz = getelementptr i8, ptr %gep788.6, i64 8
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !34
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.5
  store double %i.wa, ptr %i.wb, align 8, !tbaa !34
  %indvars.iv.next727.6 = add nuw nsw i64 %indvars.iv726, 7 ; 2 uses
  %i.wc = mul nsw i64 %indvars.iv.next727.6, %i.tx
  %gep788.7 = getelementptr [8 x i8], ptr %invariant.gep787, i64 %i.wc
  %i.wd = getelementptr i8, ptr %gep788.7, i64 8
  %i.we = load double, ptr %i.wd, align 8, !tbaa !34
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next727.6
  store double %i.we, ptr %i.wf, align 8, !tbaa !34
  %indvars.iv.next727.7 = add nuw nsw i64 %indvars.iv726, 8 ; 2 uses
  %exitcond730.not.7 = icmp eq i64 %indvars.iv.next727.7, %wide.trip.count729
  br i1 %exitcond730.not.7, label %.loopexit, label %vec.epilog.scalar.ph826, !llvm.loop !26

.thread632:                                       ; preds = %bb.az, %bb.bj
  %.not603.not696 = icmp sgt i32 %., 1
  br i1 %.not603.not696, label %._crit_edge699.thread, label %._crit_edge699

._crit_edge699.thread:                            ; preds = %.thread632
  %i.wg = add nsw i32 %., -1
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = shl nuw nsw i64 %i.wh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 %i.wi, i1 false), !tbaa !34
  br label %iter.check858

._crit_edge699:                                   ; preds = %.thread632
  %.not604700.not = icmp eq i32 %., 1
  br i1 %.not604700.not, label %iter.check858, label %.loopexit

iter.check858:                                    ; preds = %._crit_edge699.thread, %._crit_edge699
  %i.wj = sext i32 %i.q to i64                    ; 9 uses
  %i.wk = add nuw i32 %., 1
  %wide.trip.count740 = zext i32 %i.wk to i64     ; 2 uses
  %i.wl = zext nneg i32 %. to i64                 ; 5 uses
  %min.iters.check842 = icmp samesign ult i32 %., 4
  %ident.check839.not = icmp ne i32 %i.q, 1
  %or.cond874.not876 = select i1 %min.iters.check842, i1 true, i1 %ident.check839.not
  %i.wm = sub i64 %i.c, %i.a
  %diff.check844 = icmp ugt i64 %i.wm, -128
  %or.cond875 = or i1 %or.cond874.not876, %diff.check844
  br i1 %or.cond875, label %.lr.ph703.preheader, label %vector.main.loop.iter.check845

vector.main.loop.iter.check845:                   ; preds = %iter.check858
  %min.iters.check846 = icmp samesign ult i32 %., 16
  br i1 %min.iters.check846, label %vec.epilog.ph862, label %vector.ph847

vector.ph847:                                     ; preds = %vector.main.loop.iter.check845
  %i.wn = and i64 %i.wl, 12
  %n.vec848 = and i64 %i.wl, 2147483632           ; 4 uses
  %i.wo = or disjoint i64 %n.vec848, 1
  br label %vector.body849

vector.body849:                                   ; preds = %vector.ph847, %vector.body849
  %index850 = phi i64 [ 0, %vector.ph847 ], [ %index.next855, %vector.body849 ] ; 3 uses
  %i.wp = getelementptr [8 x i8], ptr %i.s, i64 %index850 ; 4 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %i.wr = getelementptr i8, ptr %i.wp, i64 48
  %i.ws = getelementptr i8, ptr %i.wp, i64 80
  %i.wt = getelementptr i8, ptr %i.wp, i64 112
  %wide.load851 = load <4 x double>, ptr %i.wq, align 8, !tbaa !34
  %wide.load852 = load <4 x double>, ptr %i.wr, align 8, !tbaa !34
  %wide.load853 = load <4 x double>, ptr %i.ws, align 8, !tbaa !34
  %wide.load854 = load <4 x double>, ptr %i.wt, align 8, !tbaa !34
  %i.wu = getelementptr [8 x i8], ptr %8, i64 %index850 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 96
  store <4 x double> %wide.load851, ptr %i.wu, align 8, !tbaa !34
  store <4 x double> %wide.load852, ptr %i.wv, align 8, !tbaa !34
  store <4 x double> %wide.load853, ptr %i.ww, align 8, !tbaa !34
  store <4 x double> %wide.load854, ptr %i.wx, align 8, !tbaa !34
  %index.next855 = add nuw i64 %index850, 16      ; 2 uses
  %i.wy = icmp eq i64 %index.next855, %n.vec848
  br i1 %i.wy, label %middle.block856, label %vector.body849, !llvm.loop !27

middle.block856:                                  ; preds = %vector.body849
  %cmp.n857 = icmp eq i64 %n.vec848, %i.wl
  br i1 %cmp.n857, label %.loopexit, label %vec.epilog.iter.check859

vec.epilog.iter.check859:                         ; preds = %middle.block856
  %min.epilog.iters.check861 = icmp eq i64 %i.wn, 0
  br i1 %min.epilog.iters.check861, label %.lr.ph703.preheader, label %vec.epilog.ph862, !prof !37

vec.epilog.ph862:                                 ; preds = %vector.main.loop.iter.check845, %vec.epilog.iter.check859
  %vec.epilog.resume.val863 = phi i64 [ %n.vec848, %vec.epilog.iter.check859 ], [ 0, %vector.main.loop.iter.check845 ]
  %n.vec864 = and i64 %i.wl, 2147483644           ; 3 uses
  %i.wz = or disjoint i64 %n.vec864, 1
  br label %vec.epilog.vector.body865

vec.epilog.vector.body865:                        ; preds = %vec.epilog.vector.body865, %vec.epilog.ph862
  %index866 = phi i64 [ %vec.epilog.resume.val863, %vec.epilog.ph862 ], [ %index.next868, %vec.epilog.vector.body865 ] ; 3 uses
  %i.xa = getelementptr [8 x i8], ptr %i.s, i64 %index866
  %i.xb = getelementptr i8, ptr %i.xa, i64 16
  %wide.load867 = load <4 x double>, ptr %i.xb, align 8, !tbaa !34
  %i.xc = getelementptr [8 x i8], ptr %8, i64 %index866
  store <4 x double> %wide.load867, ptr %i.xc, align 8, !tbaa !34
  %index.next868 = add nuw i64 %index866, 4       ; 2 uses
  %i.xd = icmp eq i64 %index.next868, %n.vec864
  br i1 %i.xd, label %vec.epilog.middle.block869, label %vec.epilog.vector.body865, !llvm.loop !28

vec.epilog.middle.block869:                       ; preds = %vec.epilog.vector.body865
  %cmp.n870 = icmp eq i64 %n.vec864, %i.wl
  br i1 %cmp.n870, label %.loopexit, label %.lr.ph703.preheader

.lr.ph703.preheader:                              ; preds = %iter.check858, %vec.epilog.iter.check859, %vec.epilog.middle.block869
  %indvars.iv737.ph = phi i64 [ 1, %iter.check858 ], [ %i.wo, %vec.epilog.iter.check859 ], [ %i.wz, %vec.epilog.middle.block869 ] ; 4 uses
  %22 = sub nsw i64 %wide.trip.count740, %indvars.iv737.ph
  %23 = zext i32 %. to i64
  %i.xe = sub nsw i64 %23, %indvars.iv737.ph
  %xtraiter882 = and i64 %22, 7                   ; 2 uses
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  br i1 %lcmp.mod883.not, label %.lr.ph703.prol.loopexit, label %.lr.ph703.prol

.lr.ph703.prol:                                   ; preds = %.lr.ph703.preheader, %.lr.ph703.prol
  %indvars.iv737.prol = phi i64 [ %indvars.iv.next738.prol, %.lr.ph703.prol ], [ %indvars.iv737.ph, %.lr.ph703.preheader ] ; 3 uses
  %prol.iter884 = phi i64 [ %prol.iter884.next, %.lr.ph703.prol ], [ 0, %.lr.ph703.preheader ]
  %i.xf = mul nsw i64 %indvars.iv737.prol, %i.wj
  %i.xg = getelementptr [8 x i8], ptr %i.s, i64 %i.xf
  %i.xh = getelementptr i8, ptr %i.xg, i64 8
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !34
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv737.prol
  store double %i.xi, ptr %i.xj, align 8, !tbaa !34
  %indvars.iv.next738.prol = add nuw nsw i64 %indvars.iv737.prol, 1 ; 2 uses
  %prol.iter884.next = add i64 %prol.iter884, 1   ; 2 uses
  %prol.iter884.cmp.not = icmp eq i64 %prol.iter884.next, %xtraiter882
  br i1 %prol.iter884.cmp.not, label %.lr.ph703.prol.loopexit, label %.lr.ph703.prol, !llvm.loop !29

.lr.ph703.prol.loopexit:                          ; preds = %.lr.ph703.prol, %.lr.ph703.preheader
  %indvars.iv737.unr = phi i64 [ %indvars.iv737.ph, %.lr.ph703.preheader ], [ %indvars.iv.next738.prol, %.lr.ph703.prol ]
  %24 = icmp ult i64 %i.xe, 7
  br i1 %24, label %.loopexit, label %.lr.ph703

.lr.ph703:                                        ; preds = %.lr.ph703.prol.loopexit, %.lr.ph703
  %indvars.iv737 = phi i64 [ %indvars.iv.next738.7, %.lr.ph703 ], [ %indvars.iv737.unr, %.lr.ph703.prol.loopexit ] ; 11 uses
  %i.xk = mul nsw i64 %indvars.iv737, %i.wj
  %i.xl = getelementptr [8 x i8], ptr %i.s, i64 %i.xk
  %i.xm = getelementptr i8, ptr %i.xl, i64 8
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !34
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv737
  store double %i.xn, ptr %i.xo, align 8, !tbaa !34
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1
  %i.xp = mul nsw i64 %indvars.iv.next738, %i.wj
  %i.xq = getelementptr [8 x i8], ptr %i.s, i64 %i.xp
  %i.xr = getelementptr i8, ptr %i.xq, i64 8
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !34
  %i.xt = getelementptr [8 x i8], ptr %8, i64 %indvars.iv737
  store double %i.xs, ptr %i.xt, align 8, !tbaa !34
  %indvars.iv.next738.1 = add nuw nsw i64 %indvars.iv737, 2 ; 2 uses
  %i.xu = mul nsw i64 %indvars.iv.next738.1, %i.wj
  %i.xv = getelementptr [8 x i8], ptr %i.s, i64 %i.xu
  %i.xw = getelementptr i8, ptr %i.xv, i64 8
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !34
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.1
  store double %i.xx, ptr %i.xy, align 8, !tbaa !34
  %indvars.iv.next738.2 = add nuw nsw i64 %indvars.iv737, 3 ; 2 uses
  %i.xz = mul nsw i64 %indvars.iv.next738.2, %i.wj
  %i.ya = getelementptr [8 x i8], ptr %i.s, i64 %i.xz
  %i.yb = getelementptr i8, ptr %i.ya, i64 8
  %i.yc = load double, ptr %i.yb, align 8, !tbaa !34
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.2
  store double %i.yc, ptr %i.yd, align 8, !tbaa !34
  %indvars.iv.next738.3 = add nuw nsw i64 %indvars.iv737, 4 ; 2 uses
  %i.ye = mul nsw i64 %indvars.iv.next738.3, %i.wj
  %i.yf = getelementptr [8 x i8], ptr %i.s, i64 %i.ye
  %i.yg = getelementptr i8, ptr %i.yf, i64 8
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !34
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.3
  store double %i.yh, ptr %i.yi, align 8, !tbaa !34
  %indvars.iv.next738.4 = add nuw nsw i64 %indvars.iv737, 5 ; 2 uses
  %i.yj = mul nsw i64 %indvars.iv.next738.4, %i.wj
  %i.yk = getelementptr [8 x i8], ptr %i.s, i64 %i.yj
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  %i.ym = load double, ptr %i.yl, align 8, !tbaa !34
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.4
  store double %i.ym, ptr %i.yn, align 8, !tbaa !34
  %indvars.iv.next738.5 = add nuw nsw i64 %indvars.iv737, 6 ; 2 uses
  %i.yo = mul nsw i64 %indvars.iv.next738.5, %i.wj
  %i.yp = getelementptr [8 x i8], ptr %i.s, i64 %i.yo
  %i.yq = getelementptr i8, ptr %i.yp, i64 8
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !34
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.5
  store double %i.yr, ptr %i.ys, align 8, !tbaa !34
  %indvars.iv.next738.6 = add nuw nsw i64 %indvars.iv737, 7 ; 2 uses
  %i.yt = mul nsw i64 %indvars.iv.next738.6, %i.wj
  %i.yu = getelementptr [8 x i8], ptr %i.s, i64 %i.yt
  %i.yv = getelementptr i8, ptr %i.yu, i64 8
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !34
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next738.6
  store double %i.yw, ptr %i.yx, align 8, !tbaa !34
  %indvars.iv.next738.7 = add nuw nsw i64 %indvars.iv737, 8 ; 2 uses
  %exitcond741.not.7 = icmp eq i64 %indvars.iv.next738.7, %wide.trip.count740
  br i1 %exitcond741.not.7, label %.loopexit, label %.lr.ph703, !llvm.loop !30

.loopexit:                                        ; preds = %vec.epilog.scalar.ph826.prol.loopexit, %vec.epilog.scalar.ph826, %bb.bq, %.lr.ph703.prol.loopexit, %.lr.ph703, %middle.block822, %vec.epilog.middle.block835, %middle.block856, %vec.epilog.middle.block869, %._crit_edge688, %bb.bl, %._crit_edge699, %bb.bi, %._crit_edge708, %bb.w, %bb.x, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !32}
!9 = distinct !{!9, !32}
!10 = distinct !{!10, !32}
!11 = distinct !{!11, !32}
!12 = distinct !{!12, !32}
!13 = distinct !{!13, !32}
!14 = distinct !{!14, !32}
!15 = distinct !{!15, !32}
!16 = distinct !{!16, !32}
!17 = distinct !{!17, !32}
!18 = distinct !{!18, !32}
!19 = distinct !{!19, !32, !35, !36}
!20 = distinct !{!20, !32, !35, !36}
!21 = distinct !{!21, !38}
!22 = distinct !{!22, !32, !35}
!23 = distinct !{!23, !32, !35, !36}
!24 = distinct !{!24, !32, !35, !36}
!25 = distinct !{!25, !38}
!26 = distinct !{!26, !32, !35}
!27 = distinct !{!27, !32, !35, !36}
!28 = distinct !{!28, !32, !35, !36}
!29 = distinct !{!29, !38}
!30 = distinct !{!30, !32, !35}
!31 = !{!5, !5, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"double", !4, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
