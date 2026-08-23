Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/context?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_glfwIsValidContextConfig:bb.a
bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65546, ptr noundef null) #7
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 532
  %i.k = load i32, ptr %i.j, align 4
  %.not68 = icmp eq i32 %i.b, %i.k
  br i1 %.not68, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.2) #7
  br label %bb.ab

bb.k:                                             ; preds = %bb.i, %bb.e
  switch i32 %i.c, label %.thread93 [
    i32 196609, label %bb.l
    i32 196610, label %bb.v
  ]

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8              ; 6 uses
  %i.n = icmp slt i32 %i.m, 1
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 4 ; 6 uses
  %i.o = icmp slt i32 %.pre86, 0
  %or.cond96 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond96, label %._crit_edge84, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.p = icmp eq i32 %i.m, 1
  %i.q = icmp samesign ugt i32 %.pre86, 5
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %._crit_edge84, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.m, label %.thread [
    i32 2, label %bb.o
    i32 3, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.r = icmp samesign ugt i32 %.pre86, 1
  br i1 %i.r, label %._crit_edge84, label %.thread

bb.p:                                             ; preds = %bb.n
  %i.s = icmp samesign ugt i32 %.pre86, 3
  br i1 %i.s, label %._crit_edge84, label %.thread

._crit_edge84:                                    ; preds = %bb.l, %bb.m, %bb.p, %bb.o
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.3, i32 noundef %i.m, i32 noundef %.pre86) #7
  br label %bb.ab

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p
  %i.t = phi i1 [ false, %bb.n ], [ true, %bb.p ], [ false, %bb.o ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  switch i32 %i.v, label %bb.q [
    i32 0, label %bb.t
    i32 204801, label %bb.r
    i32 204802, label %bb.r
  ]

bb.q:                                             ; preds = %.thread
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.4, i32 noundef %i.v) #7
  br label %bb.ab

bb.r:                                             ; preds = %.thread, %.thread
  %i.w = icmp samesign ult i32 %i.m, 3
  %i.x = icmp samesign ult i32 %.pre86, 2
  %or.cond80 = select i1 %i.t, i1 %i.x, i1 false
  %or.cond83 = select i1 %i.w, i1 true, i1 %or.cond80
  br i1 %or.cond83, label %bb.s, label %.thread93

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.5) #7
  br label %bb.ab

bb.t:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %.not72 = icmp ne i32 %i.z, 0
  %i.aa = icmp samesign ult i32 %i.m, 3
  %or.cond81 = select i1 %.not72, i1 %i.aa, i1 false
  br i1 %or.cond81, label %bb.u, label %.thread93

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.6) #7
  br label %bb.ab

bb.v:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i32, ptr %i.ab, align 8            ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 4 uses
  %i.ae = icmp slt i32 %.pre, 0
  %or.cond97 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond97, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.af = icmp eq i32 %i.ac, 1
  %i.ag = icmp samesign ugt i32 %.pre, 1
  %or.cond79 = and i1 %i.af, %i.ag
  br i1 %or.cond79, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ah = icmp eq i32 %i.ac, 2
  %i.ai = icmp ne i32 %.pre, 0
  %or.cond82 = and i1 %i.ah, %i.ai
  br i1 %or.cond82, label %._crit_edge, label %.thread93

._crit_edge:                                      ; preds = %bb.v, %bb.x, %bb.w
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65540, ptr noundef nonnull @.str.7, i32 noundef %i.ac, i32 noundef %.pre) #7
  br label %bb.ab

.thread93:                                        ; preds = %bb.r, %bb.k, %bb.x, %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  switch i32 %i.ak, label %bb.y [
    i32 0, label %bb.z
    i32 200705, label %bb.z
    i32 200706, label %bb.z
  ]

bb.y:                                             ; preds = %.thread93
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.8, i32 noundef %i.ak) #7
  br label %bb.ab

bb.z:                                             ; preds = %.thread93, %.thread93, %.thread93
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  switch i32 %i.am, label %bb.aa [
    i32 0, label %bb.ab
    i32 217090, label %bb.ab
    i32 217089, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  tail call void (i32, ptr, ...) @_glfwInputError(i32 noundef 65539, ptr noundef nonnull @.str.9, i32 noundef %i.am) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.aa, %bb.y, %._crit_edge, %bb.u, %bb.s, %bb.q, %._crit_edge84, %bb.j, %bb.h, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %._crit_edge84 ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %._crit_edge ], [ 1, %bb.z ], [ 1, %bb.z ], [ 1, %bb.z ]
  ret i32 %.0
}

