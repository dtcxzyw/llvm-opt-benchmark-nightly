Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsbgst?download=true
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0

; Function Attrs: nounwind uwtable
define void @dsbgst_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef captures(none) initializes((0, 4)) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 45 uses
  %i.b = alloca i32, align 4                      ; 28 uses
  %i.c = alloca i32, align 4                      ; 73 uses
  %i.d = alloca i32, align 4                      ; 65 uses
  %i.e = alloca double, align 8                   ; 10 uses
  %i.f = alloca i32, align 4                      ; 67 uses
  %i.g = alloca double, align 8                   ; 10 uses
  %i.h = alloca i32, align 4                      ; 38 uses
  %i.i = alloca i32, align 4                      ; 12 uses
  %i.j = alloca i32, align 4                      ; 120 uses
  %i.k = alloca double, align 8                   ; 22 uses
  %i.l = alloca i32, align 4                      ; 23 uses
  %i.m = alloca i32, align 4                      ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #4
  %i.n = load i32, ptr %6, align 4, !tbaa !151    ; 105 uses
  %narrow = xor i32 %i.n, -1
  %i.o = sext i32 %narrow to i64                  ; 4 uses
  %i.p = getelementptr [8 x i8], ptr %5, i64 %i.o ; 212 uses
  %i.q = load i32, ptr %8, align 4, !tbaa !151    ; 13 uses
  %narrow2639 = xor i32 %i.q, -1
  %i.r = sext i32 %narrow2639 to i64              ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %7, i64 %i.r ; 37 uses
  %i.t = load i32, ptr %10, align 4, !tbaa !151   ; 25 uses
  %narrow2646 = xor i32 %i.t, -1
  %i.u = sext i32 %narrow2646 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %9, i64 %i.u ; 24 uses
  %i.w = getelementptr inbounds i8, ptr %11, i64 -8 ; 199 uses
  %i.x = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #4
  %i.y = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.1) #4
  %.fr = freeze i32 %i.y
  %i.z = load i32, ptr %3, align 4, !tbaa !151
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.j, align 4, !tbaa !151
  %i.ab = load i32, ptr %4, align 4, !tbaa !151   ; 4 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 11 uses
  store i32 0, ptr %12, align 4, !tbaa !151
  %.not = icmp eq i32 %i.x, 0                     ; 15 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %.not2640 = icmp eq i32 %i.ad, 0
  br i1 %.not2640, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not2641 = icmp eq i32 %.fr, 0                 ; 4 uses
  br i1 %.not2641, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call i32 @lsame_(ptr noundef %1, ptr noundef nonnull @.str.3) #4
  %.not2642 = icmp eq i32 %i.ae, 0
  br i1 %.not2642, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = load i32, ptr %2, align 4, !tbaa !151   ; 5 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %3, align 4, !tbaa !151   ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %4, align 4, !tbaa !151   ; 3 uses
  %or.cond2756 = icmp ugt i32 %i.aj, %i.ah
  br i1 %or.cond2756, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %6, align 4, !tbaa !151   ; 2 uses
  %.not2643 = icmp sgt i32 %i.ak, %i.ah
  br i1 %.not2643, label %bb.i, label %.thread.sink.split

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %8, align 4, !tbaa !151
  %.not2644 = icmp sgt i32 %i.al, %i.aj
  br i1 %.not2644, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %10, align 4, !tbaa !151  ; 2 uses
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp samesign ugt i32 %i.af, 1
  %i.ap = icmp samesign ult i32 %i.am, %i.af
  %spec.select = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %spec.select, label %.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.pr = load i32, ptr %12, align 4, !tbaa !151   ; 2 uses
  %.not2645 = icmp eq i32 %.pr, 0
  br i1 %.not2645, label %bb.n, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.l, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sink4180 = phi i32 [ -1, %bb.b ], [ -2, %bb.d ], [ -4, %bb.f ], [ -7, %bb.h ], [ -9, %bb.i ], [ -5, %bb.g ], [ -3, %bb.e ], [ -11, %bb.l ], [ -11, %bb.j ] ; 2 uses
  store i32 %.sink4180, ptr %12, align 4, !tbaa !151
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %i.aq = phi i32 [ %.pr, %bb.m ], [ %.sink4180, %.thread.sink.split ]
  %i.ar = sub nsw i32 0, %i.aq
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !151
  %i.as = call i32 @xerbla_(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, i32 noundef 6) #4 ; 0 uses
  br label %.loopexit2877

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i32 %i.af, 0
  br i1 %i.at, label %.loopexit2877, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = mul nsw i32 %i.aa, %i.ak
  store i32 %i.au, ptr %i.f, align 4, !tbaa !151
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @dlaset_(ptr noundef nonnull @.str.5, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @c_b8, ptr noundef nonnull @c_b9, ptr noundef %9, ptr noundef nonnull %10) #4
  %.pre = load i32, ptr %2, align 4, !tbaa !151
  %.pre3789.a = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.av = phi i32 [ %.pre3789.a, %bb.p ], [ %i.aj, %bb.o ] ; 2 uses
  %i.aw = phi i32 [ %.pre, %bb.p ], [ %i.af, %bb.o ] ; 3 uses
  %i.ax = add nsw i32 %i.av, %i.aw
  %i.ay = sdiv i32 %i.ax, 2                       ; 72 uses
  %i.az = add nsw i32 %i.aw, 1
  %i.ba = add nsw i32 %i.ay, 1                    ; 15 uses
  %i.bb = sext i32 %i.n to i64                    ; 25 uses
  %i.bc = sext i32 %i.q to i64                    ; 14 uses
  %i.bd = sext i32 %i.ay to i64                   ; 16 uses
  %.0255729803501 = add i32 %i.n, -1
  %.0255729803502 = add i32 %i.n, -1              ; 9 uses
  %i.be = shl nsw i64 %i.o, 3                     ; 11 uses
  %scevgep = getelementptr i8, ptr %5, i64 %i.be
  %i.bf = add nsw i64 %i.be, 8                    ; 8 uses
  %scevgep4284 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = shl nsw i64 %i.r, 3                     ; 4 uses
  %i.bh = add nsw i64 %i.bg, 8                    ; 5 uses
  %scevgep4288 = getelementptr i8, ptr %7, i64 %i.bh
  %i.bi = add i32 %i.ab, 1
  %scevgep4290 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4292 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bj = add i32 %i.ab, 1
  %scevgep4340.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4346 = getelementptr i8, ptr %7, i64 %i.bh
  %i.bk = add i32 %i.ab, 1
  %scevgep4348 = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4351 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4353 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4356 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bl = getelementptr i8, ptr %5, i64 %i.bf
  %i.bm = getelementptr i8, ptr %7, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = getelementptr i8, ptr %5, i64 %i.be
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  br label %.outer2886

.outer2886:                                       ; preds = %.loopexit2884, %bb.q
  %.pre3792.a = phi i32 [ %.pre3792.pre, %.loopexit2884 ], [ %i.aw, %bb.q ] ; 6 uses
  %i.bq = phi i32 [ %i.bwf, %.loopexit2884 ], [ %i.av, %bb.q ] ; 5 uses
  %.02605.ph = phi i32 [ %.126062773, %.loopexit2884 ], [ %i.az, %bb.q ] ; 31 uses
  %.02547.ph = phi i32 [ %.125482776, %.loopexit2884 ], [ undef, %bb.q ]
  %.02542.ph = phi i32 [ %.125432779, %.loopexit2884 ], [ undef, %bb.q ]
  %.02538.ph = phi i32 [ %.125392782, %.loopexit2884 ], [ undef, %bb.q ]
  %.02532.ph = phi i32 [ %.025322916, %.loopexit2884 ], [ 1, %bb.q ]
  %.not26472935 = icmp eq i32 %.02532.ph, 0
  %.pre3791.a = load i32, ptr %3, align 4, !tbaa !151 ; 9 uses
  br i1 %.not26472935, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer2886
  %i.br = add i32 %.02605.ph, -1                  ; 43 uses
  %i.bs = add i32 %.02605.ph, -2                  ; 11 uses
  %i.bt = call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bs) ; 13 uses
  store i32 %i.bt, ptr %i.l, align 4, !tbaa !151
  %i.bu = add i32 %.pre3791.a, %i.br              ; 2 uses
  %i.bv = call i32 @llvm.smin.i32(i32 %.pre3792.a, i32 %i.bu) ; 16 uses
  %i.bw = sub i32 %i.br, %i.bt                    ; 15 uses
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !151 ; 22 uses
  %i.by = add nsw i32 %i.bw, %i.bx                ; 4 uses
  %.not2651 = icmp sgt i32 %.02605.ph, %i.ba
  br i1 %.not2651, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 %.pre3792.a, ptr %i.a, align 4, !tbaa !151
  %.neg.le = sub nsw i32 1, %.02605.ph            ; 5 uses
  %13 = mul i32 %i.br, %i.q                       ; 7 uses
  %.not26533001 = icmp sgt i32 %i.br, %i.bv       ; 4 uses
  br i1 %.not2641, label %bb.bn, label %bb.s

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bz = icmp eq i32 %.pre3791.a, 0
  store i32 %.pre3792.a, ptr %i.a, align 4, !tbaa !151
  store i32 %i.bu, ptr %i.b, align 4, !tbaa !151
  br i1 %i.bz, label %.loopexit2888, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.outer2886
  %.02547.lcssa = phi i32 [ %.02547.ph, %.outer2886 ], [ %i.ay, %.lr.ph.split ] ; 3 uses
  %.02542.lcssa = phi i32 [ %.02542.ph, %.outer2886 ], [ %i.bv, %.lr.ph.split ] ; 3 uses
  %.02538.lcssa = phi i32 [ %.02538.ph, %.outer2886 ], [ %i.by, %.lr.ph.split ] ; 3 uses
  %i.ca = add nsw i32 %.pre3791.a, %.02605.ph     ; 3 uses
  %.not2648 = icmp slt i32 %i.ca, %.pre3792.a
  br i1 %.not2648, label %bb.r, label %.loopexit2888

bb.r:                                             ; preds = %._crit_edge
  br i1 %.not2641, label %bb.bw, label %bb.aa

bb.s:                                             ; preds = %.lr.ph.split.us
  %i.cb = add i32 %13, %i.ac                      ; 7 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !153 ; 13 uses
  br i1 %.not26533001, label %._crit_edge2954, label %.lr.ph2953

.lr.ph2953:                                       ; preds = %bb.s
  %i.cf = zext i32 %i.br to i64                   ; 2 uses
  %i.cg = add i32 %i.bv, 1                        ; 2 uses
  %i.ch = xor i32 %i.bv, 2
  %i.ci = sub i32 %i.ch, %.02605.ph
  %i.cj = sub i32 %i.cg, %.02605.ph
  %xtraiter = and i32 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2953, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.cf, %.lr.ph2953 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2953 ]
  %i.ck = trunc i64 %indvars.iv.prol to i32
  %i.cl = sub i32 %i.br, %i.ck
  %i.cm = trunc i64 %indvars.iv.prol to i32
  %i.cn = mul i32 %i.n, %i.cm
  %i.co = add i32 %i.cl, %i.cn
  %i.cp = add i32 %i.co, %i.bx
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cq ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !153
  %i.ct = fdiv double %i.cs, %i.ce
  store double %i.ct, ptr %i.cr, align 8, !tbaa !153
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !8

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2953
  %indvars.iv.unr = phi i64 [ %i.cf, %.lr.ph2953 ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.cu = icmp ult i32 %i.cj, 3
  br i1 %i.cu, label %._crit_edge2954, label %.lr.ph2953.new

.lr.ph2953.new:                                   ; preds = %.prol.loopexit, %.lr.ph2953.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph2953.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cv = trunc i64 %indvars.iv to i32
  %i.cw = sub i32 %i.br, %i.cv
  %i.cx = trunc i64 %indvars.iv to i32
  %i.cy = mul i32 %i.n, %i.cx
  %i.cz = add i32 %i.cw, %i.cy
  %i.da = add i32 %i.cz, %i.bx
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.db ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !153
  %i.de = fdiv double %i.dd, %i.ce
  store double %i.de, ptr %i.dc, align 8, !tbaa !153
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.df = trunc i64 %indvars.iv.next to i32
  %i.dg = sub i32 %i.br, %i.df
  %i.dh = trunc i64 %indvars.iv.next to i32
  %i.di = mul i32 %i.n, %i.dh
  %i.dj = add i32 %i.dg, %i.di
  %i.dk = add i32 %i.dj, %i.bx
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dl ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !153
  %i.do = fdiv double %i.dn, %i.ce
  store double %i.do, ptr %i.dm, align 8, !tbaa !153
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dp = trunc i64 %indvars.iv.next.1 to i32
  %i.dq = sub i32 %i.br, %i.dp
  %i.dr = trunc i64 %indvars.iv.next.1 to i32
  %i.ds = mul i32 %i.n, %i.dr
  %i.dt = add i32 %i.dq, %i.ds
  %i.du = add i32 %i.dt, %i.bx
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !153
  %i.dy = fdiv double %i.dx, %i.ce
  store double %i.dy, ptr %i.dw, align 8, !tbaa !153
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dz = trunc i64 %indvars.iv.next.2 to i32
  %i.ea = sub i32 %i.br, %i.dz
  %i.eb = trunc i64 %indvars.iv.next.2 to i32
  %i.ec = mul i32 %i.n, %i.eb
  %i.ed = add i32 %i.ea, %i.ec
  %i.ee = add i32 %i.ed, %i.bx
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ef ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !153
  %i.ei = fdiv double %i.eh, %i.ce
  store double %i.ei, ptr %i.eg, align 8, !tbaa !153
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.cg, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge2954, label %.lr.ph2953.new, !llvm.loop !9

._crit_edge2954:                                  ; preds = %.prol.loopexit, %.lr.ph2953.new, %bb.s
  store i32 1, ptr %i.a, align 4, !tbaa !151
  %i.ej = sub nsw i32 %i.br, %.pre3791.a          ; 4 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !151
  store i32 %i.br, ptr %i.c, align 4, !tbaa !151
  %i.ek = call i32 @llvm.smax.i32(i32 %i.ej, i32 1) ; 13 uses
  %.not2676.not2955 = icmp slt i32 %i.ek, %.02605.ph
  br i1 %.not2676.not2955, label %iter.check4419, label %._crit_edge2959

iter.check4419:                                   ; preds = %._crit_edge2954
  %i.el = mul nsw i32 %i.br, %i.n                 ; 2 uses
  %i.em = add i32 %i.el, %.neg.le
  %invariant.op = add i32 %i.em, %i.bx            ; 7 uses
  %i.en = zext nneg i32 %i.ek to i64              ; 6 uses
  %wide.trip.count = zext nneg i32 %.02605.ph to i64 ; 5 uses
  %i.eo = sub nsw i64 %wide.trip.count, %i.en     ; 7 uses
  %min.iters.check4401 = icmp ult i64 %i.eo, 4
  br i1 %min.iters.check4401, label %vec.epilog.scalar.ph4420.preheader, label %vector.scevcheck4399

vector.scevcheck4399:                             ; preds = %iter.check4419
  %i.ep = xor i64 %i.en, -1
  %i.eq = add nsw i64 %i.ep, %wide.trip.count     ; 2 uses
  %i.er = add i32 %i.bx, 1
  %i.es = add i32 %i.er, %i.ek
  %i.et = add i32 %i.es, %i.el
  %i.eu = sub i32 %i.et, %.02605.ph               ; 2 uses
  %i.ev = trunc i64 %i.eq to i32
  %i.ew = add i32 %i.eu, %i.ev
  %i.ex = icmp slt i32 %i.ew, %i.eu
  %i.ey = icmp ugt i64 %i.eq, 4294967295
  %i.ez = or i1 %i.ex, %i.ey
  br i1 %i.ez, label %vec.epilog.scalar.ph4420.preheader, label %vector.main.loop.iter.check4402

vector.main.loop.iter.check4402:                  ; preds = %vector.scevcheck4399
  %min.iters.check4403 = icmp ult i64 %i.eo, 16
  br i1 %min.iters.check4403, label %vec.epilog.ph4423, label %vector.ph4404

vector.ph4404:                                    ; preds = %vector.main.loop.iter.check4402
  %i.fa = and i64 %i.eo, 12
  %n.vec4405 = and i64 %i.eo, -16                 ; 4 uses
  %i.fb = add nsw i64 %n.vec4405, %i.en
  %broadcast.splatinsert4406 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4407 = shufflevector <4 x double> %broadcast.splatinsert4406, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4750 = add i32 %i.ek, %invariant.op
  br label %vector.body4408

vector.body4408:                                  ; preds = %vector.body4408, %vector.ph4404
  %index4409 = phi i64 [ 0, %vector.ph4404 ], [ %index.next4414, %vector.body4408 ] ; 2 uses
  %i.fc = trunc i64 %index4409 to i32
  %.reass4751 = add i32 %i.fc, %invariant.op4750
  %i.fd = sext i32 %.reass4751 to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fd ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 64 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 96 ; 2 uses
  %wide.load4410 = load <4 x double>, ptr %i.fe, align 8, !tbaa !153
  %wide.load4411 = load <4 x double>, ptr %i.ff, align 8, !tbaa !153
  %wide.load4412 = load <4 x double>, ptr %i.fg, align 8, !tbaa !153
  %wide.load4413 = load <4 x double>, ptr %i.fh, align 8, !tbaa !153
  %i.fi = fdiv <4 x double> %wide.load4410, %broadcast.splat4407
  %i.fj = fdiv <4 x double> %wide.load4411, %broadcast.splat4407
  %i.fk = fdiv <4 x double> %wide.load4412, %broadcast.splat4407
  %i.fl = fdiv <4 x double> %wide.load4413, %broadcast.splat4407
  store <4 x double> %i.fi, ptr %i.fe, align 8, !tbaa !153
  store <4 x double> %i.fj, ptr %i.ff, align 8, !tbaa !153
  store <4 x double> %i.fk, ptr %i.fg, align 8, !tbaa !153
  store <4 x double> %i.fl, ptr %i.fh, align 8, !tbaa !153
  %index.next4414 = add nuw i64 %index4409, 16    ; 2 uses
  %i.fm = icmp eq i64 %index.next4414, %n.vec4405
  br i1 %i.fm, label %middle.block4415, label %vector.body4408, !llvm.loop !10

middle.block4415:                                 ; preds = %vector.body4408
  %cmp.n4416 = icmp eq i64 %i.eo, %n.vec4405
  br i1 %cmp.n4416, label %._crit_edge2959, label %vec.epilog.iter.check4421

vec.epilog.iter.check4421:                        ; preds = %middle.block4415
  %min.epilog.iters.check4422 = icmp eq i64 %i.fa, 0
  br i1 %min.epilog.iters.check4422, label %vec.epilog.scalar.ph4420.preheader, label %vec.epilog.ph4423, !prof !158

vec.epilog.ph4423:                                ; preds = %vector.main.loop.iter.check4402, %vec.epilog.iter.check4421
  %vec.epilog.resume.val4417 = phi i64 [ %n.vec4405, %vec.epilog.iter.check4421 ], [ 0, %vector.main.loop.iter.check4402 ]
  %n.vec4424 = and i64 %i.eo, -4                  ; 3 uses
  %i.fn = add nsw i64 %n.vec4424, %i.en
  %broadcast.splatinsert4425 = insertelement <4 x double> poison, double %i.ce, i64 0
  %broadcast.splat4426 = shufflevector <4 x double> %broadcast.splatinsert4425, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4752 = add i32 %i.ek, %invariant.op
  br label %vec.epilog.vector.body4427

vec.epilog.vector.body4427:                       ; preds = %vec.epilog.vector.body4427, %vec.epilog.ph4423
  %index4428 = phi i64 [ %vec.epilog.resume.val4417, %vec.epilog.ph4423 ], [ %index.next4430, %vec.epilog.vector.body4427 ] ; 2 uses
  %i.fo = trunc i64 %index4428 to i32
  %.reass4753 = add i32 %i.fo, %invariant.op4752
  %i.fp = sext i32 %.reass4753 to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fp ; 2 uses
  %wide.load4429 = load <4 x double>, ptr %i.fq, align 8, !tbaa !153
  %i.fr = fdiv <4 x double> %wide.load4429, %broadcast.splat4426
  store <4 x double> %i.fr, ptr %i.fq, align 8, !tbaa !153
  %index.next4430 = add nuw i64 %index4428, 4     ; 2 uses
  %i.fs = icmp eq i64 %index.next4430, %n.vec4424
  br i1 %i.fs, label %vec.epilog.middle.block4431, label %vec.epilog.vector.body4427, !llvm.loop !11

vec.epilog.middle.block4431:                      ; preds = %vec.epilog.vector.body4427
  %cmp.n4432 = icmp eq i64 %i.eo, %n.vec4424
  br i1 %cmp.n4432, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader

vec.epilog.scalar.ph4420.preheader:               ; preds = %vector.scevcheck4399, %iter.check4419, %vec.epilog.iter.check4421, %vec.epilog.middle.block4431
  %indvars.iv3551.ph = phi i64 [ %i.en, %iter.check4419 ], [ %i.en, %vector.scevcheck4399 ], [ %i.fb, %vec.epilog.iter.check4421 ], [ %i.fn, %vec.epilog.middle.block4431 ] ; 4 uses
  %i.ft = sub nsw i64 %wide.trip.count, %indvars.iv3551.ph
  %xtraiter4685 = and i64 %i.ft, 3                ; 2 uses
  %lcmp.mod4686.not = icmp eq i64 %xtraiter4685, 0
  br i1 %lcmp.mod4686.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol

vec.epilog.scalar.ph4420.prol:                    ; preds = %vec.epilog.scalar.ph4420.preheader, %vec.epilog.scalar.ph4420.prol
  %indvars.iv3551.prol = phi i64 [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ], [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ] ; 2 uses
  %prol.iter4687 = phi i64 [ %prol.iter4687.next, %vec.epilog.scalar.ph4420.prol ], [ 0, %vec.epilog.scalar.ph4420.preheader ]
  %i.fu = trunc nuw nsw i64 %indvars.iv3551.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.fu
  %i.fv = sext i32 %.reass.prol to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !153
  %i.fy = fdiv double %i.fx, %i.ce
  store double %i.fy, ptr %i.fw, align 8, !tbaa !153
  %indvars.iv.next3552.prol = add nuw nsw i64 %indvars.iv3551.prol, 1 ; 2 uses
  %prol.iter4687.next = add i64 %prol.iter4687, 1 ; 2 uses
  %prol.iter4687.cmp.not = icmp eq i64 %prol.iter4687.next, %xtraiter4685
  br i1 %prol.iter4687.cmp.not, label %vec.epilog.scalar.ph4420.prol.loopexit, label %vec.epilog.scalar.ph4420.prol, !llvm.loop !12

vec.epilog.scalar.ph4420.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4420.prol, %vec.epilog.scalar.ph4420.preheader
  %indvars.iv3551.unr = phi i64 [ %indvars.iv3551.ph, %vec.epilog.scalar.ph4420.preheader ], [ %indvars.iv.next3552.prol, %vec.epilog.scalar.ph4420.prol ]
  %i.fz = sub nsw i64 %indvars.iv3551.ph, %wide.trip.count
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %._crit_edge2959, label %vec.epilog.scalar.ph4420.preheader.new

vec.epilog.scalar.ph4420.preheader.new:           ; preds = %vec.epilog.scalar.ph4420.prol.loopexit
  %invariant.op4754 = add i32 1, %invariant.op
  %invariant.op4755 = add i32 2, %invariant.op
  %invariant.op4756 = add i32 3, %invariant.op
  br label %vec.epilog.scalar.ph4420

vec.epilog.scalar.ph4420:                         ; preds = %vec.epilog.scalar.ph4420, %vec.epilog.scalar.ph4420.preheader.new
  %indvars.iv3551 = phi i64 [ %indvars.iv3551.unr, %vec.epilog.scalar.ph4420.preheader.new ], [ %indvars.iv.next3552.3, %vec.epilog.scalar.ph4420 ] ; 5 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv3551 to i32
  %.reass = add i32 %invariant.op, %i.gb
  %i.gc = sext i32 %.reass to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gc ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !153
  %i.gf = fdiv double %i.ge, %i.ce
  store double %i.gf, ptr %i.gd, align 8, !tbaa !153
  %i.gg = trunc i64 %indvars.iv3551 to i32
  %.reass.1.reass = add i32 %i.gg, %invariant.op4754
  %i.gh = sext i32 %.reass.1.reass to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gh ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !153
  %i.gk = fdiv double %i.gj, %i.ce
  store double %i.gk, ptr %i.gi, align 8, !tbaa !153
  %i.gl = trunc i64 %indvars.iv3551 to i32
  %.reass.2.reass = add i32 %i.gl, %invariant.op4755
  %i.gm = sext i32 %.reass.2.reass to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !153
  %i.gp = fdiv double %i.go, %i.ce
  store double %i.gp, ptr %i.gn, align 8, !tbaa !153
  %i.gq = trunc i64 %indvars.iv3551 to i32
  %.reass.3.reass = add i32 %i.gq, %invariant.op4756
  %i.gr = sext i32 %.reass.3.reass to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.gr ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !153
  %i.gu = fdiv double %i.gt, %i.ce
  store double %i.gu, ptr %i.gs, align 8, !tbaa !153
  %indvars.iv.next3552.3 = add nuw nsw i64 %indvars.iv3551, 4 ; 2 uses
  %exitcond3554.not.3 = icmp eq i64 %indvars.iv.next3552.3, %wide.trip.count
  br i1 %exitcond3554.not.3, label %._crit_edge2959, label %vec.epilog.scalar.ph4420, !llvm.loop !13

._crit_edge2959:                                  ; preds = %vec.epilog.scalar.ph4420.prol.loopexit, %vec.epilog.scalar.ph4420, %middle.block4415, %vec.epilog.middle.block4431, %._crit_edge2954
  %.not26772979 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26772979, label %bb.t, label %.lr.ph2983.a

.lr.ph2983.a:                                     ; preds = %._crit_edge2959
  %i.gv = mul i32 %i.br, %i.n                     ; 6 uses
  %i.gw = add i32 %i.bx, %i.gv                    ; 6 uses
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr [8 x i8], ptr %i.p, i64 %i.gx ; 5 uses
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !151
  %i.gz = xor i32 %i.bt, -1
  %i.ha = add i32 %i.br, %i.gz                    ; 3 uses
  store i32 %i.ha, ptr %i.d, align 4, !tbaa !151
  %.not26972969 = icmp sgt i32 %i.ek, %i.ha
  %i.hb = add i32 %.neg.le, %i.ac
  %invariant.op2985.a = add i32 %13, %i.hb
  %i.hc = add i32 %i.gv, %.neg.le
  %invariant.op2974 = add i32 %i.hc, %i.bx        ; 3 uses
  %i.hd = zext i32 %i.bw to i64                   ; 5 uses
  %i.he = sub i32 %.02605.ph, %i.bt
  %i.hf = zext nneg i32 %i.ek to i64              ; 10 uses
  %i.hg = zext i32 %i.ha to i64                   ; 4 uses
  %i.hh = call i64 @llvm.usub.sat.i64(i64 %i.hg, i64 %i.hf)
  %i.hi = add i32 %i.bx, %i.ek
  %i.hj = mul i32 %.0255729803502, %i.bw
  %i.hk = add i32 %i.hi, %i.hj
  %i.hl = add i32 %i.bx, 1
  %i.hm = add i32 %i.hl, %i.ek
  %i.hn = add i32 %i.hm, %i.gv
  %i.ho = sub i32 %i.hn, %.02605.ph               ; 2 uses
  %i.hp = add i32 %i.bx, %i.ek
  %i.hq = mul i32 %.0255729803502, %i.bw          ; 3 uses
  %i.hr = add i32 %i.hp, %i.hq
  %umax4285 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hg)
  %i.hs = shl nuw nsw i64 %umax4285, 3            ; 2 uses
  %i.ht = shl nuw nsw i64 %i.hf, 3                ; 2 uses
  %i.hu = sub nsw i64 %i.hs, %i.ht
  %scevgep4286 = getelementptr i8, ptr %scevgep4284, i64 %i.hu
  %i.hv = add i32 %i.bi, %13
  %i.hw = sub i32 %i.hv, %i.bt
  %i.hx = add i32 %i.bx, 1
  %i.hy = add i32 %i.hx, %i.ek
  %i.hz = add i32 %i.hy, %i.gv
  %i.ia = sub i32 %i.hz, %.02605.ph
  %i.ib = sext i32 %i.ia to i64
  %i.ic = shl nsw i64 %i.ib, 3                    ; 2 uses
  %scevgep4291 = getelementptr i8, ptr %scevgep4290, i64 %i.ic
  %i.id = add nsw i64 %i.hs, %i.ic
  %i.ie = sub nsw i64 %i.id, %i.ht
  %scevgep4293 = getelementptr i8, ptr %scevgep4292, i64 %i.ie
  %umax4298 = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hg)
  %i.if = add nuw nsw i64 %umax4298, 1
  %i.ig = sub nsw i64 %i.if, %i.hf                ; 7 uses
  %i.ih = add i32 %.02605.ph, -1
  %i.ii = add i32 %i.ih, %i.bx
  %i.ij = add i32 %i.ii, %i.hq
  %i.ik = sub i32 %i.ij, %i.bt
  %i.il = add i32 %i.bj, %13
  %i.im = sub i32 %i.il, %i.bt                    ; 2 uses
  %i.in = add i32 %i.bx, %i.gv
  %i.io = sub i32 %i.in, %i.bt                    ; 2 uses
  %i.ip = add i32 %.02605.ph, -1
  %i.iq = add i32 %i.ip, %i.bx
  %i.ir = add i32 %i.iq, %i.hq
  %i.is = sub i32 %i.ir, %i.bt
  %i.it = add i32 %i.bk, %13
  %i.iu = sub i32 %i.it, %i.bt                    ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = shl nsw i64 %i.iv, 3                    ; 2 uses
  %scevgep4349 = getelementptr i8, ptr %scevgep4348, i64 %i.iw
  %i.ix = add i32 %i.bx, %i.gv
  %i.iy = sub i32 %i.ix, %i.bt                    ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl nsw i64 %i.iz, 3                    ; 2 uses
  %scevgep4354 = getelementptr i8, ptr %scevgep4353, i64 %i.ja
  %i.jb = shl nsw i64 %i.gx, 3
  %scevgep4357 = getelementptr i8, ptr %scevgep4356, i64 %i.jb
  %i.jc = getelementptr i8, ptr %i.bn, i64 %i.iw
  %i.jd = getelementptr i8, ptr %i.bp, i64 %i.ja
  %min.iters.check4300 = icmp ult i64 %i.ig, 4
  %i.je = trunc nuw i64 %i.hh to i32              ; 2 uses
  %i.jf = add i32 %i.ho, %i.je
  %i.jg = icmp slt i32 %i.jf, %i.ho
  %min.iters.check4302 = icmp ult i64 %i.ig, 16
  %i.jh = and i64 %i.ig, 12
  %n.vec4304 = and i64 %i.ig, -16                 ; 4 uses
  %i.ji = add nsw i64 %n.vec4304, %i.hf
  %cmp.n4319 = icmp eq i64 %i.ig, %n.vec4304
  %min.epilog.iters.check4325 = icmp eq i64 %i.jh, 0
  %n.vec4327 = and i64 %i.ig, -4                  ; 3 uses
  %i.jj = add nsw i64 %n.vec4327, %i.hf
  %cmp.n4336 = icmp eq i64 %i.ig, %n.vec4327
  br label %.lr.ph2963

.lr.ph2963:                                       ; preds = %._crit_edge2973, %.lr.ph2983.a
  %indvar4342 = phi i64 [ %indvar.next4343, %._crit_edge2973 ], [ 0, %.lr.ph2983.a ] ; 6 uses
  %indvar = phi i32 [ %indvar.next, %._crit_edge2973 ], [ 0, %.lr.ph2983.a ] ; 9 uses
  %indvars.iv3565 = phi i64 [ %indvars.iv.next3566, %._crit_edge2973 ], [ %i.hd, %.lr.ph2983.a ] ; 4 uses
  %indvars.iv3558 = phi i32 [ %indvars.iv.next3559, %._crit_edge2973 ], [ %i.he, %.lr.ph2983.a ] ; 3 uses
  %i.jk = trunc i64 %indvar4342 to i32
  %i.jl = add i32 %i.bw, %i.jk
  %i.jm = add i64 %indvar4342, 1                  ; 3 uses
  %i.jn = mul i32 %.0255729803502, %indvar
  %i.jo = add i32 %i.is, %i.jn
  %i.jp = sext i32 %i.jo to i64
  %i.jq = shl nsw i64 %i.jp, 3                    ; 2 uses
  %scevgep4341 = getelementptr i8, ptr %scevgep4340.a, i64 %i.jq ; 5 uses
  %i.jr = shl nuw nsw i64 %indvar4342, 3          ; 3 uses
  %scevgep4344 = getelementptr i8, ptr %i.bl, i64 %i.jr
  %scevgep4345 = getelementptr i8, ptr %scevgep4344, i64 %i.jq ; 5 uses
  %i.js = trunc i64 %indvar4342 to i32
  %i.jt = add i32 %i.iu, %i.js
  %i.ju = sext i32 %i.jt to i64
  %i.jv = shl nsw i64 %i.ju, 3
  %scevgep4347 = getelementptr i8, ptr %scevgep4346, i64 %i.jv
  %scevgep4350 = getelementptr i8, ptr %i.jc, i64 %i.jr
  %i.jw = trunc i64 %indvar4342 to i32
  %i.jx = add i32 %i.iy, %i.jw
  %i.jy = sext i32 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 3
  %scevgep4352 = getelementptr i8, ptr %scevgep4351, i64 %i.jz
  %scevgep4355 = getelementptr i8, ptr %i.jd, i64 %i.jr
  %i.ka = mul i32 %.0255729803502, %indvar
  %i.kb = add i32 %i.hr, %i.ka
  %i.kc = sext i32 %i.kb to i64
  %i.kd = shl nsw i64 %i.kc, 3                    ; 2 uses
  %scevgep4283 = getelementptr i8, ptr %scevgep, i64 %i.kd ; 2 uses
  %scevgep4287 = getelementptr i8, ptr %scevgep4286, i64 %i.kd ; 2 uses
  %i.ke = add i32 %i.hw, %indvar
  %i.kf = sext i32 %i.ke to i64
  %i.kg = shl nsw i64 %i.kf, 3
  %scevgep4289 = getelementptr i8, ptr %scevgep4288, i64 %i.kg
  %i.kh = mul i32 %.0255729803502, %indvar
  %i.ki = add i32 %i.hk, %i.kh                    ; 2 uses
  %i.kj = trunc i64 %indvars.iv3565 to i32
  %i.kk = mul i32 %.0255729803501, %i.kj
  %invariant.op2965 = add i32 %i.kk, %i.bx        ; 4 uses
  %i.kl = trunc i64 %indvars.iv3565 to i32
  %i.km = sub i32 %i.kl, %i.br                    ; 2 uses
  %i.kn = add i32 %i.gw, %i.km
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ko ; 5 uses
  %i.kq = add i32 %i.cb, %i.km
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.kr ; 5 uses
  %min.iters.check4378 = icmp ult i64 %i.jm, 8
  br i1 %min.iters.check4378, label %scalar.ph4377.preheader, label %vector.scevcheck4338

vector.scevcheck4338:                             ; preds = %.lr.ph2963
  %i.kt = mul i32 %.0255729803502, %indvar
  %i.ku = add i32 %i.ik, %i.kt                    ; 2 uses
  %i.kv = add i32 %i.ku, %indvar
  %i.kw = icmp slt i32 %i.kv, %i.ku
  %i.kx = add i32 %i.im, %indvar
  %i.ky = icmp slt i32 %i.kx, %i.im
  %i.kz = add i32 %i.io, %indvar
  %i.la = icmp slt i32 %i.kz, %i.io
  %i.lb = or i1 %i.kw, %i.ky
  %i.lc = or i1 %i.lb, %i.la
  br i1 %i.lc, label %scalar.ph4377.preheader, label %vector.memcheck4339

vector.memcheck4339:                              ; preds = %vector.scevcheck4338
  %bound04358 = icmp ult ptr %scevgep4341, %scevgep4347
  %bound14359 = icmp ult ptr %i.ks, %scevgep4345
  %found.conflict4360 = and i1 %bound04358, %bound14359
  %bound04361.a = icmp ult ptr %scevgep4341, %scevgep4350
  %bound14362.a = icmp ult ptr %scevgep4349, %scevgep4345
  %found.conflict4363.a = and i1 %bound04361.a, %bound14362.a
  %conflict.rdx4364.a = or i1 %found.conflict4360, %found.conflict4363.a
  %bound04365 = icmp ult ptr %scevgep4341, %scevgep4352
  %bound14366 = icmp ult ptr %i.kp, %scevgep4345
  %found.conflict4367 = and i1 %bound04365, %bound14366
  %conflict.rdx4368 = or i1 %conflict.rdx4364.a, %found.conflict4367
  %bound04369 = icmp ult ptr %scevgep4341, %scevgep4355
  %bound14370 = icmp ult ptr %scevgep4354, %scevgep4345
  %found.conflict4371 = and i1 %bound04369, %bound14370
  %conflict.rdx4372 = or i1 %conflict.rdx4368, %found.conflict4371
  %bound04373 = icmp ult ptr %scevgep4341, %scevgep4357
  %bound14374 = icmp ult ptr %i.gy, %scevgep4345
  %found.conflict4375 = and i1 %bound04373, %bound14374
  %conflict.rdx4376 = or i1 %conflict.rdx4372, %found.conflict4375
  br i1 %conflict.rdx4376, label %scalar.ph4377.preheader, label %vector.ph4379

vector.ph4379:                                    ; preds = %vector.memcheck4339
  %n.vec4380 = and i64 %i.jm, -8                  ; 3 uses
  %i.ld = add i64 %n.vec4380, %i.hd
  %i.le = load double, ptr %i.kp, align 8, !tbaa !153, !alias.scope !159
  %broadcast.splatinsert4389 = insertelement <4 x double> poison, double %i.le, i64 0
  %broadcast.splat4390 = shufflevector <4 x double> %broadcast.splatinsert4389, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lf = load double, ptr %i.ks, align 8, !tbaa !153, !alias.scope !160
  %broadcast.splatinsert4381.a = insertelement <4 x double> poison, double %i.lf, i64 0
  %broadcast.splat4382.a = shufflevector <4 x double> %broadcast.splatinsert4381.a, <4 x double> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lg = fneg <4 x double> %broadcast.splat4382.a ; 2 uses
  %i.lh = load double, ptr %i.gy, align 8, !tbaa !153, !alias.scope !161
  %broadcast.splatinsert4393 = insertelement <4 x double> poison, double %i.lh, i64 0
  %broadcast.splat4394 = shufflevector <4 x double> %broadcast.splatinsert4393, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body4383

vector.body4383:                                  ; preds = %vector.body4383, %vector.ph4379
  %index4384 = phi i64 [ 0, %vector.ph4379 ], [ %index.next4395, %vector.body4383 ] ; 2 uses
  %i.li = trunc i64 %index4384 to i32
  %i.lj = add i32 %i.bw, %i.li                    ; 2 uses
  %i.lk = add i32 %invariant.op2965, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ll ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32 ; 2 uses
  %wide.load4385 = load <4 x double>, ptr %i.lm, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %wide.load4386 = load <4 x double>, ptr %i.ln, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %i.lo = sub i32 %i.lj, %i.br                    ; 2 uses
  %i.lp = add i32 %i.cb, %i.lo
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  %wide.load4387 = load <4 x double>, ptr %i.lr, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %wide.load4388 = load <4 x double>, ptr %i.ls, align 8, !tbaa !153, !alias.scope !164 ; 2 uses
  %i.lt = fneg <4 x double> %wide.load4387
  %i.lu = fneg <4 x double> %wide.load4388
  %i.lv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lt, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4385)
  %i.lw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lu, <4 x double> %broadcast.splat4390, <4 x double> %wide.load4386)
  %i.lx = add i32 %i.gw, %i.lo
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %wide.load4391 = load <4 x double>, ptr %i.lz, align 8, !tbaa !153, !alias.scope !165
  %wide.load4392 = load <4 x double>, ptr %i.ma, align 8, !tbaa !153, !alias.scope !165
  %i.mb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lg, <4 x double> %wide.load4391, <4 x double> %i.lv)
  %i.mc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lg, <4 x double> %wide.load4392, <4 x double> %i.lw)
  %i.md = fmul <4 x double> %wide.load4387, %broadcast.splat4394
  %i.me = fmul <4 x double> %wide.load4388, %broadcast.splat4394
  %i.mf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.md, <4 x double> %broadcast.splat4382.a, <4 x double> %i.mb)
  %i.mg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.me, <4 x double> %broadcast.splat4382.a, <4 x double> %i.mc)
  store <4 x double> %i.mf, ptr %i.lm, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  store <4 x double> %i.mg, ptr %i.ln, align 8, !tbaa !153, !alias.scope !162, !noalias !163
  %index.next4395 = add nuw i64 %index4384, 8     ; 2 uses
  %i.mh = icmp eq i64 %index.next4395, %n.vec4380
  br i1 %i.mh, label %middle.block4396, label %vector.body4383, !llvm.loop !21

middle.block4396:                                 ; preds = %vector.body4383
  %cmp.n4397 = icmp eq i64 %i.jm, %n.vec4380
  br i1 %cmp.n4397, label %._crit_edge2964, label %scalar.ph4377.preheader

scalar.ph4377.preheader:                          ; preds = %vector.memcheck4339, %vector.scevcheck4338, %.lr.ph2963, %middle.block4396
  %indvars.iv3555.ph = phi i64 [ %i.hd, %vector.memcheck4339 ], [ %i.hd, %vector.scevcheck4338 ], [ %i.hd, %.lr.ph2963 ], [ %i.ld, %middle.block4396 ] ; 5 uses
  %i.mi = trunc i64 %indvars.iv3555.ph to i32     ; 2 uses
  %i.mj = sub i32 %indvars.iv3558, %i.mi
  %xtraiter4688 = and i32 %i.mj, 1
  %lcmp.mod4689.not = icmp eq i32 %xtraiter4688, 0
  br i1 %lcmp.mod4689.not, label %scalar.ph4377.prol.loopexit, label %scalar.ph4377.prol

scalar.ph4377.prol:                               ; preds = %scalar.ph4377.preheader
  %i.mk = trunc i64 %indvars.iv3555.ph to i32
  %.reass2966.prol = add i32 %invariant.op2965, %i.mk
  %i.ml = sext i32 %.reass2966.prol to i64
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ml ; 2 uses
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !153
  %i.mo = trunc i64 %indvars.iv3555.ph to i32
  %i.mp = sub i32 %i.mo, %i.br                    ; 2 uses
  %i.mq = add i32 %i.cb, %i.mp
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !153 ; 2 uses
  %i.mu = load double, ptr %i.kp, align 8, !tbaa !153
  %i.mv = fneg double %i.mt
  %i.mw = call double @llvm.fmuladd.f64(double %i.mv, double %i.mu, double %i.mn)
  %i.mx = load double, ptr %i.ks, align 8, !tbaa !153 ; 2 uses
  %i.my = add i32 %i.gw, %i.mp
end_hunk_0
begin_hunk_1_@dsbgst_:bb.a
  %i.nj = sext i32 %.reass2966 to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nj ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !153
  %i.nm = trunc i64 %indvars.iv3555 to i32
  %i.nn = sub i32 %i.nm, %i.br                    ; 2 uses
  %i.no = add i32 %i.cb, %i.nn
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !153 ; 2 uses
  %i.ns = load double, ptr %i.kp, align 8, !tbaa !153
  %i.nt = fneg double %i.nr
  %i.nu = call double @llvm.fmuladd.f64(double %i.nt, double %i.ns, double %i.nl)
  %i.nv = load double, ptr %i.ks, align 8, !tbaa !153 ; 2 uses
  %i.nw = add i32 %i.gw, %i.nn
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.nx
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !153
  %i.oa = fneg double %i.nv
  %i.ob = call double @llvm.fmuladd.f64(double %i.oa, double %i.nz, double %i.nu)
  %i.oc = load double, ptr %i.gy, align 8, !tbaa !153
  %i.od = fmul double %i.nr, %i.oc
  %i.oe = call double @llvm.fmuladd.f64(double %i.od, double %i.nv, double %i.ob)
  store double %i.oe, ptr %i.nk, align 8, !tbaa !153
  %indvars.iv.next3556.a = add i64 %indvars.iv3555, 1 ; 2 uses
  %i.of = trunc i64 %indvars.iv.next3556.a to i32
  %.reass2966.1 = add i32 %invariant.op2965, %i.of
  %i.og = sext i32 %.reass2966.1 to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.og ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !153
  %i.oj = trunc i64 %indvars.iv.next3556.a to i32
  %i.ok = sub i32 %i.oj, %i.br                    ; 2 uses
  %i.ol = add i32 %i.cb, %i.ok
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.om
  %i.oo = load double, ptr %i.on, align 8, !tbaa !153 ; 2 uses
  %i.op = load double, ptr %i.kp, align 8, !tbaa !153
  %i.oq = fneg double %i.oo
  %i.or = call double @llvm.fmuladd.f64(double %i.oq, double %i.op, double %i.oi)
  %i.os = load double, ptr %i.ks, align 8, !tbaa !153 ; 2 uses
  %i.ot = add i32 %i.gw, %i.ok
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !153
  %i.ox = fneg double %i.os
  %i.oy = call double @llvm.fmuladd.f64(double %i.ox, double %i.ow, double %i.or)
  %i.oz = load double, ptr %i.gy, align 8, !tbaa !153
  %i.pa = fmul double %i.oo, %i.oz
  %i.pb = call double @llvm.fmuladd.f64(double %i.pa, double %i.os, double %i.oy)
  store double %i.pb, ptr %i.oh, align 8, !tbaa !153
  %indvars.iv.next3556.1 = add i64 %indvars.iv3555, 2 ; 2 uses
  %lftr.wideiv3560.1 = trunc i64 %indvars.iv.next3556.1 to i32
  %exitcond3561.not.1 = icmp eq i32 %indvars.iv3558, %lftr.wideiv3560.1
  br i1 %exitcond3561.not.1, label %._crit_edge2964, label %scalar.ph4377, !llvm.loop !22

._crit_edge2964:                                  ; preds = %scalar.ph4377.prol.loopexit, %scalar.ph4377, %middle.block4396
  br i1 %.not26972969, label %._crit_edge2973, label %iter.check4322

iter.check4322:                                   ; preds = %._crit_edge2964
  %i.pc = trunc i64 %indvars.iv3565 to i32        ; 2 uses
  %.reass2968.reass = add i32 %invariant.op2985.a, %i.pc
  %i.pd = sext i32 %.reass2968.reass to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.pd ; 4 uses
  %i.pf = mul i32 %.0255729803502, %i.pc
  %invariant.op2976 = add i32 %i.pf, %i.bx        ; 3 uses
  br i1 %min.iters.check4300, label %vec.epilog.scalar.ph4323.preheader, label %vector.scevcheck4281

vector.scevcheck4281:                             ; preds = %iter.check4322
  %i.pg = add i32 %i.ki, %i.je
  %i.ph = icmp slt i32 %i.pg, %i.ki
  %i.pi = or i1 %i.ph, %i.jg
  br i1 %i.pi, label %vec.epilog.scalar.ph4323.preheader, label %vector.memcheck4282

vector.memcheck4282:                              ; preds = %vector.scevcheck4281
  %bound0 = icmp ult ptr %scevgep4283, %scevgep4289
  %bound1 = icmp ult ptr %i.pe, %scevgep4287
  %found.conflict = and i1 %bound0, %bound1
  %bound04294 = icmp ult ptr %scevgep4283, %scevgep4293
  %bound14295 = icmp ult ptr %scevgep4291, %scevgep4287
  %found.conflict4296 = and i1 %bound04294, %bound14295
  %conflict.rdx4297 = or i1 %found.conflict, %found.conflict4296
  br i1 %conflict.rdx4297, label %vec.epilog.scalar.ph4323.preheader, label %vector.main.loop.iter.check4301

vector.main.loop.iter.check4301:                  ; preds = %vector.memcheck4282
  br i1 %min.iters.check4302, label %vec.epilog.ph4326, label %vector.ph4303

vector.ph4303:                                    ; preds = %vector.main.loop.iter.check4301
  %i.pj = load double, ptr %i.pe, align 8, !tbaa !153, !alias.scope !166
  %.scalar = fneg double %i.pj
  %i.pk = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.pl = shufflevector <4 x double> %i.pk, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4307

vector.body4307:                                  ; preds = %vector.body4307, %vector.ph4303
  %index4308 = phi i64 [ 0, %vector.ph4303 ], [ %index.next4317, %vector.body4307 ] ; 2 uses
  %i.pm = trunc i64 %index4308 to i32
  %i.pn = add i32 %i.ek, %i.pm                    ; 2 uses
  %i.po = add i32 %invariant.op2974, %i.pn
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pp ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 64
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 96
  %wide.load4309 = load <4 x double>, ptr %i.pq, align 8, !tbaa !153, !alias.scope !167
  %wide.load4310 = load <4 x double>, ptr %i.pr, align 8, !tbaa !153, !alias.scope !167
  %wide.load4311 = load <4 x double>, ptr %i.ps, align 8, !tbaa !153, !alias.scope !167
  %wide.load4312 = load <4 x double>, ptr %i.pt, align 8, !tbaa !153, !alias.scope !167
  %i.pu = add i32 %invariant.op2976, %i.pn
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.pv ; 5 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 32 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 64 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 96 ; 2 uses
  %wide.load4313 = load <4 x double>, ptr %i.pw, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %wide.load4314 = load <4 x double>, ptr %i.px, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %wide.load4315 = load <4 x double>, ptr %i.py, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %wide.load4316 = load <4 x double>, ptr %i.pz, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %i.qa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pl, <4 x double> %wide.load4309, <4 x double> %wide.load4313)
  %i.qb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pl, <4 x double> %wide.load4310, <4 x double> %wide.load4314)
  %i.qc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pl, <4 x double> %wide.load4311, <4 x double> %wide.load4315)
  %i.qd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.pl, <4 x double> %wide.load4312, <4 x double> %wide.load4316)
  store <4 x double> %i.qa, ptr %i.pw, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  store <4 x double> %i.qb, ptr %i.px, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  store <4 x double> %i.qc, ptr %i.py, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  store <4 x double> %i.qd, ptr %i.pz, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %index.next4317 = add nuw i64 %index4308, 16    ; 2 uses
  %i.qe = icmp eq i64 %index.next4317, %n.vec4304
  br i1 %i.qe, label %middle.block4318, label %vector.body4307, !llvm.loop !27

middle.block4318:                                 ; preds = %vector.body4307
  br i1 %cmp.n4319, label %._crit_edge2973, label %vec.epilog.iter.check4324

vec.epilog.iter.check4324:                        ; preds = %middle.block4318
  br i1 %min.epilog.iters.check4325, label %vec.epilog.scalar.ph4323.preheader, label %vec.epilog.ph4326, !prof !158

vec.epilog.ph4326:                                ; preds = %vector.main.loop.iter.check4301, %vec.epilog.iter.check4324
  %vec.epilog.resume.val4320 = phi i64 [ %n.vec4304, %vec.epilog.iter.check4324 ], [ 0, %vector.main.loop.iter.check4301 ]
  %i.qf = load double, ptr %i.pe, align 8, !tbaa !153, !alias.scope !166
  %.scalar4670 = fneg double %i.qf
  %i.qg = insertelement <4 x double> poison, double %.scalar4670, i64 0
  %i.qh = shufflevector <4 x double> %i.qg, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4330

vec.epilog.vector.body4330:                       ; preds = %vec.epilog.vector.body4330, %vec.epilog.ph4326
  %index4331 = phi i64 [ %vec.epilog.resume.val4320, %vec.epilog.ph4326 ], [ %index.next4334, %vec.epilog.vector.body4330 ] ; 2 uses
  %i.qi = trunc i64 %index4331 to i32
  %i.qj = add i32 %i.ek, %i.qi                    ; 2 uses
  %i.qk = add i32 %invariant.op2974, %i.qj
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ql
  %wide.load4332 = load <4 x double>, ptr %i.qm, align 8, !tbaa !153, !alias.scope !167
  %i.qn = add i32 %invariant.op2976, %i.qj
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qo ; 2 uses
  %wide.load4333 = load <4 x double>, ptr %i.qp, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %i.qq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.qh, <4 x double> %wide.load4332, <4 x double> %wide.load4333)
  store <4 x double> %i.qq, ptr %i.qp, align 8, !tbaa !153, !alias.scope !168, !noalias !169
  %index.next4334 = add nuw i64 %index4331, 4     ; 2 uses
  %i.qr = icmp eq i64 %index.next4334, %n.vec4327
  br i1 %i.qr, label %vec.epilog.middle.block4335, label %vec.epilog.vector.body4330, !llvm.loop !28

vec.epilog.middle.block4335:                      ; preds = %vec.epilog.vector.body4330
  br i1 %cmp.n4336, label %._crit_edge2973, label %vec.epilog.scalar.ph4323.preheader

vec.epilog.scalar.ph4323.preheader:               ; preds = %vector.memcheck4282, %vector.scevcheck4281, %iter.check4322, %vec.epilog.iter.check4324, %vec.epilog.middle.block4335
  %indvars.iv3562.ph = phi i64 [ %i.hf, %iter.check4322 ], [ %i.hf, %vector.scevcheck4281 ], [ %i.hf, %vector.memcheck4282 ], [ %i.ji, %vec.epilog.iter.check4324 ], [ %i.jj, %vec.epilog.middle.block4335 ]
  br label %vec.epilog.scalar.ph4323

vec.epilog.scalar.ph4323:                         ; preds = %vec.epilog.scalar.ph4323.preheader, %vec.epilog.scalar.ph4323
  %indvars.iv3562.a = phi i64 [ %indvars.iv.next3563.a, %vec.epilog.scalar.ph4323 ], [ %indvars.iv3562.ph, %vec.epilog.scalar.ph4323.preheader ] ; 3 uses
  %i.qs = load double, ptr %i.pe, align 8, !tbaa !153
  %i.qt = trunc nuw nsw i64 %indvars.iv3562.a to i32 ; 2 uses
  %.reass2975 = add i32 %invariant.op2974, %i.qt
  %i.qu = sext i32 %.reass2975 to i64
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qu
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !153
  %.reass2977 = add i32 %invariant.op2976, %i.qt
  %i.qx = sext i32 %.reass2977 to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qx ; 2 uses
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !153
  %i.ra = fneg double %i.qs
  %i.rb = call double @llvm.fmuladd.f64(double %i.ra, double %i.qw, double %i.qz)
  store double %i.rb, ptr %i.qy, align 8, !tbaa !153
  %indvars.iv.next3563.a = add nuw nsw i64 %indvars.iv3562.a, 1
  %.not2697.not = icmp samesign ult i64 %indvars.iv3562.a, %i.hg
  br i1 %.not2697.not, label %vec.epilog.scalar.ph4323, label %._crit_edge2973, !llvm.loop !29

._crit_edge2973:                                  ; preds = %vec.epilog.scalar.ph4323, %middle.block4318, %vec.epilog.middle.block4335, %._crit_edge2964
  %indvars.iv.next3566 = add i64 %indvars.iv3565, 1 ; 2 uses
  %indvars.iv.next3559 = add i32 %indvars.iv3558, 1
  %lftr.wideiv3568 = trunc i64 %indvars.iv.next3566 to i32
  %exitcond3569.not = icmp eq i32 %i.br, %lftr.wideiv3568
  %indvar.next = add i32 %indvar, 1
  %indvar.next4343 = add i64 %indvar4342, 1
  br i1 %exitcond3569.not, label %._crit_edge2984.a, label %.lr.ph2963, !llvm.loop !30

._crit_edge2984.a:                                ; preds = %._crit_edge2973
  store i32 1, ptr %i.a, align 4, !tbaa !151
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge2984.a, %._crit_edge2959
  br i1 %.not26533001, label %bb.w, label %.lr.ph2998

.lr.ph2998:                                       ; preds = %bb.t
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !151
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !151
  %i.rc = add i32 %.neg.le, %i.ac
  %i.rd = add i32 %i.rc, %13
  %i.re = sext i32 %i.bs to i64
  %i.rf = zext i32 %i.br to i64
  %i.rg = add i32 %i.bv, 1
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph2998, %._crit_edge2990
  %indvars.iv3574.a = phi i64 [ %i.rf, %.lr.ph2998 ], [ %indvars.iv.next3575.a, %._crit_edge2990 ] ; 4 uses
  %indvars.iv3570 = phi i32 [ %i.ej, %.lr.ph2998 ], [ %indvars.iv.next3571, %._crit_edge2990 ] ; 2 uses
  %.42585.neg2996 = phi i32 [ %.neg.le, %.lr.ph2998 ], [ %.42585.neg, %._crit_edge2990 ] ; 2 uses
  %i.rh = trunc i64 %indvars.iv3574.a to i32
  %i.ri = sub i32 %i.rh, %.pre3791.a              ; 2 uses
  %i.rj = call i32 @llvm.smax.i32(i32 %i.ri, i32 %i.bw)
  %.not26942986 = icmp sgt i32 %i.rj, %i.bs
  br i1 %.not26942986, label %._crit_edge2990, label %.lr.ph2989

.lr.ph2989:                                       ; preds = %bb.u
  %i.rk = call i32 @llvm.smax.i32(i32 %indvars.iv3570, i32 %i.bw)
  %smax = sext i32 %i.rk to i64
  %i.rl = add i32 %.42585.neg2996, %i.br
  %i.rm = trunc i64 %indvars.iv3574.a to i32
  %i.rn = mul i32 %i.n, %i.rm                     ; 2 uses
  %i.ro = add i32 %i.rl, %i.rn
  %i.rp = add i32 %i.ro, %i.bx
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rq
  %i.rs = add i32 %i.rn, %.42585.neg2996
  %invariant.op2991 = add i32 %i.rs, %i.bx
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2989, %bb.v
  %indvars.iv3572 = phi i64 [ %smax, %.lr.ph2989 ], [ %indvars.iv.next3573, %bb.v ] ; 3 uses
  %i.rt = trunc nsw i64 %indvars.iv3572 to i32    ; 2 uses
  %i.ru = add i32 %i.rd, %i.rt
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.rv
  %i.rx = load double, ptr %i.rw, align 8, !tbaa !153
  %i.ry = load double, ptr %i.rr, align 8, !tbaa !153
  %.reass2992 = add i32 %invariant.op2991, %i.rt
  %i.rz = sext i32 %.reass2992 to i64
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rz ; 2 uses
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !153
  %i.sc = fneg double %i.rx
  %i.sd = call double @llvm.fmuladd.f64(double %i.sc, double %i.ry, double %i.sb)
  store double %i.sd, ptr %i.sa, align 8, !tbaa !153
  %indvars.iv.next3573 = add nsw i64 %indvars.iv3572, 1
  %.not2694.not = icmp slt i64 %indvars.iv3572, %i.re
  br i1 %.not2694.not, label %bb.v, label %._crit_edge2990, !llvm.loop !31

._crit_edge2990:                                  ; preds = %bb.v, %bb.u
  %indvars.iv.next3575.a = add i64 %indvars.iv3574.a, 1 ; 2 uses
  %i.se = trunc i64 %indvars.iv3574.a to i32
  %.42585.neg = xor i32 %i.se, -1
  %indvars.iv.next3571 = add i32 %indvars.iv3570, 1
  %lftr.wideiv3577 = trunc i64 %indvars.iv.next3575.a to i32
  %exitcond3578.not = icmp eq i32 %i.rg, %lftr.wideiv3577
  br i1 %exitcond3578.not, label %._crit_edge2999.a, label %bb.u, !llvm.loop !32