declare void @_glfwInputError(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden ptr @_glfwChooseFBConfig(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not171 = icmp eq i32 %2, 0
  br i1 %.not171, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0170 = phi ptr [ null, %.lr.ph ], [ %.2, %.thread ] ; 4 uses
  %.0114169 = phi i32 [ -1, %.lr.ph ], [ %.1115, %.thread ] ; 3 uses
  %.0119168 = phi i32 [ -1, %.lr.ph ], [ %.1120, %.thread ] ; 5 uses
  %.0124167 = phi i32 [ -1, %.lr.ph ], [ %.1125, %.thread ] ; 6 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %indvars.iv ; 23 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load i32, ptr %i.d, align 4              ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %3, label %bb.f

3:                                                ; preds = %bb.e
  br label %bb.f

bb.f:                                             ; preds = %3, %bb.e, %bb.d
  %.0126 = phi i32 [ 1, %3 ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.z = load i32, ptr %i.e, align 8              ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %spec.select159.a = add nuw nsw i32 %.0126, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1127 = phi i32 [ %.0126, %bb.f ], [ %spec.select159.a, %bb.g ] ; 2 uses
  %i.af = load i32, ptr %i.f, align 4             ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %spec.select160.a = add nuw nsw i32 %.1127, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2128 = phi i32 [ %.1127, %bb.h ], [ %spec.select160.a, %bb.i ] ; 3 uses
  %i.al = load i32, ptr %i.g, align 8             ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ao = load i32, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.al
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = add nuw i32 %i.al, %.2128
  %i.ar = sub i32 %i.aq, %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.3129 = phi i32 [ %i.ar, %bb.l ], [ %.2128, %bb.k ], [ %.2128, %bb.j ] ; 2 uses
  %i.as = load i32, ptr %i.h, align 8             ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %spec.select161.a = add i32 %.3129, %i.ax
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.4130 = phi i32 [ %.3129, %bb.m ], [ %spec.select161.a, %bb.n ]
  %i.ay = load i32, ptr %i.i, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.ba = load i32, ptr %i.az, align 4
  %.not = icmp ne i32 %i.ay, %i.ba
  %i.bb = zext i1 %.not to i32
  %spec.select162.a = add i32 %.4130, %i.bb       ; 4 uses
  %i.bc = load i32, ptr %0, align 8               ; 2 uses
  %.not146 = icmp eq i32 %i.bc, -1
  br i1 %.not146, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.q, align 8
  %i.be = sub nsw i32 %i.bc, %i.bd                ; 2 uses
  %i.bf = mul nsw i32 %i.be, %i.be
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0121 = phi i32 [ %i.bf, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bg = load i32, ptr %i.j, align 4             ; 2 uses
  %.not147 = icmp eq i32 %i.bg, -1
  br i1 %.not147, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sub nsw i32 %i.bg, %i.bi                ; 2 uses
  %i.bk = mul nsw i32 %i.bj, %i.bj
  %i.bl = add nuw i32 %i.bk, %.0121
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1122 = phi i32 [ %i.bl, %bb.r ], [ %.0121, %bb.q ] ; 2 uses
  %i.bm = load i32, ptr %i.k, align 8             ; 2 uses
  %.not148 = icmp eq i32 %i.bm, -1
  br i1 %.not148, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = sub nsw i32 %i.bm, %i.bo                ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add i32 %i.bq, %.1122
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2123 = phi i32 [ %i.br, %bb.t ], [ %.1122, %bb.s ] ; 5 uses
  %.not149 = icmp eq i32 %i.u, -1
  br i1 %.not149, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = sub nsw i32 %i.u, %i.bt                 ; 2 uses
  %i.bv = mul nsw i32 %i.bu, %i.bu
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0116 = phi i32 [ %i.bv, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.not150 = icmp eq i32 %i.z, -1
  br i1 %.not150, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = sub nsw i32 %i.z, %i.bx                 ; 2 uses
  %i.bz = mul nsw i32 %i.by, %i.by
  %i.ca = add nuw i32 %i.bz, %.0116
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1117 = phi i32 [ %i.ca, %bb.x ], [ %.0116, %bb.w ] ; 2 uses
  %.not151 = icmp eq i32 %i.af, -1
  br i1 %.not151, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = sub nsw i32 %i.af, %i.cc                ; 2 uses
  %i.ce = mul nsw i32 %i.cd, %i.cd
  %i.cf = add i32 %i.ce, %.1117
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2118 = phi i32 [ %i.cf, %bb.z ], [ %.1117, %bb.y ] ; 2 uses
  %i.cg = load i32, ptr %i.l, align 8             ; 2 uses
  %.not152 = icmp eq i32 %i.cg, -1
  br i1 %.not152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = sub nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = mul nsw i32 %i.cj, %i.cj
  %i.cl = add i32 %i.ck, %.2118
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3 = phi i32 [ %i.cl, %bb.ab ], [ %.2118, %bb.aa ] ; 2 uses
  %i.cm = load i32, ptr %i.m, align 4             ; 2 uses
  %.not153 = icmp eq i32 %i.cm, -1
  br i1 %.not153, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = sub nsw i32 %i.cm, %i.co                ; 2 uses
  %i.cq = mul nsw i32 %i.cp, %i.cp
  %i.cr = add i32 %i.cq, %.3
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.4 = phi i32 [ %i.cr, %bb.ad ], [ %.3, %bb.ac ] ; 2 uses
  %i.cs = load i32, ptr %i.n, align 8             ; 2 uses
  %.not154 = icmp eq i32 %i.cs, -1
  br i1 %.not154, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sub nsw i32 %i.cs, %i.cu                ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.cv
  %i.cx = add i32 %i.cw, %.4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.5 = phi i32 [ %i.cx, %bb.af ], [ %.4, %bb.ae ] ; 2 uses
  %i.cy = load i32, ptr %i.o, align 4             ; 2 uses
  %.not155 = icmp eq i32 %i.cy, -1
  br i1 %.not155, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = sub nsw i32 %i.cy, %i.da                ; 2 uses
  %i.dc = mul nsw i32 %i.db, %i.db
  %i.dd = add i32 %i.dc, %.5
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6 = phi i32 [ %i.dd, %bb.ah ], [ %.5, %bb.ag ] ; 2 uses
  %.not156 = icmp eq i32 %i.as, -1
end_hunk_0