._crit_edge2999.a:                                ; preds = %._crit_edge2990
  store i32 %i.ri, ptr %i.d, align 4, !tbaa !151
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge2999.a, %bb.t
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.sf = sub nsw i32 %.pre3792.a, %i.ay
  store i32 %i.sf, ptr %i.c, align 4, !tbaa !151
  %i.sg = fdiv double 1.000000e+00, %i.ce
  store double %i.sg, ptr %i.e, align 8, !tbaa !153
  %i.sh = mul nsw i32 %i.br, %i.t
  %i.si = add nsw i32 %i.sh, %i.ba
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.sj ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %i.sk, ptr noundef nonnull @c__1) #4
  %i.sl = load i32, ptr %i.l, align 4, !tbaa !151 ; 3 uses
  %i.sm = icmp sgt i32 %i.sl, 0
  br i1 %i.sm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.sn = load i32, ptr %2, align 4, !tbaa !151
  %i.so = sub nsw i32 %i.sn, %i.ay
  store i32 %i.so, ptr %i.c, align 4, !tbaa !151
  %i.sp = sub i32 %i.cb, %i.sl
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.sq
  %i.ss = sub nsw i32 %i.br, %i.sl
  %i.st = mul nsw i32 %i.ss, %i.t
  %i.su = add nsw i32 %i.st, %i.ba
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.sv
  call void @dger_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.sk, ptr noundef nonnull @c__1, ptr noundef %i.sr, ptr noundef nonnull @c__1, ptr noundef %i.sw, ptr noundef nonnull %10) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.sx = sub i32 %i.br, %i.bv
  %i.sy = load i32, ptr %i.j, align 4, !tbaa !151
  %i.sz = mul nsw i32 %i.bv, %i.n
  %i.ta = add i32 %i.sx, %i.sz
  %i.tb = add i32 %i.ta, %i.sy
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.tc
  %i.te = load double, ptr %i.td, align 8, !tbaa !153
  store double %i.te, ptr %i.k, align 8, !tbaa !153
  %.pre3854.a = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %bb.z
  %i.tf = phi i32 [ %.pre3854.a, %bb.z ], [ %i.bq, %bb.r ] ; 2 uses
  %.025322917 = phi i32 [ 1, %bb.z ], [ 0, %bb.r ] ; 7 uses
  %.not26472913 = phi i1 [ false, %bb.z ], [ true, %bb.r ] ; 5 uses
  %.1260627722796 = phi i32 [ %i.br, %bb.z ], [ %i.ca, %bb.r ] ; 19 uses
  %.1254827752794 = phi i32 [ %i.bs, %bb.z ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327782792 = phi i32 [ %i.bv, %bb.z ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927812790 = phi i32 [ %i.by, %bb.z ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.tg = add nsw i32 %i.tf, -1
  store i32 %i.tg, ptr %i.c, align 4, !tbaa !151
  %.not26793063 = icmp slt i32 %i.tf, 2
  br i1 %.not26793063, label %._crit_edge3068, label %.lr.ph3067

.lr.ph3067:                                       ; preds = %bb.aa
  %i.th = mul nsw i32 %.1260627722796, %i.q
  %i.ti = add i32 %i.th, %i.ac
  %i.tj = add i32 %.1260627722796, 1
  %i.tk = sext i32 %.1260627722796 to i64
  %i.tl = sext i32 %.1254827752794 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph3067, %.loopexit2883
  %indvars.iv3619 = phi i64 [ 1, %.lr.ph3067 ], [ %indvars.iv.next3620, %.loopexit2883 ] ; 7 uses
  %indvars.iv3617.a = phi i64 [ -1, %.lr.ph3067 ], [ %indvars.iv.next3618.a, %.loopexit2883 ] ; 4 uses
  %.pre3855.a = load i32, ptr %2, align 4, !tbaa !151 ; 4 uses
  %.pre3856.a = load i32, ptr %3, align 4, !tbaa !151 ; 4 uses
  br i1 %.not26472913, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.tm = sub nsw i64 %i.tk, %indvars.iv3619      ; 3 uses
  %i.tn = trunc nsw i64 %i.tm to i32              ; 2 uses
  %i.to = add nsw i32 %.pre3856.a, %i.tn          ; 3 uses
  %i.tp = icmp slt i32 %i.to, %.pre3855.a
  %i.tq = icmp sgt i64 %i.tm, 1
  %or.cond2757 = and i1 %i.tq, %i.tp
  br i1 %or.cond2757, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tr = mul nsw i32 %i.to, %i.n
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv3619
  %i.tu = getelementptr i8, ptr %i.tt, i64 8
  %i.tv = getelementptr [8 x i8], ptr %i.tu, i64 %i.ts
  %i.tw = trunc nuw nsw i64 %indvars.iv3619 to i32
  %i.tx = add i32 %i.ay, %i.tw
  %i.ty = sub i32 %.1260627722796, %i.tx          ; 2 uses
  %i.tz = add i32 %i.ty, %.pre3856.a
  %i.ua = add i32 %i.tz, %.pre3855.a
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ub
  %i.ud = sub nsw i32 %i.to, %i.ay
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ue
  call void @dlartg_(ptr noundef %i.tv, ptr noundef nonnull %i.k, ptr noundef nonnull %i.uc, ptr noundef nonnull %i.uf, ptr noundef nonnull %i.g) #4
  %i.ug = trunc nsw i64 %indvars.iv3617.a to i32
  %i.uh = add i32 %i.ti, %i.ug
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ui
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !153
  %i.ul = fneg double %i.uk
  %i.um = load double, ptr %i.k, align 8, !tbaa !153
  %i.un = fmul double %i.um, %i.ul                ; 2 uses
  %i.uo = load i32, ptr %2, align 4, !tbaa !151   ; 2 uses
  %i.up = load i32, ptr %3, align 4, !tbaa !151   ; 3 uses
  %i.uq = add i32 %i.ty, %i.uo
  %i.ur = add i32 %i.uq, %i.up
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.us ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !153
  %i.uv = add nsw i32 %i.up, %i.tn                ; 2 uses
  %i.uw = sub nsw i32 %i.uv, %i.ay
  %i.ux = sext i32 %i.uw to i64
  %i.uy = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ux ; 2 uses
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !153
  %i.va = mul nsw i32 %i.uv, %i.n
  %i.vb = sext i32 %i.va to i64
  %i.vc = getelementptr [8 x i8], ptr %i.p, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.vc, i64 8      ; 3 uses
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !153
  %i.vf = fneg double %i.ve
  %i.vg = fmul double %i.uz, %i.vf
  %i.vh = call double @llvm.fmuladd.f64(double %i.uu, double %i.un, double %i.vg)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.tm
  store double %i.vh, ptr %i.vi, align 8, !tbaa !153
  %i.vj = load double, ptr %i.uy, align 8, !tbaa !153
  %i.vk = load double, ptr %i.ut, align 8, !tbaa !153
  %i.vl = load double, ptr %i.vd, align 8, !tbaa !153
  %i.vm = fmul double %i.vk, %i.vl
  %i.vn = call double @llvm.fmuladd.f64(double %i.vj, double %i.un, double %i.vm)
  store double %i.vn, ptr %i.vd, align 8, !tbaa !153
  %i.vo = load double, ptr %i.g, align 8, !tbaa !153
  store double %i.vo, ptr %i.k, align 8, !tbaa !153
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %i.vp = phi i32 [ %.pre3856.a, %bb.ac ], [ %i.up, %bb.ad ], [ %.pre3856.a, %bb.ab ] ; 4 uses
  %i.vq = phi i32 [ %.pre3855.a, %bb.ac ], [ %i.uo, %bb.ad ], [ %.pre3855.a, %bb.ab ] ; 4 uses
  %i.vr = sub nsw i64 %indvars.iv3619, %i.tl      ; 2 uses
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = add i32 %i.vs, 2
  %i.vu = trunc i64 %indvars.iv3619 to i32
  %i.vv = xor i32 %i.vu, -1
  %i.vw = add i32 %.1260627722796, %i.vv
  %i.vx = icmp slt i64 %i.vr, 0
  %i.vy = select i1 %i.vx, i32 1, i32 %i.vt
  %i.vz = load i32, ptr %i.j, align 4, !tbaa !151 ; 7 uses
  %i.wa = mul nsw i32 %i.vz, %i.vy
  %i.wb = add nsw i32 %i.vw, %i.wa                ; 11 uses
  %i.wc = sub i32 %i.vq, %i.wb
  %i.wd = add nsw i32 %i.wc, %i.vp
  %i.we = sdiv i32 %i.wd, %i.vz                   ; 3 uses
  store i32 %i.we, ptr %i.h, align 4, !tbaa !151
  %i.wf = add nsw i32 %i.we, -1
  %i.wg = mul nsw i32 %i.wf, %i.vz                ; 3 uses
  %i.wh = add nsw i32 %i.wg, %i.wb                ; 5 uses
  br i1 %.not26472913, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.wi = shl i32 %i.vp, 1
  %i.wj = trunc nsw i64 %indvars.iv3617.a to i32
  %i.wk = add i32 %i.tj, %i.wj
  %i.wl = add i32 %i.wk, %i.wi
  %i.wm = call i32 @llvm.smax.i32(i32 %i.wb, i32 %i.wl)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.0 = phi i32 [ %i.wm, %bb.af ], [ %i.wb, %bb.ae ] ; 7 uses
  %i.wn = add i32 %i.vp, %i.vq
  %i.wo = sub i32 %i.wn, %.0
  %i.wp = sdiv i32 %i.wo, %i.vz                   ; 2 uses
  store i32 %i.wp, ptr %i.m, align 4, !tbaa !151
  store i32 %i.wh, ptr %i.b, align 4, !tbaa !151
  store i32 %i.vz, ptr %i.d, align 4, !tbaa !151
  %i.wq = icmp slt i32 %i.vz, 0                   ; 2 uses
  %i.wr = icmp sge i32 %.0, %i.wh
  %i.ws = icmp sle i32 %.0, %i.wh
  %.in26893041 = select i1 %i.wq, i1 %i.wr, i1 %i.ws
  br i1 %.in26893041, label %.lr.ph3044.a, label %._crit_edge3045.a

.lr.ph3044.a:                                     ; preds = %bb.ag
  %i.wt = sub i32 %i.vq, %i.ay
  %i.wu = sext i32 %.0 to i64
  %i.wv = sext i32 %i.vz to i64
  %i.ww = sext i32 %i.wh to i64                   ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph3044.a, %bb.ah
  %indvars.iv3614 = phi i64 [ %i.wu, %.lr.ph3044.a ], [ %indvars.iv.next3615, %bb.ah ] ; 4 uses
  %i.wx = add nsw i64 %indvars.iv3614, 1
  %i.wy = mul nsw i64 %i.wx, %i.bb
  %i.wz = getelementptr [8 x i8], ptr %i.p, i64 %i.wy
  %i.xa = getelementptr i8, ptr %i.wz, i64 8      ; 3 uses
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !153
  %i.xc = sub nsw i64 %indvars.iv3614, %i.bd
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.xc ; 2 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !153
  %i.xf = fmul double %i.xb, %i.xe
  store double %i.xf, ptr %i.xd, align 8, !tbaa !153
  %i.xg = trunc nsw i64 %indvars.iv3614 to i32
  %i.xh = add i32 %i.wt, %i.xg
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.xi
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !153
  %i.xl = load double, ptr %i.xa, align 8, !tbaa !153
  %i.xm = fmul double %i.xk, %i.xl
  store double %i.xm, ptr %i.xa, align 8, !tbaa !153
  %indvars.iv.next3615 = add nsw i64 %indvars.iv3614, %i.wv ; 3 uses
  %i.xn = icmp sge i64 %indvars.iv.next3615, %i.ww
  %i.xo = icmp sle i64 %indvars.iv.next3615, %i.ww
  %.in2689 = select i1 %i.wq, i1 %i.xn, i1 %i.xo
  br i1 %.in2689, label %bb.ah, label %._crit_edge3045.a, !llvm.loop !33

._crit_edge3045.a:                                ; preds = %bb.ah, %bb.ag
  %i.xp = icmp sgt i32 %i.wp, 0
  br i1 %i.xp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge3045.a
  %i.xq = mul nsw i32 %.0, %i.n
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr [8 x i8], ptr %i.p, i64 %i.xr
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = sub nsw i32 %.0, %i.ay
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.xv
  %i.xx = sub i32 %i.vq, %i.ay
  %i.xy = add i32 %i.xx, %.0
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.xz
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.xt, ptr noundef nonnull %i.f, ptr noundef nonnull %i.xw, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ya, ptr noundef nonnull %i.j) #4
  %.pre3857.a = load i32, ptr %i.h, align 4, !tbaa !151
  %.pre3860.pre = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge3045.a
  %.pre3860.a = phi i32 [ %.pre3860.pre, %bb.ai ], [ %i.vp, %._crit_edge3045.a ] ; 4 uses
  %i.yb = phi i32 [ %.pre3857.a, %bb.ai ], [ %i.we, %._crit_edge3045.a ]
  %i.yc = icmp sgt i32 %i.yb, 0
  br i1 %i.yc, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.yd = add nsw i32 %.pre3860.a, -1
  store i32 %i.yd, ptr %i.d, align 4, !tbaa !151
  %.not26903046 = icmp slt i32 %.pre3860.a, 2
  %.pre3938 = mul nsw i32 %i.wb, %i.n             ; 2 uses
  %.pre3940.a = add nsw i32 %i.wb, 1
  %.pre3942.a = mul nsw i32 %.pre3940.a, %i.n     ; 3 uses
  %.pre3944.a = sub i32 %i.wb, %i.ay              ; 3 uses
  %.pre3946.a = sext i32 %.pre3944.a to i64       ; 2 uses
end_hunk_1
begin_hunk_2_@dsbgst_:bb.a
  %i.akv = mul nsw i32 %i.akn, %i.aku
  %i.akw = add nsw i32 %i.aks, %i.akv             ; 3 uses
  %i.akx = load i32, ptr %4, align 4, !tbaa !151
  %i.aky = sub nsw i32 %i.akx, %.525623119        ; 2 uses
  %i.akz = icmp sgt i32 %i.aky, 0
  br i1 %i.akz, label %.lr.ph3116, label %._crit_edge3117

.lr.ph3116:                                       ; preds = %.lr.ph3121
  %i.ala = sub i32 %i.akw, %i.ay                  ; 2 uses
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.alb
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph3116, %bb.bl
  %.pre38743922 = phi i32 [ %.pre3874.a, %.lr.ph3116 ], [ %.pre38743921, %bb.bl ]
  %i.ald = phi i32 [ %.pre3874.a, %.lr.ph3116 ], [ %i.alw, %bb.bl ] ; 3 uses
  %.53114 = phi i32 [ %i.aky, %.lr.ph3116 ], [ %i.alx, %bb.bl ] ; 6 uses
  %i.ale = load i32, ptr %2, align 4, !tbaa !151  ; 2 uses
  %i.alf = sub i32 %.53114, %i.akw
  %i.alg = add i32 %i.alf, %i.ale
  %i.alh = sdiv i32 %i.alg, %i.ald                ; 2 uses
  store i32 %i.alh, ptr %i.m, align 4, !tbaa !151
  %i.ali = icmp sgt i32 %i.alh, 0
  br i1 %i.ali, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.alj = sub i32 %i.akw, %.53114
  %i.alk = add i32 %i.alj, %i.ald
  %i.all = mul nsw i32 %i.alk, %i.n               ; 2 uses
  %i.alm = add nsw i32 %i.all, %.53114
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aln
  %i.alp = add nuw nsw i32 %.53114, 1
  %i.alq = add nsw i32 %i.alp, %i.all
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.alr
  %i.alt = add i32 %i.ala, %i.ale
  %i.alu = sext i32 %i.alt to i64
  %i.alv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.alu
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.alo, ptr noundef nonnull %i.f, ptr noundef %i.als, ptr noundef nonnull %i.f, ptr noundef nonnull %i.alv, ptr noundef nonnull %i.alc, ptr noundef nonnull %i.j) #4
  %.pre3873.a = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %.pre38743921 = phi i32 [ %.pre38743922, %bb.bj ], [ %.pre3873.a, %bb.bk ] ; 2 uses
  %i.alw = phi i32 [ %i.ald, %bb.bj ], [ %.pre3873.a, %bb.bk ] ; 2 uses
  %i.alx = add nsw i32 %.53114, -1
  %i.aly = icmp sgt i32 %.53114, 1
  br i1 %i.aly, label %bb.bj, label %._crit_edge3117.loopexit, !llvm.loop !46

._crit_edge3117.loopexit:                         ; preds = %bb.bl
  %.pre3875.a = load i32, ptr %i.b, align 4, !tbaa !151
  br label %._crit_edge3117

._crit_edge3117:                                  ; preds = %._crit_edge3117.loopexit, %.lr.ph3121
  %.pre38743920 = phi i32 [ %.pre38743921, %._crit_edge3117.loopexit ], [ %.pre3874.a, %.lr.ph3121 ]
  %i.alz = phi i32 [ %i.alw, %._crit_edge3117.loopexit ], [ %i.akn, %.lr.ph3121 ]
  %i.ama = phi i32 [ %.pre3875.a, %._crit_edge3117.loopexit ], [ %i.ako, %.lr.ph3121 ] ; 2 uses
  %i.amb = add nuw nsw i32 %.525623119, 1
  %.not2680.not = icmp slt i32 %.525623119, %i.ama
  br i1 %.not2680.not, label %.lr.ph3121, label %._crit_edge3122, !llvm.loop !47

._crit_edge3122:                                  ; preds = %._crit_edge3117
  %.pre3876.a = load i32, ptr %4, align 4, !tbaa !151 ; 6 uses
  %i.amc = icmp sgt i32 %.pre3876.a, 1
  br i1 %i.amc, label %bb.bm, label %.loopexit2884

bb.bm:                                            ; preds = %._crit_edge3122
  %i.amd = load i32, ptr %3, align 4, !tbaa !151  ; 2 uses
  %i.ame = shl i32 %i.amd, 1
  %i.amf = add i32 %.1260627722796, 1
  %i.amg = sub i32 %i.amf, %.pre3876.a
  %i.amh = add i32 %i.amg, %i.ame                 ; 3 uses
  store i32 %i.amh, ptr %i.b, align 4, !tbaa !151
  %i.ami = load i32, ptr %2, align 4, !tbaa !151  ; 6 uses
  %.not2681.not3123 = icmp sgt i32 %i.ami, %i.amh
  br i1 %.not2681.not3123, label %.lr.ph3126, label %.loopexit2884

.lr.ph3126:                                       ; preds = %bb.bm
  %i.amj = add i32 %i.amd, %i.ay                  ; 8 uses
  %i.amk = sext i32 %i.ami to i64                 ; 11 uses
  %i.aml = sext i32 %i.amh to i64                 ; 3 uses
  %i.amm = sub nsw i64 %i.amk, %i.aml             ; 3 uses
  %min.iters.check4246 = icmp ult i64 %i.amm, 28
  br i1 %min.iters.check4246, label %scalar.ph4245.preheader, label %vector.scevcheck4234

vector.scevcheck4234:                             ; preds = %.lr.ph3126
  %i.amn = xor i64 %i.aml, -1
  %i.amo = add nsw i64 %i.amn, %i.amk             ; 2 uses
  %i.amp = shl i32 %i.ami, 1
  %i.amq = xor i32 %i.amj, -1
  %i.amr = add i32 %i.amp, %i.amq                 ; 2 uses
  %i.ams = trunc i64 %i.amo to i32                ; 2 uses
  %i.amt = sub i32 %i.amr, %i.ams
  %i.amu = icmp sgt i32 %i.amt, %i.amr
  %i.amv = xor i32 %i.amj, -1
  %i.amw = add i32 %i.ami, %i.amv                 ; 2 uses
  %i.amx = sub i32 %i.amw, %i.ams
  %i.amy = icmp sgt i32 %i.amx, %i.amw
  %i.amz = icmp ugt i64 %i.amo, 4294967295
  %i.ana = or i1 %i.amy, %i.amz
  %i.anb = or i1 %i.amu, %i.ana
  br i1 %i.anb, label %scalar.ph4245.preheader, label %vector.memcheck4235

vector.memcheck4235:                              ; preds = %vector.scevcheck4234
  %i.anc = shl nsw i64 %i.amk, 3                  ; 3 uses
  %i.and = add nsw i64 %i.anc, -1
  %diff.check4236 = icmp ult i64 %i.and, 31
  %i.ane = shl i32 %i.ami, 1
  %i.anf = xor i32 %i.amj, -1
  %i.ang = add i32 %i.ane, %i.anf
  %i.anh = sext i32 %i.ang to i64
  %i.ani = add nsw i64 %i.bd, %i.anh
  %i.anj = shl nsw i64 %i.ani, 3                  ; 2 uses
  %i.ank = shl nsw i64 %i.amk, 4                  ; 2 uses
  %i.anl = sub nsw i64 %i.anj, %i.ank
  %diff.check4237 = icmp ult i64 %i.anl, 24
  %conflict.rdx4238 = or i1 %diff.check4236, %diff.check4237
  %i.anm = xor i32 %i.amj, -1
  %i.ann = add i32 %i.ami, %i.anm
  %i.ano = sext i32 %i.ann to i64
  %i.anp = add nsw i64 %i.bd, %i.ano
  %i.anq = shl nsw i64 %i.anp, 3                  ; 2 uses
  %i.anr = sub nsw i64 %i.ank, %i.anq
  %i.ans = add nsw i64 %i.anr, -9
  %diff.check4239 = icmp ult i64 %i.ans, 31
  %conflict.rdx4240 = or i1 %conflict.rdx4238, %diff.check4239
  %i.ant = sub nsw i64 %i.anj, %i.anc
  %diff.check4241 = icmp ult i64 %i.ant, 24
  %conflict.rdx4242 = or i1 %conflict.rdx4240, %diff.check4241
  %i.anu = sub nsw i64 %i.anq, %i.anc
  %diff.check4243 = icmp ult i64 %i.anu, 24
  %conflict.rdx4244 = or i1 %conflict.rdx4242, %diff.check4243
  br i1 %conflict.rdx4244, label %scalar.ph4245.preheader, label %vector.ph4247

vector.ph4247:                                    ; preds = %vector.memcheck4235
  %n.vec4248 = and i64 %i.amm, -4                 ; 3 uses
  %i.anv = sub nsw i64 %i.amk, %n.vec4248
  br label %vector.body4249

vector.body4249:                                  ; preds = %vector.body4249, %vector.ph4247
  %index4250 = phi i64 [ 0, %vector.ph4247 ], [ %index.next4253, %vector.body4249 ] ; 2 uses
  %i.anw = xor i64 %index4250, -1
  %i.anx = add i64 %i.anw, %i.amk                 ; 3 uses
  %i.any = add nsw i64 %i.anx, %i.amk             ; 2 uses
  %i.anz = trunc nsw i64 %i.any to i32
  %i.aoa = sub i32 %i.anz, %i.amj
  %i.aob = sext i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aob
  %i.aod = getelementptr inbounds i8, ptr %i.aoc, i64 -24
  %wide.load4251 = load <4 x double>, ptr %i.aod, align 8, !tbaa !153
  %i.aoe = sub nsw i64 %i.any, %i.bd
  %i.aof = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aoe
  %i.aog = getelementptr inbounds i8, ptr %i.aof, i64 -24
  store <4 x double> %wide.load4251, ptr %i.aog, align 8, !tbaa !153
  %i.aoh = trunc nsw i64 %i.anx to i32
  %i.aoi = sub i32 %i.aoh, %i.amj
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aoj
  %i.aol = getelementptr inbounds i8, ptr %i.aok, i64 -24
  %wide.load4252 = load <4 x double>, ptr %i.aol, align 8, !tbaa !153
  %i.aom = sub nsw i64 %i.anx, %i.bd
  %i.aon = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aom
  %i.aoo = getelementptr inbounds i8, ptr %i.aon, i64 -24
  store <4 x double> %wide.load4252, ptr %i.aoo, align 8, !tbaa !153
  %index.next4253 = add nuw i64 %index4250, 4     ; 2 uses
  %i.aop = icmp eq i64 %index.next4253, %n.vec4248
  br i1 %i.aop, label %middle.block4254, label %vector.body4249, !llvm.loop !48

middle.block4254:                                 ; preds = %vector.body4249
  %cmp.n4255 = icmp eq i64 %i.amm, %n.vec4248
  br i1 %cmp.n4255, label %.loopexit2884, label %scalar.ph4245.preheader

scalar.ph4245.preheader:                          ; preds = %vector.memcheck4235, %vector.scevcheck4234, %.lr.ph3126, %middle.block4254
  %indvars.iv3636.ph = phi i64 [ %i.amk, %vector.memcheck4235 ], [ %i.amk, %vector.scevcheck4234 ], [ %i.amk, %.lr.ph3126 ], [ %i.anv, %middle.block4254 ]
  br label %scalar.ph4245

scalar.ph4245:                                    ; preds = %scalar.ph4245.preheader, %scalar.ph4245
  %indvars.iv3636 = phi i64 [ %indvars.iv.next3637, %scalar.ph4245 ], [ %indvars.iv3636.ph, %scalar.ph4245.preheader ]
  %indvars.iv.next3637 = add nsw i64 %indvars.iv3636, -1 ; 5 uses
  %i.aoq = add nsw i64 %indvars.iv.next3637, %i.amk ; 2 uses
  %i.aor = trunc nsw i64 %i.aoq to i32
  %i.aos = sub i32 %i.aor, %i.amj
  %i.aot = sext i32 %i.aos to i64
  %i.aou = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aot
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !153
  %i.aow = sub nsw i64 %i.aoq, %i.bd
  %i.aox = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aow
  store double %i.aov, ptr %i.aox, align 8, !tbaa !153
  %i.aoy = trunc nsw i64 %indvars.iv.next3637 to i32
  %i.aoz = sub i32 %i.aoy, %i.amj
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apa
  %i.apc = load double, ptr %i.apb, align 8, !tbaa !153
  %i.apd = sub nsw i64 %indvars.iv.next3637, %i.bd
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.apd
  store double %i.apc, ptr %i.ape, align 8, !tbaa !153
  %.not2681.not = icmp sgt i64 %indvars.iv.next3637, %i.aml
  br i1 %.not2681.not, label %scalar.ph4245, label %.loopexit2884, !llvm.loop !49

bb.bn:                                            ; preds = %.lr.ph.split.us
  %i.apf = sext i32 %13 to i64
  %i.apg = getelementptr [8 x i8], ptr %i.s, i64 %i.apf
  %i.aph = getelementptr i8, ptr %i.apg, i64 8
  %i.api = load double, ptr %i.aph, align 8, !tbaa !153 ; 13 uses
  br i1 %.not26533001, label %._crit_edge3005, label %iter.check

iter.check:                                       ; preds = %bb.bn
  %i.apj = mul nsw i32 %i.br, %i.n                ; 2 uses
  %reass.sub = sub i32 %i.apj, %.02605.ph
  %i.apk = add i32 %reass.sub, 2                  ; 7 uses
  %i.apl = zext i32 %i.br to i64                  ; 4 uses
  %i.apm = add i32 %i.bv, 1                       ; 2 uses
  %i.apn = sub i32 %i.apm, %.02605.ph             ; 3 uses
  %i.apo = zext i32 %i.apn to i64
  %i.app = add nuw nsw i64 %i.apo, 1              ; 5 uses
  %min.iters.check4259 = icmp ult i32 %i.apn, 3
  br i1 %min.iters.check4259, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck4257

vector.scevcheck4257:                             ; preds = %iter.check
  %i.apq = add i32 %i.bv, 1
  %i.apr = sub i32 %i.apq, %.02605.ph
  %i.aps = add i32 %i.apj, 1                      ; 2 uses
  %i.apt = add i32 %i.aps, %i.apr
  %i.apu = icmp slt i32 %i.apt, %i.aps
  br i1 %i.apu, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck4257
  %min.iters.check4260 = icmp ult i32 %i.apn, 15
  br i1 %min.iters.check4260, label %vec.epilog.ph, label %vector.ph4261

vector.ph4261:                                    ; preds = %vector.main.loop.iter.check
  %i.apv = and i64 %i.app, 12
  %n.vec4262 = and i64 %i.app, 8589934576         ; 4 uses
  %i.apw = add nuw nsw i64 %n.vec4262, %i.apl
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.api, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4757 = add i32 %i.br, %i.apk
  br label %vector.body4263

vector.body4263:                                  ; preds = %vector.body4263, %vector.ph4261
  %index4264.a = phi i64 [ 0, %vector.ph4261 ], [ %index.next4269, %vector.body4263 ] ; 2 uses
  %i.apx = trunc i64 %index4264.a to i32
  %.reass4758 = add i32 %i.apx, %invariant.op4757
  %i.apy = sext i32 %.reass4758 to i64
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.apy ; 5 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 32 ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 64 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 96 ; 2 uses
  %wide.load4265.a = load <4 x double>, ptr %i.apz, align 8, !tbaa !153
  %wide.load4266 = load <4 x double>, ptr %i.aqa, align 8, !tbaa !153
  %wide.load4267 = load <4 x double>, ptr %i.aqb, align 8, !tbaa !153
  %wide.load4268 = load <4 x double>, ptr %i.aqc, align 8, !tbaa !153
  %i.aqd = fdiv <4 x double> %wide.load4265.a, %broadcast.splat
  %i.aqe = fdiv <4 x double> %wide.load4266, %broadcast.splat
  %i.aqf = fdiv <4 x double> %wide.load4267, %broadcast.splat
  %i.aqg = fdiv <4 x double> %wide.load4268, %broadcast.splat
  store <4 x double> %i.aqd, ptr %i.apz, align 8, !tbaa !153
  store <4 x double> %i.aqe, ptr %i.aqa, align 8, !tbaa !153
  store <4 x double> %i.aqf, ptr %i.aqb, align 8, !tbaa !153
  store <4 x double> %i.aqg, ptr %i.aqc, align 8, !tbaa !153
  %index.next4269 = add nuw i64 %index4264.a, 16  ; 2 uses
  %i.aqh = icmp eq i64 %index.next4269, %n.vec4262
  br i1 %i.aqh, label %middle.block4270, label %vector.body4263, !llvm.loop !50

middle.block4270:                                 ; preds = %vector.body4263
  %cmp.n4271 = icmp eq i64 %i.app, %n.vec4262
  br i1 %cmp.n4271, label %._crit_edge3005, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block4270
  %min.epilog.iters.check = icmp eq i64 %i.apv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec4262, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4273 = and i64 %i.app, 8589934588         ; 3 uses
  %i.aqi = add nuw nsw i64 %n.vec4273, %i.apl
  %broadcast.splatinsert4274 = insertelement <4 x double> poison, double %i.api, i64 0
  %broadcast.splat4275 = shufflevector <4 x double> %broadcast.splatinsert4274, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4759.a = add i32 %i.br, %i.apk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4276 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4278, %vec.epilog.vector.body ] ; 2 uses
  %i.aqj = trunc i64 %index4276 to i32
  %.reass4760 = add i32 %i.aqj, %invariant.op4759.a
  %i.aqk = sext i32 %.reass4760 to i64
  %i.aql = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqk ; 2 uses
  %wide.load4277 = load <4 x double>, ptr %i.aql, align 8, !tbaa !153
  %i.aqm = fdiv <4 x double> %wide.load4277, %broadcast.splat4275
  store <4 x double> %i.aqm, ptr %i.aql, align 8, !tbaa !153
  %index.next4278 = add nuw i64 %index4276, 4     ; 2 uses
  %i.aqn = icmp eq i64 %index.next4278, %n.vec4273
  br i1 %i.aqn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !51

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n4279 = icmp eq i64 %i.app, %n.vec4273
  br i1 %cmp.n4279, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck4257, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv3579.ph = phi i64 [ %i.apl, %iter.check ], [ %i.apl, %vector.scevcheck4257 ], [ %i.apw, %vec.epilog.iter.check ], [ %i.aqi, %vec.epilog.middle.block ] ; 3 uses
  %i.aqo = add i32 %i.bv, 1
  %i.aqp = trunc i64 %indvars.iv3579.ph to i32    ; 2 uses
  %i.aqq = sub i32 %i.aqo, %i.aqp
  %i.aqr = sub i32 %i.bv, %i.aqp
  %xtraiter4691 = and i32 %i.aqq, 3               ; 2 uses
  %lcmp.mod4692.not = icmp eq i32 %xtraiter4691, 0
  br i1 %lcmp.mod4692.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv3579.prol = phi i64 [ %indvars.iv.next3580.prol.a, %vec.epilog.scalar.ph.prol ], [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter4693 = phi i32 [ %prol.iter4693.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aqs = trunc i64 %indvars.iv3579.prol to i32
  %i.aqt = add i32 %i.apk, %i.aqs
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aqu ; 2 uses
  %i.aqw = load double, ptr %i.aqv, align 8, !tbaa !153
  %i.aqx = fdiv double %i.aqw, %i.api
  store double %i.aqx, ptr %i.aqv, align 8, !tbaa !153
  %indvars.iv.next3580.prol.a = add i64 %indvars.iv3579.prol, 1 ; 2 uses
  %prol.iter4693.next = add i32 %prol.iter4693, 1 ; 2 uses
  %prol.iter4693.cmp.not = icmp eq i32 %prol.iter4693.next, %xtraiter4691
  br i1 %prol.iter4693.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !52

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv3579.unr.a = phi i64 [ %indvars.iv3579.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next3580.prol.a, %vec.epilog.scalar.ph.prol ]
  %i.aqy = icmp ult i32 %i.aqr, 3
  br i1 %i.aqy, label %._crit_edge3005, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op4761.a = add i32 1, %i.apk
  %invariant.op4763.a = add i32 2, %i.apk
  %invariant.op4765.a = add i32 3, %i.apk
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv3579.a = phi i64 [ %indvars.iv3579.unr.a, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next3580.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.aqz = trunc i64 %indvars.iv3579.a to i32
  %i.ara = add i32 %i.apk, %i.aqz
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arb ; 2 uses
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !153
  %i.are = fdiv double %i.ard, %i.api
  store double %i.are, ptr %i.arc, align 8, !tbaa !153
  %i.arf = trunc i64 %indvars.iv3579.a to i32
  %.reass4762 = add i32 %i.arf, %invariant.op4761.a
  %i.arg = sext i32 %.reass4762 to i64
  %i.arh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arg ; 2 uses
  %i.ari = load double, ptr %i.arh, align 8, !tbaa !153
  %i.arj = fdiv double %i.ari, %i.api
  store double %i.arj, ptr %i.arh, align 8, !tbaa !153
  %i.ark = trunc i64 %indvars.iv3579.a to i32
  %.reass4764.a = add i32 %i.ark, %invariant.op4763.a
  %i.arl = sext i32 %.reass4764.a to i64
  %i.arm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arl ; 2 uses
  %i.arn = load double, ptr %i.arm, align 8, !tbaa !153
  %i.aro = fdiv double %i.arn, %i.api
  store double %i.aro, ptr %i.arm, align 8, !tbaa !153
  %i.arp = trunc i64 %indvars.iv3579.a to i32
  %.reass4766.a = add i32 %i.arp, %invariant.op4765.a
  %i.arq = sext i32 %.reass4766.a to i64
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.arq ; 2 uses
  %i.ars = load double, ptr %i.arr, align 8, !tbaa !153
  %i.art = fdiv double %i.ars, %i.api
  store double %i.art, ptr %i.arr, align 8, !tbaa !153
  %indvars.iv.next3580.3 = add nsw i64 %indvars.iv3579.a, 4 ; 2 uses
  %lftr.wideiv3582.3 = trunc i64 %indvars.iv.next3580.3 to i32
  %exitcond3583.not.3 = icmp eq i32 %i.apm, %lftr.wideiv3582.3
  br i1 %exitcond3583.not.3, label %._crit_edge3005, label %vec.epilog.scalar.ph, !llvm.loop !53

._crit_edge3005:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block4270, %vec.epilog.middle.block, %bb.bn
  store i32 1, ptr %i.b, align 4, !tbaa !151
  %i.aru = sub nsw i32 %i.br, %.pre3791.a         ; 4 uses
  store i32 %i.aru, ptr %i.c, align 4, !tbaa !151
  store i32 %i.br, ptr %i.d, align 4, !tbaa !151
  %i.arv = call i32 @llvm.smax.i32(i32 %i.aru, i32 1) ; 4 uses
  %.not2654.not3006 = icmp slt i32 %i.arv, %.02605.ph
  br i1 %.not2654.not3006, label %.lr.ph3009.preheader, label %._crit_edge3010

.lr.ph3009.preheader:                             ; preds = %._crit_edge3005
  %i.arw = zext nneg i32 %i.arv to i64            ; 4 uses
  %wide.trip.count3587 = zext nneg i32 %.02605.ph to i64 ; 3 uses
  %i.arx = sub nsw i64 %wide.trip.count3587, %i.arw
  %xtraiter4694 = and i64 %i.arx, 3               ; 2 uses
  %lcmp.mod4695.not = icmp eq i64 %xtraiter4694, 0
  br i1 %lcmp.mod4695.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol

.lr.ph3009.prol:                                  ; preds = %.lr.ph3009.preheader, %.lr.ph3009.prol
  %indvars.iv3584.prol = phi i64 [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ], [ %i.arw, %.lr.ph3009.preheader ] ; 3 uses
  %prol.iter4696 = phi i64 [ %prol.iter4696.next, %.lr.ph3009.prol ], [ 0, %.lr.ph3009.preheader ]
  %i.ary = mul nsw i64 %indvars.iv3584.prol, %i.bb
  %i.arz = trunc nuw nsw i64 %indvars.iv3584.prol to i32
  %i.asa = sub i32 %.02605.ph, %i.arz
  %i.asb = sext i32 %i.asa to i64
  %i.asc = getelementptr [8 x i8], ptr %i.p, i64 %i.ary
  %i.asd = getelementptr [8 x i8], ptr %i.asc, i64 %i.asb ; 2 uses
  %i.ase = load double, ptr %i.asd, align 8, !tbaa !153
  %i.asf = fdiv double %i.ase, %i.api
  store double %i.asf, ptr %i.asd, align 8, !tbaa !153
  %indvars.iv.next3585.prol = add nuw nsw i64 %indvars.iv3584.prol, 1 ; 2 uses
  %prol.iter4696.next = add i64 %prol.iter4696, 1 ; 2 uses
  %prol.iter4696.cmp.not = icmp eq i64 %prol.iter4696.next, %xtraiter4694
  br i1 %prol.iter4696.cmp.not, label %.lr.ph3009.prol.loopexit, label %.lr.ph3009.prol, !llvm.loop !54

.lr.ph3009.prol.loopexit:                         ; preds = %.lr.ph3009.prol, %.lr.ph3009.preheader
  %indvars.iv3584.unr = phi i64 [ %i.arw, %.lr.ph3009.preheader ], [ %indvars.iv.next3585.prol, %.lr.ph3009.prol ]
end_hunk_2
begin_hunk_3_@dsbgst_:bb.a
  %i.atd = getelementptr [8 x i8], ptr %i.atc, i64 %i.atb ; 2 uses
  %i.ate = load double, ptr %i.atd, align 8, !tbaa !153
  %i.atf = fdiv double %i.ate, %i.api
  store double %i.atf, ptr %i.atd, align 8, !tbaa !153
  %indvars.iv.next3585.2 = add nuw nsw i64 %indvars.iv3584, 3 ; 2 uses
  %i.atg = mul nsw i64 %indvars.iv.next3585.2, %i.bb
  %i.ath = trunc nuw nsw i64 %indvars.iv.next3585.2 to i32
  %i.ati = sub i32 %.02605.ph, %i.ath
  %i.atj = sext i32 %i.ati to i64
  %i.atk = getelementptr [8 x i8], ptr %i.p, i64 %i.atg
  %i.atl = getelementptr [8 x i8], ptr %i.atk, i64 %i.atj ; 2 uses
  %i.atm = load double, ptr %i.atl, align 8, !tbaa !153
  %i.atn = fdiv double %i.atm, %i.api
  store double %i.atn, ptr %i.atl, align 8, !tbaa !153
  %indvars.iv.next3585.3 = add nuw nsw i64 %indvars.iv3584, 4 ; 2 uses
  %exitcond3588.not.3 = icmp eq i64 %indvars.iv.next3585.3, %wide.trip.count3587
  br i1 %exitcond3588.not.3, label %._crit_edge3010, label %.lr.ph3009, !llvm.loop !55

._crit_edge3010:                                  ; preds = %.lr.ph3009.prol.loopexit, %.lr.ph3009, %._crit_edge3005
  %.not26553023 = icmp sgt i32 %i.bw, %i.bs
  br i1 %.not26553023, label %bb.bp, label %.lr.ph3026

.lr.ph3026:                                       ; preds = %._crit_edge3010
  %i.ato = mul nsw i32 %i.br, %i.n
  %i.atp = sext i32 %i.ato to i64
  %i.atq = getelementptr [8 x i8], ptr %i.p, i64 %i.atp
  %i.atr = getelementptr i8, ptr %i.atq, i64 8    ; 3 uses
  store i32 %i.aru, ptr %i.c, align 4, !tbaa !151
  %i.ats = xor i32 %i.bt, -1
  %i.att = add i32 %i.br, %i.ats                  ; 3 uses
  store i32 %i.att, ptr %i.a, align 4, !tbaa !151
  %.not26743017 = icmp sgt i32 %i.arv, %i.att
  %i.atu = sext i32 %i.bw to i64                  ; 7 uses
  %i.atv = sext i32 %i.br to i64                  ; 4 uses
  %i.atw = sub i32 %.02605.ph, %i.bt
  %i.atx = zext nneg i32 %i.arv to i64
  %i.aty = zext nneg i32 %i.att to i64
  %i.atz = mul nsw i64 %i.atu, %i.bb              ; 2 uses
  %invariant.gep4767 = getelementptr [8 x i8], ptr %i.p, i64 %i.atz
  %i.aua = sub nsw i64 %i.atv, %i.atu
  %i.aub = add nuw nsw i64 %i.aua, 1              ; 2 uses
  %i.auc = mul nsw i64 %i.atu, %i.bc
  %i.aud = getelementptr [8 x i8], ptr %i.s, i64 %i.aub
  %i.aue = getelementptr [8 x i8], ptr %i.aud, i64 %i.auc
  %i.auf = getelementptr [8 x i8], ptr %i.p, i64 %i.aub
  %i.aug = getelementptr [8 x i8], ptr %i.auf, i64 %i.atz
  %indvars.iv.next3590.prol = add nsw i64 %i.atu, 1
  br label %.lr.ph3014

.lr.ph3014:                                       ; preds = %._crit_edge3022, %.lr.ph3026
  %indvar4699 = phi i32 [ %indvar.next4700, %._crit_edge3022 ], [ 0, %.lr.ph3026 ] ; 3 uses
  %indvars.iv3599.a = phi i64 [ %indvars.iv.next3600.a, %._crit_edge3022 ], [ %i.atu, %.lr.ph3026 ] ; 9 uses
  %indvars.iv3592 = phi i32 [ %indvars.iv.next3593, %._crit_edge3022 ], [ %i.atw, %.lr.ph3026 ] ; 2 uses
  %i.auh = add i64 %indvars.iv3599.a, 1           ; 2 uses
  %i.aui = sub nsw i64 %i.atv, %indvars.iv3599.a
  %i.auj = add nuw nsw i64 %i.aui, 1              ; 2 uses
  %i.auk = mul nsw i64 %indvars.iv3599.a, %i.bb
  %i.aul = getelementptr [8 x i8], ptr %i.p, i64 %i.auj
  %i.aum = getelementptr [8 x i8], ptr %i.aul, i64 %i.auk ; 3 uses
  %i.aun = mul nsw i64 %indvars.iv3599.a, %i.bc
  %i.auo = getelementptr [8 x i8], ptr %i.s, i64 %i.auj
  %i.aup = getelementptr [8 x i8], ptr %i.auo, i64 %i.aun ; 3 uses
  %i.auq = and i32 %indvar4699, 1
  %lcmp.mod4702.not.not = icmp eq i32 %i.auq, 0
  br i1 %lcmp.mod4702.not.not, label %.prol.loopexit4698.unr-lcssa, label %.prol.loopexit4698

.prol.loopexit4698.unr-lcssa:                     ; preds = %.lr.ph3014
  %i.aur = sub i64 %i.auh, %i.atu
  %sext.prol = shl i64 %i.aur, 32
  %i.aus = ashr exact i64 %sext.prol, 29
  %gep4768 = getelementptr i8, ptr %invariant.gep4767, i64 %i.aus ; 2 uses
  %i.aut = load double, ptr %gep4768, align 8, !tbaa !153
  %i.auu = load double, ptr %i.aue, align 8, !tbaa !153 ; 2 uses
  %i.auv = load double, ptr %i.aum, align 8, !tbaa !153
  %i.auw = fneg double %i.auu
  %i.aux = call double @llvm.fmuladd.f64(double %i.auw, double %i.auv, double %i.aut)
  %i.auy = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.auz = load double, ptr %i.aug, align 8, !tbaa !153
  %i.ava = fneg double %i.auy
  %i.avb = call double @llvm.fmuladd.f64(double %i.ava, double %i.auz, double %i.aux)
  %i.avc = load double, ptr %i.atr, align 8, !tbaa !153
  %i.avd = fmul double %i.auu, %i.avc
  %i.ave = call double @llvm.fmuladd.f64(double %i.avd, double %i.auy, double %i.avb)
  store double %i.ave, ptr %gep4768, align 8, !tbaa !153
  br label %.prol.loopexit4698

.prol.loopexit4698:                               ; preds = %.prol.loopexit4698.unr-lcssa, %.lr.ph3014
  %indvars.iv3589.unr = phi i64 [ %i.atu, %.lr.ph3014 ], [ %indvars.iv.next3590.prol, %.prol.loopexit4698.unr-lcssa ]
  %i.avf = icmp eq i32 %indvar4699, 0
  br i1 %i.avf, label %._crit_edge3015, label %.lr.ph3014.new

.lr.ph3014.new:                                   ; preds = %.prol.loopexit4698, %.lr.ph3014.new
  %indvars.iv3589 = phi i64 [ %indvars.iv.next3590.1, %.lr.ph3014.new ], [ %indvars.iv3589.unr, %.prol.loopexit4698 ] ; 7 uses
  %i.avg = mul nsw i64 %indvars.iv3589, %i.bb     ; 2 uses
  %i.avh = sub i64 %i.auh, %indvars.iv3589
  %sext = shl i64 %i.avh, 32
  %i.avi = ashr exact i64 %sext, 29
  %i.avj = getelementptr i8, ptr %i.p, i64 %i.avi
  %i.avk = getelementptr [8 x i8], ptr %i.avj, i64 %i.avg ; 2 uses
  %i.avl = load double, ptr %i.avk, align 8, !tbaa !153
  %i.avm = sub nsw i64 %i.atv, %indvars.iv3589
  %i.avn = add nuw nsw i64 %i.avm, 1              ; 2 uses
  %i.avo = mul nsw i64 %indvars.iv3589, %i.bc
  %i.avp = getelementptr [8 x i8], ptr %i.s, i64 %i.avn
  %i.avq = getelementptr [8 x i8], ptr %i.avp, i64 %i.avo
  %i.avr = load double, ptr %i.avq, align 8, !tbaa !153 ; 2 uses
  %i.avs = load double, ptr %i.aum, align 8, !tbaa !153
  %i.avt = fneg double %i.avr
  %i.avu = call double @llvm.fmuladd.f64(double %i.avt, double %i.avs, double %i.avl)
  %i.avv = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.avw = getelementptr [8 x i8], ptr %i.p, i64 %i.avn
  %i.avx = getelementptr [8 x i8], ptr %i.avw, i64 %i.avg
  %i.avy = load double, ptr %i.avx, align 8, !tbaa !153
  %i.avz = fneg double %i.avv
  %i.awa = call double @llvm.fmuladd.f64(double %i.avz, double %i.avy, double %i.avu)
  %i.awb = load double, ptr %i.atr, align 8, !tbaa !153
  %i.awc = fmul double %i.avr, %i.awb
  %i.awd = call double @llvm.fmuladd.f64(double %i.awc, double %i.avv, double %i.awa)
  store double %i.awd, ptr %i.avk, align 8, !tbaa !153
  %indvars.iv.next3590.a = add nsw i64 %indvars.iv3589, 1 ; 3 uses
  %i.awe = mul nsw i64 %indvars.iv.next3590.a, %i.bb ; 2 uses
  %i.awf = sub i64 %indvars.iv3599.a, %indvars.iv3589
  %sext.1 = shl i64 %i.awf, 32
  %i.awg = ashr exact i64 %sext.1, 29
  %i.awh = getelementptr i8, ptr %i.p, i64 %i.awg
  %i.awi = getelementptr [8 x i8], ptr %i.awh, i64 %i.awe ; 2 uses
  %i.awj = load double, ptr %i.awi, align 8, !tbaa !153
  %i.awk = sub nsw i64 %i.atv, %indvars.iv.next3590.a
  %i.awl = add nuw nsw i64 %i.awk, 1              ; 2 uses
  %i.awm = mul nsw i64 %indvars.iv.next3590.a, %i.bc
  %i.awn = getelementptr [8 x i8], ptr %i.s, i64 %i.awl
  %i.awo = getelementptr [8 x i8], ptr %i.awn, i64 %i.awm
  %i.awp = load double, ptr %i.awo, align 8, !tbaa !153 ; 2 uses
  %i.awq = load double, ptr %i.aum, align 8, !tbaa !153
  %i.awr = fneg double %i.awp
  %i.aws = call double @llvm.fmuladd.f64(double %i.awr, double %i.awq, double %i.awj)
  %i.awt = load double, ptr %i.aup, align 8, !tbaa !153 ; 2 uses
  %i.awu = getelementptr [8 x i8], ptr %i.p, i64 %i.awl
  %i.awv = getelementptr [8 x i8], ptr %i.awu, i64 %i.awe
  %i.aww = load double, ptr %i.awv, align 8, !tbaa !153
  %i.awx = fneg double %i.awt
  %i.awy = call double @llvm.fmuladd.f64(double %i.awx, double %i.aww, double %i.aws)
  %i.awz = load double, ptr %i.atr, align 8, !tbaa !153
  %i.axa = fmul double %i.awp, %i.awz
  %i.axb = call double @llvm.fmuladd.f64(double %i.axa, double %i.awt, double %i.awy)
  store double %i.axb, ptr %i.awi, align 8, !tbaa !153
  %indvars.iv.next3590.1 = add nsw i64 %indvars.iv3589, 2 ; 2 uses
  %lftr.wideiv3594.1 = trunc i64 %indvars.iv.next3590.1 to i32
  %exitcond3595.not.1 = icmp eq i32 %indvars.iv3592, %lftr.wideiv3594.1
  br i1 %exitcond3595.not.1, label %._crit_edge3015, label %.lr.ph3014.new, !llvm.loop !56

._crit_edge3015:                                  ; preds = %.lr.ph3014.new, %.prol.loopexit4698
  br i1 %.not26743017, label %._crit_edge3022, label %.lr.ph3021

.lr.ph3021:                                       ; preds = %._crit_edge3015
  %i.axc = mul nsw i64 %indvars.iv3599.a, %i.bc
  %i.axd = trunc nsw i64 %indvars.iv3599.a to i32
  %i.axe = sub i32 %.02605.ph, %i.axd
  %i.axf = sext i32 %i.axe to i64
  %i.axg = getelementptr [8 x i8], ptr %i.s, i64 %i.axc
  %i.axh = getelementptr [8 x i8], ptr %i.axg, i64 %i.axf
  %i.axi = add i64 %indvars.iv3599.a, 1
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph3021, %bb.bo
  %indvars.iv3596 = phi i64 [ %i.atx, %.lr.ph3021 ], [ %indvars.iv.next3597, %bb.bo ] ; 5 uses
  %i.axj = load double, ptr %i.axh, align 8, !tbaa !153
  %i.axk = mul nsw i64 %indvars.iv3596, %i.bb     ; 2 uses
  %i.axl = trunc nuw nsw i64 %indvars.iv3596 to i32
  %i.axm = sub i32 %.02605.ph, %i.axl
  %i.axn = sext i32 %i.axm to i64
  %i.axo = getelementptr [8 x i8], ptr %i.p, i64 %i.axk
  %i.axp = getelementptr [8 x i8], ptr %i.axo, i64 %i.axn
  %i.axq = load double, ptr %i.axp, align 8, !tbaa !153
  %i.axr = sub i64 %i.axi, %indvars.iv3596
  %sext4090 = shl i64 %i.axr, 32
  %i.axs = ashr exact i64 %sext4090, 29
  %i.axt = getelementptr i8, ptr %i.p, i64 %i.axs
  %i.axu = getelementptr [8 x i8], ptr %i.axt, i64 %i.axk ; 2 uses
  %i.axv = load double, ptr %i.axu, align 8, !tbaa !153
  %i.axw = fneg double %i.axj
  %i.axx = call double @llvm.fmuladd.f64(double %i.axw, double %i.axq, double %i.axv)
  store double %i.axx, ptr %i.axu, align 8, !tbaa !153
  %indvars.iv.next3597 = add nuw nsw i64 %indvars.iv3596, 1
  %.not2674.not = icmp samesign ult i64 %indvars.iv3596, %i.aty
  br i1 %.not2674.not, label %bb.bo, label %._crit_edge3022, !llvm.loop !57

._crit_edge3022:                                  ; preds = %bb.bo, %._crit_edge3015
  %indvars.iv.next3600.a = add nsw i64 %indvars.iv3599.a, 1 ; 2 uses
  %indvars.iv.next3593 = add i32 %indvars.iv3592, 1
  %lftr.wideiv3602.a = trunc i64 %indvars.iv.next3600.a to i32
  %exitcond3603.not.a = icmp eq i32 %i.br, %lftr.wideiv3602.a
  %indvar.next4700 = add i32 %indvar4699, 1
  br i1 %exitcond3603.not.a, label %._crit_edge3027, label %.lr.ph3014, !llvm.loop !58

._crit_edge3027:                                  ; preds = %._crit_edge3022
  store i32 1, ptr %i.b, align 4, !tbaa !151
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge3027, %._crit_edge3010
  br i1 %.not26533001, label %bb.bs, label %.lr.ph3038

.lr.ph3038:                                       ; preds = %bb.bp
  store i32 %i.bw, ptr %i.b, align 4, !tbaa !151
  store i32 %i.bs, ptr %i.c, align 4, !tbaa !151
  %i.axy = mul nsw i32 %i.br, %i.n
  %reass.sub3503.a = sub i32 %i.axy, %.02605.ph
  %i.axz = add i32 %reass.sub3503.a, 2
  %i.aya = sext i32 %i.bs to i64
  %i.ayb = zext i32 %i.br to i64
  %i.ayc = add i32 %i.bv, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.lr.ph3038, %._crit_edge3034
  %indvars.iv3609 = phi i64 [ %i.ayb, %.lr.ph3038 ], [ %indvars.iv.next3610, %._crit_edge3034 ] ; 4 uses
  %indvars.iv3604 = phi i32 [ %i.aru, %.lr.ph3038 ], [ %indvars.iv.next3605, %._crit_edge3034 ] ; 2 uses
  %i.ayd = trunc i64 %indvars.iv3609 to i32
  %i.aye = sub i32 %i.ayd, %.pre3791.a            ; 2 uses
  %i.ayf = call i32 @llvm.smax.i32(i32 %i.aye, i32 %i.bw)
  %.not26713029 = icmp sgt i32 %i.ayf, %i.bs
  br i1 %.not26713029, label %._crit_edge3034, label %.lr.ph3033

.lr.ph3033:                                       ; preds = %bb.bq
  %i.ayg = call i32 @llvm.smax.i32(i32 %indvars.iv3604, i32 %i.bw)
  %smax3606 = sext i32 %i.ayg to i64
  %i.ayh = trunc i64 %indvars.iv3609 to i32
  %i.ayi = add i32 %i.axz, %i.ayh
  %i.ayj = sext i32 %i.ayi to i64
  %i.ayk = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ayj
  %i.ayl = add i64 %indvars.iv3609, 1
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph3033, %bb.br
  %indvars.iv3607 = phi i64 [ %smax3606, %.lr.ph3033 ], [ %indvars.iv.next3608, %bb.br ] ; 6 uses
  %i.aym = mul nsw i64 %indvars.iv3607, %i.bc
  %i.ayn = trunc nsw i64 %indvars.iv3607 to i32
  %i.ayo = sub i32 %.02605.ph, %i.ayn
  %i.ayp = sext i32 %i.ayo to i64
  %i.ayq = getelementptr [8 x i8], ptr %i.s, i64 %i.aym
  %i.ayr = getelementptr [8 x i8], ptr %i.ayq, i64 %i.ayp
  %i.ays = load double, ptr %i.ayr, align 8, !tbaa !153
  %i.ayt = load double, ptr %i.ayk, align 8, !tbaa !153
  %i.ayu = mul nsw i64 %indvars.iv3607, %i.bb
  %i.ayv = sub i64 %i.ayl, %indvars.iv3607
  %sext4091 = shl i64 %i.ayv, 32
  %i.ayw = ashr exact i64 %sext4091, 29
  %i.ayx = getelementptr i8, ptr %i.p, i64 %i.ayw
  %i.ayy = getelementptr [8 x i8], ptr %i.ayx, i64 %i.ayu ; 2 uses
  %i.ayz = load double, ptr %i.ayy, align 8, !tbaa !153
  %i.aza = fneg double %i.ays
  %i.azb = call double @llvm.fmuladd.f64(double %i.aza, double %i.ayt, double %i.ayz)
  store double %i.azb, ptr %i.ayy, align 8, !tbaa !153
  %indvars.iv.next3608 = add nsw i64 %indvars.iv3607, 1
  %.not2671.not = icmp slt i64 %indvars.iv3607, %i.aya
  br i1 %.not2671.not, label %bb.br, label %._crit_edge3034, !llvm.loop !59

._crit_edge3034:                                  ; preds = %bb.br, %bb.bq
  %indvars.iv.next3610 = add i64 %indvars.iv3609, 1 ; 2 uses
  %indvars.iv.next3605 = add i32 %indvars.iv3604, 1
  %lftr.wideiv3612 = trunc i64 %indvars.iv.next3610 to i32
  %exitcond3613.not = icmp eq i32 %i.ayc, %lftr.wideiv3612
  br i1 %exitcond3613.not, label %._crit_edge3039, label %bb.bq, !llvm.loop !60

._crit_edge3039:                                  ; preds = %._crit_edge3034
  store i32 %i.aye, ptr %i.a, align 4, !tbaa !151
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge3039, %bb.bp
  br i1 %.not, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.azc = sub nsw i32 %.pre3792.a, %i.ay
  store i32 %i.azc, ptr %i.d, align 4, !tbaa !151
  %i.azd = fdiv double 1.000000e+00, %i.api
  store double %i.azd, ptr %i.e, align 8, !tbaa !153
  %i.aze = mul nsw i32 %i.br, %i.t
  %i.azf = add nsw i32 %i.aze, %i.ba
  %i.azg = sext i32 %i.azf to i64
  %i.azh = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azg ; 2 uses
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.azh, ptr noundef nonnull @c__1) #4
  %i.azi = load i32, ptr %i.l, align 4, !tbaa !151 ; 3 uses
  %i.azj = icmp sgt i32 %i.azi, 0
  br i1 %i.azj, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.azk = load i32, ptr %2, align 4, !tbaa !151
  %i.azl = sub nsw i32 %i.azk, %i.ay
  store i32 %i.azl, ptr %i.d, align 4, !tbaa !151
  %i.azm = load i32, ptr %8, align 4, !tbaa !151
  %i.azn = add nsw i32 %i.azm, -1
  store i32 %i.azn, ptr %i.c, align 4, !tbaa !151
  %i.azo = add nuw nsw i32 %i.azi, 1
  %i.azp = sub nsw i32 %i.br, %i.azi              ; 2 uses
  %i.azq = mul nsw i32 %i.azp, %i.q
  %i.azr = add nsw i32 %i.azo, %i.azq
  %i.azs = sext i32 %i.azr to i64
  %i.azt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.azs
  %i.azu = mul nsw i32 %i.azp, %i.t
  %i.azv = add nsw i32 %i.azu, %i.ba
  %i.azw = sext i32 %i.azv to i64
  %i.azx = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.azw
  call void @dger_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.l, ptr noundef nonnull @c_b20, ptr noundef %i.azh, ptr noundef nonnull @c__1, ptr noundef %i.azt, ptr noundef nonnull %i.c, ptr noundef %i.azx, ptr noundef nonnull %10) #4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu, %bb.bs
  %i.azy = mul nsw i32 %i.br, %i.n
  %reass.sub3504.a = sub i32 %i.azy, %.02605.ph
  %i.azz = add i32 %reass.sub3504.a, 2
  %i.baa = add i32 %i.azz, %i.bv
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bab
  %i.bad = load double, ptr %i.bac, align 8, !tbaa !153
  store double %i.bad, ptr %i.k, align 8, !tbaa !153
  %.pre3877.a = load i32, ptr %4, align 4, !tbaa !151
  br label %bb.bw

bb.bw:                                            ; preds = %bb.r, %bb.bv
  %i.bae = phi i32 [ %.pre3877.a, %bb.bv ], [ %i.bq, %bb.r ] ; 2 uses
  %.025322918 = phi i32 [ 1, %bb.bv ], [ 0, %bb.r ] ; 7 uses
  %.not26472912 = phi i1 [ false, %bb.bv ], [ true, %bb.r ] ; 5 uses
  %.1260627742809 = phi i32 [ %i.br, %bb.bv ], [ %i.ca, %bb.r ] ; 18 uses
  %.1254827772807 = phi i32 [ %i.bs, %bb.bv ], [ %.02547.lcssa, %bb.r ] ; 11 uses
  %.1254327802805 = phi i32 [ %i.bv, %bb.bv ], [ %.02542.lcssa, %bb.r ] ; 7 uses
  %.1253927832803 = phi i32 [ %i.by, %bb.bv ], [ %.02538.lcssa, %bb.r ] ; 8 uses
  %i.baf = add nsw i32 %i.bae, -1
  store i32 %i.baf, ptr %i.d, align 4, !tbaa !151
  %.not26573147 = icmp slt i32 %i.bae, 2
  br i1 %.not26573147, label %._crit_edge3152, label %.lr.ph3151

.lr.ph3151:                                       ; preds = %bb.bw
  %i.bag = mul nsw i32 %.1260627742809, %i.n
  %i.bah = add i32 %.1260627742809, 1
  %i.bai = sext i32 %.1260627742809 to i64
  %i.baj = sext i32 %.1254827772807 to i64
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph3151, %.loopexit2881
  %indvars.iv3645.a = phi i64 [ 1, %.lr.ph3151 ], [ %indvars.iv.next3646.a, %.loopexit2881 ] ; 7 uses
  %.82565.neg3149 = phi i32 [ -1, %.lr.ph3151 ], [ %i.bcw, %.loopexit2881 ] ; 3 uses
  br i1 %.not26472912, label %._crit_edge3878, label %bb.by

._crit_edge3878:                                  ; preds = %bb.bx
  %.pre3879.a = load i32, ptr %i.j, align 4, !tbaa !151
  %.pre3881.a = load i32, ptr %2, align 4, !tbaa !151
  %.pre3882.a = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.bak = sub nsw i64 %i.bai, %indvars.iv3645.a  ; 5 uses
  %i.bal = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bam = trunc nsw i64 %i.bak to i32            ; 2 uses
  %i.ban = add nsw i32 %i.bal, %i.bam             ; 2 uses
  %i.bao = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  %i.bap = icmp slt i32 %i.ban, %i.bao
  %i.baq = icmp sgt i64 %i.bak, 1
  %or.cond2759 = and i1 %i.baq, %i.bap
  %.pre3880.a = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br i1 %or.cond2759, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.bar = add i32 %.82565.neg3149, %i.bag
  %i.bas = add i32 %i.bar, %.pre3880.a
  %i.bat = sext i32 %i.bas to i64
  %i.bau = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bat
  %i.bav = trunc nuw nsw i64 %indvars.iv3645.a to i32
  %i.baw = add i32 %i.ay, %i.bav
  %i.bax = sub i32 %.1260627742809, %i.baw        ; 2 uses
  %i.bay = add i32 %i.bax, %i.bal
  %i.baz = add i32 %i.bay, %i.bao
  %i.bba = sext i32 %i.baz to i64
  %i.bbb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bba
  %i.bbc = sub nsw i32 %i.ban, %i.ay
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbd
  call void @dlartg_(ptr noundef %i.bau, ptr noundef nonnull %i.k, ptr noundef nonnull %i.bbb, ptr noundef nonnull %i.bbe, ptr noundef nonnull %i.g) #4
  %i.bbf = mul nsw i64 %i.bak, %i.bc
  %i.bbg = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv3645.a
  %i.bbh = getelementptr i8, ptr %i.bbg, i64 8
  %i.bbi = getelementptr [8 x i8], ptr %i.bbh, i64 %i.bbf
  %i.bbj = load double, ptr %i.bbi, align 8, !tbaa !153
  %i.bbk = fneg double %i.bbj
  %i.bbl = load double, ptr %i.k, align 8, !tbaa !153
  %i.bbm = fmul double %i.bbl, %i.bbk             ; 2 uses
  %i.bbn = load i32, ptr %2, align 4, !tbaa !151  ; 2 uses
  %i.bbo = load i32, ptr %3, align 4, !tbaa !151  ; 3 uses
  %i.bbp = add i32 %i.bax, %i.bbn
  %i.bbq = add i32 %i.bbp, %i.bbo
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbr ; 2 uses
  %i.bbt = load double, ptr %i.bbs, align 8, !tbaa !153
  %i.bbu = sub i32 %i.bam, %i.ay
  %i.bbv = add i32 %i.bbu, %i.bbo
  %i.bbw = sext i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bbw ; 2 uses
  %i.bby = load double, ptr %i.bbx, align 8, !tbaa !153
  %i.bbz = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  %i.bca = mul nsw i64 %i.bak, %i.bb
  %i.bcb = sext i32 %i.bbz to i64
  %i.bcc = getelementptr [8 x i8], ptr %i.p, i64 %i.bca
  %i.bcd = getelementptr [8 x i8], ptr %i.bcc, i64 %i.bcb ; 3 uses
  %i.bce = load double, ptr %i.bcd, align 8, !tbaa !153
  %i.bcf = fneg double %i.bce
  %i.bcg = fmul double %i.bby, %i.bcf
  %i.bch = call double @llvm.fmuladd.f64(double %i.bbt, double %i.bbm, double %i.bcg)
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bak
  store double %i.bch, ptr %i.bci, align 8, !tbaa !153
  %i.bcj = load double, ptr %i.bbx, align 8, !tbaa !153
  %i.bck = load double, ptr %i.bbs, align 8, !tbaa !153
  %i.bcl = load double, ptr %i.bcd, align 8, !tbaa !153
  %i.bcm = fmul double %i.bck, %i.bcl
  %i.bcn = call double @llvm.fmuladd.f64(double %i.bcj, double %i.bbm, double %i.bcm)
  store double %i.bcn, ptr %i.bcd, align 8, !tbaa !153
  %i.bco = load double, ptr %i.g, align 8, !tbaa !153
  store double %i.bco, ptr %i.k, align 8, !tbaa !153
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge3878, %bb.by, %bb.bz
  %i.bcp = phi i32 [ %.pre3882.a, %._crit_edge3878 ], [ %i.bal, %bb.by ], [ %i.bbo, %bb.bz ] ; 6 uses
  %i.bcq = phi i32 [ %.pre3881.a, %._crit_edge3878 ], [ %i.bao, %bb.by ], [ %i.bbn, %bb.bz ] ; 4 uses
  %i.bcr = phi i32 [ %.pre3879.a, %._crit_edge3878 ], [ %.pre3880.a, %bb.by ], [ %i.bbz, %bb.bz ] ; 9 uses
  %i.bcs = sub nsw i64 %indvars.iv3645.a, %i.baj  ; 2 uses
  %i.bct = trunc i64 %i.bcs to i32
  %i.bcu = add i32 %i.bct, 2
  %i.bcv = trunc i64 %indvars.iv3645.a to i32
  %i.bcw = xor i32 %i.bcv, -1                     ; 2 uses
  %i.bcx = add i32 %.1260627742809, %i.bcw
  %i.bcy = icmp slt i64 %i.bcs, 0
  %i.bcz = select i1 %i.bcy, i32 1, i32 %i.bcu
  %i.bda = mul nsw i32 %i.bcr, %i.bcz
  %i.bdb = add nsw i32 %i.bcx, %i.bda             ; 13 uses
  %i.bdc = sub i32 %i.bcq, %i.bdb
  %i.bdd = add nsw i32 %i.bdc, %i.bcp
  %i.bde = sdiv i32 %i.bdd, %i.bcr                ; 3 uses
  store i32 %i.bde, ptr %i.h, align 4, !tbaa !151
  %i.bdf = add nsw i32 %i.bde, -1
  %i.bdg = mul nsw i32 %i.bdf, %i.bcr             ; 3 uses
  %i.bdh = add nsw i32 %i.bdg, %i.bdb             ; 5 uses
  br i1 %.not26472912, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.bdi = shl i32 %i.bcp, 1
  %i.bdj = add i32 %i.bah, %.82565.neg3149
  %i.bdk = add i32 %i.bdj, %i.bdi
  %i.bdl = call i32 @llvm.smax.i32(i32 %i.bdb, i32 %i.bdk)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %.1 = phi i32 [ %i.bdl, %bb.cb ], [ %i.bdb, %bb.ca ] ; 7 uses
  %i.bdm = add i32 %i.bcp, %i.bcq
  %i.bdn = sub i32 %i.bdm, %.1
  %i.bdo = sdiv i32 %i.bdn, %i.bcr                ; 2 uses
  store i32 %i.bdo, ptr %i.m, align 4, !tbaa !151
  store i32 %i.bdh, ptr %i.c, align 4, !tbaa !151
  store i32 %i.bcr, ptr %i.a, align 4, !tbaa !151
  %i.bdp = icmp slt i32 %i.bcr, 0                 ; 2 uses
  %i.bdq = icmp sge i32 %.1, %i.bdh
  %i.bdr = icmp sle i32 %.1, %i.bdh
  %.in26663127 = select i1 %i.bdp, i1 %i.bdq, i1 %i.bdr
  br i1 %.in26663127, label %.lr.ph3130, label %._crit_edge3131

.lr.ph3130:                                       ; preds = %bb.cc
  %i.bds = sub i32 %i.bcq, %i.ay
  %i.bdt = sext i32 %.1 to i64
  %i.bdu = sext i32 %i.bcr to i64
  %i.bdv = sext i32 %i.bdh to i64                 ; 2 uses
  %invariant.op4771 = sub i32 1, %i.bcp
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph3130, %bb.cd
  %indvars.iv3639.a = phi i64 [ %i.bdt, %.lr.ph3130 ], [ %indvars.iv.next3640.a, %bb.cd ] ; 3 uses
  %i.bdw = trunc nsw i64 %indvars.iv3639.a to i32 ; 2 uses
  %.reass4133.reass = add i32 %i.bdw, %invariant.op4771
  %i.bdx = mul nsw i32 %.reass4133.reass, %i.n
  %i.bdy = add nsw i32 %i.bdx, %i.bcr
  %i.bdz = sext i32 %i.bdy to i64
  %i.bea = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bdz ; 3 uses
  %i.beb = load double, ptr %i.bea, align 8, !tbaa !153
  %i.bec = sub nsw i64 %indvars.iv3639.a, %i.bd
  %i.bed = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bec ; 2 uses
  %i.bee = load double, ptr %i.bed, align 8, !tbaa !153
  %i.bef = fmul double %i.beb, %i.bee
  store double %i.bef, ptr %i.bed, align 8, !tbaa !153
  %i.beg = add i32 %i.bds, %i.bdw
  %i.beh = sext i32 %i.beg to i64
  %i.bei = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.beh
  %i.bej = load double, ptr %i.bei, align 8, !tbaa !153
  %i.bek = load double, ptr %i.bea, align 8, !tbaa !153
  %i.bel = fmul double %i.bej, %i.bek
  store double %i.bel, ptr %i.bea, align 8, !tbaa !153
  %indvars.iv.next3640.a = add nsw i64 %indvars.iv3639.a, %i.bdu ; 3 uses
  %i.bem = icmp sge i64 %indvars.iv.next3640.a, %i.bdv
  %i.ben = icmp sle i64 %indvars.iv.next3640.a, %i.bdv
  %.in2666 = select i1 %i.bdp, i1 %i.bem, i1 %i.ben
  br i1 %.in2666, label %bb.cd, label %._crit_edge3131, !llvm.loop !61

._crit_edge3131:                                  ; preds = %bb.cd, %bb.cc
  %i.beo = icmp sgt i32 %i.bdo, 0
  br i1 %i.beo, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge3131
  %i.bep = sub nsw i32 %.1, %i.bcp
  %i.beq = mul nsw i32 %i.bep, %i.n
  %i.ber = add nsw i32 %i.beq, %i.bcr
  %i.bes = sext i32 %i.ber to i64
  %i.bet = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bes
  %i.beu = sub nsw i32 %.1, %i.ay
  %i.bev = sext i32 %i.beu to i64
  %i.bew = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bev
  %i.bex = sub i32 %i.bcq, %i.ay
  %i.bey = add i32 %i.bex, %.1
  %i.bez = sext i32 %i.bey to i64
  %i.bfa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bez
  call void @dlargv_(ptr noundef nonnull %i.m, ptr noundef %i.bet, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bew, ptr noundef nonnull %i.j, ptr noundef nonnull %i.bfa, ptr noundef nonnull %i.j) #4
  %.pre3883.a = load i32, ptr %i.h, align 4, !tbaa !151
  %.pre3885.pre = load i32, ptr %3, align 4, !tbaa !151
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge3131
  %.pre3885.a = phi i32 [ %.pre3885.pre, %bb.ce ], [ %i.bcp, %._crit_edge3131 ] ; 3 uses
  %i.bfb = phi i32 [ %.pre3883.a, %bb.ce ], [ %i.bde, %._crit_edge3131 ]
  %i.bfc = icmp sgt i32 %i.bfb, 0
  br i1 %i.bfc, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
end_hunk_3
begin_hunk_4_@dsbgst_:bb.a
  %i.bte = add i32 %.1260627742809, 1
  %i.btf = sub i32 %i.bte, %.pre3900
  %i.btg = add i32 %i.btf, %i.btd                 ; 3 uses
  store i32 %i.btg, ptr %i.c, align 4, !tbaa !151
  %i.bth = load i32, ptr %2, align 4, !tbaa !151  ; 6 uses
  %.not2659.not3205 = icmp sgt i32 %i.bth, %i.btg
  br i1 %.not2659.not3205, label %.lr.ph3208, label %.loopexit2884

.lr.ph3208:                                       ; preds = %bb.di
  %i.bti = add i32 %i.btc, %i.ay                  ; 8 uses
  %i.btj = sext i32 %i.bth to i64                 ; 11 uses
  %i.btk = sext i32 %i.btg to i64                 ; 3 uses
  %i.btl = sub nsw i64 %i.btj, %i.btk             ; 3 uses
  %min.iters.check = icmp ult i64 %i.btl, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph3208
  %i.btm = xor i64 %i.btk, -1
  %i.btn = add nsw i64 %i.btm, %i.btj             ; 2 uses
  %i.bto = shl i32 %i.bth, 1
  %i.btp = xor i32 %i.bti, -1
  %i.btq = add i32 %i.bto, %i.btp                 ; 2 uses
  %i.btr = trunc i64 %i.btn to i32                ; 2 uses
  %i.bts = sub i32 %i.btq, %i.btr
  %i.btt = icmp sgt i32 %i.bts, %i.btq
  %i.btu = xor i32 %i.bti, -1
  %i.btv = add i32 %i.bth, %i.btu                 ; 2 uses
  %i.btw = sub i32 %i.btv, %i.btr
  %i.btx = icmp sgt i32 %i.btw, %i.btv
  %i.bty = icmp ugt i64 %i.btn, 4294967295
  %i.btz = or i1 %i.btx, %i.bty
  %i.bua = or i1 %i.btt, %i.btz
  br i1 %i.bua, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bub = shl nsw i64 %i.btj, 3                  ; 3 uses
  %i.buc = add nsw i64 %i.bub, -1
  %diff.check = icmp ult i64 %i.buc, 31
  %i.bud = shl i32 %i.bth, 1
  %i.bue = xor i32 %i.bti, -1
  %i.buf = add i32 %i.bud, %i.bue
  %i.bug = sext i32 %i.buf to i64
  %i.buh = add nsw i64 %i.bd, %i.bug
  %i.bui = shl nsw i64 %i.buh, 3                  ; 2 uses
  %i.buj = shl nsw i64 %i.btj, 4                  ; 2 uses
  %i.buk = sub nsw i64 %i.bui, %i.buj
  %diff.check4226 = icmp ult i64 %i.buk, 24
  %conflict.rdx = or i1 %diff.check, %diff.check4226
  %i.bul = xor i32 %i.bti, -1
  %i.bum = add i32 %i.bth, %i.bul
  %i.bun = sext i32 %i.bum to i64
  %i.buo = add nsw i64 %i.bd, %i.bun
  %i.bup = shl nsw i64 %i.buo, 3                  ; 2 uses
  %i.buq = sub nsw i64 %i.buj, %i.bup
  %i.bur = add nsw i64 %i.buq, -9
  %diff.check4227 = icmp ult i64 %i.bur, 31
  %conflict.rdx4228 = or i1 %conflict.rdx, %diff.check4227
  %i.bus = sub nsw i64 %i.bui, %i.bub
  %diff.check4229 = icmp ult i64 %i.bus, 24
  %conflict.rdx4230 = or i1 %conflict.rdx4228, %diff.check4229
  %i.but = sub nsw i64 %i.bup, %i.bub
  %diff.check4231 = icmp ult i64 %i.but, 24
  %conflict.rdx4232 = or i1 %conflict.rdx4230, %diff.check4231
  br i1 %conflict.rdx4232, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.btl, -4                     ; 3 uses
  %i.buu = sub nsw i64 %i.btj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.buv = xor i64 %index, -1
  %i.buw = add i64 %i.buv, %i.btj                 ; 3 uses
  %i.bux = add nsw i64 %i.buw, %i.btj             ; 2 uses
  %i.buy = trunc nsw i64 %i.bux to i32
  %i.buz = sub i32 %i.buy, %i.bti
  %i.bva = sext i32 %i.buz to i64
  %i.bvb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bva
  %i.bvc = getelementptr inbounds i8, ptr %i.bvb, i64 -24
  %wide.load = load <4 x double>, ptr %i.bvc, align 8, !tbaa !153
  %i.bvd = sub nsw i64 %i.bux, %i.bd
  %i.bve = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvd
  %i.bvf = getelementptr inbounds i8, ptr %i.bve, i64 -24
  store <4 x double> %wide.load, ptr %i.bvf, align 8, !tbaa !153
  %i.bvg = trunc nsw i64 %i.buw to i32
  %i.bvh = sub i32 %i.bvg, %i.bti
  %i.bvi = sext i32 %i.bvh to i64
  %i.bvj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvi
  %i.bvk = getelementptr inbounds i8, ptr %i.bvj, i64 -24
  %wide.load4233 = load <4 x double>, ptr %i.bvk, align 8, !tbaa !153
  %i.bvl = sub nsw i64 %i.buw, %i.bd
  %i.bvm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvl
  %i.bvn = getelementptr inbounds i8, ptr %i.bvm, i64 -24
  store <4 x double> %wide.load4233, ptr %i.bvn, align 8, !tbaa !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bvo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bvo, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.btl, %n.vec
  br i1 %cmp.n, label %.loopexit2884, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph3208, %middle.block
  %indvars.iv3658.ph = phi i64 [ %i.btj, %vector.memcheck ], [ %i.btj, %vector.scevcheck ], [ %i.btj, %.lr.ph3208 ], [ %i.buu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv3658 = phi i64 [ %indvars.iv.next3659, %scalar.ph ], [ %indvars.iv3658.ph, %scalar.ph.preheader ]
  %indvars.iv.next3659 = add nsw i64 %indvars.iv3658, -1 ; 5 uses
  %i.bvp = add nsw i64 %indvars.iv.next3659, %i.btj ; 2 uses
  %i.bvq = trunc nsw i64 %i.bvp to i32
  %i.bvr = sub i32 %i.bvq, %i.bti
  %i.bvs = sext i32 %i.bvr to i64
  %i.bvt = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvs
  %i.bvu = load double, ptr %i.bvt, align 8, !tbaa !153
  %i.bvv = sub nsw i64 %i.bvp, %i.bd
  %i.bvw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvv
  store double %i.bvu, ptr %i.bvw, align 8, !tbaa !153
  %i.bvx = trunc nsw i64 %indvars.iv.next3659 to i32
  %i.bvy = sub i32 %i.bvx, %i.bti
  %i.bvz = sext i32 %i.bvy to i64
  %i.bwa = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bvz
  %i.bwb = load double, ptr %i.bwa, align 8, !tbaa !153
  %i.bwc = sub nsw i64 %indvars.iv.next3659, %i.bd
  %i.bwd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.bwc
  store double %i.bwb, ptr %i.bwd, align 8, !tbaa !153
  %.not2659.not = icmp sgt i64 %indvars.iv.next3659, %i.btk
  br i1 %.not2659.not, label %scalar.ph, label %.loopexit2884, !llvm.loop !77

.loopexit2884.sink.split:                         ; preds = %bb.cp, %._crit_edge3174, %bb.at, %._crit_edge3090.a
  %.ph4096.sink = phi i32 [ %i.ach, %bb.at ], [ %.pre3866, %._crit_edge3090.a ], [ %.pre3891, %._crit_edge3174 ], [ %i.bjf, %bb.cp ] ; 2 uses
  %.sink4187 = phi ptr [ %i.b, %bb.at ], [ %i.b, %._crit_edge3090.a ], [ %i.c, %._crit_edge3174 ], [ %i.c, %bb.cp ]
  %.025322916.ph = phi i32 [ %.025322917, %bb.at ], [ %.025322917, %._crit_edge3090.a ], [ %.025322918, %._crit_edge3174 ], [ %.025322918, %bb.cp ]
  %.125392782.ph = phi i32 [ %.1253927812790, %bb.at ], [ %.1253927812790, %._crit_edge3090.a ], [ %.1253927832803, %._crit_edge3174 ], [ %.1253927832803, %bb.cp ]
  %.125432779.ph = phi i32 [ %.1254327782792, %bb.at ], [ %.1254327782792, %._crit_edge3090.a ], [ %.1254327802805, %._crit_edge3174 ], [ %.1254327802805, %bb.cp ]
  %.125482776.ph = phi i32 [ %.1254827752794, %bb.at ], [ %.1254827752794, %._crit_edge3090.a ], [ %.1254827772807, %._crit_edge3174 ], [ %.1254827772807, %bb.cp ]
  %.126062773.ph = phi i32 [ %.1260627722796, %bb.at ], [ %.1260627722796, %._crit_edge3090.a ], [ %.1260627742809, %._crit_edge3174 ], [ %.1260627742809, %bb.cp ]
  %i.bwe = add nsw i32 %.ph4096.sink, -1
  store i32 %i.bwe, ptr %.sink4187, align 4, !tbaa !151
  br label %.loopexit2884

.loopexit2884:                                    ; preds = %scalar.ph4245, %scalar.ph, %middle.block4254, %middle.block, %.loopexit2884.sink.split, %._crit_edge3195, %._crit_edge3113, %bb.bm, %bb.di, %._crit_edge3204, %._crit_edge3122
  %i.bwf = phi i32 [ %.pre3900, %._crit_edge3204 ], [ %.pre3900, %bb.di ], [ %.pre3876.a, %._crit_edge3122 ], [ %.pre3876.a, %bb.bm ], [ %.pre3872.a, %._crit_edge3113 ], [ %.pre3896, %._crit_edge3195 ], [ %.ph4096.sink, %.loopexit2884.sink.split ], [ %.pre3900, %middle.block ], [ %.pre3876.a, %middle.block4254 ], [ %.pre3900, %scalar.ph ], [ %.pre3876.a, %scalar.ph4245 ]
  %.025322916 = phi i32 [ %.025322918, %._crit_edge3204 ], [ %.025322918, %bb.di ], [ %.025322917, %._crit_edge3122 ], [ %.025322917, %bb.bm ], [ %.025322917, %._crit_edge3113 ], [ %.025322918, %._crit_edge3195 ], [ %.025322916.ph, %.loopexit2884.sink.split ], [ %.025322918, %middle.block ], [ %.025322917, %middle.block4254 ], [ %.025322918, %scalar.ph ], [ %.025322917, %scalar.ph4245 ]
  %.125392782 = phi i32 [ %.1253927832803, %._crit_edge3204 ], [ %.1253927832803, %bb.di ], [ %.1253927812790, %._crit_edge3122 ], [ %.1253927812790, %bb.bm ], [ %.1253927812790, %._crit_edge3113 ], [ %.1253927832803, %._crit_edge3195 ], [ %.125392782.ph, %.loopexit2884.sink.split ], [ %.1253927832803, %middle.block ], [ %.1253927812790, %middle.block4254 ], [ %.1253927832803, %scalar.ph ], [ %.1253927812790, %scalar.ph4245 ]
  %.125432779 = phi i32 [ %.1254327802805, %._crit_edge3204 ], [ %.1254327802805, %bb.di ], [ %.1254327782792, %._crit_edge3122 ], [ %.1254327782792, %bb.bm ], [ %.1254327782792, %._crit_edge3113 ], [ %.1254327802805, %._crit_edge3195 ], [ %.125432779.ph, %.loopexit2884.sink.split ], [ %.1254327802805, %middle.block ], [ %.1254327782792, %middle.block4254 ], [ %.1254327802805, %scalar.ph ], [ %.1254327782792, %scalar.ph4245 ]
  %.125482776 = phi i32 [ %.1254827772807, %._crit_edge3204 ], [ %.1254827772807, %bb.di ], [ %.1254827752794, %._crit_edge3122 ], [ %.1254827752794, %bb.bm ], [ %.1254827752794, %._crit_edge3113 ], [ %.1254827772807, %._crit_edge3195 ], [ %.125482776.ph, %.loopexit2884.sink.split ], [ %.1254827772807, %middle.block ], [ %.1254827752794, %middle.block4254 ], [ %.1254827772807, %scalar.ph ], [ %.1254827752794, %scalar.ph4245 ]
  %.126062773 = phi i32 [ %.1260627742809, %._crit_edge3204 ], [ %.1260627742809, %bb.di ], [ %.1260627722796, %._crit_edge3122 ], [ %.1260627722796, %bb.bm ], [ %.1260627722796, %._crit_edge3113 ], [ %.1260627742809, %._crit_edge3195 ], [ %.126062773.ph, %.loopexit2884.sink.split ], [ %.1260627742809, %middle.block ], [ %.1260627722796, %middle.block4254 ], [ %.1260627742809, %scalar.ph ], [ %.1260627722796, %scalar.ph4245 ]
  %.pre3792.pre = load i32, ptr %2, align 4, !tbaa !151
  br label %.outer2886

.loopexit2888:                                    ; preds = %._crit_edge, %.lr.ph.split
  %.22549 = phi i32 [ %i.ay, %.lr.ph.split ], [ %.02547.lcssa, %._crit_edge ] ; 2 uses
  %.22544 = phi i32 [ %i.bv, %.lr.ph.split ], [ %.02542.lcssa, %._crit_edge ] ; 2 uses
  %.22540 = phi i32 [ %i.by, %.lr.ph.split ], [ %.02538.lcssa, %._crit_edge ] ; 2 uses
  %.32608.us3515 = add i32 %i.n, -1               ; 2 uses
  br i1 %.not2641, label %.outer.us.preheader, label %.outer.preheader

.outer.preheader:                                 ; preds = %.loopexit2888
  %i.bwg = sext i32 %i.ac to i64                  ; 2 uses
  %invariant.gep4143 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwg
  %invariant.gep4141 = getelementptr [8 x i8], ptr %i.s, i64 %i.bwg ; 3 uses
  %.326083506 = add i32 %i.n, -1
  %.326083507 = add i32 %i.n, -1
  %invariant.op4784 = sub i32 1, %i.ay
  %invariant.op4785.a = sub i32 2, %i.ay
  %invariant.op4786 = sub i32 1, %i.ay
  br label %.outer

.outer.us.preheader:                              ; preds = %.loopexit2888
  %.32608.us3512 = add i32 %i.n, -1
  %i.bwh = add i32 %i.n, -1
  %scevgep4517 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4521 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4523 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4577.a = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4579.a = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4582.a = getelementptr i8, ptr %7, i64 %i.bg
  %scevgep4584 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4586 = getelementptr i8, ptr %7, i64 %i.bh
  %scevgep4588 = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4590 = getelementptr i8, ptr %5, i64 %i.bf
  %scevgep4592 = getelementptr i8, ptr %5, i64 %i.bf
  %i.bwi = getelementptr i8, ptr %5, i64 %i.be
  %scevgep4594 = getelementptr i8, ptr %i.bwi, i64 16
  %invariant.op4805 = sub i32 1, %i.ay
  %invariant.op4806 = sub i32 2, %i.ay
  %invariant.op4807 = sub i32 1, %i.ay
  br label %.outer.us

.outer.us:                                        ; preds = %.outer.us.backedge, %.outer.us.preheader
  %.pre3824.a = phi i32 [ %.pre3791.a, %.outer.us.preheader ], [ %.pre3824.be, %.outer.us.backedge ] ; 6 uses
  %i.bwj = phi i32 [ %i.bq, %.outer.us.preheader ], [ %.be, %.outer.us.backedge ] ; 2 uses
  %.22607.ph.us = phi i32 [ 0, %.outer.us.preheader ], [ %.32608.us, %.outer.us.backedge ] ; 4 uses
  %.32550.ph.us = phi i32 [ %.22549, %.outer.us.preheader ], [ %.42551.us, %.outer.us.backedge ]
  %.32545.ph.us = phi i32 [ %.22544, %.outer.us.preheader ], [ %.42546.us, %.outer.us.backedge ]
  %.32541.ph.us = phi i32 [ %.22540, %.outer.us.preheader ], [ %.4.us, %.outer.us.backedge ]
  %.12533.ph.us = phi i32 [ 1, %.outer.us.preheader ], [ %.125332894.us, %.outer.us.backedge ]
  %.not26983209.us = icmp eq i32 %.12533.ph.us, 0
  br i1 %.not26983209.us, label %bb.dj, label %.lr.ph3212.us

.lr.ph3212.us:                                    ; preds = %.outer.us
  %14 = add nuw nsw i32 %.22607.ph.us, 1          ; 4 uses
  %15 = sub nsw i32 %i.ay, %14
  %16 = call i32 @llvm.smin.i32(i32 %i.bwj, i32 %15) ; 3 uses
  store i32 %16, ptr %i.l, align 4, !tbaa !151
  %17 = sub nsw i32 %14, %.pre3824.a
  %18 = call i32 @llvm.smax.i32(i32 %17, i32 1)   ; 2 uses
  %19 = add nsw i32 %16, %14
  %20 = load i32, ptr %i.j, align 4, !tbaa !151
  %21 = sub i32 %19, %20                          ; 2 uses
  %.not2700.us = icmp slt i32 %.22607.ph.us, %i.ay
  br i1 %.not2700.us, label %.lr.ph3212.split.us.us, label %.lr.ph3212.split.us3500

.lr.ph3212.split.us3500:                          ; preds = %.lr.ph3212.us
  %22 = icmp eq i32 %.pre3824.a, 0
  br i1 %22, label %.loopexit2877, label %.lr.ph3212.split.split.us

.lr.ph3212.split.us.us:                           ; preds = %.lr.ph3212.us
  store i32 1, ptr %i.c, align 4, !tbaa !151
  %23 = add nuw nsw i32 %.22607.ph.us, 2
  br label %bb.dk

bb.dj:                                            ; preds = %.lr.ph3212.split.split.us, %.outer.us
  %.32550.lcssa.us = phi i32 [ %i.ba, %.lr.ph3212.split.split.us ], [ %.32550.ph.us, %.outer.us ]
  %.32545.lcssa.us = phi i32 [ %18, %.lr.ph3212.split.split.us ], [ %.32545.ph.us, %.outer.us ]
  %.32541.lcssa.us = phi i32 [ %21, %.lr.ph3212.split.split.us ], [ %.32541.ph.us, %.outer.us ]
  %i.bwk = sub nsw i32 %.22607.ph.us, %.pre3824.a ; 2 uses
  %i.bwl = icmp slt i32 %i.bwk, 2
  br i1 %i.bwl, label %.loopexit2877, label %._crit_edge3825

._crit_edge3825:                                  ; preds = %bb.dj
  %.pre3826 = load i32, ptr %i.l, align 4, !tbaa !151
  br label %bb.dk

bb.dk:                                            ; preds = %._crit_edge3825, %.lr.ph3212.split.us.us
  %24 = phi i32 [ %.pre3826, %._crit_edge3825 ], [ %16, %.lr.ph3212.split.us.us ] ; 6 uses
  %.125332894.us = phi i32 [ 0, %._crit_edge3825 ], [ 1, %.lr.ph3212.split.us.us ]
  %.not26982891.us = phi i1 [ true, %._crit_edge3825 ], [ false, %.lr.ph3212.split.us.us ] ; 6 uses
  %.32608.us = phi i32 [ %i.bwk, %._crit_edge3825 ], [ %14, %.lr.ph3212.split.us.us ] ; 49 uses
  %.42551.us = phi i32 [ %.32550.lcssa.us, %._crit_edge3825 ], [ %23, %.lr.ph3212.split.us.us ] ; 6 uses
  %.42546.us = phi i32 [ %.32545.lcssa.us, %._crit_edge3825 ], [ %18, %.lr.ph3212.split.us.us ] ; 8 uses
  %.4.us = phi i32 [ %.32541.lcssa.us, %._crit_edge3825 ], [ %21, %.lr.ph3212.split.us.us ] ; 2 uses
  %i.bwm = sub nsw i32 %i.ay, %24
  %i.bwn = icmp slt i32 %.32608.us, %i.bwm
  br i1 %i.bwn, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bwo = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %storemerge.us = phi i32 [ %i.bwo, %bb.dl ], [ %i.ay, %bb.dk ]
  store i32 %storemerge.us, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891.us, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bwp = mul nsw i32 %.32608.us, %i.q           ; 8 uses
  %i.bwq = sext i32 %i.bwp to i64
  %i.bwr = getelementptr [8 x i8], ptr %i.s, i64 %i.bwq ; 2 uses
  %i.bws = getelementptr i8, ptr %i.bwr, i64 8
  %i.bwt = load double, ptr %i.bws, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608.us, ptr %i.d, align 4, !tbaa !151
  %.not27023369.us = icmp sgt i32 %.42546.us, %.32608.us ; 2 uses
  br i1 %.not27023369.us, label %._crit_edge3373.us, label %.lr.ph3372.us

.lr.ph3372.us.new:                                ; preds = %.prol.loopexit4728, %.lr.ph3372.us.new
  %indvars.iv3724.a = phi i64 [ %indvars.iv.next3725.3, %.lr.ph3372.us.new ], [ %indvars.iv3724.unr, %.prol.loopexit4728 ] ; 6 uses
  %i.bwu = mul nsw i64 %indvars.iv3724.a, %i.bb
  %i.bwv = trunc nsw i64 %indvars.iv3724.a to i32
  %i.bww = sub i32 %i.cze, %i.bwv
  %i.bwx = sext i32 %i.bww to i64
  %i.bwy = getelementptr [8 x i8], ptr %i.p, i64 %i.bwu
  %i.bwz = getelementptr [8 x i8], ptr %i.bwy, i64 %i.bwx ; 2 uses
  %i.bxa = load double, ptr %i.bwz, align 8, !tbaa !153
  %i.bxb = fdiv double %i.bxa, %i.bwt
  store double %i.bxb, ptr %i.bwz, align 8, !tbaa !153
  %indvars.iv.next3725.a = add nsw i64 %indvars.iv3724.a, 1 ; 2 uses
  %i.bxc = mul nsw i64 %indvars.iv.next3725.a, %i.bb
  %i.bxd = trunc nsw i64 %indvars.iv.next3725.a to i32
  %i.bxe = sub i32 %i.cze, %i.bxd
  %i.bxf = sext i32 %i.bxe to i64
  %i.bxg = getelementptr [8 x i8], ptr %i.p, i64 %i.bxc
  %i.bxh = getelementptr [8 x i8], ptr %i.bxg, i64 %i.bxf ; 2 uses
  %i.bxi = load double, ptr %i.bxh, align 8, !tbaa !153
  %i.bxj = fdiv double %i.bxi, %i.bwt
  store double %i.bxj, ptr %i.bxh, align 8, !tbaa !153
  %indvars.iv.next3725.1 = add nsw i64 %indvars.iv3724.a, 2 ; 2 uses
  %i.bxk = mul nsw i64 %indvars.iv.next3725.1, %i.bb
  %i.bxl = trunc nsw i64 %indvars.iv.next3725.1 to i32
  %i.bxm = sub i32 %i.cze, %i.bxl
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr [8 x i8], ptr %i.p, i64 %i.bxk
  %i.bxp = getelementptr [8 x i8], ptr %i.bxo, i64 %i.bxn ; 2 uses
  %i.bxq = load double, ptr %i.bxp, align 8, !tbaa !153
  %i.bxr = fdiv double %i.bxq, %i.bwt
  store double %i.bxr, ptr %i.bxp, align 8, !tbaa !153
  %indvars.iv.next3725.2 = add nsw i64 %indvars.iv3724.a, 3 ; 2 uses
  %i.bxs = mul nsw i64 %indvars.iv.next3725.2, %i.bb
  %i.bxt = trunc nsw i64 %indvars.iv.next3725.2 to i32
  %i.bxu = sub i32 %i.cze, %i.bxt
  %i.bxv = sext i32 %i.bxu to i64
  %i.bxw = getelementptr [8 x i8], ptr %i.p, i64 %i.bxs
  %i.bxx = getelementptr [8 x i8], ptr %i.bxw, i64 %i.bxv ; 2 uses
  %i.bxy = load double, ptr %i.bxx, align 8, !tbaa !153
  %i.bxz = fdiv double %i.bxy, %i.bwt
  store double %i.bxz, ptr %i.bxx, align 8, !tbaa !153
  %indvars.iv.next3725.3 = add nsw i64 %indvars.iv3724.a, 4 ; 2 uses
  %lftr.wideiv3727.3 = trunc i64 %indvars.iv.next3725.3 to i32
  %exitcond3728.not.3 = icmp eq i32 %i.cze, %lftr.wideiv3727.3
  br i1 %exitcond3728.not.3, label %._crit_edge3373.us, label %.lr.ph3372.us.new, !llvm.loop !78

._crit_edge3373.us:                               ; preds = %.prol.loopexit4728, %.lr.ph3372.us.new, %bb.dn
  %i.bya = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.bya, ptr %i.c, align 4, !tbaa !151
  %i.byb = add nsw i32 %.pre3824.a, %.32608.us    ; 4 uses
  store i32 %i.byb, ptr %i.a, align 4, !tbaa !151
  %i.byc = call i32 @llvm.smin.i32(i32 %i.bya, i32 %i.byb) ; 9 uses
  %.not27043374.us = icmp sgt i32 %.32608.us, %i.byc
  br i1 %.not27043374.us, label %._crit_edge3378.us, label %iter.check4654

vec.epilog.scalar.ph4655:                         ; preds = %vec.epilog.scalar.ph4655, %vec.epilog.scalar.ph4655.preheader.new
  %indvars.iv3729.a = phi i64 [ %indvars.iv3729.unr.a, %vec.epilog.scalar.ph4655.preheader.new ], [ %indvars.iv.next3730.3.a, %vec.epilog.scalar.ph4655 ] ; 5 uses
  %i.byd = trunc nsw i64 %indvars.iv3729.a to i32
  %i.bye = add i32 %i.czs, %i.byd
  %i.byf = sext i32 %i.bye to i64
  %i.byg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byf ; 2 uses
  %i.byh = load double, ptr %i.byg, align 8, !tbaa !153
  %i.byi = fdiv double %i.byh, %i.bwt
  store double %i.byi, ptr %i.byg, align 8, !tbaa !153
  %i.byj = trunc i64 %indvars.iv3729.a to i32
  %.reass4792 = add i32 %i.byj, %invariant.op4791
  %i.byk = sext i32 %.reass4792 to i64
  %i.byl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byk ; 2 uses
  %i.bym = load double, ptr %i.byl, align 8, !tbaa !153
  %i.byn = fdiv double %i.bym, %i.bwt
  store double %i.byn, ptr %i.byl, align 8, !tbaa !153
  %i.byo = trunc i64 %indvars.iv3729.a to i32
  %.reass4794 = add i32 %i.byo, %invariant.op4793
  %i.byp = sext i32 %.reass4794 to i64
  %i.byq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byp ; 2 uses
  %i.byr = load double, ptr %i.byq, align 8, !tbaa !153
  %i.bys = fdiv double %i.byr, %i.bwt
  store double %i.bys, ptr %i.byq, align 8, !tbaa !153
  %i.byt = trunc i64 %indvars.iv3729.a to i32
  %.reass4796 = add i32 %i.byt, %invariant.op4795
  %i.byu = sext i32 %.reass4796 to i64
  %i.byv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.byu ; 2 uses
  %i.byw = load double, ptr %i.byv, align 8, !tbaa !153
  %i.byx = fdiv double %i.byw, %i.bwt
  store double %i.byx, ptr %i.byv, align 8, !tbaa !153
  %indvars.iv.next3730.3.a = add nuw nsw i64 %indvars.iv3729.a, 4 ; 2 uses
  %lftr.wideiv3732.3 = trunc i64 %indvars.iv.next3730.3.a to i32
  %exitcond3733.not.3.a = icmp eq i32 %i.czu, %lftr.wideiv3732.3
  br i1 %exitcond3733.not.3.a, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655, !llvm.loop !79

._crit_edge3378.us:                               ; preds = %vec.epilog.scalar.ph4655.prol.loopexit, %vec.epilog.scalar.ph4655, %middle.block4650, %vec.epilog.middle.block4666, %._crit_edge3373.us
  %i.byy = add i32 %24, %.32608.us                ; 7 uses
  %i.byz = add i32 %.32608.us, 1                  ; 6 uses
  %.not27053392.us = icmp slt i32 %24, 1
  br i1 %.not27053392.us, label %bb.dp, label %.lr.ph3396.us

bb.do:                                            ; preds = %.lr.ph3396.us, %._crit_edge3388.us.a
  %indvar4574 = phi i64 [ 0, %.lr.ph3396.us ], [ %indvar.next4575, %._crit_edge3388.us.a ] ; 8 uses
  %indvar4514 = phi i32 [ 0, %.lr.ph3396.us ], [ %indvar.next4515, %._crit_edge3388.us.a ] ; 4 uses
  %indvars.iv3734 = phi i64 [ %i.ddn, %.lr.ph3396.us ], [ %indvars.iv.next3735, %._crit_edge3388.us.a ] ; 12 uses
  %.182575.neg3394.us.in = phi i32 [ %.32608.us, %.lr.ph3396.us ], [ %i.cai, %._crit_edge3388.us.a ]
  %i.bza = add i64 %indvar4574, %i.ddn
  %i.bzb = trunc i64 %indvar4574 to i32
  %i.bzc = mul i32 %i.n, %i.bzb
  %i.bzd = add i32 %i.bzc, %i.dek
  %i.bze = sext i32 %i.bzd to i64
  %i.bzf = shl nsw i64 %i.bze, 3                  ; 2 uses
  %scevgep4578 = getelementptr i8, ptr %scevgep4577.a, i64 %i.bzf ; 5 uses
  %smax4580 = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddo)
  %i.bzg = add i64 %indvar4574, %i.ddn
  %i.bzh = sub i64 %smax4580, %i.bzg
  %i.bzi = shl nsw i64 %i.bzh, 3                  ; 3 uses
  %i.bzj = getelementptr i8, ptr %scevgep4579.a, i64 %i.bzi
  %scevgep4581.a = getelementptr i8, ptr %i.bzj, i64 %i.bzf ; 5 uses
  %i.bzk = trunc i64 %indvar4574 to i32
  %i.bzl = add i32 %i.del, %i.bzk
  %i.bzm = sext i32 %i.bzl to i64
  %i.bzn = shl nsw i64 %i.bzm, 3                  ; 3 uses
  %scevgep4583.a = getelementptr i8, ptr %scevgep4582.a, i64 %i.bzn ; 2 uses
  %scevgep4585 = getelementptr i8, ptr %scevgep4584, i64 %i.bzn
  %i.bzo = getelementptr i8, ptr %scevgep4586, i64 %i.bzi
  %scevgep4587 = getelementptr i8, ptr %i.bzo, i64 %i.bzn
  %i.bzp = trunc i64 %indvar4574 to i32
  %i.bzq = add i32 %i.dem, %i.bzp
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = shl nsw i64 %i.bzr, 3                  ; 3 uses
  %scevgep4589 = getelementptr i8, ptr %scevgep4588, i64 %i.bzs ; 2 uses
  %scevgep4591 = getelementptr i8, ptr %scevgep4590, i64 %i.bzs
  %i.bzt = getelementptr i8, ptr %scevgep4592, i64 %i.bzi
  %scevgep4593 = getelementptr i8, ptr %i.bzt, i64 %i.bzs
  %i.bzu = mul i32 %.0255729803502, %indvar4514
  %i.bzv = add i32 %i.ddt, %i.bzu
  %i.bzw = sext i32 %i.bzv to i64                 ; 2 uses
  %i.bzx = shl nsw i64 %i.bzw, 3
  %scevgep4518 = getelementptr i8, ptr %scevgep4517, i64 %i.bzx ; 2 uses
  %i.bzy = add nsw i64 %i.ddy, %i.bzw
  %i.bzz = shl nsw i64 %i.bzy, 3
  %scevgep4520 = getelementptr i8, ptr %scevgep4519, i64 %i.bzz ; 2 uses
  %i.caa = add i32 %i.ddz, %indvar4514
  %i.cab = sext i32 %i.caa to i64
  %i.cac = shl nsw i64 %i.cab, 3
  %scevgep4522 = getelementptr i8, ptr %scevgep4521, i64 %i.cac
  %i.cad = mul i32 %.0255729803502, %indvar4514
  %i.cae = add i32 %i.ddt, %i.cad                 ; 2 uses
  %i.caf = trunc i64 %indvars.iv3734 to i32
  %i.cag = mul i32 %i.n, %i.caf
  %i.cah = sub i32 %i.cag, %.182575.neg3394.us.in ; 9 uses
  %i.cai = trunc nsw i64 %indvars.iv3734 to i32   ; 3 uses
  %.reass3390.us.reass.reass = add i32 %i.cai, %invariant.op4804 ; 2 uses
  %i.caj = add nsw i32 %.reass3390.us.reass.reass, %i.ddi ; 3 uses
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cak ; 2 uses
  %i.cam = add nsw i32 %.reass3390.us.reass.reass, %i.bwp ; 3 uses
  %i.can = sext i32 %i.cam to i64
  %i.cao = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.can ; 2 uses
  %i.cap = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddo)
  %reass.sub4669 = sub i64 %i.cap, %i.bza
  %i.caq = add i64 %reass.sub4669, 1              ; 3 uses
  %min.iters.check4616 = icmp ult i64 %i.caq, 12
  br i1 %min.iters.check4616, label %scalar.ph4615.preheader, label %vector.scevcheck4572

vector.scevcheck4572:                             ; preds = %bb.do
  %i.car = trunc i64 %indvar4574 to i32
  %i.cas = mul i32 %i.n, %i.car
  %i.cat = add i32 %i.cas, %i.dek                 ; 2 uses
  %smax4573 = call i64 @llvm.smax.i64(i64 %indvars.iv3734, i64 %i.ddo)
  %i.cau = add i64 %indvar4574, %i.ddn
  %i.cav = sub i64 %smax4573, %i.cau              ; 2 uses
  %i.caw = trunc i64 %i.cav to i32                ; 3 uses
  %i.cax = add i32 %i.cat, %i.caw
  %i.cay = icmp slt i32 %i.cax, %i.cat
  %i.caz = add i32 %i.cam, %i.caw
  %i.cba = icmp slt i32 %i.caz, %i.cam
  %i.cbb = icmp ugt i64 %i.cav, 4294967295
  %i.cbc = or i1 %i.cba, %i.cbb
  %i.cbd = add i32 %i.caj, %i.caw
  %i.cbe = icmp slt i32 %i.cbd, %i.caj
  %i.cbf = or i1 %i.cay, %i.cbc
  %i.cbg = or i1 %i.cbe, %i.cbf
  br i1 %i.cbg, label %scalar.ph4615.preheader, label %vector.memcheck4576

vector.memcheck4576:                              ; preds = %vector.scevcheck4572
  %bound04596 = icmp ult ptr %scevgep4578, %scevgep4585
  %bound14597 = icmp ult ptr %scevgep4583.a, %scevgep4581.a
  %found.conflict4598 = and i1 %bound04596, %bound14597
  %bound04599.a = icmp ult ptr %scevgep4578, %scevgep4587
  %bound14600.a = icmp ult ptr %scevgep4583.a, %scevgep4581.a
  %found.conflict4601.a = and i1 %bound04599.a, %bound14600.a
  %conflict.rdx4602.a = or i1 %found.conflict4598, %found.conflict4601.a
  %bound04603 = icmp ult ptr %scevgep4578, %scevgep4591
  %bound14604 = icmp ult ptr %scevgep4589, %scevgep4581.a
  %found.conflict4605 = and i1 %bound04603, %bound14604
  %conflict.rdx4606 = or i1 %conflict.rdx4602.a, %found.conflict4605
  %bound04607 = icmp ult ptr %scevgep4578, %scevgep4593
  %bound14608 = icmp ult ptr %scevgep4589, %scevgep4581.a
  %found.conflict4609 = and i1 %bound04607, %bound14608
  %conflict.rdx4610 = or i1 %conflict.rdx4606, %found.conflict4609
  %bound04611 = icmp ult ptr %scevgep4578, %scevgep4595
  %bound14612 = icmp ult ptr %i.ddl, %scevgep4581.a
  %found.conflict4613 = and i1 %bound04611, %bound14612
  %conflict.rdx4614 = or i1 %conflict.rdx4610, %found.conflict4613
  br i1 %conflict.rdx4614, label %scalar.ph4615.preheader, label %vector.ph4617

vector.ph4617:                                    ; preds = %vector.memcheck4576
  %n.vec4618 = and i64 %i.caq, -4                 ; 3 uses
  %i.cbh = add i64 %indvars.iv3734, %n.vec4618
  %i.cbi = load double, ptr %i.cal, align 8, !tbaa !153, !alias.scope !170
  %broadcast.splatinsert4625 = insertelement <4 x double> poison, double %i.cbi, i64 0
  %broadcast.splat4626 = shufflevector <4 x double> %broadcast.splatinsert4625, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cbj = load double, ptr %i.cao, align 8, !tbaa !153, !alias.scope !171
  %broadcast.splatinsert4619 = insertelement <4 x double> poison, double %i.cbj, i64 0
  %broadcast.splat4620 = shufflevector <4 x double> %broadcast.splatinsert4619, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cbk = fneg <4 x double> %broadcast.splat4620
  %i.cbl = load double, ptr %i.ddl, align 8, !tbaa !153, !alias.scope !172
  %broadcast.splatinsert4628 = insertelement <4 x double> poison, double %i.cbl, i64 0
  %broadcast.splat4629 = shufflevector <4 x double> %broadcast.splatinsert4628, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body4621

vector.body4621:                                  ; preds = %vector.body4621, %vector.ph4617
  %index4622 = phi i64 [ 0, %vector.ph4617 ], [ %index.next4630, %vector.body4621 ] ; 2 uses
  %i.cbm = add i64 %indvars.iv3734, %index4622
  %i.cbn = trunc nsw i64 %i.cbm to i32            ; 2 uses
  %i.cbo = add i32 %i.cah, %i.cbn
  %i.cbp = sext i32 %i.cbo to i64
  %i.cbq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbp ; 2 uses
  %wide.load4623 = load <4 x double>, ptr %i.cbq, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %.reass4798 = add i32 %i.cbn, %invariant.op4797 ; 2 uses
  %i.cbr = add nsw i32 %.reass4798, %i.bwp
  %i.cbs = sext i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.cbs
  %wide.load4624 = load <4 x double>, ptr %i.cbt, align 8, !tbaa !153, !alias.scope !175 ; 2 uses
  %i.cbu = fneg <4 x double> %wide.load4624
  %i.cbv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbu, <4 x double> %broadcast.splat4626, <4 x double> %wide.load4623)
  %i.cbw = add nsw i32 %.reass4798, %i.ddi
  %i.cbx = sext i32 %i.cbw to i64
  %i.cby = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cbx
  %wide.load4627 = load <4 x double>, ptr %i.cby, align 8, !tbaa !153, !alias.scope !176
  %i.cbz = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cbk, <4 x double> %wide.load4627, <4 x double> %i.cbv)
  %i.cca = fmul <4 x double> %wide.load4624, %broadcast.splat4629
  %i.ccb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cca, <4 x double> %broadcast.splat4620, <4 x double> %i.cbz)
  store <4 x double> %i.ccb, ptr %i.cbq, align 8, !tbaa !153, !alias.scope !173, !noalias !174
  %index.next4630 = add nuw i64 %index4622, 4     ; 2 uses
  %i.ccc = icmp eq i64 %index.next4630, %n.vec4618
  br i1 %i.ccc, label %middle.block4631, label %vector.body4621, !llvm.loop !87

middle.block4631:                                 ; preds = %vector.body4621
  %cmp.n4632 = icmp eq i64 %i.caq, %n.vec4618
  br i1 %cmp.n4632, label %.loopexit, label %scalar.ph4615.preheader

scalar.ph4615.preheader:                          ; preds = %vector.memcheck4576, %vector.scevcheck4572, %bb.do, %middle.block4631
  %indvars.iv3736.ph = phi i64 [ %indvars.iv3734, %vector.memcheck4576 ], [ %indvars.iv3734, %vector.scevcheck4572 ], [ %indvars.iv3734, %bb.do ], [ %i.cbh, %middle.block4631 ]
  br label %scalar.ph4615

scalar.ph4615:                                    ; preds = %scalar.ph4615.preheader, %scalar.ph4615
  %indvars.iv3736 = phi i64 [ %indvars.iv.next3737, %scalar.ph4615 ], [ %indvars.iv3736.ph, %scalar.ph4615.preheader ] ; 3 uses
  %i.ccd = trunc nsw i64 %indvars.iv3736 to i32   ; 2 uses
  %i.cce = add i32 %i.cah, %i.ccd
  %i.ccf = sext i32 %i.cce to i64
  %i.ccg = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccf ; 2 uses
  %i.cch = load double, ptr %i.ccg, align 8, !tbaa !153
  %.reass3380.us.reass.reass = add i32 %i.ccd, %invariant.op4799 ; 2 uses
  %i.cci = add nsw i32 %.reass3380.us.reass.reass, %i.bwp
  %i.ccj = sext i32 %i.cci to i64
  %i.cck = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ccj
  %i.ccl = load double, ptr %i.cck, align 8, !tbaa !153 ; 2 uses
  %i.ccm = load double, ptr %i.cal, align 8, !tbaa !153
  %i.ccn = fneg double %i.ccl
  %i.cco = call double @llvm.fmuladd.f64(double %i.ccn, double %i.ccm, double %i.cch)
  %i.ccp = load double, ptr %i.cao, align 8, !tbaa !153 ; 2 uses
  %i.ccq = add nsw i32 %.reass3380.us.reass.reass, %i.ddi
  %i.ccr = sext i32 %i.ccq to i64
  %i.ccs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ccr
  %i.cct = load double, ptr %i.ccs, align 8, !tbaa !153
  %i.ccu = fneg double %i.ccp
  %i.ccv = call double @llvm.fmuladd.f64(double %i.ccu, double %i.cct, double %i.cco)
  %i.ccw = load double, ptr %i.ddl, align 8, !tbaa !153
  %i.ccx = fmul double %i.ccl, %i.ccw
  %i.ccy = call double @llvm.fmuladd.f64(double %i.ccx, double %i.ccp, double %i.ccv)
  store double %i.ccy, ptr %i.ccg, align 8, !tbaa !153
  %indvars.iv.next3737 = add nsw i64 %indvars.iv3736, 1
  %.not2726.us.not = icmp slt i64 %indvars.iv3736, %i.ddo
  br i1 %.not2726.us.not, label %scalar.ph4615, label %.loopexit, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph4615, %middle.block4631
  br i1 %.not2728.not3384.us, label %iter.check4556, label %._crit_edge3388.us.a

vec.epilog.scalar.ph4557:                         ; preds = %vec.epilog.scalar.ph4557.prol.loopexit, %vec.epilog.scalar.ph4557
  %indvars.iv3739 = phi i64 [ %indvars.iv.next3740.3, %vec.epilog.scalar.ph4557 ], [ %indvars.iv3739.unr, %vec.epilog.scalar.ph4557.prol.loopexit ] ; 4 uses
  %i.ccz = load double, ptr %i.dbi, align 8, !tbaa !153
  %i.cda = trunc i64 %indvars.iv3739 to i32
  %i.cdb = add i32 %i.cda, 1                      ; 2 uses
  %i.cdc = add i32 %i.ddm, %i.cdb
  %i.cdd = sext i32 %i.cdc to i64
  %i.cde = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cdd
end_hunk_4
begin_hunk_5_@dsbgst_:bb.a

._crit_edge3478.us:                               ; preds = %bb.fh, %bb.fe
  br i1 %.not, label %.loopexit.us, label %bb.fi

bb.fi:                                            ; preds = %._crit_edge3478.us
  store i32 %i.csc, ptr %i.d, align 4, !tbaa !151
  %i.cvk = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  store i32 %i.cvk, ptr %i.c, align 4, !tbaa !151
  %i.cvl = icmp slt i32 %i.cvk, 0
  %i.cvm = icmp slt i32 %i.csi, 1
  %i.cvn = icmp sgt i32 %i.csi, -1
  %.in27143479.us = select i1 %i.cvl, i1 %i.cvm, i1 %i.cvn
  br i1 %.in27143479.us, label %.lr.ph3482.us, label %.loopexit.us

.lr.ph3482.us:                                    ; preds = %bb.fi, %.lr.ph3482.us
  %.423480.us = phi i32 [ %i.cwi, %.lr.ph3482.us ], [ %i.csj, %bb.fi ] ; 4 uses
  %i.cvo = mul nsw i32 %.423480.us, %i.t
  %i.cvp = sext i32 %i.cvo to i64
  %i.cvq = getelementptr [8 x i8], ptr %i.v, i64 %i.cvp
  %i.cvr = getelementptr i8, ptr %i.cvq, i64 8
  %i.cvs = add nsw i32 %.423480.us, -1
  %i.cvt = mul nsw i32 %i.cvs, %i.t
  %i.cvu = sext i32 %i.cvt to i64
  %i.cvv = getelementptr [8 x i8], ptr %i.v, i64 %i.cvu
  %i.cvw = getelementptr i8, ptr %i.cvv, i64 8
  %i.cvx = load i32, ptr %2, align 4, !tbaa !151
  %i.cvy = load i32, ptr %4, align 4, !tbaa !151  ; 2 uses
  %i.cvz = add i32 %.423480.us, %i.ay             ; 2 uses
  %i.cwa = add i32 %i.cvz, %i.cvx
  %i.cwb = sub i32 %i.cwa, %i.cvy
  %i.cwc = sext i32 %i.cwb to i64
  %i.cwd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cwc
  %i.cwe = sub i32 %i.cvz, %i.cvy
  %i.cwf = sext i32 %i.cwe to i64
  %i.cwg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cwf
  call void @drot_(ptr noundef nonnull %i.i, ptr noundef %i.cvr, ptr noundef nonnull @c__1, ptr noundef %i.cvw, ptr noundef nonnull @c__1, ptr noundef nonnull %i.cwd, ptr noundef nonnull %i.cwg) #4
  %i.cwh = load i32, ptr %i.c, align 4, !tbaa !151 ; 2 uses
  %i.cwi = add nsw i32 %i.cwh, %.423480.us        ; 3 uses
  %i.cwj = icmp slt i32 %i.cwh, 0
  %i.cwk = load i32, ptr %i.d, align 4            ; 2 uses
  %i.cwl = icmp sge i32 %i.cwi, %i.cwk
  %i.cwm = icmp sle i32 %i.cwi, %i.cwk
  %.in2714.us = select i1 %i.cwj, i1 %i.cwl, i1 %i.cwm
  br i1 %.in2714.us, label %.lr.ph3482.us, label %.loopexit.us, !llvm.loop !104

.loopexit.us:                                     ; preds = %.lr.ph3482.us, %bb.fi, %._crit_edge3478.us
  %i.cwn = add nsw i32 %.2225793483.us, -1
  %i.cwo = icmp sgt i32 %.2225793483.us, 1
  br i1 %i.cwo, label %bb.fb, label %._crit_edge3486.us.a, !llvm.loop !105

._crit_edge3486.us.thread.a:                      ; preds = %._crit_edge3467.us, %bb.ep
  %.ph4099 = phi i32 [ %.pre3842, %._crit_edge3467.us ], [ %i.coa, %bb.ep ] ; 2 uses
  %i.cwp = add nsw i32 %.ph4099, -1
  store i32 %i.cwp, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3495.us.thread

._crit_edge3486.us.a:                             ; preds = %.loopexit.us
  %.pre3849 = load i32, ptr %4, align 4, !tbaa !151 ; 3 uses
  %i.cwq = add nsw i32 %.pre3849, -1              ; 2 uses
  store i32 %i.cwq, ptr %i.c, align 4, !tbaa !151
  %.not27083491.us = icmp slt i32 %.pre3849, 2
  br i1 %.not27083491.us, label %._crit_edge3495.us.thread, label %.lr.ph3494.us

bb.fj:                                            ; preds = %.lr.ph3494.us, %._crit_edge3490.us
  %.pre3851 = phi i32 [ %.pre3913, %.lr.ph3494.us ], [ %.pre38513914, %._crit_edge3490.us ] ; 3 uses
  %i.cwr = phi i32 [ %.pre3913, %.lr.ph3494.us ], [ %i.cyb, %._crit_edge3490.us ] ; 2 uses
  %i.cws = phi i32 [ %i.cwq, %.lr.ph3494.us ], [ %i.cyc, %._crit_edge3490.us ]
  %.2325803492.us = phi i32 [ 1, %.lr.ph3494.us ], [ %i.cyd, %._crit_edge3490.us ] ; 5 uses
  store i32 1, ptr %i.d, align 4, !tbaa !151
  %i.cwt = add i32 %.reass4178.reass, %.2325803492.us ; 2 uses
  store i32 %i.cwt, ptr %i.a, align 4, !tbaa !151
  %i.cwu = call i32 @llvm.smax.i32(i32 %i.cwt, i32 1)
  %i.cwv = mul nsw i32 %i.cwr, %i.cwu
  %i.cww = add i32 %i.dgz, %.2325803492.us
  %i.cwx = sub i32 %i.cww, %i.cwv                 ; 2 uses
  %i.cwy = load i32, ptr %4, align 4, !tbaa !151
  %i.cwz = sub nsw i32 %i.cwy, %.2325803492.us    ; 2 uses
  %i.cxa = icmp sgt i32 %i.cwz, 0
  br i1 %i.cxa, label %.lr.ph3489.us, label %._crit_edge3490.us

bb.fk:                                            ; preds = %.lr.ph3489.us, %bb.fm
  %.pre38513916 = phi i32 [ %.pre3851, %.lr.ph3489.us ], [ %.pre38513915, %bb.fm ]
  %i.cxb = phi i32 [ %.pre3851, %.lr.ph3489.us ], [ %i.cxy, %bb.fm ] ; 5 uses
  %.233487.us = phi i32 [ %i.cwz, %.lr.ph3489.us ], [ %i.cxz, %bb.fm ] ; 5 uses
  %i.cxc = add i32 %i.dgy, %.233487.us
  %i.cxd = sdiv i32 %i.cxc, %i.cxb                ; 3 uses
  store i32 %i.cxd, ptr %i.m, align 4, !tbaa !151
  %i.cxe = icmp sgt i32 %i.cxd, 0
  br i1 %i.cxe, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.cxf = add nsw i32 %i.cxd, -1
  %i.cxg = mul nsw i32 %i.cxf, %i.cxb
  %i.cxh = sub nsw i32 %i.cwx, %i.cxg             ; 3 uses
  %i.cxi = sub nsw i32 %i.cxb, %.233487.us
  %i.cxj = sub i32 %.233487.us, %i.cxb
  %i.cxk = add i32 %i.cxj, %i.cxh
  %i.cxl = mul nsw i32 %i.cxk, %i.n
  %i.cxm = add i32 %i.cxl, %i.cxi                 ; 2 uses
  %i.cxn = add i32 %i.cxm, 1
  %i.cxo = sext i32 %i.cxn to i64
  %i.cxp = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cxo
  %i.cxq = sext i32 %i.cxm to i64
  %i.cxr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cxq
  %i.cxs = load i32, ptr %2, align 4, !tbaa !151
  %i.cxt = add nsw i32 %i.cxs, %i.cxh
  %i.cxu = sext i32 %i.cxt to i64
  %i.cxv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cxu
  %i.cxw = sext i32 %i.cxh to i64
  %i.cxx = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cxw
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.cxp, ptr noundef nonnull %i.f, ptr noundef %i.cxr, ptr noundef nonnull %i.f, ptr noundef nonnull %i.cxv, ptr noundef nonnull %i.cxx, ptr noundef nonnull %i.j) #4
  %.pre3850 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.pre38513915 = phi i32 [ %.pre3850, %bb.fl ], [ %.pre38513916, %bb.fk ] ; 2 uses
  %i.cxy = phi i32 [ %.pre3850, %bb.fl ], [ %i.cxb, %bb.fk ] ; 2 uses
  %i.cxz = add nsw i32 %.233487.us, -1
  %i.cya = icmp sgt i32 %.233487.us, 1
  br i1 %i.cya, label %bb.fk, label %._crit_edge3490.us.loopexit, !llvm.loop !106

._crit_edge3490.us.loopexit:                      ; preds = %bb.fm
  %.pre3852 = load i32, ptr %i.c, align 4, !tbaa !151
  br label %._crit_edge3490.us

._crit_edge3490.us:                               ; preds = %._crit_edge3490.us.loopexit, %bb.fj
  %.pre38513914 = phi i32 [ %.pre38513915, %._crit_edge3490.us.loopexit ], [ %.pre3851, %bb.fj ]
  %i.cyb = phi i32 [ %i.cxy, %._crit_edge3490.us.loopexit ], [ %i.cwr, %bb.fj ]
  %i.cyc = phi i32 [ %.pre3852, %._crit_edge3490.us.loopexit ], [ %i.cws, %bb.fj ] ; 2 uses
  %i.cyd = add nuw nsw i32 %.2325803492.us, 1
  %.not2708.us.not = icmp slt i32 %.2325803492.us, %i.cyc
  br i1 %.not2708.us.not, label %bb.fj, label %._crit_edge3495.us, !llvm.loop !107

._crit_edge3495.us.thread:                        ; preds = %._crit_edge3486.us.a, %._crit_edge3486.us.thread.a
  %.ph4101 = phi i32 [ %.ph4099, %._crit_edge3486.us.thread.a ], [ %.pre3849, %._crit_edge3486.us.a ]
  %.pre3824.pre.pre4102 = load i32, ptr %3, align 4, !tbaa !151
  br label %.outer.us.backedge

._crit_edge3495.us:                               ; preds = %._crit_edge3490.us
  %.pre3853 = load i32, ptr %4, align 4, !tbaa !151 ; 7 uses
  %i.cye = icmp sgt i32 %.pre3853, 1
  %.pre3824.pre.pre = load i32, ptr %3, align 4, !tbaa !151 ; 7 uses
  br i1 %i.cye, label %bb.fn, label %.outer.us.backedge

bb.fn:                                            ; preds = %._crit_edge3495.us
  %i.cyf = add nuw nsw i32 %.pre3853, %.32608.us  ; 2 uses
  store i32 %i.cyf, ptr %i.d, align 4, !tbaa !151
  %i.cyg = call i32 @llvm.smin.i32(i32 %i.cyf, i32 %i.ay) ; 2 uses
  %i.cyh = shl i32 %.pre3824.pre.pre, 1           ; 2 uses
  %i.cyi = xor i32 %i.cyh, -1
  %i.cyj = add i32 %i.cyg, %i.cyi                 ; 2 uses
  store i32 %i.cyj, ptr %i.c, align 4, !tbaa !151
  %.not27103496.us = icmp slt i32 %i.cyj, 2
  br i1 %.not27103496.us, label %.outer.us.backedge, label %.lr.ph3499.us

scalar.ph4499:                                    ; preds = %scalar.ph4499.prol.loopexit, %scalar.ph4499
  %indvars.iv3779 = phi i64 [ %indvars.iv.next3780.3, %scalar.ph4499 ], [ %indvars.iv3779.unr, %scalar.ph4499.prol.loopexit ] ; 8 uses
  %i.cyk = add nsw i64 %indvars.iv3779, %i.dhb    ; 2 uses
  %gep4170 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.cyk
  %i.cyl = load double, ptr %gep4170, align 8, !tbaa !153
  %i.cym = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyk
  store double %i.cyl, ptr %i.cym, align 8, !tbaa !153
  %gep4172 = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %indvars.iv3779
  %i.cyn = load double, ptr %gep4172, align 8, !tbaa !153
  %i.cyo = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3779
  store double %i.cyn, ptr %i.cyo, align 8, !tbaa !153
  %indvars.iv.next3780 = add nuw nsw i64 %indvars.iv3779, 1 ; 2 uses
  %i.cyp = add nsw i64 %indvars.iv.next3780, %i.dhb ; 2 uses
  %gep4170.1 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.cyp
  %i.cyq = load double, ptr %gep4170.1, align 8, !tbaa !153
  %i.cyr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyp
  store double %i.cyq, ptr %i.cyr, align 8, !tbaa !153
  %gep4172.1 = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %indvars.iv.next3780
  %i.cys = load double, ptr %gep4172.1, align 8, !tbaa !153
  %i.cyt = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3779
  store double %i.cys, ptr %i.cyt, align 8, !tbaa !153
  %indvars.iv.next3780.1 = add nuw nsw i64 %indvars.iv3779, 2 ; 3 uses
  %i.cyu = add nsw i64 %indvars.iv.next3780.1, %i.dhb ; 2 uses
  %gep4170.2 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.cyu
  %i.cyv = load double, ptr %gep4170.2, align 8, !tbaa !153
  %i.cyw = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyu
  store double %i.cyv, ptr %i.cyw, align 8, !tbaa !153
  %gep4172.2 = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %indvars.iv.next3780.1
  %i.cyx = load double, ptr %gep4172.2, align 8, !tbaa !153
  %i.cyy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3780.1
  store double %i.cyx, ptr %i.cyy, align 8, !tbaa !153
  %indvars.iv.next3780.2 = add nuw nsw i64 %indvars.iv3779, 3 ; 3 uses
  %i.cyz = add nsw i64 %indvars.iv.next3780.2, %i.dhb ; 2 uses
  %gep4170.3 = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.cyz
  %i.cza = load double, ptr %gep4170.3, align 8, !tbaa !153
  %i.czb = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.cyz
  store double %i.cza, ptr %i.czb, align 8, !tbaa !153
  %gep4172.3 = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %indvars.iv.next3780.2
  %i.czc = load double, ptr %gep4172.3, align 8, !tbaa !153
  %i.czd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3780.2
  store double %i.czc, ptr %i.czd, align 8, !tbaa !153
  %indvars.iv.next3780.3 = add nuw nsw i64 %indvars.iv3779, 4 ; 2 uses
  %exitcond3783.not.3 = icmp eq i64 %indvars.iv.next3780.3, %wide.trip.count3782
  br i1 %exitcond3783.not.3, label %.outer.us.backedge, label %scalar.ph4499, !llvm.loop !108

.lr.ph3212.split.split.us:                        ; preds = %.lr.ph3212.split.us3500
  store i32 1, ptr %i.c, align 4, !tbaa !151
  br label %bb.dj

.lr.ph3372.us:                                    ; preds = %bb.dn
  %i.cze = add nuw i32 %.32608.us, 1              ; 6 uses
  %i.czf = sext i32 %.42546.us to i64             ; 2 uses
  %i.czg = add i32 %.32608.us, 1
  %i.czh = sub i32 %i.czg, %.42546.us
  %i.czi = sub i32 %.32608.us, %.42546.us
  %xtraiter4729 = and i32 %i.czh, 3               ; 2 uses
  %lcmp.mod4730.not = icmp eq i32 %xtraiter4729, 0
  br i1 %lcmp.mod4730.not, label %.prol.loopexit4728, label %.prol.preheader4727

.prol.preheader4727:                              ; preds = %.lr.ph3372.us, %.prol.preheader4727
  %indvars.iv3724.prol = phi i64 [ %indvars.iv.next3725.prol, %.prol.preheader4727 ], [ %i.czf, %.lr.ph3372.us ] ; 3 uses
  %prol.iter4731 = phi i32 [ %prol.iter4731.next, %.prol.preheader4727 ], [ 0, %.lr.ph3372.us ]
  %i.czj = mul nsw i64 %indvars.iv3724.prol, %i.bb
  %i.czk = trunc nsw i64 %indvars.iv3724.prol to i32
  %i.czl = sub i32 %i.cze, %i.czk
  %i.czm = sext i32 %i.czl to i64
  %i.czn = getelementptr [8 x i8], ptr %i.p, i64 %i.czj
  %i.czo = getelementptr [8 x i8], ptr %i.czn, i64 %i.czm ; 2 uses
  %i.czp = load double, ptr %i.czo, align 8, !tbaa !153
  %i.czq = fdiv double %i.czp, %i.bwt
  store double %i.czq, ptr %i.czo, align 8, !tbaa !153
  %indvars.iv.next3725.prol = add nsw i64 %indvars.iv3724.prol, 1 ; 2 uses
  %prol.iter4731.next = add i32 %prol.iter4731, 1 ; 2 uses
  %prol.iter4731.cmp.not = icmp eq i32 %prol.iter4731.next, %xtraiter4729
  br i1 %prol.iter4731.cmp.not, label %.prol.loopexit4728, label %.prol.preheader4727, !llvm.loop !109

.prol.loopexit4728:                               ; preds = %.prol.preheader4727, %.lr.ph3372.us
  %indvars.iv3724.unr = phi i64 [ %i.czf, %.lr.ph3372.us ], [ %indvars.iv.next3725.prol, %.prol.preheader4727 ]
  %i.czr = icmp ult i32 %i.czi, 3
  br i1 %i.czr, label %._crit_edge3373.us, label %.lr.ph3372.us.new

iter.check4654:                                   ; preds = %._crit_edge3373.us
  %reass.sub3511 = mul i32 %.32608.us, %.32608.us3512
  %i.czs = add i32 %reass.sub3511, 1              ; 7 uses
  %i.czt = zext nneg i32 %.32608.us to i64        ; 4 uses
  %i.czu = add nuw i32 %i.byc, 1
  %i.czv = sub i32 %i.byc, %.32608.us             ; 3 uses
  %i.czw = zext i32 %i.czv to i64
  %i.czx = add nuw nsw i64 %i.czw, 1              ; 5 uses
  %min.iters.check4636 = icmp ult i32 %i.czv, 3
  br i1 %min.iters.check4636, label %vec.epilog.scalar.ph4655.preheader, label %vector.scevcheck4634

vector.scevcheck4634:                             ; preds = %iter.check4654
  %i.czy = sub i32 %i.byc, %.32608.us
  %i.czz = mul i32 %i.n, %.32608.us
  %i.daa = add i32 %i.czz, 1                      ; 2 uses
  %i.dab = add i32 %i.daa, %i.czy
  %i.dac = icmp slt i32 %i.dab, %i.daa
  br i1 %i.dac, label %vec.epilog.scalar.ph4655.preheader, label %vector.main.loop.iter.check4637

vector.main.loop.iter.check4637:                  ; preds = %vector.scevcheck4634
  %min.iters.check4638 = icmp ult i32 %i.czv, 15
  br i1 %min.iters.check4638, label %vec.epilog.ph4658, label %vector.ph4639

vector.ph4639:                                    ; preds = %vector.main.loop.iter.check4637
  %i.dad = and i64 %i.czx, 12
  %n.vec4640 = and i64 %i.czx, 8589934576         ; 4 uses
  %i.dae = add nuw nsw i64 %n.vec4640, %i.czt
  %broadcast.splatinsert4641 = insertelement <4 x double> poison, double %i.bwt, i64 0
  %broadcast.splat4642 = shufflevector <4 x double> %broadcast.splatinsert4641, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4787.a = add i32 %.32608.us, %i.czs
  br label %vector.body4643

vector.body4643:                                  ; preds = %vector.body4643, %vector.ph4639
  %index4644 = phi i64 [ 0, %vector.ph4639 ], [ %index.next4649, %vector.body4643 ] ; 2 uses
  %i.daf = trunc i64 %index4644 to i32
  %.reass4788 = add i32 %i.daf, %invariant.op4787.a
  %i.dag = sext i32 %.reass4788 to i64
  %i.dah = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dag ; 5 uses
  %i.dai = getelementptr inbounds nuw i8, ptr %i.dah, i64 32 ; 2 uses
  %i.daj = getelementptr inbounds nuw i8, ptr %i.dah, i64 64 ; 2 uses
  %i.dak = getelementptr inbounds nuw i8, ptr %i.dah, i64 96 ; 2 uses
  %wide.load4645 = load <4 x double>, ptr %i.dah, align 8, !tbaa !153
  %wide.load4646 = load <4 x double>, ptr %i.dai, align 8, !tbaa !153
  %wide.load4647 = load <4 x double>, ptr %i.daj, align 8, !tbaa !153
  %wide.load4648 = load <4 x double>, ptr %i.dak, align 8, !tbaa !153
  %i.dal = fdiv <4 x double> %wide.load4645, %broadcast.splat4642
  %i.dam = fdiv <4 x double> %wide.load4646, %broadcast.splat4642
  %i.dan = fdiv <4 x double> %wide.load4647, %broadcast.splat4642
  %i.dao = fdiv <4 x double> %wide.load4648, %broadcast.splat4642
  store <4 x double> %i.dal, ptr %i.dah, align 8, !tbaa !153
  store <4 x double> %i.dam, ptr %i.dai, align 8, !tbaa !153
  store <4 x double> %i.dan, ptr %i.daj, align 8, !tbaa !153
  store <4 x double> %i.dao, ptr %i.dak, align 8, !tbaa !153
  %index.next4649 = add nuw i64 %index4644, 16    ; 2 uses
  %i.dap = icmp eq i64 %index.next4649, %n.vec4640
  br i1 %i.dap, label %middle.block4650, label %vector.body4643, !llvm.loop !110

middle.block4650:                                 ; preds = %vector.body4643
  %cmp.n4651 = icmp eq i64 %i.czx, %n.vec4640
  br i1 %cmp.n4651, label %._crit_edge3378.us, label %vec.epilog.iter.check4656

vec.epilog.iter.check4656:                        ; preds = %middle.block4650
  %min.epilog.iters.check4657 = icmp eq i64 %i.dad, 0
  br i1 %min.epilog.iters.check4657, label %vec.epilog.scalar.ph4655.preheader, label %vec.epilog.ph4658, !prof !158

vec.epilog.ph4658:                                ; preds = %vector.main.loop.iter.check4637, %vec.epilog.iter.check4656
  %vec.epilog.resume.val4652 = phi i64 [ %n.vec4640, %vec.epilog.iter.check4656 ], [ 0, %vector.main.loop.iter.check4637 ]
  %n.vec4659 = and i64 %i.czx, 8589934588         ; 3 uses
  %i.daq = add nuw nsw i64 %n.vec4659, %i.czt
  %broadcast.splatinsert4660 = insertelement <4 x double> poison, double %i.bwt, i64 0
  %broadcast.splat4661 = shufflevector <4 x double> %broadcast.splatinsert4660, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4789 = add i32 %.32608.us, %i.czs
  br label %vec.epilog.vector.body4662

vec.epilog.vector.body4662:                       ; preds = %vec.epilog.vector.body4662, %vec.epilog.ph4658
  %index4663 = phi i64 [ %vec.epilog.resume.val4652, %vec.epilog.ph4658 ], [ %index.next4665, %vec.epilog.vector.body4662 ] ; 2 uses
  %i.dar = trunc i64 %index4663 to i32
  %.reass4790 = add i32 %i.dar, %invariant.op4789
  %i.das = sext i32 %.reass4790 to i64
  %i.dat = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.das ; 2 uses
  %wide.load4664 = load <4 x double>, ptr %i.dat, align 8, !tbaa !153
  %i.dau = fdiv <4 x double> %wide.load4664, %broadcast.splat4661
  store <4 x double> %i.dau, ptr %i.dat, align 8, !tbaa !153
  %index.next4665 = add nuw i64 %index4663, 4     ; 2 uses
  %i.dav = icmp eq i64 %index.next4665, %n.vec4659
  br i1 %i.dav, label %vec.epilog.middle.block4666, label %vec.epilog.vector.body4662, !llvm.loop !111

vec.epilog.middle.block4666:                      ; preds = %vec.epilog.vector.body4662
  %cmp.n4667 = icmp eq i64 %i.czx, %n.vec4659
  br i1 %cmp.n4667, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655.preheader

vec.epilog.scalar.ph4655.preheader:               ; preds = %vector.scevcheck4634, %iter.check4654, %vec.epilog.iter.check4656, %vec.epilog.middle.block4666
  %indvars.iv3729.ph.a = phi i64 [ %i.czt, %iter.check4654 ], [ %i.czt, %vector.scevcheck4634 ], [ %i.dae, %vec.epilog.iter.check4656 ], [ %i.daq, %vec.epilog.middle.block4666 ] ; 3 uses
  %i.daw = add i32 %i.byc, 1
  %i.dax = trunc i64 %indvars.iv3729.ph.a to i32  ; 2 uses
  %i.day = sub i32 %i.daw, %i.dax
  %i.daz = sub i32 %i.byc, %i.dax
  %xtraiter4732 = and i32 %i.day, 3               ; 2 uses
  %lcmp.mod4733.not = icmp eq i32 %xtraiter4732, 0
  br i1 %lcmp.mod4733.not, label %vec.epilog.scalar.ph4655.prol.loopexit, label %vec.epilog.scalar.ph4655.prol

vec.epilog.scalar.ph4655.prol:                    ; preds = %vec.epilog.scalar.ph4655.preheader, %vec.epilog.scalar.ph4655.prol
  %indvars.iv3729.prol.a = phi i64 [ %indvars.iv.next3730.prol.a, %vec.epilog.scalar.ph4655.prol ], [ %indvars.iv3729.ph.a, %vec.epilog.scalar.ph4655.preheader ] ; 2 uses
  %prol.iter4734 = phi i32 [ %prol.iter4734.next, %vec.epilog.scalar.ph4655.prol ], [ 0, %vec.epilog.scalar.ph4655.preheader ]
  %i.dba = trunc nsw i64 %indvars.iv3729.prol.a to i32
  %i.dbb = add i32 %i.czs, %i.dba
  %i.dbc = sext i32 %i.dbb to i64
  %i.dbd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbc ; 2 uses
  %i.dbe = load double, ptr %i.dbd, align 8, !tbaa !153
  %i.dbf = fdiv double %i.dbe, %i.bwt
  store double %i.dbf, ptr %i.dbd, align 8, !tbaa !153
  %indvars.iv.next3730.prol.a = add nuw nsw i64 %indvars.iv3729.prol.a, 1 ; 2 uses
  %prol.iter4734.next = add i32 %prol.iter4734, 1 ; 2 uses
  %prol.iter4734.cmp.not = icmp eq i32 %prol.iter4734.next, %xtraiter4732
  br i1 %prol.iter4734.cmp.not, label %vec.epilog.scalar.ph4655.prol.loopexit, label %vec.epilog.scalar.ph4655.prol, !llvm.loop !112

vec.epilog.scalar.ph4655.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4655.prol, %vec.epilog.scalar.ph4655.preheader
  %indvars.iv3729.unr.a = phi i64 [ %indvars.iv3729.ph.a, %vec.epilog.scalar.ph4655.preheader ], [ %indvars.iv.next3730.prol.a, %vec.epilog.scalar.ph4655.prol ]
  %i.dbg = icmp ult i32 %i.daz, 3
  br i1 %i.dbg, label %._crit_edge3378.us, label %vec.epilog.scalar.ph4655.preheader.new

vec.epilog.scalar.ph4655.preheader.new:           ; preds = %vec.epilog.scalar.ph4655.prol.loopexit
  %invariant.op4791 = add i32 1, %i.czs
  %invariant.op4793 = add i32 2, %i.czs
  %invariant.op4795 = add i32 3, %i.czs
  br label %vec.epilog.scalar.ph4655

iter.check4556:                                   ; preds = %.loopexit
  %.reass3383.reass.us = add i32 %invariant.op3398.us, %i.cai
  %i.dbh = sext i32 %.reass3383.reass.us to i64
  %i.dbi = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dbh ; 8 uses
  br i1 %min.iters.check4534, label %vec.epilog.scalar.ph4557.preheader, label %vector.scevcheck4513

vector.scevcheck4513:                             ; preds = %iter.check4556
  %i.dbj = add i32 %i.cae, %i.deo
  %i.dbk = icmp slt i32 %i.dbj, %i.cae
  %i.dbl = or i1 %i.dbk, %i.des
  br i1 %i.dbl, label %vec.epilog.scalar.ph4557.preheader, label %vector.memcheck4516

vector.memcheck4516:                              ; preds = %vector.scevcheck4513
  %bound04526 = icmp ult ptr %scevgep4518, %scevgep4522
  %bound14527 = icmp ult ptr %i.dbi, %scevgep4520
  %found.conflict4528 = and i1 %bound04526, %bound14527
  %bound04529 = icmp ult ptr %scevgep4518, %scevgep4525
  %bound14530 = icmp ult ptr %scevgep4524, %scevgep4520
  %found.conflict4531 = and i1 %bound04529, %bound14530
  %conflict.rdx4532 = or i1 %found.conflict4528, %found.conflict4531
  br i1 %conflict.rdx4532, label %vec.epilog.scalar.ph4557.preheader, label %vector.main.loop.iter.check4535

vector.main.loop.iter.check4535:                  ; preds = %vector.memcheck4516
  br i1 %min.iters.check4536, label %vec.epilog.ph4560, label %vector.ph4537

vector.ph4537:                                    ; preds = %vector.main.loop.iter.check4535
  %i.dbm = load double, ptr %i.dbi, align 8, !tbaa !153, !alias.scope !177
  %.scalar4671 = fneg double %i.dbm
  %i.dbn = insertelement <4 x double> poison, double %.scalar4671, i64 0
  %i.dbo = shufflevector <4 x double> %i.dbn, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body4541

vector.body4541:                                  ; preds = %vector.body4541, %vector.ph4537
  %index4542 = phi i64 [ 0, %vector.ph4537 ], [ %index.next4551, %vector.body4541 ] ; 2 uses
  %i.dbp = trunc i64 %index4542 to i32
  %.reass4801 = add i32 %i.dbp, %invariant.op4800 ; 2 uses
  %i.dbq = add i32 %i.ddm, %.reass4801
  %i.dbr = sext i32 %i.dbq to i64
  %i.dbs = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbr ; 4 uses
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 32
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbs, i64 64
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.dbs, i64 96
  %wide.load4543 = load <4 x double>, ptr %i.dbs, align 8, !tbaa !153, !alias.scope !178
  %wide.load4544 = load <4 x double>, ptr %i.dbt, align 8, !tbaa !153, !alias.scope !178
  %wide.load4545 = load <4 x double>, ptr %i.dbu, align 8, !tbaa !153, !alias.scope !178
  %wide.load4546 = load <4 x double>, ptr %i.dbv, align 8, !tbaa !153, !alias.scope !178
  %i.dbw = add i32 %i.cah, %.reass4801
  %i.dbx = sext i32 %i.dbw to i64
  %i.dby = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dbx ; 5 uses
  %i.dbz = getelementptr inbounds nuw i8, ptr %i.dby, i64 32 ; 2 uses
  %i.dca = getelementptr inbounds nuw i8, ptr %i.dby, i64 64 ; 2 uses
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.dby, i64 96 ; 2 uses
  %wide.load4547 = load <4 x double>, ptr %i.dby, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4548 = load <4 x double>, ptr %i.dbz, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4549 = load <4 x double>, ptr %i.dca, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %wide.load4550 = load <4 x double>, ptr %i.dcb, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %i.dcc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbo, <4 x double> %wide.load4543, <4 x double> %wide.load4547)
  %i.dcd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbo, <4 x double> %wide.load4544, <4 x double> %wide.load4548)
  %i.dce = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbo, <4 x double> %wide.load4545, <4 x double> %wide.load4549)
  %i.dcf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dbo, <4 x double> %wide.load4546, <4 x double> %wide.load4550)
  store <4 x double> %i.dcc, ptr %i.dby, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dcd, ptr %i.dbz, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dce, ptr %i.dca, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  store <4 x double> %i.dcf, ptr %i.dcb, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %index.next4551 = add nuw i64 %index4542, 16    ; 2 uses
  %i.dcg = icmp eq i64 %index.next4551, %n.vec4538
  br i1 %i.dcg, label %middle.block4552, label %vector.body4541, !llvm.loop !117

middle.block4552:                                 ; preds = %vector.body4541
  br i1 %cmp.n4553, label %._crit_edge3388.us.a, label %vec.epilog.iter.check4558

vec.epilog.iter.check4558:                        ; preds = %middle.block4552
  br i1 %min.epilog.iters.check4559, label %vec.epilog.scalar.ph4557.preheader, label %vec.epilog.ph4560, !prof !158

vec.epilog.ph4560:                                ; preds = %vector.main.loop.iter.check4535, %vec.epilog.iter.check4558
  %vec.epilog.resume.val4554 = phi i64 [ %n.vec4538, %vec.epilog.iter.check4558 ], [ 0, %vector.main.loop.iter.check4535 ]
  %i.dch = load double, ptr %i.dbi, align 8, !tbaa !153, !alias.scope !177
  %.scalar4672 = fneg double %i.dch
  %i.dci = insertelement <4 x double> poison, double %.scalar4672, i64 0
  %i.dcj = shufflevector <4 x double> %i.dci, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body4564

vec.epilog.vector.body4564:                       ; preds = %vec.epilog.vector.body4564, %vec.epilog.ph4560
  %index4565 = phi i64 [ %vec.epilog.resume.val4554, %vec.epilog.ph4560 ], [ %index.next4568, %vec.epilog.vector.body4564 ] ; 2 uses
  %i.dck = trunc i64 %index4565 to i32
  %.reass4803 = add i32 %i.dck, %invariant.op4802 ; 2 uses
  %i.dcl = add i32 %i.ddm, %.reass4803
  %i.dcm = sext i32 %i.dcl to i64
  %i.dcn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcm
  %wide.load4566 = load <4 x double>, ptr %i.dcn, align 8, !tbaa !153, !alias.scope !178
  %i.dco = add i32 %i.cah, %.reass4803
  %i.dcp = sext i32 %i.dco to i64
  %i.dcq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcp ; 2 uses
  %wide.load4567 = load <4 x double>, ptr %i.dcq, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %i.dcr = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dcj, <4 x double> %wide.load4566, <4 x double> %wide.load4567)
  store <4 x double> %i.dcr, ptr %i.dcq, align 8, !tbaa !153, !alias.scope !179, !noalias !180
  %index.next4568 = add nuw i64 %index4565, 4     ; 2 uses
  %i.dcs = icmp eq i64 %index.next4568, %n.vec4561
  br i1 %i.dcs, label %vec.epilog.middle.block4569, label %vec.epilog.vector.body4564, !llvm.loop !118

vec.epilog.middle.block4569:                      ; preds = %vec.epilog.vector.body4564
  br i1 %cmp.n4570, label %._crit_edge3388.us.a, label %vec.epilog.scalar.ph4557.preheader

vec.epilog.scalar.ph4557.preheader:               ; preds = %vector.memcheck4516, %vector.scevcheck4513, %iter.check4556, %vec.epilog.iter.check4558, %vec.epilog.middle.block4569
  %indvars.iv3739.ph = phi i64 [ %i.ddo, %iter.check4556 ], [ %i.ddo, %vector.scevcheck4513 ], [ %i.ddo, %vector.memcheck4516 ], [ %i.deu, %vec.epilog.iter.check4558 ], [ %i.dev, %vec.epilog.middle.block4569 ] ; 4 uses
  %i.dct = sub i64 %wide.trip.count3742, %indvars.iv3739.ph
  %xtraiter4735 = and i64 %i.dct, 3               ; 2 uses
  %lcmp.mod4736.not = icmp eq i64 %xtraiter4735, 0
  br i1 %lcmp.mod4736.not, label %vec.epilog.scalar.ph4557.prol.loopexit, label %vec.epilog.scalar.ph4557.prol

vec.epilog.scalar.ph4557.prol:                    ; preds = %vec.epilog.scalar.ph4557.preheader, %vec.epilog.scalar.ph4557.prol
  %indvars.iv3739.prol = phi i64 [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4557.prol ], [ %indvars.iv3739.ph, %vec.epilog.scalar.ph4557.preheader ]
  %prol.iter4737 = phi i64 [ %prol.iter4737.next, %vec.epilog.scalar.ph4557.prol ], [ 0, %vec.epilog.scalar.ph4557.preheader ]
  %indvars.iv.next3740.prol = add nsw i64 %indvars.iv3739.prol, 1 ; 3 uses
  %i.dcu = load double, ptr %i.dbi, align 8, !tbaa !153
  %i.dcv = trunc nsw i64 %indvars.iv.next3740.prol to i32 ; 2 uses
  %i.dcw = add i32 %i.ddm, %i.dcv
  %i.dcx = sext i32 %i.dcw to i64
  %i.dcy = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dcx
  %i.dcz = load double, ptr %i.dcy, align 8, !tbaa !153
  %i.dda = add i32 %i.cah, %i.dcv
  %i.ddb = sext i32 %i.dda to i64
  %i.ddc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ddb ; 2 uses
  %i.ddd = load double, ptr %i.ddc, align 8, !tbaa !153
  %i.dde = fneg double %i.dcu
  %i.ddf = call double @llvm.fmuladd.f64(double %i.dde, double %i.dcz, double %i.ddd)
  store double %i.ddf, ptr %i.ddc, align 8, !tbaa !153
  %prol.iter4737.next = add i64 %prol.iter4737, 1 ; 2 uses
  %prol.iter4737.cmp.not = icmp eq i64 %prol.iter4737.next, %xtraiter4735
  br i1 %prol.iter4737.cmp.not, label %vec.epilog.scalar.ph4557.prol.loopexit, label %vec.epilog.scalar.ph4557.prol, !llvm.loop !119

vec.epilog.scalar.ph4557.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4557.prol, %vec.epilog.scalar.ph4557.preheader
  %indvars.iv3739.unr = phi i64 [ %indvars.iv3739.ph, %vec.epilog.scalar.ph4557.preheader ], [ %indvars.iv.next3740.prol, %vec.epilog.scalar.ph4557.prol ]
  %i.ddg = sub i64 %indvars.iv3739.ph, %wide.trip.count3742
  %i.ddh = icmp ugt i64 %i.ddg, -4
  br i1 %i.ddh, label %._crit_edge3388.us.a, label %vec.epilog.scalar.ph4557

.lr.ph3396.us:                                    ; preds = %._crit_edge3378.us
  %i.ddi = mul i32 %.32608.us, %i.n               ; 5 uses
  %i.ddj = sext i32 %i.ddi to i64                 ; 2 uses
  %i.ddk = getelementptr [8 x i8], ptr %i.p, i64 %i.ddj
  %i.ddl = getelementptr i8, ptr %i.ddk, i64 8    ; 3 uses
  store i32 %i.bya, ptr %i.a, align 4, !tbaa !151
  store i32 %i.byb, ptr %i.b, align 4, !tbaa !151
  %.not2728.not3384.us = icmp slt i32 %i.byy, %i.byc
  %reass.sub3513 = sub i32 %i.bwp, %.32608.us
  %invariant.op3398.us = add i32 %reass.sub3513, 1
  %reass.sub3514 = mul i32 %.32608.us, %.32608.us3515
  %i.ddm = add i32 %reass.sub3514, 1              ; 7 uses
  %i.ddn = sext i32 %i.byz to i64                 ; 4 uses
  %i.ddo = sext i32 %i.byy to i64                 ; 14 uses
  %wide.trip.count3742 = sext i32 %i.byc to i64   ; 7 uses
  %i.ddp = xor i64 %i.ddo, -1
  %i.ddq = add nsw i64 %i.ddp, %wide.trip.count3742 ; 2 uses
  %i.ddr = add nuw i32 %24, 1
  %i.dds = mul i32 %i.n, %i.byz                   ; 2 uses
  %i.ddt = add i32 %i.ddr, %i.dds                 ; 2 uses
  %i.ddu = add nuw i32 %24, 2
  %i.ddv = mul i32 %i.n, %.32608.us
  %i.ddw = add i32 %i.ddu, %i.ddv                 ; 2 uses
  %i.ddx = mul nsw i64 %i.ddo, -8
  %scevgep4519 = getelementptr i8, ptr %5, i64 %i.ddx
  %i.ddy = add nsw i64 %i.o, %wide.trip.count3742
  %i.ddz = add i32 %i.bwp, 2
  %i.dea = add nuw i32 %24, 2
  %i.deb = mul i32 %i.n, %.32608.us
  %i.dec = add i32 %i.dea, %i.deb
  %i.ded = sext i32 %i.dec to i64                 ; 2 uses
  %i.dee = shl nsw i64 %i.ded, 3
  %scevgep4524 = getelementptr i8, ptr %scevgep4523, i64 %i.dee
  %i.def = add nsw i64 %i.o, %wide.trip.count3742
  %i.deg = add nsw i64 %i.def, %i.ded
  %i.deh = sub nsw i64 %i.deg, %i.ddo
  %i.dei = shl nsw i64 %i.deh, 3
  %scevgep4525 = getelementptr i8, ptr %5, i64 %i.dei
  %i.dej = sub nsw i64 %wide.trip.count3742, %i.ddo ; 7 uses
  %i.dek = add i32 %i.dds, 1                      ; 2 uses
  %i.del = add i32 %i.bwp, 2
  %i.dem = add i32 %i.ddi, 2
  %i.den = shl nsw i64 %i.ddj, 3
  %scevgep4595 = getelementptr i8, ptr %scevgep4594, i64 %i.den
  %invariant.op4804 = sub i32 1, %.32608.us
  %invariant.op4797 = sub i32 1, %.32608.us
  %invariant.op4799 = sub i32 1, %.32608.us
  %min.iters.check4534 = icmp ult i64 %i.dej, 4
  %i.deo = trunc i64 %i.ddq to i32                ; 2 uses
  %i.dep = add i32 %i.ddw, %i.deo
  %i.deq = icmp slt i32 %i.dep, %i.ddw
  %i.der = icmp ugt i64 %i.ddq, 4294967295
  %i.des = or i1 %i.deq, %i.der
  %min.iters.check4536 = icmp ult i64 %i.dej, 16
  %i.det = and i64 %i.dej, 12
  %n.vec4538 = and i64 %i.dej, -16                ; 4 uses
  %i.deu = add nsw i64 %n.vec4538, %i.ddo
  %invariant.op4800 = add i32 %i.byy, 1
  %cmp.n4553 = icmp eq i64 %i.dej, %n.vec4538
  %min.epilog.iters.check4559 = icmp eq i64 %i.det, 0
  %n.vec4561 = and i64 %i.dej, -4                 ; 3 uses
  %i.dev = add nsw i64 %n.vec4561, %i.ddo
  %invariant.op4802 = add i32 %i.byy, 1
  %cmp.n4570 = icmp eq i64 %i.dej, %n.vec4561
  br label %bb.do

._crit_edge3397.us:                               ; preds = %._crit_edge3388.us.a
  store i32 %i.byc, ptr %i.c, align 4, !tbaa !151
  br label %bb.dp

.lr.ph3402.us:                                    ; preds = %bb.dq
  %indvars3751 = trunc i64 %indvars.iv3748 to i32 ; 2 uses
  %i.dew = mul nsw i64 %indvars.iv3748, %i.bb
  %i.dex = sub i32 %i.byz, %indvars3751
  %i.dey = sext i32 %i.dex to i64
  %i.dez = getelementptr [8 x i8], ptr %i.p, i64 %i.dew
  %i.dfa = getelementptr [8 x i8], ptr %i.dez, i64 %i.dey
  %reass.sub3519 = mul i32 %i.bwh, %indvars3751
  %i.dfb = add i32 %reass.sub3519, 1
  %i.dfc = zext nneg i32 %i.cfa to i64
  br label %bb.dr

.lr.ph3409.us:                                    ; preds = %bb.dp
  store i32 %i.byy, ptr %i.b, align 4, !tbaa !151
  %reass.sub3518 = sub i32 %i.bwp, %.32608.us
  %i.dfd = add i32 %reass.sub3518, 1
  %i.dfe = zext nneg i32 %.32608.us to i64
  %i.dff = sext i32 %.42546.us to i64
  br label %bb.dq

._crit_edge3410.us:                               ; preds = %._crit_edge3403.us
  %i.dfg = add i32 %.32608.us, %.pre3824.a
  %smin3750 = call i32 @llvm.smin.i32(i32 %i.byb, i32 %i.byy)
  store i32 %i.dfg, ptr %i.a, align 4, !tbaa !151
  store i32 %smin3750, ptr %i.c, align 4, !tbaa !151
  br label %bb.ds

.lr.ph3416.us:                                    ; preds = %bb.ec
  %i.dfh = load i32, ptr %2, align 4, !tbaa !151
  %i.dfi = add i32 %i.cix, %smax3758
  %i.dfj = sub i32 1, %i.dfi
  %i.dfk = mul i32 %i.cio, %i.dfj
  %i.dfl = add i32 %indvars.iv3754, %i.dfk
  %i.dfm = sext i32 %i.dfl to i64
  %i.dfn = sext i32 %i.cio to i64                 ; 2 uses
  %i.dfo = sext i32 %i.dfh to i64
  %i.dfp = sext i32 %.3.us to i64                 ; 2 uses
  %invariant.gep4159.a = getelementptr [8 x i8], ptr %i.p, i64 %i.dfn
  %invariant.gep4161 = getelementptr [8 x i8], ptr %i.w, i64 %i.dfo
  br label %bb.ed

.lr.ph3421.us:                                    ; preds = %bb.eg
  %i.dfq = add nsw i32 %i.cja, -1
  %i.dfr = mul nsw i32 %i.dfq, %i.n               ; 2 uses
  %i.dfs = add i32 %i.dfr, 2
  %i.dft = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.pre3966
  %i.dfu = sext i32 %.pre3958.a to i64            ; 2 uses
  %invariant.gep4163 = getelementptr [8 x i8], ptr %i.p, i64 %i.dfu
  br label %bb.eh

.lr.ph3427.us:                                    ; preds = %bb.ei
  %i.dfv = add i32 %i.ciu, -1
  %.pre3836 = load i32, ptr %i.j, align 4, !tbaa !151
  br label %bb.ej

.lr.ph3437.us.a:                                  ; preds = %bb.dw
  %i.dfw = mul nsw i32 %.32608.us, %i.q
  %i.dfx = add i32 %i.dfw, 1
  %i.dfy = add i32 %.32608.us, %i.ay
  %.reass4174.reass = add i32 %.42551.us, %invariant.op4805
  %i.dfz = add nuw i32 %.32608.us, 1
  %i.dga = add nsw i32 %.32608.us, -1
  %i.dgb = add nuw i32 %.32608.us, 2
  %.reass4176.reass = add i32 %.42551.us, %invariant.op4806
  %i.dgc = zext nneg i32 %.32608.us to i64
  br label %bb.dx

.lr.ph3446.us:                                    ; preds = %._crit_edge3442.us
  %i.dgd = load i32, ptr %4, align 4, !tbaa !151
  %i.dge = sub i32 %i.ay, %i.dgd                  ; 2 uses
  %i.dgf = load i32, ptr %2, align 4, !tbaa !151
  %invariant.op3451.us = add i32 %i.dge, %i.dgf
  %i.dgg = sext i32 %i.cpz to i64
  %i.dgh = sext i32 %i.cpt to i64
  %i.dgi = sext i32 %i.coi to i64                 ; 2 uses
  br label %bb.ew

.lr.ph3456.us:                                    ; preds = %bb.ew
  store i32 %i.coi, ptr %i.c, align 4, !tbaa !151
  store i32 %i.cpt, ptr %i.d, align 4, !tbaa !151
  %i.dgj = load i32, ptr %4, align 4, !tbaa !151
  %invariant.op3458.us = sub i32 %i.ay, %i.dgj    ; 2 uses
  %i.dgk = load i32, ptr %2, align 4, !tbaa !151
  %invariant.op3462.us = add i32 %invariant.op3458.us, %i.dgk
  %i.dgl = sext i32 %i.cpz to i64
  %i.dgm = sext i32 %i.cpt to i64                 ; 2 uses
  %i.dgn = sext i32 %i.coi to i64                 ; 2 uses
  %invariant.gep4165 = getelementptr [8 x i8], ptr %i.p, i64 %i.dgm
  br label %bb.ex

.lr.ph3466.us:                                    ; preds = %bb.ep
  %i.dgo = sub i32 %.42551.us, %i.ay
  %i.dgp = add nuw i32 %.32608.us, 1
  %i.dgq = add i32 %.32608.us, %i.ay
  br label %bb.eq

.lr.ph3471.us:                                    ; preds = %bb.fc
  %i.dgr = add nsw i32 %i.csj, -1
  %i.dgs = mul nsw i32 %i.dgr, %i.n               ; 2 uses
  %i.dgt = add i32 %i.dgs, 2
  %i.dgu = sext i32 %i.csl to i64                 ; 2 uses
  %invariant.gep4167 = getelementptr [8 x i8], ptr %i.p, i64 %i.dgu
  br label %bb.fd

.lr.ph3477.us:                                    ; preds = %bb.fe
  %i.dgv = add i32 %i.csc, -1
  %.pre3847 = load i32, ptr %i.j, align 4, !tbaa !151
  br label %bb.ff

.lr.ph3485.us.a:                                  ; preds = %._crit_edge3467.us
  %i.dgw = sub i32 %.42551.us, %i.ay
  %i.dgx = add nuw i32 %.32608.us, 1
  br label %bb.fb

.lr.ph3489.us:                                    ; preds = %bb.fj
  %i.dgy = add i32 %i.cwx, -1
  br label %bb.fk

.lr.ph3494.us:                                    ; preds = %._crit_edge3486.us.a
  %.reass4178.reass = add i32 %.42551.us, %invariant.op4807
  %i.dgz = add nuw i32 %.32608.us, 1
  %.pre3913 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.fj

.lr.ph3499.us:                                    ; preds = %bb.fn
  %i.dha = load i32, ptr %2, align 4, !tbaa !151
  %i.dhb = sext i32 %i.dha to i64                 ; 9 uses
  %i.dhc = sext i32 %.pre3824.pre.pre to i64      ; 5 uses
  %i.dhd = sub i32 %i.cyg, %i.cyh
  %wide.trip.count3782 = zext i32 %i.dhd to i64   ; 4 uses
  %invariant.gep4169 = getelementptr [8 x i8], ptr %i.w, i64 %i.dhc ; 6 uses
  %invariant.gep4171 = getelementptr [8 x i8], ptr %i.w, i64 %i.dhc ; 6 uses
  %i.dhe = add nsw i64 %wide.trip.count3782, -2   ; 3 uses
  %min.iters.check4500 = icmp ult i64 %i.dhe, 16
  br i1 %min.iters.check4500, label %scalar.ph4499.preheader, label %vector.memcheck4491

vector.memcheck4491:                              ; preds = %.lr.ph3499.us
  %i.dhf = shl nsw i64 %i.dhb, 3
  %diff.check4492 = icmp ugt i64 %i.dhf, -64
  %i.dhg = shl nsw i64 %i.dhc, 3
  %diff.check4493 = icmp ugt i64 %i.dhg, -64
  %conflict.rdx4494 = or i1 %diff.check4492, %diff.check4493
  %i.dhh = sub nsw i64 %i.dhc, %i.dhb
  %i.dhi = shl nsw i64 %i.dhh, 3
  %i.dhj = add nsw i64 %i.dhi, -1
  %diff.check4495 = icmp ult i64 %i.dhj, 63
  %conflict.rdx4496 = or i1 %conflict.rdx4494, %diff.check4495
  %i.dhk = add nsw i64 %i.dhb, %i.dhc
  %i.dhl = shl nsw i64 %i.dhk, 3
  %diff.check4497 = icmp ugt i64 %i.dhl, -64
  %conflict.rdx4498 = or i1 %conflict.rdx4496, %diff.check4497
  br i1 %conflict.rdx4498, label %scalar.ph4499.preheader, label %vector.ph4501

vector.ph4501:                                    ; preds = %vector.memcheck4491
  %n.vec4502 = and i64 %i.dhe, -8                 ; 3 uses
  %i.dhm = or disjoint i64 %n.vec4502, 2
  br label %vector.body4503

vector.body4503:                                  ; preds = %vector.body4503, %vector.ph4501
  %index4504 = phi i64 [ 0, %vector.ph4501 ], [ %index.next4509, %vector.body4503 ] ; 2 uses
  %i.dhn = or disjoint i64 %index4504, 2          ; 3 uses
  %i.dho = add nsw i64 %i.dhn, %i.dhb             ; 2 uses
  %i.dhp = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.dho ; 2 uses
  %i.dhq = getelementptr i8, ptr %i.dhp, i64 32
  %wide.load4505 = load <4 x double>, ptr %i.dhp, align 8, !tbaa !153
  %wide.load4506 = load <4 x double>, ptr %i.dhq, align 8, !tbaa !153
  %i.dhr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dho ; 2 uses
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhr, i64 32
  store <4 x double> %wide.load4505, ptr %i.dhr, align 8, !tbaa !153
  store <4 x double> %wide.load4506, ptr %i.dhs, align 8, !tbaa !153
  %i.dht = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %i.dhn ; 2 uses
  %i.dhu = getelementptr i8, ptr %i.dht, i64 32
  %wide.load4507 = load <4 x double>, ptr %i.dht, align 8, !tbaa !153
  %wide.load4508 = load <4 x double>, ptr %i.dhu, align 8, !tbaa !153
  %i.dhv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.dhn ; 2 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhv, i64 32
  store <4 x double> %wide.load4507, ptr %i.dhv, align 8, !tbaa !153
  store <4 x double> %wide.load4508, ptr %i.dhw, align 8, !tbaa !153
  %index.next4509 = add nuw i64 %index4504, 8     ; 2 uses
  %i.dhx = icmp eq i64 %index.next4509, %n.vec4502
  br i1 %i.dhx, label %middle.block4510, label %vector.body4503, !llvm.loop !120

middle.block4510:                                 ; preds = %vector.body4503
  %cmp.n4511 = icmp eq i64 %i.dhe, %n.vec4502
  br i1 %cmp.n4511, label %.outer.us.backedge, label %scalar.ph4499.preheader

.outer.us.backedge:                               ; preds = %scalar.ph4499.prol.loopexit, %scalar.ph4499, %middle.block4510, %._crit_edge3495.us.thread, %bb.fn, %._crit_edge3495.us
  %.pre3824.be = phi i32 [ %.pre3824.pre.pre4102, %._crit_edge3495.us.thread ], [ %.pre3824.pre.pre, %._crit_edge3495.us ], [ %.pre3824.pre.pre, %bb.fn ], [ %.pre3824.pre.pre, %middle.block4510 ], [ %.pre3824.pre.pre, %scalar.ph4499 ], [ %.pre3824.pre.pre, %scalar.ph4499.prol.loopexit ]
  %.be = phi i32 [ %.ph4101, %._crit_edge3495.us.thread ], [ %.pre3853, %._crit_edge3495.us ], [ %.pre3853, %bb.fn ], [ %.pre3853, %middle.block4510 ], [ %.pre3853, %scalar.ph4499 ], [ %.pre3853, %scalar.ph4499.prol.loopexit ]
  br label %.outer.us

scalar.ph4499.preheader:                          ; preds = %vector.memcheck4491, %.lr.ph3499.us, %middle.block4510
  %indvars.iv3779.ph = phi i64 [ 2, %vector.memcheck4491 ], [ 2, %.lr.ph3499.us ], [ %i.dhm, %middle.block4510 ] ; 4 uses
  %i.dhy = sub nsw i64 %wide.trip.count3782, %indvars.iv3779.ph
  %xtraiter4738 = and i64 %i.dhy, 3               ; 2 uses
  %lcmp.mod4739.not = icmp eq i64 %xtraiter4738, 0
  br i1 %lcmp.mod4739.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol

scalar.ph4499.prol:                               ; preds = %scalar.ph4499.preheader, %scalar.ph4499.prol
  %indvars.iv3779.prol = phi i64 [ %indvars.iv.next3780.prol, %scalar.ph4499.prol ], [ %indvars.iv3779.ph, %scalar.ph4499.preheader ] ; 4 uses
  %prol.iter4740 = phi i64 [ %prol.iter4740.next, %scalar.ph4499.prol ], [ 0, %scalar.ph4499.preheader ]
  %i.dhz = add nsw i64 %indvars.iv3779.prol, %i.dhb ; 2 uses
  %gep4170.prol = getelementptr [8 x i8], ptr %invariant.gep4169, i64 %i.dhz
  %i.dia = load double, ptr %gep4170.prol, align 8, !tbaa !153
  %i.dib = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dhz
  store double %i.dia, ptr %i.dib, align 8, !tbaa !153
  %gep4172.prol = getelementptr [8 x i8], ptr %invariant.gep4171, i64 %indvars.iv3779.prol
  %i.dic = load double, ptr %gep4172.prol, align 8, !tbaa !153
  %i.did = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3779.prol
  store double %i.dic, ptr %i.did, align 8, !tbaa !153
  %indvars.iv.next3780.prol = add nuw nsw i64 %indvars.iv3779.prol, 1 ; 2 uses
  %prol.iter4740.next = add i64 %prol.iter4740, 1 ; 2 uses
  %prol.iter4740.cmp.not = icmp eq i64 %prol.iter4740.next, %xtraiter4738
  br i1 %prol.iter4740.cmp.not, label %scalar.ph4499.prol.loopexit, label %scalar.ph4499.prol, !llvm.loop !121

scalar.ph4499.prol.loopexit:                      ; preds = %scalar.ph4499.prol, %scalar.ph4499.preheader
  %indvars.iv3779.unr = phi i64 [ %indvars.iv3779.ph, %scalar.ph4499.preheader ], [ %indvars.iv.next3780.prol, %scalar.ph4499.prol ]
  %i.die = sub nsw i64 %indvars.iv3779.ph, %wide.trip.count3782
  %i.dif = icmp ugt i64 %i.die, -4
  br i1 %i.dif, label %.outer.us.backedge, label %scalar.ph4499

.outer:                                           ; preds = %.outer.backedge, %.outer.preheader
  %.pre3793.a = phi i32 [ %.pre3791.a, %.outer.preheader ], [ %.pre3793.be, %.outer.backedge ] ; 6 uses
  %i.dig = phi i32 [ %i.bq, %.outer.preheader ], [ %.be4675, %.outer.backedge ] ; 3 uses
  %.22607.ph = phi i32 [ 0, %.outer.preheader ], [ %.32608, %.outer.backedge ] ; 4 uses
  %.32550.ph = phi i32 [ %.22549, %.outer.preheader ], [ %.42551, %.outer.backedge ]
  %.32545.ph = phi i32 [ %.22544, %.outer.preheader ], [ %.42546, %.outer.backedge ]
  %.32541.ph = phi i32 [ %.22540, %.outer.preheader ], [ %.4, %.outer.backedge ]
  %.12533.ph = phi i32 [ 1, %.outer.preheader ], [ %.125332894, %.outer.backedge ]
  %.not26983209 = icmp eq i32 %.12533.ph, 0
  br i1 %.not26983209, label %bb.fo, label %.lr.ph3212

.lr.ph3212:                                       ; preds = %.outer
  %i.dih = add nuw nsw i32 %.22607.ph, 1          ; 4 uses
  %i.dii = sub nsw i32 %i.ay, %i.dih
  %i.dij = call i32 @llvm.smin.i32(i32 %i.dig, i32 %i.dii) ; 2 uses
  store i32 %i.dij, ptr %i.l, align 4, !tbaa !151
  %i.dik = sub nsw i32 %i.dih, %.pre3793.a        ; 3 uses
  %i.dil = call i32 @llvm.smax.i32(i32 %i.dik, i32 1) ; 2 uses
  %i.dim = add nsw i32 %i.dij, %i.dih
  %i.din = load i32, ptr %i.j, align 4, !tbaa !151
  %i.dio = sub i32 %i.dim, %i.din                 ; 2 uses
  %.not2700 = icmp slt i32 %.22607.ph, %i.ay
  br i1 %.not2700, label %.lr.ph3212.split.us, label %.lr.ph3212.split

.lr.ph3212.split.us:                              ; preds = %.lr.ph3212
  store i32 %i.dik, ptr %i.d, align 4, !tbaa !151
  %25 = add nuw nsw i32 %.22607.ph, 2
  br label %bb.fp

.lr.ph3212.split:                                 ; preds = %.lr.ph3212
  %i.dip = icmp eq i32 %.pre3793.a, 0
  br i1 %i.dip, label %.loopexit2877, label %._crit_edge3213

._crit_edge3213:                                  ; preds = %.lr.ph3212.split
  store i32 %i.dik, ptr %i.d, align 4, !tbaa !151
  br label %bb.fo

bb.fo:                                            ; preds = %._crit_edge3213, %.outer
  %.32550.lcssa = phi i32 [ %i.ba, %._crit_edge3213 ], [ %.32550.ph, %.outer ]
  %.32545.lcssa = phi i32 [ %i.dil, %._crit_edge3213 ], [ %.32545.ph, %.outer ]
  %.32541.lcssa = phi i32 [ %i.dio, %._crit_edge3213 ], [ %.32541.ph, %.outer ]
  %i.diq = sub nsw i32 %.22607.ph, %.pre3793.a    ; 2 uses
  %i.dir = icmp slt i32 %i.diq, 2
  br i1 %i.dir, label %.loopexit2877, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph3212.split.us, %bb.fo
  %.125332894 = phi i32 [ 0, %bb.fo ], [ 1, %.lr.ph3212.split.us ]
  %.not26982891 = phi i1 [ true, %bb.fo ], [ false, %.lr.ph3212.split.us ] ; 6 uses
  %.32608 = phi i32 [ %i.diq, %bb.fo ], [ %i.dih, %.lr.ph3212.split.us ] ; 50 uses
  %.42551 = phi i32 [ %.32550.lcssa, %bb.fo ], [ %25, %.lr.ph3212.split.us ] ; 6 uses
  %.42546 = phi i32 [ %.32545.lcssa, %bb.fo ], [ %i.dil, %.lr.ph3212.split.us ] ; 10 uses
  %.4 = phi i32 [ %.32541.lcssa, %bb.fo ], [ %i.dio, %.lr.ph3212.split.us ] ; 2 uses
  %i.dis = load i32, ptr %i.l, align 4, !tbaa !151 ; 6 uses
  %i.dit = sub nsw i32 %i.ay, %i.dis
  %i.diu = icmp slt i32 %.32608, %i.dit
  br i1 %i.diu, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.div = load i32, ptr %2, align 4, !tbaa !151
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fp, %bb.fq
  %storemerge = phi i32 [ %i.div, %bb.fq ], [ %i.ay, %bb.fp ]
  store i32 %storemerge, ptr %i.i, align 4, !tbaa !151
  br i1 %.not26982891, label %bb.gb, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.diw = mul nsw i32 %.32608, %i.q
  %i.dix = add nsw i32 %i.diw, %i.ac
  %i.diy = sext i32 %i.dix to i64
  %i.diz = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.diy
  %i.dja = load double, ptr %i.diz, align 8, !tbaa !153 ; 13 uses
  store i32 %.32608, ptr %i.c, align 4, !tbaa !151
  %.not27293223 = icmp sgt i32 %.42546, %.32608   ; 2 uses
  br i1 %.not27293223, label %._crit_edge3227, label %iter.check4476

iter.check4476:                                   ; preds = %bb.fs
  %i.djb = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  %i.djc = mul i32 %.32608, %.32608.us3515        ; 2 uses
  %invariant.op3228 = add i32 %i.djc, %i.djb      ; 7 uses
  %i.djd = zext i32 %.42546 to i64                ; 4 uses
  %i.dje = add nuw i32 %.32608, 1
  %i.djf = sub i32 %.32608, %.42546               ; 3 uses
  %i.djg = zext i32 %i.djf to i64
  %i.djh = add nuw nsw i64 %i.djg, 1              ; 5 uses
  %min.iters.check4458 = icmp ult i32 %i.djf, 3
  br i1 %min.iters.check4458, label %vec.epilog.scalar.ph4477.preheader, label %vector.scevcheck4456

vector.scevcheck4456:                             ; preds = %iter.check4476
  %i.dji = sub i32 %.32608, %.42546
  %i.djj = add i32 %.42546, %i.djb
  %i.djk = add i32 %i.djj, %i.djc                 ; 2 uses
  %i.djl = add i32 %i.djk, %i.dji
  %i.djm = icmp slt i32 %i.djl, %i.djk
  br i1 %i.djm, label %vec.epilog.scalar.ph4477.preheader, label %vector.main.loop.iter.check4459

vector.main.loop.iter.check4459:                  ; preds = %vector.scevcheck4456
  %min.iters.check4460 = icmp ult i32 %i.djf, 15
  br i1 %min.iters.check4460, label %vec.epilog.ph4480, label %vector.ph4461

vector.ph4461:                                    ; preds = %vector.main.loop.iter.check4459
  %i.djn = and i64 %i.djh, 12
  %n.vec4462 = and i64 %i.djh, 8589934576         ; 4 uses
  %i.djo = add nuw nsw i64 %n.vec4462, %i.djd
  %broadcast.splatinsert4463 = insertelement <4 x double> poison, double %i.dja, i64 0
  %broadcast.splat4464 = shufflevector <4 x double> %broadcast.splatinsert4463, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op4775 = add i32 %.42546, %invariant.op3228
  br label %vector.body4465

vector.body4465:                                  ; preds = %vector.body4465, %vector.ph4461
  %index4466 = phi i64 [ 0, %vector.ph4461 ], [ %index.next4471, %vector.body4465 ] ; 2 uses
  %i.djp = trunc i64 %index4466 to i32
  %.reass4776 = add i32 %i.djp, %invariant.op4775
  %i.djq = sext i32 %.reass4776 to i64
  %i.djr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.djq ; 5 uses
  %i.djs = getelementptr inbounds nuw i8, ptr %i.djr, i64 32 ; 2 uses
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djr, i64 64 ; 2 uses
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djr, i64 96 ; 2 uses
  %wide.load4467 = load <4 x double>, ptr %i.djr, align 8, !tbaa !153
  %wide.load4468 = load <4 x double>, ptr %i.djs, align 8, !tbaa !153
  %wide.load4469 = load <4 x double>, ptr %i.djt, align 8, !tbaa !153
  %wide.load4470 = load <4 x double>, ptr %i.dju, align 8, !tbaa !153
  %i.djv = fdiv <4 x double> %wide.load4467, %broadcast.splat4464
  %i.djw = fdiv <4 x double> %wide.load4468, %broadcast.splat4464
  %i.djx = fdiv <4 x double> %wide.load4469, %broadcast.splat4464
  %i.djy = fdiv <4 x double> %wide.load4470, %broadcast.splat4464
  store <4 x double> %i.djv, ptr %i.djr, align 8, !tbaa !153
  store <4 x double> %i.djw, ptr %i.djs, align 8, !tbaa !153
  store <4 x double> %i.djx, ptr %i.djt, align 8, !tbaa !153
  store <4 x double> %i.djy, ptr %i.dju, align 8, !tbaa !153
  %index.next4471 = add nuw i64 %index4466, 16    ; 2 uses
  %i.djz = icmp eq i64 %index.next4471, %n.vec4462
  br i1 %i.djz, label %middle.block4472, label %vector.body4465, !llvm.loop !122

middle.block4472:                                 ; preds = %vector.body4465
  %cmp.n4473 = icmp eq i64 %i.djh, %n.vec4462
  br i1 %cmp.n4473, label %._crit_edge3227, label %vec.epilog.iter.check4478

vec.epilog.iter.check4478:                        ; preds = %middle.block4472
  %min.epilog.iters.check4479 = icmp eq i64 %i.djn, 0
  br i1 %min.epilog.iters.check4479, label %vec.epilog.scalar.ph4477.preheader, label %vec.epilog.ph4480, !prof !158

vec.epilog.ph4480:                                ; preds = %vector.main.loop.iter.check4459, %vec.epilog.iter.check4478
  %vec.epilog.resume.val4474 = phi i64 [ %n.vec4462, %vec.epilog.iter.check4478 ], [ 0, %vector.main.loop.iter.check4459 ]
  %n.vec4481 = and i64 %i.djh, 8589934588         ; 3 uses
  %i.dka = add nuw nsw i64 %n.vec4481, %i.djd
  %broadcast.splatinsert4482 = insertelement <4 x double> poison, double %i.dja, i64 0
  %broadcast.splat4483 = shufflevector <4 x double> %broadcast.splatinsert4482, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op4777 = add i32 %.42546, %invariant.op3228
  br label %vec.epilog.vector.body4484

vec.epilog.vector.body4484:                       ; preds = %vec.epilog.vector.body4484, %vec.epilog.ph4480
  %index4485 = phi i64 [ %vec.epilog.resume.val4474, %vec.epilog.ph4480 ], [ %index.next4487, %vec.epilog.vector.body4484 ] ; 2 uses
  %i.dkb = trunc i64 %index4485 to i32
  %.reass4778 = add i32 %i.dkb, %invariant.op4777
  %i.dkc = sext i32 %.reass4778 to i64
  %i.dkd = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkc ; 2 uses
  %wide.load4486 = load <4 x double>, ptr %i.dkd, align 8, !tbaa !153
  %i.dke = fdiv <4 x double> %wide.load4486, %broadcast.splat4483
  store <4 x double> %i.dke, ptr %i.dkd, align 8, !tbaa !153
  %index.next4487 = add nuw i64 %index4485, 4     ; 2 uses
  %i.dkf = icmp eq i64 %index.next4487, %n.vec4481
  br i1 %i.dkf, label %vec.epilog.middle.block4488, label %vec.epilog.vector.body4484, !llvm.loop !123

vec.epilog.middle.block4488:                      ; preds = %vec.epilog.vector.body4484
  %cmp.n4489 = icmp eq i64 %i.djh, %n.vec4481
  br i1 %cmp.n4489, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader

vec.epilog.scalar.ph4477.preheader:               ; preds = %vector.scevcheck4456, %iter.check4476, %vec.epilog.iter.check4478, %vec.epilog.middle.block4488
  %indvars.iv3661.ph = phi i64 [ %i.djd, %iter.check4476 ], [ %i.djd, %vector.scevcheck4456 ], [ %i.djo, %vec.epilog.iter.check4478 ], [ %i.dka, %vec.epilog.middle.block4488 ] ; 3 uses
  %i.dkg = add i32 %.32608, 1
  %i.dkh = trunc i64 %indvars.iv3661.ph to i32    ; 2 uses
  %i.dki = sub i32 %i.dkg, %i.dkh
  %i.dkj = sub i32 %.32608, %i.dkh
  %xtraiter4704.a = and i32 %i.dki, 3             ; 2 uses
  %lcmp.mod4705.not.a = icmp eq i32 %xtraiter4704.a, 0
  br i1 %lcmp.mod4705.not.a, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol

vec.epilog.scalar.ph4477.prol:                    ; preds = %vec.epilog.scalar.ph4477.preheader, %vec.epilog.scalar.ph4477.prol
  %indvars.iv3661.prol = phi i64 [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ], [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ] ; 2 uses
  %prol.iter4706 = phi i32 [ %prol.iter4706.next, %vec.epilog.scalar.ph4477.prol ], [ 0, %vec.epilog.scalar.ph4477.preheader ]
  %i.dkk = trunc i64 %indvars.iv3661.prol to i32
  %.reass3229.prol = add i32 %invariant.op3228, %i.dkk
  %i.dkl = sext i32 %.reass3229.prol to i64
  %i.dkm = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkl ; 2 uses
  %i.dkn = load double, ptr %i.dkm, align 8, !tbaa !153
  %i.dko = fdiv double %i.dkn, %i.dja
  store double %i.dko, ptr %i.dkm, align 8, !tbaa !153
  %indvars.iv.next3662.prol = add i64 %indvars.iv3661.prol, 1 ; 2 uses
  %prol.iter4706.next = add i32 %prol.iter4706, 1 ; 2 uses
  %prol.iter4706.cmp.not = icmp eq i32 %prol.iter4706.next, %xtraiter4704.a
  br i1 %prol.iter4706.cmp.not, label %vec.epilog.scalar.ph4477.prol.loopexit, label %vec.epilog.scalar.ph4477.prol, !llvm.loop !124

vec.epilog.scalar.ph4477.prol.loopexit:           ; preds = %vec.epilog.scalar.ph4477.prol, %vec.epilog.scalar.ph4477.preheader
  %indvars.iv3661.unr = phi i64 [ %indvars.iv3661.ph, %vec.epilog.scalar.ph4477.preheader ], [ %indvars.iv.next3662.prol, %vec.epilog.scalar.ph4477.prol ]
  %i.dkp = icmp ult i32 %i.dkj, 3
  br i1 %i.dkp, label %._crit_edge3227, label %vec.epilog.scalar.ph4477.preheader.new

vec.epilog.scalar.ph4477.preheader.new:           ; preds = %vec.epilog.scalar.ph4477.prol.loopexit
  %invariant.op4779 = add i32 1, %invariant.op3228
  %invariant.op4780 = add i32 2, %invariant.op3228
  %invariant.op4781 = add i32 3, %invariant.op3228
  br label %vec.epilog.scalar.ph4477

vec.epilog.scalar.ph4477:                         ; preds = %vec.epilog.scalar.ph4477, %vec.epilog.scalar.ph4477.preheader.new
  %indvars.iv3661.a = phi i64 [ %indvars.iv3661.unr, %vec.epilog.scalar.ph4477.preheader.new ], [ %indvars.iv.next3662.3, %vec.epilog.scalar.ph4477 ] ; 5 uses
  %i.dkq = trunc i64 %indvars.iv3661.a to i32
  %.reass3229 = add i32 %invariant.op3228, %i.dkq
  %i.dkr = sext i32 %.reass3229 to i64
  %i.dks = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkr ; 2 uses
  %i.dkt = load double, ptr %i.dks, align 8, !tbaa !153
  %i.dku = fdiv double %i.dkt, %i.dja
  store double %i.dku, ptr %i.dks, align 8, !tbaa !153
  %i.dkv = trunc i64 %indvars.iv3661.a to i32
  %.reass3229.1.reass = add i32 %i.dkv, %invariant.op4779
  %i.dkw = sext i32 %.reass3229.1.reass to i64
  %i.dkx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dkw ; 2 uses
  %i.dky = load double, ptr %i.dkx, align 8, !tbaa !153
  %i.dkz = fdiv double %i.dky, %i.dja
  store double %i.dkz, ptr %i.dkx, align 8, !tbaa !153
  %i.dla = trunc i64 %indvars.iv3661.a to i32
  %.reass3229.2.reass = add i32 %i.dla, %invariant.op4780
  %i.dlb = sext i32 %.reass3229.2.reass to i64
  %i.dlc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlb ; 2 uses
  %i.dld = load double, ptr %i.dlc, align 8, !tbaa !153
  %i.dle = fdiv double %i.dld, %i.dja
  store double %i.dle, ptr %i.dlc, align 8, !tbaa !153
  %i.dlf = trunc i64 %indvars.iv3661.a to i32
  %.reass3229.3.reass = add i32 %i.dlf, %invariant.op4781
  %i.dlg = sext i32 %.reass3229.3.reass to i64
  %i.dlh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.dlg ; 2 uses
  %i.dli = load double, ptr %i.dlh, align 8, !tbaa !153
  %i.dlj = fdiv double %i.dli, %i.dja
  store double %i.dlj, ptr %i.dlh, align 8, !tbaa !153
  %indvars.iv.next3662.3 = add nsw i64 %indvars.iv3661.a, 4 ; 2 uses
  %lftr.wideiv3664.3 = trunc i64 %indvars.iv.next3662.3 to i32
  %exitcond3665.not.3 = icmp eq i32 %i.dje, %lftr.wideiv3664.3
  br i1 %exitcond3665.not.3, label %._crit_edge3227, label %vec.epilog.scalar.ph4477, !llvm.loop !125

._crit_edge3227:                                  ; preds = %vec.epilog.scalar.ph4477.prol.loopexit, %vec.epilog.scalar.ph4477, %middle.block4472, %vec.epilog.middle.block4488, %bb.fs
  %i.dlk = load i32, ptr %2, align 4, !tbaa !151  ; 3 uses
  store i32 %i.dlk, ptr %i.d, align 4, !tbaa !151
  %i.dll = add i32 %.pre3793.a, %.32608           ; 4 uses
  store i32 %i.dll, ptr %i.a, align 4, !tbaa !151
  %i.dlm = call i32 @llvm.smin.i32(i32 %i.dlk, i32 %i.dll) ; 7 uses
  %.not27313230 = icmp sgt i32 %.32608, %i.dlm
  br i1 %.not27313230, label %._crit_edge3234, label %.lr.ph3233

.lr.ph3233:                                       ; preds = %._crit_edge3227
  %i.dln = load i32, ptr %i.j, align 4, !tbaa !151 ; 5 uses
  %i.dlo = zext nneg i32 %.32608 to i64           ; 2 uses
  %i.dlp = add nuw i32 %i.dlm, 1
end_hunk_5
begin_hunk_6_@dsbgst_:bb.a
  %i.epv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.epu
  %i.epw = add nuw nsw i32 %.173356, 1
  %i.epx = add nsw i32 %i.epr, -1
  %i.epy = mul nsw i32 %i.epx, %i.n
  %i.epz = add nsw i32 %i.epw, %i.epy
  %i.eqa = sext i32 %i.epz to i64
  %i.eqb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.eqa
  %i.eqc = load i32, ptr %2, align 4, !tbaa !151
  %i.eqd = add nsw i32 %i.eqc, %i.epr
  %i.eqe = sext i32 %i.eqd to i64
  %i.eqf = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqe
  %i.eqg = sext i32 %i.epr to i64
  %i.eqh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eqg
  call void @dlartv_(ptr noundef nonnull %i.m, ptr noundef %i.epv, ptr noundef nonnull %i.f, ptr noundef %i.eqb, ptr noundef nonnull %i.f, ptr noundef nonnull %i.eqf, ptr noundef nonnull %i.eqh, ptr noundef nonnull %i.j) #4
  %.pre3820 = load i32, ptr %i.j, align 4, !tbaa !151 ; 2 uses
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ho, %bb.hp
  %.pre38213908 = phi i32 [ %.pre38213909, %bb.ho ], [ %.pre3820, %bb.hp ] ; 2 uses
  %i.eqi = phi i32 [ %i.epl, %bb.ho ], [ %.pre3820, %bb.hp ] ; 2 uses
  %i.eqj = add nsw i32 %.173356, -1
  %i.eqk = icmp sgt i32 %.173356, 1
  br i1 %i.eqk, label %bb.ho, label %._crit_edge3359.loopexit, !llvm.loop !146

._crit_edge3359.loopexit:                         ; preds = %bb.hq
  %.pre3822 = load i32, ptr %i.d, align 4, !tbaa !151
  br label %._crit_edge3359

._crit_edge3359:                                  ; preds = %._crit_edge3359.loopexit, %bb.hn
  %.pre38213907 = phi i32 [ %.pre38213908, %._crit_edge3359.loopexit ], [ %.pre3821, %bb.hn ]
  %i.eql = phi i32 [ %i.eqi, %._crit_edge3359.loopexit ], [ %i.epa, %bb.hn ]
  %i.eqm = phi i32 [ %.pre3822, %._crit_edge3359.loopexit ], [ %i.epb, %bb.hn ] ; 2 uses
  %i.eqn = add nuw nsw i32 %.1725743361, 1
  %.not2735.not = icmp slt i32 %.1725743361, %i.eqm
  br i1 %.not2735.not, label %bb.hn, label %._crit_edge3364, !llvm.loop !147

._crit_edge3364.thread:                           ; preds = %._crit_edge3355.a, %._crit_edge3355.thread.a
  %.ph4106 = phi i32 [ %.ph4104, %._crit_edge3355.thread.a ], [ %.pre3819, %._crit_edge3355.a ]
  %.pre3793.pre.pre4107 = load i32, ptr %3, align 4, !tbaa !151
  br label %.outer.backedge

._crit_edge3364:                                  ; preds = %._crit_edge3359
  %.pre3823 = load i32, ptr %4, align 4, !tbaa !151 ; 7 uses
  %i.eqo = icmp sgt i32 %.pre3823, 1
  %.pre3793.pre.pre = load i32, ptr %3, align 4, !tbaa !151 ; 7 uses
  br i1 %i.eqo, label %bb.hr, label %.outer.backedge

bb.hr:                                            ; preds = %._crit_edge3364
  %i.eqp = add nuw nsw i32 %.pre3823, %.32608     ; 2 uses
  store i32 %i.eqp, ptr %i.c, align 4, !tbaa !151
  %i.eqq = call i32 @llvm.smin.i32(i32 %i.eqp, i32 %i.ay) ; 2 uses
  %i.eqr = shl i32 %.pre3793.pre.pre, 1           ; 2 uses
  %i.eqs = xor i32 %i.eqr, -1
  %i.eqt = add i32 %i.eqq, %i.eqs                 ; 2 uses
  store i32 %i.eqt, ptr %i.d, align 4, !tbaa !151
  %.not27373365 = icmp slt i32 %i.eqt, 2
  br i1 %.not27373365, label %.outer.backedge, label %.lr.ph3368

.lr.ph3368:                                       ; preds = %bb.hr
  %i.equ = load i32, ptr %2, align 4, !tbaa !151
  %i.eqv = sext i32 %i.equ to i64                 ; 9 uses
  %i.eqw = sext i32 %.pre3793.pre.pre to i64      ; 5 uses
  %i.eqx = sub i32 %i.eqq, %i.eqr
  %wide.trip.count3722 = zext i32 %i.eqx to i64   ; 4 uses
  %invariant.gep4147 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqw ; 6 uses
  %invariant.gep4149 = getelementptr [8 x i8], ptr %i.w, i64 %i.eqw ; 6 uses
  %i.eqy = add nsw i64 %wide.trip.count3722, -2   ; 3 uses
  %min.iters.check4443 = icmp ult i64 %i.eqy, 16
  br i1 %min.iters.check4443, label %scalar.ph4442.preheader, label %vector.memcheck4434

vector.memcheck4434:                              ; preds = %.lr.ph3368
  %i.eqz = shl nsw i64 %i.eqv, 3
  %diff.check4435 = icmp ugt i64 %i.eqz, -64
  %i.era = shl nsw i64 %i.eqw, 3
  %diff.check4436 = icmp ugt i64 %i.era, -64
  %conflict.rdx4437 = or i1 %diff.check4435, %diff.check4436
  %i.erb = sub nsw i64 %i.eqw, %i.eqv
  %i.erc = shl nsw i64 %i.erb, 3
  %i.erd = add nsw i64 %i.erc, -1
  %diff.check4438 = icmp ult i64 %i.erd, 63
  %conflict.rdx4439 = or i1 %conflict.rdx4437, %diff.check4438
  %i.ere = add nsw i64 %i.eqv, %i.eqw
  %i.erf = shl nsw i64 %i.ere, 3
  %diff.check4440 = icmp ugt i64 %i.erf, -64
  %conflict.rdx4441 = or i1 %conflict.rdx4439, %diff.check4440
  br i1 %conflict.rdx4441, label %scalar.ph4442.preheader, label %vector.ph4444

vector.ph4444:                                    ; preds = %vector.memcheck4434
  %n.vec4445 = and i64 %i.eqy, -8                 ; 3 uses
  %i.erg = or disjoint i64 %n.vec4445, 2
  br label %vector.body4446

vector.body4446:                                  ; preds = %vector.body4446, %vector.ph4444
  %index4447 = phi i64 [ 0, %vector.ph4444 ], [ %index.next4452, %vector.body4446 ] ; 2 uses
  %i.erh = or disjoint i64 %index4447, 2          ; 3 uses
  %i.eri = add nsw i64 %i.erh, %i.eqv             ; 2 uses
  %i.erj = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.eri ; 2 uses
  %i.erk = getelementptr i8, ptr %i.erj, i64 32
  %wide.load4448 = load <4 x double>, ptr %i.erj, align 8, !tbaa !153
  %wide.load4449 = load <4 x double>, ptr %i.erk, align 8, !tbaa !153
  %i.erl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.eri ; 2 uses
  %i.erm = getelementptr inbounds nuw i8, ptr %i.erl, i64 32
  store <4 x double> %wide.load4448, ptr %i.erl, align 8, !tbaa !153
  store <4 x double> %wide.load4449, ptr %i.erm, align 8, !tbaa !153
  %i.ern = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %i.erh ; 2 uses
  %i.ero = getelementptr i8, ptr %i.ern, i64 32
  %wide.load4450 = load <4 x double>, ptr %i.ern, align 8, !tbaa !153
  %wide.load4451 = load <4 x double>, ptr %i.ero, align 8, !tbaa !153
  %i.erp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.erh ; 2 uses
  %i.erq = getelementptr inbounds nuw i8, ptr %i.erp, i64 32
  store <4 x double> %wide.load4450, ptr %i.erp, align 8, !tbaa !153
  store <4 x double> %wide.load4451, ptr %i.erq, align 8, !tbaa !153
  %index.next4452 = add nuw i64 %index4447, 8     ; 2 uses
  %i.err = icmp eq i64 %index.next4452, %n.vec4445
  br i1 %i.err, label %middle.block4453, label %vector.body4446, !llvm.loop !148

middle.block4453:                                 ; preds = %vector.body4446
  %cmp.n4454 = icmp eq i64 %i.eqy, %n.vec4445
  br i1 %cmp.n4454, label %.outer.backedge, label %scalar.ph4442.preheader

.outer.backedge:                                  ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442, %middle.block4453, %._crit_edge3364.thread, %bb.hr, %._crit_edge3364
  %.pre3793.be = phi i32 [ %.pre3793.pre.pre4107, %._crit_edge3364.thread ], [ %.pre3793.pre.pre, %._crit_edge3364 ], [ %.pre3793.pre.pre, %bb.hr ], [ %.pre3793.pre.pre, %middle.block4453 ], [ %.pre3793.pre.pre, %scalar.ph4442 ], [ %.pre3793.pre.pre, %scalar.ph4442.prol.loopexit ]
  %.be4675 = phi i32 [ %.ph4106, %._crit_edge3364.thread ], [ %.pre3823, %._crit_edge3364 ], [ %.pre3823, %bb.hr ], [ %.pre3823, %middle.block4453 ], [ %.pre3823, %scalar.ph4442 ], [ %.pre3823, %scalar.ph4442.prol.loopexit ]
  br label %.outer

scalar.ph4442.preheader:                          ; preds = %vector.memcheck4434, %.lr.ph3368, %middle.block4453
  %indvars.iv3719.ph = phi i64 [ 2, %vector.memcheck4434 ], [ 2, %.lr.ph3368 ], [ %i.erg, %middle.block4453 ] ; 4 uses
  %i.ers = sub nsw i64 %wide.trip.count3722, %indvars.iv3719.ph
  %xtraiter4724 = and i64 %i.ers, 3               ; 2 uses
  %lcmp.mod4725.not = icmp eq i64 %xtraiter4724, 0
  br i1 %lcmp.mod4725.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol

scalar.ph4442.prol:                               ; preds = %scalar.ph4442.preheader, %scalar.ph4442.prol
  %indvars.iv3719.prol = phi i64 [ %indvars.iv.next3720.prol, %scalar.ph4442.prol ], [ %indvars.iv3719.ph, %scalar.ph4442.preheader ] ; 4 uses
  %prol.iter4726 = phi i64 [ %prol.iter4726.next, %scalar.ph4442.prol ], [ 0, %scalar.ph4442.preheader ]
  %i.ert = add nsw i64 %indvars.iv3719.prol, %i.eqv ; 2 uses
  %gep4148.prol = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.ert
  %i.eru = load double, ptr %gep4148.prol, align 8, !tbaa !153
  %i.erv = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ert
  store double %i.eru, ptr %i.erv, align 8, !tbaa !153
  %gep4150.prol = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %indvars.iv3719.prol
  %i.erw = load double, ptr %gep4150.prol, align 8, !tbaa !153
  %i.erx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3719.prol
  store double %i.erw, ptr %i.erx, align 8, !tbaa !153
  %indvars.iv.next3720.prol = add nuw nsw i64 %indvars.iv3719.prol, 1 ; 2 uses
  %prol.iter4726.next = add i64 %prol.iter4726, 1 ; 2 uses
  %prol.iter4726.cmp.not = icmp eq i64 %prol.iter4726.next, %xtraiter4724
  br i1 %prol.iter4726.cmp.not, label %scalar.ph4442.prol.loopexit, label %scalar.ph4442.prol, !llvm.loop !149

scalar.ph4442.prol.loopexit:                      ; preds = %scalar.ph4442.prol, %scalar.ph4442.preheader
  %indvars.iv3719.unr = phi i64 [ %indvars.iv3719.ph, %scalar.ph4442.preheader ], [ %indvars.iv.next3720.prol, %scalar.ph4442.prol ]
  %i.ery = sub nsw i64 %indvars.iv3719.ph, %wide.trip.count3722
  %i.erz = icmp ugt i64 %i.ery, -4
  br i1 %i.erz, label %.outer.backedge, label %scalar.ph4442

scalar.ph4442:                                    ; preds = %scalar.ph4442.prol.loopexit, %scalar.ph4442
  %indvars.iv3719 = phi i64 [ %indvars.iv.next3720.3, %scalar.ph4442 ], [ %indvars.iv3719.unr, %scalar.ph4442.prol.loopexit ] ; 8 uses
  %i.esa = add nsw i64 %indvars.iv3719, %i.eqv    ; 2 uses
  %gep4148 = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.esa
  %i.esb = load double, ptr %gep4148, align 8, !tbaa !153
  %i.esc = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.esa
  store double %i.esb, ptr %i.esc, align 8, !tbaa !153
  %gep4150 = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %indvars.iv3719
  %i.esd = load double, ptr %gep4150, align 8, !tbaa !153
  %i.ese = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv3719
  store double %i.esd, ptr %i.ese, align 8, !tbaa !153
  %indvars.iv.next3720 = add nuw nsw i64 %indvars.iv3719, 1 ; 2 uses
  %i.esf = add nsw i64 %indvars.iv.next3720, %i.eqv ; 2 uses
  %gep4148.1 = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.esf
  %i.esg = load double, ptr %gep4148.1, align 8, !tbaa !153
  %i.esh = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.esf
  store double %i.esg, ptr %i.esh, align 8, !tbaa !153
  %gep4150.1 = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %indvars.iv.next3720
  %i.esi = load double, ptr %gep4150.1, align 8, !tbaa !153
  %i.esj = getelementptr [8 x i8], ptr %11, i64 %indvars.iv3719
  store double %i.esi, ptr %i.esj, align 8, !tbaa !153
  %indvars.iv.next3720.1 = add nuw nsw i64 %indvars.iv3719, 2 ; 3 uses
  %i.esk = add nsw i64 %indvars.iv.next3720.1, %i.eqv ; 2 uses
  %gep4148.2 = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.esk
  %i.esl = load double, ptr %gep4148.2, align 8, !tbaa !153
  %i.esm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.esk
  store double %i.esl, ptr %i.esm, align 8, !tbaa !153
  %gep4150.2 = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %indvars.iv.next3720.1
  %i.esn = load double, ptr %gep4150.2, align 8, !tbaa !153
  %i.eso = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3720.1
  store double %i.esn, ptr %i.eso, align 8, !tbaa !153
  %indvars.iv.next3720.2 = add nuw nsw i64 %indvars.iv3719, 3 ; 3 uses
  %i.esp = add nsw i64 %indvars.iv.next3720.2, %i.eqv ; 2 uses
  %gep4148.3 = getelementptr [8 x i8], ptr %invariant.gep4147, i64 %i.esp
  %i.esq = load double, ptr %gep4148.3, align 8, !tbaa !153
  %i.esr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.esp
  store double %i.esq, ptr %i.esr, align 8, !tbaa !153
  %gep4150.3 = getelementptr [8 x i8], ptr %invariant.gep4149, i64 %indvars.iv.next3720.2
  %i.ess = load double, ptr %gep4150.3, align 8, !tbaa !153
  %i.est = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next3720.2
  store double %i.ess, ptr %i.est, align 8, !tbaa !153
  %indvars.iv.next3720.3 = add nuw nsw i64 %indvars.iv3719, 4 ; 2 uses
  %exitcond3723.not.3 = icmp eq i64 %indvars.iv.next3720.3, %wide.trip.count3722
  br i1 %exitcond3723.not.3, label %.outer.backedge, label %scalar.ph4442, !llvm.loop !150

.loopexit2877:                                    ; preds = %bb.fo, %.lr.ph3212.split, %bb.dj, %.lr.ph3212.split.us3500, %bb.n, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlargv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlar2v_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !154}
!9 = distinct !{!9, !155}
!10 = distinct !{!10, !155, !156, !157}
!11 = distinct !{!11, !155, !156, !157}
!12 = distinct !{!12, !154}
!13 = distinct !{!13, !155, !156}
!14 = distinct !{!14, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !155, !156, !157}
!22 = distinct !{!22, !155, !156}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !23}
!27 = distinct !{!27, !155, !156, !157}
!28 = distinct !{!28, !155, !156, !157}
!29 = distinct !{!29, !155, !156}
!30 = distinct !{!30, !155}
!31 = distinct !{!31, !155}
!32 = distinct !{!32, !155}
!33 = distinct !{!33, !155}
!34 = distinct !{!34, !155}
!35 = distinct !{!35, !155}
!36 = distinct !{!36, !155}
!37 = distinct !{!37, !155}
!38 = distinct !{!38, !155}
!39 = distinct !{!39, !155}
!40 = distinct !{!40, !155}
!41 = distinct !{!41, !155}
!42 = distinct !{!42, !155}
!43 = distinct !{!43, !155}
!44 = distinct !{!44, !155}
!45 = distinct !{!45, !155}
!46 = distinct !{!46, !155}
!47 = distinct !{!47, !155}
!48 = distinct !{!48, !155, !156, !157}
!49 = distinct !{!49, !155, !156}
!50 = distinct !{!50, !155, !156, !157}
!51 = distinct !{!51, !155, !156, !157}
!52 = distinct !{!52, !154}
!53 = distinct !{!53, !155, !156}
!54 = distinct !{!54, !154}
!55 = distinct !{!55, !155}
!56 = distinct !{!56, !155}
!57 = distinct !{!57, !155}
!58 = distinct !{!58, !155}
!59 = distinct !{!59, !155}
!60 = distinct !{!60, !155}
!61 = distinct !{!61, !155}
!62 = distinct !{!62, !155}
!63 = distinct !{!63, !155}
!64 = distinct !{!64, !155}
!65 = distinct !{!65, !155}
!66 = distinct !{!66, !155}
!67 = distinct !{!67, !155}
!68 = distinct !{!68, !155}
!69 = distinct !{!69, !155}
!70 = distinct !{!70, !155}
!71 = distinct !{!71, !155}
!72 = distinct !{!72, !155}
!73 = distinct !{!73, !155}
!74 = distinct !{!74, !155}
!75 = distinct !{!75, !155}
!76 = distinct !{!76, !155, !156, !157}
!77 = distinct !{!77, !155, !156}
!78 = distinct !{!78, !155}
!79 = distinct !{!79, !155, !156}
!80 = distinct !{!80, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = distinct !{!87, !155, !156, !157}
!88 = distinct !{!88, !155, !156}
!89 = distinct !{!89, !155, !156}
!90 = distinct !{!90, !155}
!91 = distinct !{!91, !155}
!92 = distinct !{!92, !155}
!93 = distinct !{!93, !155}
!94 = distinct !{!94, !155}
!95 = distinct !{!95, !155}
!96 = distinct !{!96, !155}
!97 = distinct !{!97, !155}
!98 = distinct !{!98, !155}
!99 = distinct !{!99, !155}
!100 = distinct !{!100, !155}
!101 = distinct !{!101, !155}
!102 = distinct !{!102, !155}
!103 = distinct !{!103, !155}
!104 = distinct !{!104, !155}
!105 = distinct !{!105, !155}
!106 = distinct !{!106, !155}
!107 = distinct !{!107, !155}
!108 = distinct !{!108, !155, !156}
!109 = distinct !{!109, !154}
!110 = distinct !{!110, !155, !156, !157}
!111 = distinct !{!111, !155, !156, !157}
!112 = distinct !{!112, !154}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !155, !156, !157}
!118 = distinct !{!118, !155, !156, !157}
!119 = distinct !{!119, !154}
!120 = distinct !{!120, !155, !156, !157}
!121 = distinct !{!121, !154}
!122 = distinct !{!122, !155, !156, !157}
!123 = distinct !{!123, !155, !156, !157}
!124 = distinct !{!124, !154}
!125 = distinct !{!125, !155, !156}
!126 = distinct !{!126, !154}
end_hunk_6
