inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@res_push:bb.a
  %.016.lcssa = phi i32 [ -1, %bb.a ], [ %i.t, %._crit_edge.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.x, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.016.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @push(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i64 noundef %8) unnamed_addr #32 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = icmp slt i64 %i.c, %i.f
  %i.k = icmp ne i64 %8, 0
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.n = sext i32 %7 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07389 = phi ptr [ %6, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.08088 = phi i64 [ %8, %.lr.ph ], [ %i.r, %bb.b ]
  %.08187 = phi ptr [ %i.m, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.o = load float, ptr %.07389, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %.08187, i64 4 ; 2 uses
  store float %i.o, ptr %.08187, align 4
  %i.q = getelementptr inbounds [4 x i8], ptr %.07389, i64 %i.n ; 2 uses
  %i.r = add i64 %.08088, -1                      ; 3 uses
  %i.s = icmp ult ptr %i.p, %i.g
  %i.t = icmp ne i64 %i.r, 0
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.080.lcssa = phi i64 [ %8, %bb.a ], [ %i.r, %bb.b ] ; 3 uses
  %.073.lcssa = phi ptr [ %6, %bb.a ], [ %i.q, %bb.b ] ; 6 uses
  %i.v = icmp eq i64 %.080.lcssa, 0
  br i1 %i.v, label %bb.h, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = sext i32 %7 to i64                       ; 5 uses
  %i.x = mul i64 %.080.lcssa, %i.w                ; 2 uses
  %.idx = shl nuw nsw i64 %i.x, 2
  %i.y = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 %.idx ; 4 uses
  %.not114 = icmp eq i64 %i.x, 0
  br i1 %.not114, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = sext i32 %5 to i64
  %.pre = load i32, ptr %3, align 4
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph93, %sum.exit
  %i.ab = phi i32 [ %i.bq, %sum.exit ], [ %i.bu, %.lr.ph93 ]
  %.2.lcssa = phi ptr [ %.195, %sum.exit ], [ %i.bv, %.lr.ph93 ] ; 3 uses
  %i.ac = icmp ult ptr %.2.lcssa, %i.y
  br i1 %i.ac, label %bb.d, label %._crit_edge99, !llvm.loop !136

bb.d:                                             ; preds = %.lr.ph98, %.loopexit
  %i.ad = phi i32 [ %.pre, %.lr.ph98 ], [ %i.ab, %.loopexit ]
  %.07296 = phi ptr [ %4, %.lr.ph98 ], [ %i.bn, %.loopexit ] ; 2 uses
  %.195 = phi ptr [ %.073.lcssa, %.lr.ph98 ], [ %.2.lcssa, %.loopexit ] ; 6 uses
  %i.ae = load i32, ptr %i.d, align 4             ; 6 uses
  %.not16.i = icmp eq i32 %i.ae, 0
  br i1 %.not16.i, label %sum.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = mul i32 %i.ae, %i.ad
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah ; 3 uses
  %xtraiter = and i32 %i.ae, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.aj = add nsw i32 %i.ae, -1
  %i.ak = load float, ptr %.195, align 4
  %i.al = load float, ptr %i.ai, align 4
  %i.am = fmul float %i.ak, %i.al
  %i.an = fadd float %i.am, 0.000000e+00          ; 2 uses
  %i.ao = icmp eq ptr %.195, %.073.lcssa          ; 2 uses
  %spec.select.i.prol = select i1 %i.ao, ptr %i.g, ptr %.195
  %spec.select15.i.prol = select i1 %i.ao, i32 1, i32 %7 ; 2 uses
  %i.ap = sext i32 %spec.select15.i.prol to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %spec.select.i.prol, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa148.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %.021.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.an, %.lr.ph.i.prol ]
  %.01020.i.unr = phi i32 [ %7, %.lr.ph.i.preheader ], [ %spec.select15.i.prol, %.lr.ph.i.prol ]
  %.01119.i.unr = phi ptr [ %i.ai, %.lr.ph.i.preheader ], [ %i.as, %.lr.ph.i.prol ]
  %.01218.i.unr = phi i32 [ %i.ae, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph.i.prol ]
  %.01317.i.unr = phi ptr [ %.195, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %i.at = icmp eq i32 %i.ae, 1
  br i1 %i.at, label %sum.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.021.i = phi float [ %i.bh, %.lr.ph.i ], [ %.021.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01020.i = phi i32 [ %spec.select15.i.1, %.lr.ph.i ], [ %.01020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01119.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %.01119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01218.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01317.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01317.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.au = load float, ptr %.01317.i, align 4
  %i.av = load float, ptr %.01119.i, align 4
  %i.aw = fmul float %i.au, %i.av
  %i.ax = fadd float %.021.i, %i.aw
  %i.ay = icmp eq ptr %.01317.i, %.073.lcssa      ; 2 uses
  %spec.select.i = select i1 %i.ay, ptr %i.g, ptr %.01317.i
  %spec.select15.i = select i1 %i.ay, i32 1, i32 %.01020.i ; 2 uses
  %i.az = sext i32 %spec.select15.i to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %spec.select.i, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01119.i, i64 4
  %i.bd = add nsw i32 %.01218.i, -2               ; 2 uses
  %i.be = load float, ptr %i.bb, align 4
  %i.bf = load float, ptr %i.bc, align 4
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = fadd float %i.ax, %i.bg                 ; 2 uses
  %i.bi = icmp eq ptr %i.bb, %.073.lcssa          ; 2 uses
  %spec.select.i.1 = select i1 %i.bi, ptr %i.g, ptr %i.bb
  %spec.select15.i.1 = select i1 %i.bi, i32 1, i32 %spec.select15.i ; 2 uses
  %i.bj = sext i32 %spec.select15.i.1 to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds [4 x i8], ptr %spec.select.i.1, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.01119.i, i64 8
  %.not.i.1 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.1, label %sum.exit, label %.lr.ph.i, !llvm.loop !137

sum.exit:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.lcssa148.unr, %.lr.ph.i.prol.loopexit ], [ %i.bh, %.lr.ph.i ]
  store float %.0.lcssa.i, ptr %.07296, align 4
  %i.bn = getelementptr inbounds [4 x i8], ptr %.07296, i64 %i.aa ; 2 uses
  %i.bo = load i32, ptr %i.i, align 4
  %i.bp = load i32, ptr %3, align 4
  %i.bq = add i32 %i.bp, %i.bo                    ; 4 uses
  store i32 %i.bq, ptr %3, align 4
  %i.br = load i32, ptr %i.h, align 8             ; 2 uses
  %.not91 = icmp ult i32 %i.bq, %i.br
  br i1 %.not91, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %sum.exit, %.lr.ph93
  %i.bs = phi i32 [ %i.bw, %.lr.ph93 ], [ %i.br, %sum.exit ]
  %i.bt = phi i32 [ %i.bu, %.lr.ph93 ], [ %i.bq, %sum.exit ]
  %.292 = phi ptr [ %i.bv, %.lr.ph93 ], [ %.195, %sum.exit ]
  %i.bu = sub nuw i32 %i.bt, %i.bs                ; 4 uses
  store i32 %i.bu, ptr %3, align 4
  %i.bv = getelementptr inbounds [4 x i8], ptr %.292, i64 %i.w ; 2 uses
  %i.bw = load i32, ptr %i.h, align 8             ; 2 uses
  %.not = icmp ult i32 %i.bu, %i.bw
  br i1 %.not, label %.loopexit, label %.lr.ph93, !llvm.loop !138

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  %.1.lcssa = phi ptr [ %.073.lcssa, %bb.c ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ %4, %bb.c ], [ %i.bn, %.loopexit ]
  %i.bx = ptrtoint ptr %.1.lcssa to i64
  %i.by = ptrtoint ptr %i.y to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = sdiv i64 %i.ca, %i.w
  %i.cc = add i64 %i.cb, %.080.lcssa              ; 6 uses
  %i.cd = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ult i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge99
  %i.cg = icmp samesign ult i64 %i.cc, %i.f
  br i1 %i.cg, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc ; 3 uses
  %i.ci = shl i64 %i.cc, 2                        ; 2 uses
  %i.cj = add i64 %i.ci, %i.a
  %i.ck = add i64 %i.cj, 4
  %i.cl = shl nuw nsw i64 %i.f, 2
  %i.cm = add i64 %i.cl, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cm)
  %i.cn = xor i64 %i.a, -1
  %i.co = add i64 %umax, %i.cn
  %i.cp = sub i64 %i.co, %i.ci                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 44
  %9 = mul i64 %i.cc, -4
  %diff.check = icmp ult i64 %9, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph105.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cs = shl i64 %n.vec, 2                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ch, i64 %i.cs
  %i.cu = getelementptr i8, ptr %1, i64 %i.cs     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cv ; 2 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load144 = load <4 x float>, ptr %i.cw, align 4
  %i.cx = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x float> %wide.load, ptr %next.gep143, align 4
  store <4 x float> %wide.load144, ptr %i.cx, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge106, label %.lr.ph105.preheader146

.lr.ph105.preheader146:                           ; preds = %.lr.ph105.preheader, %middle.block
  %.074103.ph = phi ptr [ %i.ch, %.lr.ph105.preheader ], [ %i.ct, %middle.block ]
  %.077102.ph = phi ptr [ %1, %.lr.ph105.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader146, %.lr.ph105
  %.074103 = phi ptr [ %i.cz, %.lr.ph105 ], [ %.074103.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %.077102 = phi ptr [ %i.db, %.lr.ph105 ], [ %.077102.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.074103, i64 4 ; 2 uses
  %i.da = load float, ptr %.074103, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %.077102, i64 4 ; 2 uses
  store float %i.da, ptr %.077102, align 4
  %i.dc = icmp ult ptr %i.cz, %i.g
  br i1 %i.dc, label %.lr.ph105, label %._crit_edge106, !llvm.loop !140

._crit_edge106:                                   ; preds = %.lr.ph105, %middle.block, %bb.e
  %.077.lcssa = phi ptr [ %1, %bb.e ], [ %i.cu, %middle.block ], [ %i.db, %.lr.ph105 ]
  %i.dd = mul nsw i64 %i.cc, %i.w
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge99
  %i.de = mul i32 %i.cd, %7
  %i.df = zext i32 %i.de to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge106
  %.178 = phi ptr [ %.077.lcssa, %._crit_edge106 ], [ %1, %bb.f ] ; 2 uses
  %.pn86 = phi i64 [ %i.dd, %._crit_edge106 ], [ %i.df, %bb.f ]
  %.pn = sub nsw i64 0, %.pn86
  %.175 = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %.pn ; 2 uses
  %i.dg = icmp ult ptr %.175, %i.y
  br i1 %i.dg, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.g, %.lr.ph111
  %.276109 = phi ptr [ %i.dj, %.lr.ph111 ], [ %.175, %bb.g ] ; 2 uses
  %.279108 = phi ptr [ %i.di, %.lr.ph111 ], [ %.178, %bb.g ] ; 2 uses
  %i.dh = load float, ptr %.276109, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.279108, i64 4 ; 2 uses
  store float %i.dh, ptr %.279108, align 4
  %i.dj = getelementptr inbounds [4 x i8], ptr %.276109, i64 %i.w ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.y
  br i1 %i.dk, label %.lr.ph111, label %._crit_edge112, !llvm.loop !141

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.g
  %.279.lcssa = phi ptr [ %.178, %bb.g ], [ %i.di, %.lr.ph111 ]
  %i.dl = ptrtoint ptr %.279.lcssa to i64
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 2
  %i.dp = trunc i64 %i.do to i32
  store i32 %i.dp, ptr %2, align 4
  %i.dq = ptrtoint ptr %.072.lcssa to i64
  %i.dr = ptrtoint ptr %4 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 2
  %i.du = sext i32 %5 to i64
  %i.dv = sdiv i64 %i.dt, %i.du
  %i.dw = trunc i64 %i.dv to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge112
  %.0 = phi i32 [ %i.dw, %._crit_edge112 ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @res_push_interleaved(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = phi i32 [ %i.c, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.i = load i32, ptr %i.d, align 8
  store i32 %i.i, ptr %i.a, align 4
  %i.j = load i32, ptr %i.e, align 4
  store i32 %i.j, ptr %i.b, align 4
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = load i32, ptr %i.g, align 4
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = mul i32 %i.l, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.s = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.q, i32 noundef %i.h, ptr noundef %i.r, i32 noundef %i.h, i64 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %0, align 8                ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !142

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4
  %.pre21 = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi i32 [ -1, %bb.a ], [ %.pre21, %._crit_edge.loopexit ]
  %i.x = phi i32 [ -1, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.018.lcssa = phi i32 [ -1, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.w, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret i32 %.018.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @res_drain(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 4) #71 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = load i32, ptr %i.i, align 8
  store i32 %i.l, ptr %i.a, align 4
  %i.m = load i32, ptr %i.j, align 4
  store i32 %i.m, ptr %i.b, align 4
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load i32, ptr %i.c, align 4              ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = mul i32 %i.o, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = lshr i32 %i.o, 1
  %i.w = add nsw i32 %i.v, -1
  %i.x = zext i32 %i.w to i64
  %i.y = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.s, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull %i.f, i32 noundef 1, i64 noundef %i.x)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %0, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !41
end_hunk_0
begin_hunk_1_@vorbis_synthesis_blockin:bb.a
  %wide.load448 = load <4 x float>, ptr %i.gu, align 4, !alias.scope !251
  %wide.load449 = load <4 x float>, ptr %i.gv, align 4, !alias.scope !251
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index441 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load450 = load <4 x float>, ptr %i.gw, align 4, !alias.scope !252
  %wide.load451 = load <4 x float>, ptr %i.gx, align 4, !alias.scope !252
  %i.gy = fmul <4 x float> %wide.load448, %wide.load450
  %i.gz = fmul <4 x float> %wide.load449, %wide.load451
  %i.ha = fadd <4 x float> %i.gs, %i.gy
  %i.hb = fadd <4 x float> %i.gt, %i.gz
  store <4 x float> %i.ha, ptr %i.gm, align 4, !alias.scope !243, !noalias !246
  store <4 x float> %i.hb, ptr %i.gn, align 4, !alias.scope !243, !noalias !246
  %index.next452 = add nuw i64 %index441, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next452, %n.vec439
  br i1 %i.hc, label %middle.block453, label %vector.body440, !llvm.loop !253

middle.block453:                                  ; preds = %vector.body440
  br i1 %cmp.n454, label %.loopexit, label %.lr.ph263.preheader492

.lr.ph263.preheader492:                           ; preds = %vector.memcheck419, %.lr.ph263.preheader, %middle.block453
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck419 ], [ 0, %.lr.ph263.preheader ], [ %n.vec439, %middle.block453 ] ; 7 uses
  %.neg509 = or disjoint i64 %indvars.iv280.ph, 1
  br i1 %lcmp.mod497.not, label %.lr.ph263.prol.loopexit, label %.lr.ph263.prol

.lr.ph263.prol:                                   ; preds = %.lr.ph263.preheader492
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280.ph ; 2 uses
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = xor i64 %indvars.iv280.ph, -1
  %i.hg = getelementptr [4 x i8], ptr %i.gl, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4
  %i.hi = fmul float %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280.ph
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280.ph
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = fmul float %i.hk, %i.hm
  %i.ho = fadd float %i.hi, %i.hn
  store float %i.ho, ptr %i.hd, align 4
  %indvars.iv.next281.prol = or disjoint i64 %indvars.iv280.ph, 1
  br label %.lr.ph263.prol.loopexit

.lr.ph263.prol.loopexit:                          ; preds = %.lr.ph263.prol, %.lr.ph263.preheader492
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph263.preheader492 ], [ %indvars.iv.next281.prol, %.lr.ph263.prol ]
  %i.hp = icmp eq i64 %wide.trip.count283, %.neg509
  br i1 %i.hp, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.1, %.lr.ph263 ], [ %indvars.iv280.unr, %.lr.ph263.prol.loopexit ] ; 7 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = xor i64 %indvars.iv280, -1
  %i.ht = getelementptr [4 x i8], ptr %i.gl, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = fmul float %i.hr, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280
  %i.hx = load float, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = fmul float %i.hx, %i.hz
  %i.ib = fadd float %i.hv, %i.ia
  store float %i.ib, ptr %i.hq, align 4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next281 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = sub i64 -2, %indvars.iv280
  %i.if = getelementptr [4 x i8], ptr %i.gl, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = fmul float %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next281
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next281
  %i.il = load float, ptr %i.ik, align 4
  %i.im = fmul float %i.ij, %i.il
  %i.in = fadd float %i.ih, %i.im
  store float %i.in, ptr %i.ic, align 4
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next281.1, %wide.trip.count283
  br i1 %exitcond284.not.1, label %.loopexit, label %.lr.ph263, !llvm.loop !254

bb.l:                                             ; preds = %bb.h
  %i.io = load i32, ptr %i.bu, align 8
  %i.ip = sub nsw i32 %i.io, %i.h
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8            ; 16 uses
  %i.it = load ptr, ptr %i.br, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv309
  %i.iv = load ptr, ptr %i.iu, align 8            ; 4 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.iv, i64 %i.bs ; 20 uses
  %i.iy = load ptr, ptr %1, align 8
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv309
  %i.ja = load ptr, ptr %i.iz, align 8            ; 9 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jc = getelementptr [4 x i8], ptr %i.ja, i64 %i.bw
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.ca ; 11 uses
  br i1 %i.by, label %.lr.ph265.preheader, label %.preheader

.lr.ph265.preheader:                              ; preds = %bb.m
  %i.je = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check399, label %.lr.ph265.preheader491, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph265.preheader
  %scevgep383 = getelementptr i8, ptr %i.iv, i64 %i.cu ; 3 uses
  %scevgep384 = getelementptr i8, ptr %i.is, i64 %i.cs
  %scevgep385 = getelementptr i8, ptr %i.is, i64 %i.cw
  %scevgep386 = getelementptr i8, ptr %i.ja, i64 %i.da
  %bound0387 = icmp ult ptr %i.ix, %scevgep384
  %bound1388 = icmp ult ptr %i.is, %scevgep383
  %found.conflict389 = and i1 %bound0387, %bound1388
  %bound0390 = icmp ult ptr %i.ix, %i.je
  %bound1391 = icmp ult ptr %scevgep385, %scevgep383
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %found.conflict389, %found.conflict392
  %bound0394 = icmp ult ptr %i.ix, %scevgep386
  %bound1395 = icmp ult ptr %i.jd, %scevgep383
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  br i1 %conflict.rdx397, label %.lr.ph265.preheader491, label %vector.body403

vector.body403:                                   ; preds = %vector.memcheck382, %vector.body403
  %index404 = phi i64 [ %index.next415, %vector.body403 ], [ 0, %vector.memcheck382 ] ; 5 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index404 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %wide.load405 = load <4 x float>, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  %wide.load406 = load <4 x float>, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %i.jh = xor i64 %index404, -1
  %i.ji = getelementptr [4 x i8], ptr %i.je, i64 %i.jh ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 -12
  %i.jk = getelementptr i8, ptr %i.ji, i64 -28
  %wide.load407 = load <4 x float>, ptr %i.jj, align 4, !alias.scope !262
  %wide.load408 = load <4 x float>, ptr %i.jk, align 4, !alias.scope !262
  %reverse409 = shufflevector <4 x float> %wide.load407, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse410 = shufflevector <4 x float> %wide.load408, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jl = fmul <4 x float> %wide.load405, %reverse409
  %i.jm = fmul <4 x float> %wide.load406, %reverse410
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index404 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load411 = load <4 x float>, ptr %i.jn, align 4, !alias.scope !263
  %wide.load412 = load <4 x float>, ptr %i.jo, align 4, !alias.scope !263
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index404 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load413 = load <4 x float>, ptr %i.jp, align 4, !alias.scope !264
  %wide.load414 = load <4 x float>, ptr %i.jq, align 4, !alias.scope !264
  %i.jr = fmul <4 x float> %wide.load411, %wide.load413
  %i.js = fmul <4 x float> %wide.load412, %wide.load414
  %i.jt = fadd <4 x float> %i.jl, %i.jr
  %i.ju = fadd <4 x float> %i.jm, %i.js
  store <4 x float> %i.jt, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  store <4 x float> %i.ju, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %index.next415 = add nuw i64 %index404, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next415, %n.vec402
  br i1 %i.jv, label %middle.block416, label %vector.body403, !llvm.loop !265

middle.block416:                                  ; preds = %vector.body403
  br i1 %cmp.n417, label %.preheader, label %.lr.ph265.preheader491

.lr.ph265.preheader491:                           ; preds = %vector.memcheck382, %.lr.ph265.preheader, %middle.block416
  %indvars.iv285.ph = phi i64 [ 0, %vector.memcheck382 ], [ 0, %.lr.ph265.preheader ], [ %n.vec402, %middle.block416 ] ; 7 uses
  %.neg510 = or disjoint i64 %indvars.iv285.ph, 1
  br i1 %lcmp.mod499.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader491
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285.ph ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = xor i64 %indvars.iv285.ph, -1
  %i.jz = getelementptr [4 x i8], ptr %i.je, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4
  %i.kb = fmul float %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285.ph
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285.ph
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fmul float %i.kd, %i.kf
  %i.kh = fadd float %i.kb, %i.kg
  store float %i.kh, ptr %i.jw, align 4
  %indvars.iv.next286.prol = or disjoint i64 %indvars.iv285.ph, 1
  br label %.lr.ph265.prol.loopexit

.lr.ph265.prol.loopexit:                          ; preds = %.lr.ph265.prol, %.lr.ph265.preheader491
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %.lr.ph265.preheader491 ], [ %indvars.iv.next286.prol, %.lr.ph265.prol ]
  %i.ki = icmp eq i64 %wide.trip.count283, %.neg510
  br i1 %i.ki, label %.preheader, label %.lr.ph265

.preheader:                                       ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265, %middle.block416, %bb.m
  %.2.lcssa = phi i32 [ 0, %bb.m ], [ %i.ak, %middle.block416 ], [ %i.ak, %.lr.ph265 ], [ %i.ak, %.lr.ph265.prol.loopexit ] ; 2 uses
  %i.kj = icmp slt i32 %.2.lcssa, %i.cb
  br i1 %i.kj, label %.lr.ph267.preheader, label %.loopexit

.lr.ph267.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.2.lcssa to i64          ; 5 uses
  %i.kl = sub nsw i64 %wide.trip.count297, %i.kk  ; 3 uses
  %min.iters.check370 = icmp ult i64 %i.kl, 8
  br i1 %min.iters.check370, label %.lr.ph267.preheader489, label %vector.memcheck367

vector.memcheck367:                               ; preds = %.lr.ph267.preheader
  %i.km = add i64 %i.cr, %i.iw
  %i.kn = sub i64 %i.km, %i.jb
  %diff.check368 = icmp ult i64 %i.kn, 32
  br i1 %diff.check368, label %.lr.ph267.preheader489, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck367
  %n.vec373 = and i64 %i.kl, -8                   ; 3 uses
  %i.ko = add nsw i64 %n.vec373, %i.kk
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph371
  %index375 = phi i64 [ 0, %vector.ph371 ], [ %index.next378, %vector.body374 ] ; 2 uses
  %i.kp = add i64 %index375, %i.kk                ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %wide.load376 = load <4 x float>, ptr %i.kq, align 4
  %wide.load377 = load <4 x float>, ptr %i.kr, align 4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.kp ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store <4 x float> %wide.load376, ptr %i.ks, align 4
  store <4 x float> %wide.load377, ptr %i.kt, align 4
  %index.next378 = add nuw i64 %index375, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.ku, label %middle.block379, label %vector.body374, !llvm.loop !266

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %i.kl, %n.vec373
  br i1 %cmp.n380, label %.loopexit, label %.lr.ph267.preheader489

.lr.ph267.preheader489:                           ; preds = %vector.memcheck367, %.lr.ph267.preheader, %middle.block379
  %indvars.iv293.ph = phi i64 [ %i.kk, %vector.memcheck367 ], [ %i.kk, %.lr.ph267.preheader ], [ %i.ko, %middle.block379 ] ; 4 uses
  %i.kv = sub nsw i64 %wide.trip.count297, %indvars.iv293.ph
  %xtraiter500 = and i64 %i.kv, 3                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol

.lr.ph267.prol:                                   ; preds = %.lr.ph267.preheader489, %.lr.ph267.prol
  %indvars.iv293.prol = phi i64 [ %indvars.iv.next294.prol, %.lr.ph267.prol ], [ %indvars.iv293.ph, %.lr.ph267.preheader489 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph267.prol ], [ 0, %.lr.ph267.preheader489 ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293.prol
  %i.kx = load float, ptr %i.kw, align 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293.prol
  store float %i.kx, ptr %i.ky, align 4
  %indvars.iv.next294.prol = add nuw nsw i64 %indvars.iv293.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter500
  br i1 %prol.iter.cmp.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol, !llvm.loop !267

.lr.ph267.prol.loopexit:                          ; preds = %.lr.ph267.prol, %.lr.ph267.preheader489
  %indvars.iv293.unr = phi i64 [ %indvars.iv293.ph, %.lr.ph267.preheader489 ], [ %indvars.iv.next294.prol, %.lr.ph267.prol ]
  %i.kz = sub nsw i64 %indvars.iv293.ph, %wide.trip.count297
  %i.la = icmp ugt i64 %i.kz, -4
  br i1 %i.la, label %.loopexit, label %.lr.ph267

.lr.ph265:                                        ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %.lr.ph265 ], [ %indvars.iv285.unr, %.lr.ph265.prol.loopexit ] ; 7 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285 ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4
  %i.ld = xor i64 %indvars.iv285, -1
  %i.le = getelementptr [4 x i8], ptr %i.je, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4
  %i.lg = fmul float %i.lc, %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285
  %i.li = load float, ptr %i.lh, align 4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285
  %i.lk = load float, ptr %i.lj, align 4
  %i.ll = fmul float %i.li, %i.lk
  %i.lm = fadd float %i.lg, %i.ll
  store float %i.lm, ptr %i.lb, align 4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next286 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4
  %i.lp = sub i64 -2, %indvars.iv285
  %i.lq = getelementptr [4 x i8], ptr %i.je, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4
  %i.ls = fmul float %i.lo, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next286
  %i.lu = load float, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next286
  %i.lw = load float, ptr %i.lv, align 4
  %i.lx = fmul float %i.lu, %i.lw
  %i.ly = fadd float %i.ls, %i.lx
  store float %i.ly, ptr %i.ln, align 4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond289.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count288
  br i1 %exitcond289.not.1, label %.preheader, label %.lr.ph265, !llvm.loop !268

.lr.ph267:                                        ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267
  %indvars.iv293 = phi i64 [ %indvars.iv.next294.3, %.lr.ph267 ], [ %indvars.iv293.unr, %.lr.ph267.prol.loopexit ] ; 6 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293
  %i.ma = load float, ptr %i.lz, align 4
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293
  store float %i.ma, ptr %i.mb, align 4
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294
  %i.md = load float, ptr %i.mc, align 4
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294
  store float %i.md, ptr %i.me, align 4
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.1
  %i.mg = load float, ptr %i.mf, align 4
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.1
  store float %i.mg, ptr %i.mh, align 4
  %indvars.iv.next294.2 = add nuw nsw i64 %indvars.iv293, 3 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.2
  %i.mj = load float, ptr %i.mi, align 4
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.2
  store float %i.mj, ptr %i.mk, align 4
  %indvars.iv.next294.3 = add nuw nsw i64 %indvars.iv293, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next294.3, %wide.trip.count297
  br i1 %exitcond298.not.3, label %.loopexit, label %.lr.ph267, !llvm.loop !269

bb.n:                                             ; preds = %bb.l
  br i1 %i.by, label %.lr.ph269.preheader, label %.loopexit

.lr.ph269.preheader:                              ; preds = %bb.n
  %i.ml = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check348, label %.lr.ph269.preheader488, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph269.preheader
  %scevgep = getelementptr i8, ptr %i.iv, i64 %i.cl ; 3 uses
  %scevgep337 = getelementptr i8, ptr %i.is, i64 %i.cj
  %scevgep338 = getelementptr i8, ptr %i.is, i64 %i.cn
  %scevgep339 = getelementptr i8, ptr %i.ja, i64 %i.cj
  %bound0 = icmp ult ptr %i.ix, %scevgep337
  %bound1 = icmp ult ptr %i.is, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0340 = icmp ult ptr %i.ix, %i.ml
  %bound1341 = icmp ult ptr %scevgep338, %scevgep
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx = or i1 %found.conflict, %found.conflict342
  %bound0343 = icmp ult ptr %i.ix, %scevgep339
  %bound1344 = icmp ult ptr %i.ja, %scevgep
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph269.preheader488, label %vector.body352

vector.body352:                                   ; preds = %vector.memcheck336, %vector.body352
  %index353 = phi i64 [ %index.next363, %vector.body352 ], [ 0, %vector.memcheck336 ] ; 5 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index353 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16 ; 2 uses
  %wide.load354 = load <4 x float>, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  %wide.load355 = load <4 x float>, ptr %i.mn, align 4, !alias.scope !270, !noalias !273
  %i.mo = xor i64 %index353, -1
  %i.mp = getelementptr [4 x i8], ptr %i.ml, i64 %i.mo ; 2 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 -12
  %i.mr = getelementptr i8, ptr %i.mp, i64 -28
  %wide.load356 = load <4 x float>, ptr %i.mq, align 4, !alias.scope !277
  %wide.load357 = load <4 x float>, ptr %i.mr, align 4, !alias.scope !277
  %reverse = shufflevector <4 x float> %wide.load356, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse358 = shufflevector <4 x float> %wide.load357, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ms = fmul <4 x float> %wide.load354, %reverse
  %i.mt = fmul <4 x float> %wide.load355, %reverse358
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index353 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load359 = load <4 x float>, ptr %i.mu, align 4, !alias.scope !278
  %wide.load360 = load <4 x float>, ptr %i.mv, align 4, !alias.scope !278
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index353 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %wide.load361 = load <4 x float>, ptr %i.mw, align 4, !alias.scope !279
  %wide.load362 = load <4 x float>, ptr %i.mx, align 4, !alias.scope !279
  %i.my = fmul <4 x float> %wide.load359, %wide.load361
  %i.mz = fmul <4 x float> %wide.load360, %wide.load362
  %i.na = fadd <4 x float> %i.ms, %i.my
  %i.nb = fadd <4 x float> %i.mt, %i.mz
  store <4 x float> %i.na, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  store <4 x float> %i.nb, ptr %i.mn, align 4, !alias.scope !270, !noalias !273
  %index.next363 = add nuw i64 %index353, 8       ; 2 uses
  %i.nc = icmp eq i64 %index.next363, %n.vec351
  br i1 %i.nc, label %middle.block364, label %vector.body352, !llvm.loop !280

middle.block364:                                  ; preds = %vector.body352
  br i1 %cmp.n365, label %.loopexit, label %.lr.ph269.preheader488

.lr.ph269.preheader488:                           ; preds = %vector.memcheck336, %.lr.ph269.preheader, %middle.block364
  %indvars.iv299.ph = phi i64 [ 0, %vector.memcheck336 ], [ 0, %.lr.ph269.preheader ], [ %n.vec351, %middle.block364 ] ; 7 uses
  %.neg511 = or disjoint i64 %indvars.iv299.ph, 1
  br i1 %lcmp.mod503.not, label %.lr.ph269.prol.loopexit, label %.lr.ph269.prol

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader488
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299.ph ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4
  %i.nf = xor i64 %indvars.iv299.ph, -1
  %i.ng = getelementptr [4 x i8], ptr %i.ml, i64 %i.nf
  %i.nh = load float, ptr %i.ng, align 4
  %i.ni = fmul float %i.ne, %i.nh
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299.ph
  %i.nk = load float, ptr %i.nj, align 4
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299.ph
  %i.nm = load float, ptr %i.nl, align 4
  %i.nn = fmul float %i.nk, %i.nm
  %i.no = fadd float %i.ni, %i.nn
  store float %i.no, ptr %i.nd, align 4
  %indvars.iv.next300.prol = or disjoint i64 %indvars.iv299.ph, 1
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %.lr.ph269.preheader488
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph269.preheader488 ], [ %indvars.iv.next300.prol, %.lr.ph269.prol ]
  %i.np = icmp eq i64 %wide.trip.count283, %.neg511
  br i1 %i.np, label %.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %.lr.ph269
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.1, %.lr.ph269 ], [ %indvars.iv299.unr, %.lr.ph269.prol.loopexit ] ; 7 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = xor i64 %indvars.iv299, -1
  %i.nt = getelementptr [4 x i8], ptr %i.ml, i64 %i.ns
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = fmul float %i.nr, %i.nu
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299
  %i.nx = load float, ptr %i.nw, align 4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = fmul float %i.nx, %i.nz
  %i.ob = fadd float %i.nv, %i.oa
  store float %i.ob, ptr %i.nq, align 4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 3 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next300 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4
  %i.oe = sub i64 -2, %indvars.iv299
  %i.of = getelementptr [4 x i8], ptr %i.ml, i64 %i.oe
  %i.og = load float, ptr %i.of, align 4
  %i.oh = fmul float %i.od, %i.og
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next300
  %i.oj = load float, ptr %i.oi, align 4
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next300
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = fmul float %i.oj, %i.ol
  %i.on = fadd float %i.oh, %i.om
  store float %i.on, ptr %i.oc, align 4
  %indvars.iv.next300.1 = add nuw nsw i64 %indvars.iv299, 2 ; 2 uses
  %exitcond303.not.1 = icmp eq i64 %indvars.iv.next300.1, %wide.trip.count302
  br i1 %exitcond303.not.1, label %.loopexit, label %.lr.ph269, !llvm.loop !281

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph263.prol.loopexit, %.lr.ph263, %.lr.ph267.prol.loopexit, %.lr.ph267, %.lr.ph269.prol.loopexit, %.lr.ph269, %middle.block484, %middle.block453, %middle.block379, %middle.block364, %bb.j, %bb.k, %.preheader, %bb.n
  %i.oo = load ptr, ptr %i.br, align 8
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %indvars.iv309
  %i.oq = load ptr, ptr %i.op, align 8            ; 2 uses
  %i.or = ptrtoaddr ptr %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.oq, i64 %i.cc ; 6 uses
  %i.ot = load ptr, ptr %1, align 8
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv309
  %i.ov = load ptr, ptr %i.ou, align 8            ; 2 uses
  %i.ow = ptrtoaddr ptr %i.ov to i64
  %i.ox = getelementptr inbounds i8, ptr %i.ov, i64 %i.cd ; 6 uses
  br i1 %i.ce, label %.lr.ph271.preheader, label %._crit_edge

.lr.ph271.preheader:                              ; preds = %.loopexit
  br i1 %min.iters.check, label %.lr.ph271.preheader487, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph271.preheader
  %i.oy = add i64 %i.ci, %i.or
  %i.oz = add i64 %i.cd, %i.ow
  %i.pa = sub i64 %i.oy, %i.oz
  %diff.check = icmp ult i64 %i.pa, 32
  br i1 %diff.check, label %.lr.ph271.preheader487, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %index ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %wide.load = load <4 x float>, ptr %i.pb, align 4
  %wide.load335 = load <4 x float>, ptr %i.pc, align 4
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %index ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store <4 x float> %wide.load, ptr %i.pd, align 4
  store <4 x float> %wide.load335, ptr %i.pe, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph271.preheader487

.lr.ph271.preheader487:                           ; preds = %vector.memcheck, %.lr.ph271.preheader, %middle.block
  %indvars.iv304.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph271.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod506.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol

.lr.ph271.prol:                                   ; preds = %.lr.ph271.preheader487, %.lr.ph271.prol
  %indvars.iv304.prol = phi i64 [ %indvars.iv.next305.prol, %.lr.ph271.prol ], [ %indvars.iv304.ph, %.lr.ph271.preheader487 ] ; 3 uses
  %prol.iter507 = phi i64 [ %prol.iter507.next, %.lr.ph271.prol ], [ 0, %.lr.ph271.preheader487 ]
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv304.prol
  %i.ph = load float, ptr %i.pg, align 4
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv304.prol
  store float %i.ph, ptr %i.pi, align 4
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv304.prol, 1 ; 2 uses
  %prol.iter507.next = add i64 %prol.iter507, 1   ; 2 uses
  %prol.iter507.cmp.not = icmp eq i64 %prol.iter507.next, %xtraiter505
  br i1 %prol.iter507.cmp.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol, !llvm.loop !283

.lr.ph271.prol.loopexit:                          ; preds = %.lr.ph271.prol, %.lr.ph271.preheader487
  %indvars.iv304.unr = phi i64 [ %indvars.iv304.ph, %.lr.ph271.preheader487 ], [ %indvars.iv.next305.prol, %.lr.ph271.prol ]
  %i.pj = sub nsw i64 %indvars.iv304.ph, %wide.trip.count307
  %i.pk = icmp ugt i64 %i.pj, -4
  br i1 %i.pk, label %._crit_edge, label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.3, %.lr.ph271 ], [ %indvars.iv304.unr, %.lr.ph271.prol.loopexit ] ; 6 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv304
  %i.pm = load float, ptr %i.pl, align 4
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv304
  store float %i.pm, ptr %i.pn, align 4
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv.next305
  %i.pp = load float, ptr %i.po, align 4
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next305
  store float %i.pp, ptr %i.pq, align 4
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv.next305.1
  %i.ps = load float, ptr %i.pr, align 4
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next305.1
  store float %i.ps, ptr %i.pt, align 4
  %indvars.iv.next305.2 = add nuw nsw i64 %indvars.iv304, 3 ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv.next305.2
  %i.pv = load float, ptr %i.pu, align 4
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next305.2
  store float %i.pv, ptr %i.pw, align 4
  %indvars.iv.next305.3 = add nuw nsw i64 %indvars.iv304, 4 ; 2 uses
  %exitcond308.not.3 = icmp eq i64 %indvars.iv.next305.3, %wide.trip.count307
  br i1 %exitcond308.not.3, label %._crit_edge, label %.lr.ph271, !llvm.loop !284

._crit_edge:                                      ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271, %middle.block, %.loopexit
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 2 uses
  %i.px = load i32, ptr %i.bl, align 4
  %i.py = sext i32 %i.px to i64
  %i.pz = icmp slt i64 %indvars.iv.next310, %i.py
  br i1 %i.pz, label %bb.h, label %._crit_edge275.loopexit, !llvm.loop !285

._crit_edge275.loopexit:                          ; preds = %._crit_edge
  %.pre312 = load i64, ptr %i.bj, align 8
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.loopexit, %bb.g
  %i.qa = phi i64 [ %.pre312, %._crit_edge275.loopexit ], [ %i.bk, %bb.g ]
  %.not242 = icmp eq i64 %i.qa, 0
  %sext = shl i64 %i.an, 32
  %i.qb = ashr exact i64 %sext, 32
  %storemerge = select i1 %.not242, i64 %i.qb, i64 0
  store i64 %storemerge, ptr %i.bj, align 8
  %i.qc = load i32, ptr %i.k, align 8
  %i.qd = icmp eq i32 %i.qc, -1
  br i1 %i.qd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge275
  store i32 %.256, ptr %i.k, align 8
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge275
  store i32 %., ptr %i.k, align 8
  %i.qe = load i64, ptr %i.p, align 8
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qe
  %i.qg = load i64, ptr %i.qf, align 8
  %i.qh = sdiv i64 %i.qg, 4
  %i.qi = load i64, ptr %i.n, align 8
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qi
  %i.qk = load i64, ptr %i.qj, align 8
  %i.ql = sdiv i64 %i.qk, 4
  %i.qm = add nsw i64 %i.ql, %i.qh
  %i.qn = zext nneg i32 %i.h to i64
  %i.qo = ashr i64 %i.qm, %i.qn
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = add i32 %., %i.qp
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge243 = phi i32 [ %i.qq, %bb.p ], [ %.256, %bb.o ]
  store i32 %storemerge243, ptr %i.i, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %i.qr = getelementptr inbounds nuw i8, ptr %i.f, i64 296 ; 3 uses
  %i.qs = load i64, ptr %i.qr, align 8            ; 2 uses
  %i.qt = icmp eq i64 %i.qs, -1
  br i1 %i.qt, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.qu = load i64, ptr %i.p, align 8
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qu
  %i.qw = load i64, ptr %i.qv, align 8
  %i.qx = sdiv i64 %i.qw, 4
  %i.qy = load i64, ptr %i.n, align 8
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qy
  %i.ra = load i64, ptr %i.qz, align 8
  %i.rb = sdiv i64 %i.ra, 4
  %i.rc = add i64 %i.qx, %i.qs
  %i.rd = add i64 %i.rc, %i.rb
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %storemerge244 = phi i64 [ %i.rd, %bb.s ], [ 0, %bb.r ]
  store i64 %storemerge244, ptr %i.qr, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.rf = load i64, ptr %i.re, align 8            ; 2 uses
  %i.rg = icmp eq i64 %i.rf, -1
  br i1 %i.rg, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ri = load i64, ptr %i.rh, align 8            ; 4 uses
  %.not248 = icmp eq i64 %i.ri, -1
  br i1 %.not248, label %bb.ae, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.ri, ptr %i.re, align 8
  %i.rj = load i64, ptr %i.qr, align 8            ; 2 uses
  %i.rk = icmp sgt i64 %i.rj, %i.ri
  br i1 %i.rk, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.rm = load i32, ptr %i.rl, align 8
  %.not249 = icmp eq i32 %i.rm, 0
  %i.rn = sub nsw i64 %i.rj, %i.ri
  %i.ro = zext nneg i32 %i.h to i64
  %i.rp = lshr i64 %i.rn, %i.ro
  %i.rq = trunc i64 %i.rp to i32                  ; 2 uses
  br i1 %.not249, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.rr = load i32, ptr %i.i, align 4
  %i.rs = sub i32 %i.rr, %i.rq
  store i32 %i.rs, ptr %i.i, align 4
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.rt = load i32, ptr %i.k, align 8
  %i.ru = add i32 %i.rt, %i.rq
  %i.rv = load i32, ptr %i.i, align 4
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ru, i32 %i.rv)
  store i32 %spec.store.select, ptr %i.k, align 8
  br label %bb.ae

bb.z:                                             ; preds = %bb.t
  %i.rw = load i64, ptr %i.p, align 8
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8
  %i.rz = sdiv i64 %i.ry, 4
  %i.sa = load i64, ptr %i.n, align 8
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.sa
  %i.sc = load i64, ptr %i.sb, align 8
  %i.sd = sdiv i64 %i.sc, 4
  %i.se = add i64 %i.rz, %i.rf
  %i.sf = add i64 %i.se, %i.sd                    ; 4 uses
  store i64 %i.sf, ptr %i.re, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8            ; 6 uses
  %.not245 = icmp eq i64 %i.sh, -1
  %.not246 = icmp eq i64 %i.sf, %i.sh
  %or.cond257 = select i1 %.not245, i1 true, i1 %.not246
  br i1 %or.cond257, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.si = icmp sgt i64 %i.sf, %i.sh
  br i1 %i.si, label %bb.ab, label %bb.ad

end_hunk_1
begin_hunk_2_@_ov_getlap:bb.a

bb.k:                                             ; preds = %.lr.ph79, %bb.k
  %indvars.iv85 = phi i64 [ 0, %.lr.ph79 ], [ %indvars.iv.next86, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv85
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bf
  call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bi, i1 false)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.bm = load i32, ptr %i.g, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next86, %i.bn
  br i1 %i.bo, label %bb.k, label %.loopexit, !llvm.loop !324

bb.l:                                             ; preds = %bb.j
  br i1 %i.be, label %.lr.ph77, label %.loopexit

.lr.ph77:                                         ; preds = %bb.l
  %i.bp = sub nsw i32 %4, %.053.ph
  %spec.select66 = call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.bp)
  %i.bq = sext i32 %.053.ph to i64
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = sext i32 %spec.select66 to i64
  %i.bt = shl nsw i64 %i.bs, 2
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph77, %bb.m
  %indvars.iv82 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next83, %bb.m ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv82
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bq
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv82
  %i.by = load ptr, ptr %i.bx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.by, i64 %i.bt, i1 false)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bz = load i32, ptr %i.g, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next83, %i.ca
  br i1 %i.cb, label %bb.m, label %.loopexit, !llvm.loop !325

.loopexit:                                        ; preds = %bb.m, %bb.k, %bb.l, %.preheader, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @vorbis_synthesis_lapout(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5808
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add nsw i32 %i.f, 1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = ashr i64 %i.j, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = load i64, ptr %i.d, align 8
  %i.p = ashr i64 %i.o, %i.l                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = ashr i64 %i.s, %i.l                      ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.w = load i32, ptr %i.v, align 8              ; 4 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %sext = shl i64 %i.t, 32                        ; 2 uses
  %i.aa = ashr exact i64 %sext, 32                ; 2 uses
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %.preheader109, label %bb.c

.preheader109:                                    ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph112, label %._crit_edge113.split

.lr.ph112:                                        ; preds = %.preheader109
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = icmp sgt i32 %i.u, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge113.split

.lr.ph.preheader:                                 ; preds = %.lr.ph112
  %i.ah = and i64 %i.t, 2147483647                ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 8
  %n.vec = and i64 %i.t, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next133, %._crit_edge ] ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv132
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.al, align 4
  %wide.load164 = load <4 x float>, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load165 = load <4 x float>, ptr %i.an, align 4
  %wide.load166 = load <4 x float>, ptr %i.ao, align 4
  store <4 x float> %wide.load165, ptr %i.al, align 4
  store <4 x float> %wide.load166, ptr %i.am, align 4
  store <4 x float> %wide.load, ptr %i.an, align 4
  store <4 x float> %wide.load164, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !326

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.as = load float, ptr %gep, align 4
  store float %i.as, ptr %i.aq, align 4
  store float %i.ar, ptr %gep, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !327

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.at = load i32, ptr %i.ac, align 4
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next133, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge113.split.loopexit, !llvm.loop !328

._crit_edge113.split.loopexit:                    ; preds = %._crit_edge
  %.pre = load i32, ptr %i.v, align 8
  %.pre150.pre = load i64, ptr %i.g, align 8
  br label %._crit_edge113.split

._crit_edge113.split:                             ; preds = %._crit_edge113.split.loopexit, %.lr.ph112, %.preheader109
  %.pre150 = phi i64 [ %.pre150.pre, %._crit_edge113.split.loopexit ], [ %i.h, %.lr.ph112 ], [ %i.h, %.preheader109 ]
  %i.aw = phi i32 [ %.pre, %._crit_edge113.split.loopexit ], [ %i.w, %.lr.ph112 ], [ %i.w, %.preheader109 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub nsw i32 %i.ay, %i.u
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = sub nsw i32 %i.aw, %i.u                 ; 2 uses
  store i32 %i.ba, ptr %i.v, align 8
  store i64 0, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge113.split, %bb.b
  %i.bb = phi i32 [ %i.ba, %._crit_edge113.split ], [ %i.w, %bb.b ] ; 5 uses
  %i.bc = phi i64 [ %.pre150, %._crit_edge113.split ], [ %i.h, %bb.b ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = xor i64 %i.bc, %i.be
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %.preheader107, label %bb.d

.preheader107:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph126, label %.preheader107.._crit_edge127.split_crit_edge

.preheader107.._crit_edge127.split_crit_edge:     ; preds = %.preheader107
  %.pre155 = sub nsw i32 %i.u, %i.q
  %.pre156 = sdiv i32 %.pre155, 2
  br label %._crit_edge127.split

.lr.ph126:                                        ; preds = %.preheader107
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = sub nsw i32 %i.u, %i.q
  %i.bm = sdiv i32 %i.bl, 2                       ; 3 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = add nsw i32 %i.u, %i.q                  ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %.lr.ph123.preheader, label %._crit_edge127.split

.lr.ph123.preheader:                              ; preds = %.lr.ph126
  %i.bq = lshr i32 %i.bo, 1
  %i.br = zext nneg i32 %i.bq to i64              ; 4 uses
  %2 = mul nsw i64 %i.bn, -4
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 1) ; 2 uses
  %min.iters.check184 = icmp ult i32 %i.bo, 16
  %diff.check181 = icmp ult i64 %2, 32
  %or.cond = select i1 %min.iters.check184, i1 true, i1 %diff.check181
  %n.vec187 = and i64 %i.bs, 1073741816           ; 3 uses
  %i.bt = sub nsw i64 %i.br, %n.vec187
  %cmp.n194 = icmp eq i64 %i.bs, %n.vec187
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge124
  %indvars.iv144 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next145, %._crit_edge124 ] ; 2 uses
  %i.bu = load ptr, ptr %i.bk, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv144
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bn ; 2 uses
  br i1 %or.cond, label %scalar.ph183.preheader, label %vector.body188

vector.body188:                                   ; preds = %.lr.ph123, %vector.body188
  %index189 = phi i64 [ %index.next192, %vector.body188 ], [ 0, %.lr.ph123 ] ; 2 uses
  %i.by = xor i64 %index189, -1
  %i.bz = add i64 %i.by, %i.br                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -28
  %wide.load190 = load <4 x float>, ptr %i.cb, align 4
  %wide.load191 = load <4 x float>, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bz ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -12
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -28
  store <4 x float> %wide.load190, ptr %i.ce, align 4
  store <4 x float> %wide.load191, ptr %i.cf, align 4
  %index.next192 = add nuw i64 %index189, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.cg, label %middle.block193, label %vector.body188, !llvm.loop !329

middle.block193:                                  ; preds = %vector.body188
  br i1 %cmp.n194, label %._crit_edge124, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %.lr.ph123, %middle.block193
  %indvars.iv141.ph = phi i64 [ %i.br, %.lr.ph123 ], [ %i.bt, %middle.block193 ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph183 ], [ %indvars.iv141.ph, %scalar.ph183.preheader ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1 ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next142
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next142
  store float %i.ci, ptr %i.cj, align 4
  %i.ck = icmp sgt i64 %indvars.iv141, 1
  br i1 %i.ck, label %scalar.ph183, label %._crit_edge124, !llvm.loop !330

._crit_edge124:                                   ; preds = %scalar.ph183, %middle.block193
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.cl = load i32, ptr %i.bh, align 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next145, %i.cm
  br i1 %i.cn, label %.lr.ph123, label %._crit_edge127.split.loopexit, !llvm.loop !331

._crit_edge127.split.loopexit:                    ; preds = %._crit_edge124
  %.pre152 = load i32, ptr %i.v, align 8
  br label %._crit_edge127.split

._crit_edge127.split:                             ; preds = %.preheader107.._crit_edge127.split_crit_edge, %._crit_edge127.split.loopexit, %.lr.ph126
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader107.._crit_edge127.split_crit_edge ], [ %i.bm, %._crit_edge127.split.loopexit ], [ %i.bm, %.lr.ph126 ] ; 2 uses
  %i.co = phi i32 [ %i.bb, %.preheader107.._crit_edge127.split_crit_edge ], [ %.pre152, %._crit_edge127.split.loopexit ], [ %i.bb, %.lr.ph126 ]
  %i.cp = add nsw i32 %i.co, %.pre-phi157
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.cq = icmp eq i64 %i.be, 0
  br i1 %i.cq, label %.preheader108, label %bb.e

.preheader108:                                    ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph119, label %._crit_edge120.split

.lr.ph119:                                        ; preds = %.preheader108
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %sext106 = shl i64 %i.p, 32                     ; 2 uses
  %i.cv = ashr exact i64 %sext106, 32
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = icmp sgt i32 %i.q, 0
  br i1 %i.cx, label %.lr.ph116.preheader, label %._crit_edge120.split

.lr.ph116.preheader:                              ; preds = %.lr.ph119
  %i.cy = and i64 %i.p, 2147483647                ; 5 uses
  %i.cz = lshr exact i64 %sext106, 30
  %i.da = ashr exact i64 %sext, 30
  %3 = sub nsw i64 %i.cz, %i.da
  %4 = tail call i64 @llvm.smax.i64(i64 %i.cy, i64 1) ; 2 uses
  %min.iters.check168 = icmp samesign ult i64 %i.cy, 8
  %diff.check = icmp ult i64 %3, 32
  %or.cond196 = select i1 %min.iters.check168, i1 true, i1 %diff.check
  %n.vec171 = and i64 %4, 2147483640              ; 3 uses
  %i.db = sub nsw i64 %i.cy, %n.vec171
  %cmp.n178 = icmp eq i64 %4, %n.vec171
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117
  %indvars.iv138 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next139, %._crit_edge117 ] ; 2 uses
  %i.dc = load ptr, ptr %i.cu, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv138
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.aa
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.cw ; 2 uses
  br i1 %or.cond196, label %scalar.ph167.preheader, label %vector.body172

vector.body172:                                   ; preds = %.lr.ph116, %vector.body172
  %index173 = phi i64 [ %index.next176, %vector.body172 ], [ 0, %.lr.ph116 ] ; 2 uses
  %i.dh = xor i64 %index173, -1
  %i.di = add i64 %i.cy, %i.dh                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -12
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 -28
  %wide.load174 = load <4 x float>, ptr %i.dk, align 4
  %wide.load175 = load <4 x float>, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -28
  store <4 x float> %wide.load174, ptr %i.dn, align 4
  store <4 x float> %wide.load175, ptr %i.do, align 4
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.dp, label %middle.block177, label %vector.body172, !llvm.loop !332

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %._crit_edge117, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph116, %middle.block177
  %indvars.iv135.ph = phi i64 [ %i.cy, %.lr.ph116 ], [ %i.db, %middle.block177 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph167 ], [ %indvars.iv135.ph, %scalar.ph167.preheader ] ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next136
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next136
  store float %i.dr, ptr %i.ds, align 4
  %i.dt = icmp sgt i64 %indvars.iv135, 1
  br i1 %i.dt, label %scalar.ph167, label %._crit_edge117, !llvm.loop !333

._crit_edge117:                                   ; preds = %scalar.ph167, %middle.block177
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.du = load i32, ptr %i.cr, align 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp slt i64 %indvars.iv.next139, %i.dv
  br i1 %i.dw, label %.lr.ph116, label %._crit_edge120.split.loopexit, !llvm.loop !334

._crit_edge120.split.loopexit:                    ; preds = %._crit_edge117
  %.pre151 = load i32, ptr %i.v, align 8
  br label %._crit_edge120.split

._crit_edge120.split:                             ; preds = %._crit_edge120.split.loopexit, %.lr.ph119, %.preheader108
  %i.dx = phi i32 [ %.pre151, %._crit_edge120.split.loopexit ], [ %i.bb, %.lr.ph119 ], [ %i.bb, %.preheader108 ]
  %i.dy = sub nsw i32 %i.u, %i.q                  ; 2 uses
  %i.dz = add nsw i32 %i.dx, %i.dy
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge127.split, %._crit_edge120.split
  %.sink = phi i32 [ %i.dz, %._crit_edge120.split ], [ %i.cp, %._crit_edge127.split ] ; 2 uses
  %.sink163 = phi i32 [ %i.dy, %._crit_edge120.split ], [ %.pre-phi157, %._crit_edge127.split ]
  store i32 %.sink, ptr %i.v, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = add nsw i32 %i.eb, %.sink163
  store i32 %i.ec, ptr %i.ea, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.ed = phi i32 [ %i.bb, %bb.d ], [ %.sink, %.sink.split ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph129, %bb.f
  %indvars.iv147 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next148, %bb.f ] ; 3 uses
  %i.ej = load ptr, ptr %i.eh, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv147
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load i32, ptr %i.v, align 8
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.en
  %i.ep = load ptr, ptr %i.ei, align 8
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv147
  store ptr %i.eo, ptr %i.eq, align 8
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.er = load i32, ptr %i.ee, align 4
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next148, %i.es
  br i1 %i.et, label %bb.f, label %._crit_edge130, !llvm.loop !335

._crit_edge130:                                   ; preds = %bb.f, %.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  store ptr %i.ev, ptr %1, align 8
  %.pre153 = load i32, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge130, %bb.e
  %i.ew = phi i32 [ %.pre153, %._crit_edge130 ], [ %i.ed, %bb.e ]
  %i.ex = add nsw i32 %i.u, %i.n
  %i.ey = sub i32 %i.ex, %i.ew
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.099 = phi i32 [ %i.ey, %bb.g ], [ 0, %bb.a ]
  ret i32 %.099
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_analysis_output_always(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.131, ptr noundef %0, i32 noundef %1) #62 ; 0 uses
  %i.c = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.132) ; 14 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @perror(ptr noundef nonnull @.str.133) #64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %.not36 = icmp eq i32 %4, 0
  %i.e = uitofp nneg i32 %3 to float              ; 2 uses
  %.not37 = icmp eq i64 %6, 0                     ; 2 uses
  %.not38 = icmp eq i32 %5, 0                     ; 2 uses
  %wide.trip.count71 = zext nneg i32 %3 to i64    ; 6 uses
  br i1 %.not36, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not38, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not37, label %.lr.ph.split.us.split.us.split.us, label %.lr.ph.split.us.split.us.split

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph.split.us.split.us.split.us ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.f = trunc nuw nsw i64 %indvars.iv68 to i32
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.g) #62 ; 0 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv68
  %i.j = load float, ptr %i.i, align 4
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %i.k) #62 ; 0 uses
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us, !llvm.loop !303

.lr.ph.split.us.split.us.split:                   ; preds = %.lr.ph.split.us.split.us, %.lr.ph.split.us.split.us.split
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.lr.ph.split.us.split.us.split ], [ 0, %.lr.ph.split.us.split.us ] ; 3 uses
  %i.m = add nsw i64 %6, %indvars.iv63
  %i.n = sitofp i64 %i.m to double
  %i.o = fdiv double %i.n, 8.000000e+03
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.o) #62 ; 0 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv63
  %i.r = load float, ptr %i.q, align 4
  %i.s = fpext float %i.r to double
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.135, double noundef %i.s) #62 ; 0 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count71
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split, !llvm.loop !303

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not37, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %bb.e
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %bb.e ], [ 0, %.lr.ph.split.us.split ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv58 to i32
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.134, double noundef %i.v) #62 ; 0 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv58
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = fcmp oeq float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.aa = tail call float @llvm.fabs.f32(float %i.y)
  %i.ab = bitcast float %i.aa to i32
  %i.ac = uitofp nneg i32 %i.ab to float
end_hunk_2
begin_hunk_3_@_vp_quantize_couple_sort:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @apsort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #29 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load float, ptr %i.a, align 4
  %i.c = tail call float @llvm.fabs.f32(float %i.b) ; 2 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = load float, ptr %i.d, align 4
  %i.f = tail call float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.g = fcmp olt float %i.c, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = fcmp ogt float %i.c, %i.f
  %.neg = sext i1 %i.i to i32
  %i.j = add nsw i32 %.neg, %i.h
  ret i32 %i.j
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_vp_noise_normalize_sort(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = alloca i8, i64 %i.g, align 16            ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp slt i32 %i.j, %i.a
  br i1 %i.k, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge42
  %.03444 = phi i32 [ %i.j, %.lr.ph46 ], [ %i.bf, %._crit_edge42 ] ; 5 uses
  %.03543 = phi i32 [ %i.e, %.lr.ph46 ], [ %spec.select, %._crit_edge42 ] ; 2 uses
  %i.m = add nsw i32 %.03444, %.03543
  %i.n = icmp sgt i32 %i.m, %i.a
  %i.o = sub nsw i32 %i.a, %.03444
  %spec.select = select i1 %i.n, i32 %i.o, i32 %.03543 ; 7 uses
  %i.p = icmp sgt i32 %spec.select, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.q = sext i32 %.03444 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.r = zext nneg i32 %spec.select to i64        ; 8 uses
  %min.iters.check59 = icmp ult i32 %spec.select, 4
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph
  %n.vec62 = and i64 %i.r, 2147483644             ; 3 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph60
  %index64 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body63 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph60 ], [ %vec.ind.next, %vector.body63 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr [4 x i8], ptr %invariant.gep, <2 x i64> %vec.ind
  %wide.gep65 = getelementptr [4 x i8], ptr %invariant.gep, <2 x i64> %step.add
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %wide.gep, ptr %i.s, align 16
  store <2 x ptr> %wide.gep65, ptr %i.t, align 16
  %index.next66 = add nuw i64 %index64, 4         ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.u = icmp eq i64 %index.next66, %n.vec62
  br i1 %i.u, label %middle.block67, label %vector.body63, !llvm.loop !593

middle.block67:                                   ; preds = %vector.body63
  %cmp.n68 = icmp eq i64 %n.vec62, %i.r
  br i1 %cmp.n68, label %.lr.ph41, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %.lr.ph, %middle.block67
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec62, %middle.block67 ]
  br label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.preheader, %scalar.ph58
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph58 ], [ %indvars.iv.ph, %scalar.ph58.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %gep, ptr %i.v, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.r
  br i1 %i.w, label %scalar.ph58, label %.lr.ph41, !llvm.loop !594

._crit_edge:                                      ; preds = %bb.b
  %.pre = sext i32 %spec.select to i64
  call void @qsort(ptr noundef nonnull %i.h, i64 noundef %.pre, i64 noundef 8, ptr noundef nonnull @apsort) #62
  br label %._crit_edge42

.lr.ph41:                                         ; preds = %scalar.ph58, %middle.block67
  call void @qsort(ptr noundef nonnull %i.h, i64 noundef %i.r, i64 noundef 8, ptr noundef nonnull @apsort) #62
  %i.x = sub i32 %.03444, %i.j                    ; 4 uses
  %min.iters.check = icmp ult i32 %spec.select, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph41
  %i.y = add nsw i64 %i.r, -1                     ; 2 uses
  %i.z = trunc nsw i64 %i.y to i32
  %i.aa = add i32 %i.x, %i.z
  %i.ab = icmp slt i32 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.y, 4294967295
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.r, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ae, align 16
  %wide.load57 = load <2 x ptr>, ptr %i.af, align 16
  %i.ag = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.ah = ptrtoint <2 x ptr> %wide.load57 to <2 x i64>
  %i.ai = sub <2 x i64> %i.ag, %broadcast.splat
  %i.aj = sub <2 x i64> %i.ah, %broadcast.splat
  %i.ak = lshr exact <2 x i64> %i.ai, splat (i64 2)
  %i.al = lshr exact <2 x i64> %i.aj, splat (i64 2)
  %i.am = trunc <2 x i64> %i.ak to <2 x i32>
  %i.an = trunc <2 x i64> %i.al to <2 x i32>
  %i.ao = trunc nuw nsw i64 %index to i32
  %i.ap = add i32 %i.x, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store <2 x i32> %i.am, ptr %i.ar, align 4
  store <2 x i32> %i.an, ptr %i.as, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %._crit_edge42, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph41, %middle.block
  %indvars.iv49.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph41 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %scalar.ph ], [ %indvars.iv49.ph, %scalar.ph.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv49
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  %i.ay = lshr exact i64 %i.ax, 2
  %i.az = trunc i64 %i.ay to i32
  %i.ba = trunc nuw nsw i64 %indvars.iv49 to i32
  %i.bb = add i32 %i.x, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  store i32 %i.az, ptr %i.bd, align 4
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next50, %i.r
  br i1 %i.be, label %scalar.ph, label %._crit_edge42, !llvm.loop !596

._crit_edge42:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge
  %i.bf = add nsw i32 %spec.select, %.03444       ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.a
  br i1 %i.bg, label %bb.b, label %._crit_edge47, !llvm.loop !597

._crit_edge47:                                    ; preds = %._crit_edge42, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_noise_normalize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #32 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i32, ptr %0, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.g = load i32, ptr %i.f, align 8              ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 508
  %i.i = load i32, ptr %i.h, align 4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.c) ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 500
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.loopexit86, label %.preheader87

.preheader87:                                     ; preds = %bb.a
  %i.l = icmp sgt i32 %spec.select, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.preheader85

.lr.ph.preheader:                                 ; preds = %.preheader87
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %spec.select, 4
  %i.m = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.m, 16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader189, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x float>, ptr %i.n, align 4
  %i.o = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <4 x float> %i.o, ptr %i.p, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !598

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader85, label %.lr.ph.preheader189

.lr.ph.preheader189:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader189, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader189 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader189 ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.s = load float, ptr %i.r, align 4
  %i.t = tail call float @llvm.rint.f32(float %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  store float %i.t, ptr %i.u, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !599

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader189
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader189 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %.preheader85, label %.lr.ph

.preheader85:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader87
  %.076.lcssa = phi i32 [ 0, %.preheader87 ], [ %spec.select, %middle.block ], [ %spec.select, %.lr.ph ], [ %spec.select, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.x = add nsw i32 %.076.lcssa, %i.g            ; 2 uses
  %.not83102 = icmp sgt i32 %i.x, %i.c
  br i1 %.not83102, label %.loopexit86, label %.preheader84.lr.ph

.preheader84.lr.ph:                               ; preds = %.preheader85
  %i.y = icmp sgt i32 %i.g, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  br i1 %i.y, label %.preheader84.us.preheader, label %.preheader84

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph
  %i.aa = zext nneg i32 %i.g to i64               ; 5 uses
  %narrow = add nuw nsw i32 %i.g, %.076.lcssa
  %i.ab = zext nneg i32 %narrow to i64            ; 2 uses
  %i.ac = sext i32 %i.c to i64
  %wide.trip.count132 = zext nneg i32 %i.g to i64
  %i.ad = add nsw i64 %i.ab, -1
  br label %.preheader84.us

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %.loopexit.us
  %indvar = phi i64 [ 0, %.preheader84.us.preheader ], [ %indvar.next, %.loopexit.us ] ; 2 uses
  %indvars.iv139 = phi i64 [ %i.ab, %.preheader84.us.preheader ], [ %indvars.iv.next140, %.loopexit.us ] ; 5 uses
  %.177103.us = phi i32 [ %.076.lcssa, %.preheader84.us.preheader ], [ %i.de, %.loopexit.us ] ; 2 uses
  %i.ae = sext i32 %.177103.us to i64             ; 5 uses
  %i.af = icmp sgt i64 %indvars.iv139, %i.ae
  br i1 %i.af, label %.lr.ph91.us.preheader, label %.preheader.us

.lr.ph91.us.preheader:                            ; preds = %.preheader84.us
  %i.ag = mul i64 %indvar, %i.aa
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %indvars.iv139, %i.ae
  %i.aj = sub i64 %i.ah, %i.ae
  %xtraiter190 = and i64 %i.ai, 3                 ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %.lr.ph91.us.prol.loopexit, label %.lr.ph91.us.prol

.lr.ph91.us.prol:                                 ; preds = %.lr.ph91.us.preheader, %.lr.ph91.us.prol
  %indvars.iv126.prol = phi i64 [ %indvars.iv.next127.prol, %.lr.ph91.us.prol ], [ %i.ae, %.lr.ph91.us.preheader ] ; 2 uses
  %.090.us.prol = phi float [ %i.an, %.lr.ph91.us.prol ], [ 0.000000e+00, %.lr.ph91.us.preheader ]
  %prol.iter192 = phi i64 [ %prol.iter192.next, %.lr.ph91.us.prol ], [ 0, %.lr.ph91.us.preheader ]
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv126.prol
  %i.al = load float, ptr %i.ak, align 4          ; 2 uses
  %i.am = fmul float %i.al, %i.al
  %i.an = fadd float %.090.us.prol, %i.am         ; 3 uses
  %indvars.iv.next127.prol = add nsw i64 %indvars.iv126.prol, 1 ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %.lr.ph91.us.prol.loopexit, label %.lr.ph91.us.prol, !llvm.loop !600

.lr.ph91.us.prol.loopexit:                        ; preds = %.lr.ph91.us.prol, %.lr.ph91.us.preheader
  %indvars.iv126.unr = phi i64 [ %i.ae, %.lr.ph91.us.preheader ], [ %indvars.iv.next127.prol, %.lr.ph91.us.prol ]
  %.090.us.unr = phi float [ 0.000000e+00, %.lr.ph91.us.preheader ], [ %i.an, %.lr.ph91.us.prol ]
  %.lcssa.unr = phi float [ poison, %.lr.ph91.us.preheader ], [ %i.an, %.lr.ph91.us.prol ]
  %i.ao = icmp ult i64 %i.aj, 3
  br i1 %i.ao, label %.preheader.us, label %.lr.ph91.us

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv129 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next130, %bb.f ] ; 5 uses
  %.194.us = phi float [ %.0.lcssa.us, %.preheader.us ], [ %.2.us, %bb.f ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv129 to i32 ; 2 uses
  %i.aq = add i32 %i.df, %i.ap
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au ; 2 uses
  %i.aw = load float, ptr %i.av, align 4          ; 4 uses
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fcmp ult float %i.ax, 2.500000e-01
  br i1 %i.ay, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = tail call float @llvm.rint.f32(float %i.aw)
  %i.ba = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  store float %i.az, ptr %i.ba, align 4
  %i.bb = load float, ptr %i.av, align 4          ; 2 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = fsub float %.194.us, %i.bc
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.be = fpext float %.194.us to double
  %i.bf = load double, ptr %i.z, align 8
  %i.bg = fcmp ogt double %i.bf, %i.be
  br i1 %i.bg, label %._crit_edge.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.aw)
  %i.bi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  store float %i.bh, ptr %i.bi, align 4
  %i.bj = fadd float %.194.us, -1.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.2.us = phi float [ %i.bd, %bb.c ], [ %i.bj, %bb.e ]
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %.loopexit.us, label %bb.b, !llvm.loop !601

._crit_edge.us:                                   ; preds = %bb.d
  %i.bk = icmp sgt i32 %i.g, %i.ap
  br i1 %i.bk, label %.lr.ph101.us, label %.loopexit.us

bb.g:                                             ; preds = %bb.g, %.lr.ph101.us.new
  %indvars.iv134 = phi i64 [ %indvars.iv134.unr, %.lr.ph101.us.new ], [ %indvars.iv.next135.3, %bb.g ] ; 5 uses
  %i.bl = trunc nsw i64 %indvars.iv134 to i32
  %i.bm = add i32 %i.df, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  store float 0.000000e+00, ptr %i.br, align 4
  %i.bs = trunc i64 %indvars.iv134 to i32
  %.reass = add i32 %i.bs, %invariant.op
  %i.bt = sext i32 %.reass to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bw
  store float 0.000000e+00, ptr %i.bx, align 4
  %i.by = trunc i64 %indvars.iv134 to i32
  %.reass209 = add i32 %i.by, %invariant.op208
  %i.bz = sext i32 %.reass209 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cc
  store float 0.000000e+00, ptr %i.cd, align 4
  %i.ce = trunc i64 %indvars.iv134 to i32
  %.reass211 = add i32 %i.ce, %invariant.op210
  %i.cf = sext i32 %.reass211 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ci
  store float 0.000000e+00, ptr %i.cj, align 4
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, 4 ; 2 uses
  %exitcond138.not.3 = icmp eq i64 %indvars.iv.next135.3, %i.aa
  br i1 %exitcond138.not.3, label %.loopexit.us, label %bb.g, !llvm.loop !602

.lr.ph91.us:                                      ; preds = %.lr.ph91.us.prol.loopexit, %.lr.ph91.us
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.3, %.lr.ph91.us ], [ %indvars.iv126.unr, %.lr.ph91.us.prol.loopexit ] ; 5 uses
  %.090.us = phi float [ %i.dc, %.lr.ph91.us ], [ %.090.us.unr, %.lr.ph91.us.prol.loopexit ]
  %i.ck = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv126
  %i.cl = load float, ptr %i.ck, align 4          ; 2 uses
  %i.cm = fmul float %i.cl, %i.cl
  %i.cn = fadd float %.090.us, %i.cm
  %i.co = getelementptr [4 x i8], ptr %1, i64 %indvars.iv126
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load float, ptr %i.cp, align 4          ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = fadd float %i.cn, %i.cr
  %i.ct = getelementptr [4 x i8], ptr %1, i64 %indvars.iv126
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load float, ptr %i.cu, align 4          ; 2 uses
  %i.cw = fmul float %i.cv, %i.cv
  %i.cx = fadd float %i.cs, %i.cw
  %i.cy = getelementptr [4 x i8], ptr %1, i64 %indvars.iv126
  %i.cz = getelementptr i8, ptr %i.cy, i64 12
  %i.da = load float, ptr %i.cz, align 4          ; 2 uses
  %i.db = fmul float %i.da, %i.da
  %i.dc = fadd float %i.cx, %i.db                 ; 2 uses
  %indvars.iv.next127.3 = add nsw i64 %indvars.iv126, 4 ; 2 uses
  %i.dd = icmp slt i64 %indvars.iv.next127.3, %indvars.iv139
  br i1 %i.dd, label %.lr.ph91.us, label %.preheader.us, !llvm.loop !603

.loopexit.us:                                     ; preds = %bb.f, %.prol.loopexit, %bb.g, %._crit_edge.us
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, %i.aa ; 2 uses
  %.not83.us = icmp sgt i64 %indvars.iv.next140, %i.ac
  %i.de = trunc nuw nsw i64 %indvars.iv139 to i32 ; 2 uses
  %indvar.next = add i64 %indvar, 1
  br i1 %.not83.us, label %.loopexit86, label %.preheader84.us, !llvm.loop !604

.preheader.us:                                    ; preds = %.lr.ph91.us.prol.loopexit, %.lr.ph91.us, %.preheader84.us
  %.0.lcssa.us = phi float [ 0.000000e+00, %.preheader84.us ], [ %.lcssa.unr, %.lr.ph91.us.prol.loopexit ], [ %i.dc, %.lr.ph91.us ]
  %i.df = sub i32 %.177103.us, %spec.select       ; 6 uses
  br label %bb.b

.lr.ph101.us:                                     ; preds = %._crit_edge.us
  %sext = shl i64 %indvars.iv129, 32
  %i.dg = ashr exact i64 %sext, 32                ; 2 uses
  %i.dh = sub nsw i64 %i.aa, %indvars.iv129
  %xtraiter195 = and i64 %i.dh, 3                 ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br i1 %lcmp.mod196.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph101.us, %.prol.preheader
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.prol.preheader ], [ %i.dg, %.lr.ph101.us ] ; 2 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %.prol.preheader ], [ 0, %.lr.ph101.us ]
  %i.di = trunc nsw i64 %indvars.iv134.prol to i32
  %i.dj = add i32 %i.df, %i.di
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dn
  store float 0.000000e+00, ptr %i.do, align 4
  %indvars.iv.next135.prol = add nsw i64 %indvars.iv134.prol, 1 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !605

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph101.us
  %indvars.iv134.unr = phi i64 [ %i.dg, %.lr.ph101.us ], [ %indvars.iv.next135.prol, %.prol.preheader ]
  %i.dp = sub nsw i64 %indvars.iv129, %i.aa
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.loopexit.us, label %.lr.ph101.us.new

.lr.ph101.us.new:                                 ; preds = %.prol.loopexit
  %invariant.op = add i32 1, %i.df
  %invariant.op208 = add i32 2, %i.df
  %invariant.op210 = add i32 3, %i.df
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = tail call float @llvm.rint.f32(float %i.ds)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.dt, ptr %i.du, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.dw = load float, ptr %i.dv, align 4
  %i.dx = tail call float @llvm.rint.f32(float %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.dx, ptr %i.dy, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = tail call float @llvm.rint.f32(float %i.ea)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  store float %i.eb, ptr %i.ec, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ee = load float, ptr %i.ed, align 4
  %i.ef = tail call float @llvm.rint.f32(float %i.ee)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  store float %i.ef, ptr %i.eg, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader85, label %.lr.ph, !llvm.loop !606

.preheader84:                                     ; preds = %.preheader84.lr.ph, %.preheader84
  %i.eh = phi i32 [ %i.ei, %.preheader84 ], [ %i.x, %.preheader84.lr.ph ] ; 2 uses
  %i.ei = add nsw i32 %i.eh, %i.g                 ; 2 uses
  %.not83 = icmp sgt i32 %i.ei, %i.c
  br i1 %.not83, label %.loopexit86, label %.preheader84, !llvm.loop !604

.loopexit86:                                      ; preds = %.preheader84, %.loopexit.us, %.preheader85, %bb.a
  %.278 = phi i32 [ 0, %bb.a ], [ %.076.lcssa, %.preheader85 ], [ %i.de, %.loopexit.us ], [ %i.eh, %.preheader84 ] ; 2 uses
  %i.ej = icmp slt i32 %.278, %i.c
  br i1 %i.ej, label %.lr.ph120.preheader, label %._crit_edge

.lr.ph120.preheader:                              ; preds = %.loopexit86
  %i.ek = sext i32 %.278 to i64                   ; 4 uses
  %wide.trip.count145 = sext i32 %i.c to i64      ; 4 uses
  %i.el = sub nsw i64 %wide.trip.count145, %i.ek  ; 3 uses
  %min.iters.check169 = icmp ult i64 %i.el, 4
  %i.em = sub i64 %i.b, %i.a
  %diff.check167 = icmp ult i64 %i.em, 16
  %or.cond180 = or i1 %min.iters.check169, %diff.check167
  br i1 %or.cond180, label %.lr.ph120.preheader181, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph120.preheader
  %n.vec172 = and i64 %i.el, -4                   ; 3 uses
  %i.en = add nsw i64 %n.vec172, %i.ek
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph170
  %index174 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body173 ] ; 2 uses
  %i.eo = add i64 %index174, %i.ek                ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eo
  %wide.load175 = load <4 x float>, ptr %i.ep, align 4
  %i.eq = tail call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load175)
  %i.er = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eo
  store <4 x float> %i.eq, ptr %i.er, align 4
  %index.next176 = add nuw i64 %index174, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next176, %n.vec172
  br i1 %i.es, label %middle.block177, label %vector.body173, !llvm.loop !607

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %i.el, %n.vec172
  br i1 %cmp.n178, label %._crit_edge, label %.lr.ph120.preheader181

.lr.ph120.preheader181:                           ; preds = %.lr.ph120.preheader, %middle.block177
  %indvars.iv142.ph = phi i64 [ %i.ek, %.lr.ph120.preheader ], [ %i.en, %middle.block177 ] ; 4 uses
  %i.et = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter198 = and i64 %i.et, 3                 ; 2 uses
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol

.lr.ph120.prol:                                   ; preds = %.lr.ph120.preheader181, %.lr.ph120.prol
  %indvars.iv142.prol = phi i64 [ %indvars.iv.next143.prol, %.lr.ph120.prol ], [ %indvars.iv142.ph, %.lr.ph120.preheader181 ] ; 3 uses
  %prol.iter200 = phi i64 [ %prol.iter200.next, %.lr.ph120.prol ], [ 0, %.lr.ph120.preheader181 ]
  %i.eu = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv142.prol
  %i.ev = load float, ptr %i.eu, align 4
  %i.ew = tail call float @llvm.rint.f32(float %i.ev)
  %i.ex = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv142.prol
  store float %i.ew, ptr %i.ex, align 4
  %indvars.iv.next143.prol = add nsw i64 %indvars.iv142.prol, 1 ; 2 uses
  %prol.iter200.next = add i64 %prol.iter200, 1   ; 2 uses
  %prol.iter200.cmp.not = icmp eq i64 %prol.iter200.next, %xtraiter198
  br i1 %prol.iter200.cmp.not, label %.lr.ph120.prol.loopexit, label %.lr.ph120.prol, !llvm.loop !608

.lr.ph120.prol.loopexit:                          ; preds = %.lr.ph120.prol, %.lr.ph120.preheader181
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %.lr.ph120.preheader181 ], [ %indvars.iv.next143.prol, %.lr.ph120.prol ]
  %i.ey = sub nsw i64 %indvars.iv142.ph, %wide.trip.count145
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge, label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.3, %.lr.ph120 ], [ %indvars.iv142.unr, %.lr.ph120.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv142
  %i.fb = load float, ptr %i.fa, align 4
  %i.fc = tail call float @llvm.rint.f32(float %i.fb)
  %i.fd = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv142
  store float %i.fc, ptr %i.fd, align 4
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next143
  %i.ff = load float, ptr %i.fe, align 4
  %i.fg = tail call float @llvm.rint.f32(float %i.ff)
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next143
  store float %i.fg, ptr %i.fh, align 4
  %indvars.iv.next143.1 = add nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next143.1
  %i.fj = load float, ptr %i.fi, align 4
  %i.fk = tail call float @llvm.rint.f32(float %i.fj)
  %i.fl = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next143.1
  store float %i.fk, ptr %i.fl, align 4
  %indvars.iv.next143.2 = add nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next143.2
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = tail call float @llvm.rint.f32(float %i.fn)
  %i.fp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next143.2
  store float %i.fo, ptr %i.fp, align 4
  %indvars.iv.next143.3 = add nsw i64 %indvars.iv142, 4 ; 2 uses
  %exitcond146.not.3 = icmp eq i64 %indvars.iv.next143.3, %wide.trip.count145
  br i1 %exitcond146.not.3, label %._crit_edge, label %.lr.ph120, !llvm.loop !609

._crit_edge:                                      ; preds = %.lr.ph120.prol.loopexit, %.lr.ph120, %middle.block177, %.loopexit86
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_couple(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, i32 noundef %9) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1156 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1160
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2184 ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.i = sext i32 %0 to i64                       ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.l = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 132
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv169 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next170, %.loopexit ] ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv169
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %8, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %.not = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv169
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64                     ; 3 uses
  br i1 %.not, label %bb.c, label %._crit_edge172

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds [4 x i8], ptr %8, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4
  %.not128 = icmp eq i32 %i.x, 0
  br i1 %.not128, label %.loopexit, label %._crit_edge172

._crit_edge172:                                   ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds [8 x i8], ptr %4, i64 %i.q
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv169
  %i.ab = getelementptr inbounds [8 x i8], ptr %4, i64 %i.v
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.g ; 5 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.g ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %7, i64 %i.q
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds [8 x i8], ptr %7, i64 %i.v
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.j, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr @stereo_threshholds, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8
  %i.an = fptrunc double %i.am to float           ; 2 uses
  %i.ao = load i32, ptr %i.l, align 4
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr @stereo_threshholds, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fptrunc double %i.ar to float           ; 2 uses
  %i.at = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 504
  %i.av = load i32, ptr %i.au, align 8
  %.not129 = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 512
  %.in = select i1 %.not129, ptr %2, ptr %i.aw
  %i.ax = load i32, ptr %.in, align 8             ; 4 uses
  %i.ay = load i32, ptr %i.at, align 8
  %i.az = sext i32 %i.ay to i64
  %gep = getelementptr [60 x i8], ptr %invariant.gep, i64 %i.az
  %i.ba = load i32, ptr %gep, align 4             ; 3 uses
  store i32 1, ptr %i.r, align 4
  %i.bb = load i32, ptr %i.aa, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %8, i64 %i.bc
  store i32 1, ptr %i.bd, align 4
  %i.be = load i32, ptr %2, align 8               ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.preheader133.lr.ph, label %.loopexit

.preheader133.lr.ph:                              ; preds = %._crit_edge172
  %i.bg = icmp sgt i32 %i.ax, 0
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv169
  %i.bi = icmp slt i32 %i.ax, 1                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv169 ; 2 uses
  br i1 %i.bg, label %.preheader133.us.preheader, label %.preheader133.lr.ph.split

.preheader133.us.preheader:                       ; preds = %.preheader133.lr.ph
  %i.bk = zext nneg i32 %i.ax to i64              ; 3 uses
  br label %.preheader133.us

.preheader133.us:                                 ; preds = %.preheader133.us.preheader, %.critedge.us
  %indvars.iv166 = phi i64 [ 0, %.preheader133.us.preheader ], [ %indvars.iv.next167, %.critedge.us ] ; 3 uses
  br label %bb.h

.lr.ph138.us:                                     ; preds = %._crit_edge.us, %bb.g
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.g ], [ 0, %._crit_edge.us ] ; 2 uses
  %.2137.us = phi float [ %.3.us, %bb.g ], [ %.1.us, %._crit_edge.us ] ; 4 uses
  %i.bl = fpext float %.2137.us to double
  %i.bm = load ptr, ptr %i.m, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 520
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fcmp ugt double %i.bo, %i.bl
  br i1 %i.bp, label %.critedge.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph138.us
  %i.bq = load ptr, ptr %i.bj, align 8
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv161
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv166
  %i.bt = load i32, ptr %i.bs, align 4            ; 3 uses
  %i.bu = icmp sge i32 %i.bt, %9
  %.not131.us = icmp slt i32 %i.bt, %i.ba
  %or.cond.us = select i1 %i.bu, i1 true, i1 %.not131.us
end_hunk_3
begin_hunk_4_@_vp_couple:bb.a
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %i.bk
  br i1 %exitcond160.not, label %._crit_edge.us, label %bb.h, !llvm.loop !612

._crit_edge.us:                                   ; preds = %couple_lossless.exit.us
  %i.fb = load ptr, ptr %i.m, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 504
  %i.fd = load i32, ptr %i.fc, align 8
  %.not130.us = icmp eq i32 %i.fd, 0
  %brmerge = select i1 %.not130.us, i1 true, i1 %i.bi
  br i1 %brmerge, label %.critedge.us, label %.lr.ph138.us

.preheader133.lr.ph.split:                        ; preds = %.preheader133.lr.ph
  %i.fe = load ptr, ptr %i.m, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 504
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.loopexit, label %.preheader133.preheader

.preheader133.preheader:                          ; preds = %.preheader133.lr.ph.split
  %i.fi = sext i32 %i.ax to i64
  br label %.preheader133

.preheader133:                                    ; preds = %.preheader133.preheader, %.critedge
  %i.fj = phi i32 [ %i.be, %.preheader133.preheader ], [ %i.gb, %.critedge ]
  %indvars.iv153 = phi i64 [ 0, %.preheader133.preheader ], [ %indvars.iv.next154, %.critedge ] ; 2 uses
  %i.fk = load ptr, ptr %i.m, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 504
  %i.fm = load i32, ptr %i.fl, align 8
  %.not130 = icmp eq i32 %i.fm, 0
  %brmerge149 = select i1 %.not130, i1 true, i1 %i.bi
  br i1 %brmerge149, label %.critedge, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader133
  %i.fn = load ptr, ptr %i.m, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 520
  %i.fp = load double, ptr %i.fo, align 8
  %i.fq = fcmp ugt double %i.fp, 0.000000e+00
  br i1 %i.fq, label %.critedge.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph138
  %i.fr = load ptr, ptr %i.bj, align 8
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %indvars.iv153
  %i.ft = load i32, ptr %i.fs, align 4            ; 3 uses
  %i.fu = icmp sge i32 %i.ft, %9
  %.not131 = icmp slt i32 %i.ft, %i.ba
  %or.cond = select i1 %i.fu, i1 true, i1 %.not131
  br i1 %or.cond, label %.critedge.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fv = sext i32 %i.ft to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.fv ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4          ; 2 uses
  %i.fy = tail call float @llvm.rint.f32(float %i.fx)
  %i.fz = fcmp oeq float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.u, label %.critedge.loopexit

bb.u:                                             ; preds = %bb.t
  %i.ga = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.fx)
  store float %i.ga, ptr %i.fw, align 4
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.s, %bb.t, %bb.u, %.lr.ph138
  %.pre173 = load i32, ptr %2, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader133
  %i.gb = phi i32 [ %.pre173, %.critedge.loopexit ], [ %i.fj, %.preheader133 ] ; 2 uses
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, %i.fi ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next154, %i.gc
  br i1 %i.gd, label %.preheader133, label %.loopexit, !llvm.loop !613

.loopexit:                                        ; preds = %.critedge, %.critedge.us, %.preheader133.lr.ph.split, %._crit_edge172, %bb.c
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.ge = load i32, ptr %i.a, align 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next170, %i.gf
  br i1 %i.gg, label %bb.b, label %._crit_edge, !llvm.loop !615

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @drft_forward(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load i32, ptr %0, align 8                ; 8 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %drftf1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 17 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %drftf1.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.n = zext nneg i32 %i.l to i64                ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %.094108.i = phi i32 [ %i.b, %.lr.ph.preheader.i ], [ %i.s, %bb.l ] ; 2 uses
  %.095107.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.2.i, %bb.l ] ; 4 uses
  %.096106.i = phi i32 [ %i.b, %.lr.ph.preheader.i ], [ %i.x, %bb.l ]
  %i.o = sub nsw i64 %i.n, %indvars.iv.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4              ; 5 uses
  %i.s = sdiv i32 %.094108.i, %i.r                ; 8 uses
  %i.t = sdiv i32 %i.b, %.094108.i                ; 11 uses
  %i.u = mul nsw i32 %i.t, %i.s                   ; 2 uses
  %i.v = add nsw i32 %i.r, -1
  %i.w = mul nsw i32 %i.t, %i.v
  %i.x = sub nsw i32 %.096106.i, %i.w             ; 5 uses
  switch i32 %i.r, label %bb.i [
    i32 4, label %bb.c
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nsw i32 %i.x, %i.t                   ; 2 uses
  %i.z = add nsw i32 %i.y, %i.t
  %.not102.i = icmp eq i32 %.095107.i, 1
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ad = sext i32 %i.y to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = sext i32 %i.z to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  br i1 %.not102.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @dradf4(i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull readonly %i.af, ptr noundef nonnull readonly %i.ai)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @dradf4(i32 noundef %i.t, i32 noundef %i.s, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull readonly %i.af, ptr noundef nonnull readonly %i.ai)
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph.i
  %.not104.i = icmp eq i32 %.095107.i, 1
  %i.aj = sext i32 %i.x to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  br i1 %.not104.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @dradf2(i32 noundef %i.t, i32 noundef %i.s, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.al)
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @dradf2(i32 noundef %i.t, i32 noundef %i.s, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.al)
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.i
  %i.am = sub nuw nsw i32 1, %.095107.i
  %i.an = icmp eq i32 %i.t, 1
  %spec.select.i = select i1 %i.an, i32 %.095107.i, i32 %i.am
  %.not105.i = icmp eq i32 %spec.select.i, 0
  %i.ao = sext i32 %i.x to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  br i1 %.not105.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @dradfg(i32 noundef %i.t, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.u, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull readonly %i.aq)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call fastcc void @dradfg(i32 noundef %i.t, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.u, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef nonnull readonly %i.aq)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.e, %bb.d
  %i.ar = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.h ], [ true, %bb.g ], [ false, %bb.d ], [ true, %bb.e ]
  %.2.i = phi i32 [ 0, %bb.k ], [ 1, %bb.j ], [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %bb.d ], [ 0, %bb.e ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !616

._crit_edge.i:                                    ; preds = %bb.l
  %i.as = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %.lr.ph111.preheader.i, label %drftf1.exit

.lr.ph111.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count116.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.at = sub i64 %i.a, %i.f
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph111.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph111.preheader.i
  %n.vec = and i64 %wide.trip.count116.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x float>, ptr %i.au, align 4
  %wide.load8 = load <4 x float>, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %wide.load, ptr %i.aw, align 4
  store <4 x float> %wide.load8, ptr %i.ax, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count116.i
  br i1 %cmp.n, label %drftf1.exit, label %.lr.ph111.i.preheader

.lr.ph111.i.preheader:                            ; preds = %.lr.ph111.preheader.i, %middle.block
  %indvars.iv113.i.ph = phi i64 [ 0, %.lr.ph111.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count116.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph111.i.prol.loopexit, label %.lr.ph111.i.prol

.lr.ph111.i.prol:                                 ; preds = %.lr.ph111.i.preheader, %.lr.ph111.i.prol
  %indvars.iv113.i.prol = phi i64 [ %indvars.iv.next114.i.prol, %.lr.ph111.i.prol ], [ %indvars.iv113.i.ph, %.lr.ph111.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph111.i.prol ], [ 0, %.lr.ph111.i.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv113.i.prol
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv113.i.prol
  store float %i.ba, ptr %i.bb, align 4
  %indvars.iv.next114.i.prol = add nuw nsw i64 %indvars.iv113.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph111.i.prol.loopexit, label %.lr.ph111.i.prol, !llvm.loop !618

.lr.ph111.i.prol.loopexit:                        ; preds = %.lr.ph111.i.prol, %.lr.ph111.i.preheader
  %indvars.iv113.i.unr = phi i64 [ %indvars.iv113.i.ph, %.lr.ph111.i.preheader ], [ %indvars.iv.next114.i.prol, %.lr.ph111.i.prol ]
  %i.bc = sub nsw i64 %indvars.iv113.i.ph, %wide.trip.count116.i
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %drftf1.exit, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %.lr.ph111.i.prol.loopexit, %.lr.ph111.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i.3, %.lr.ph111.i ], [ %indvars.iv113.i.unr, %.lr.ph111.i.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv113.i
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv113.i
  store float %i.bf, ptr %i.bg, align 4
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next114.i
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next114.i
  store float %i.bi, ptr %i.bj, align 4
  %indvars.iv.next114.i.1 = add nuw nsw i64 %indvars.iv113.i, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next114.i.1
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next114.i.1
  store float %i.bl, ptr %i.bm, align 4
  %indvars.iv.next114.i.2 = add nuw nsw i64 %indvars.iv113.i, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next114.i.2
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next114.i.2
  store float %i.bo, ptr %i.bp, align 4
  %indvars.iv.next114.i.3 = add nuw nsw i64 %indvars.iv113.i, 4 ; 2 uses
  %exitcond117.not.i.3 = icmp eq i64 %indvars.iv.next114.i.3, %wide.trip.count116.i
  br i1 %exitcond117.not.i.3, label %drftf1.exit, label %.lr.ph111.i, !llvm.loop !619

drftf1.exit:                                      ; preds = %.lr.ph111.i.prol.loopexit, %.lr.ph111.i, %middle.block, %._crit_edge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @drft_backward(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load i32, ptr %0, align 8                ; 6 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %drftb1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 19 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %drftb1.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %.0112125.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.q, %bb.s ] ; 10 uses
  %.0113123.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.ay, %bb.s ] ; 7 uses
  %.0114122.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.s ] ; 9 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4              ; 5 uses
  %i.q = mul nsw i32 %i.p, %.0112125.i            ; 2 uses
  %i.r = sdiv i32 %i.b, %i.q                      ; 14 uses
  %i.s = mul nsw i32 %i.r, %.0112125.i            ; 2 uses
  switch i32 %i.p, label %bb.o [
    i32 4, label %bb.c
    i32 2, label %bb.g
    i32 3, label %bb.k
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = add nsw i32 %i.r, %.0113123.i            ; 2 uses
  %i.u = add nsw i32 %i.t, %i.r
  %.not116.i = icmp eq i32 %.0114122.i, 0
  %i.v = sext i32 %.0113123.i to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  %i.ab = sext i32 %i.u to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  br i1 %.not116.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @dradb4(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ad)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @dradb4(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.g:                                             ; preds = %.lr.ph.i
  %.not118.i = icmp eq i32 %.0114122.i, 0
  %i.af = sext i32 %.0113123.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  br i1 %.not118.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.r, %.0113123.i
  %.not120.i = icmp eq i32 %.0114122.i, 0
  %i.ak = sext i32 %.0113123.i to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 2 uses
  br i1 %.not120.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %.not121.i = icmp eq i32 %.0114122.i, 0
  %i.ar = sext i32 %.0113123.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  br i1 %.not121.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112125.i, i32 noundef %i.s, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112125.i, i32 noundef %i.s, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = icmp eq i32 %i.r, 1
  %i.av = sub nuw nsw i32 1, %.0114122.i
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %.0114122.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.j, %bb.f
  %.1.i = phi i32 [ %i.ae, %bb.f ], [ %spec.select.i, %bb.r ], [ %i.aq, %bb.n ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aw = add nsw i32 %i.p, -1
  %i.ax = mul nsw i32 %i.aw, %i.r
  %i.ay = add nsw i32 %i.ax, %.0113123.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !620

._crit_edge.i:                                    ; preds = %bb.s
  %i.az = icmp ne i32 %.1.i, 0
  %i.ba = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.ba, %i.az
  br i1 %or.cond.i, label %.lr.ph128.preheader.i, label %drftb1.exit

.lr.ph128.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count133.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.bb = sub i64 %i.a, %i.f
  %diff.check = icmp ult i64 %i.bb, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph128.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph128.preheader.i
  %n.vec = and i64 %wide.trip.count133.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x float>, ptr %i.bc, align 4
  %wide.load8 = load <4 x float>, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %wide.load, ptr %i.be, align 4
  store <4 x float> %wide.load8, ptr %i.bf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133.i
  br i1 %cmp.n, label %drftb1.exit, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %.lr.ph128.preheader.i, %middle.block
  %indvars.iv130.i.ph = phi i64 [ 0, %.lr.ph128.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count133.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol

.lr.ph128.i.prol:                                 ; preds = %.lr.ph128.i.preheader, %.lr.ph128.i.prol
  %indvars.iv130.i.prol = phi i64 [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ], [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph128.i.prol ], [ 0, %.lr.ph128.i.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i.prol
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i.prol
  store float %i.bi, ptr %i.bj, align 4
  %indvars.iv.next131.i.prol = add nuw nsw i64 %indvars.iv130.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol, !llvm.loop !622

.lr.ph128.i.prol.loopexit:                        ; preds = %.lr.ph128.i.prol, %.lr.ph128.i.preheader
  %indvars.iv130.i.unr = phi i64 [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ], [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ]
  %i.bk = sub nsw i64 %indvars.iv130.i.ph, %wide.trip.count133.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %drftb1.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i.3, %.lr.ph128.i ], [ %indvars.iv130.i.unr, %.lr.ph128.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i
  store float %i.bn, ptr %i.bo, align 4
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i
  store float %i.bq, ptr %i.br, align 4
  %indvars.iv.next131.i.1 = add nuw nsw i64 %indvars.iv130.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.1
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.1
  store float %i.bt, ptr %i.bu, align 4
  %indvars.iv.next131.i.2 = add nuw nsw i64 %indvars.iv130.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.2
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.2
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next131.i.3 = add nuw nsw i64 %indvars.iv130.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next131.i.3, %wide.trip.count133.i
  br i1 %exitcond134.not.i.3, label %drftb1.exit, label %.lr.ph128.i, !llvm.loop !623

drftb1.exit:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i, %middle.block, %._crit_edge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local void @drft_init(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 24)) %0, i32 noundef %1) local_unnamed_addr #54 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = mul nsw i32 %1, 3
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #71 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #71 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %fdrffti.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.loopexit91.i.i

.loopexit91.i.i.backedge:                         ; preds = %.split.us.i.i, %.split.i.i
  %.069.i.i.be = phi i32 [ %.170.i.i, %.split.i.i ], [ %.170.us.i.i, %.split.us.i.i ]
  %.0.i.i.be = phi i64 [ %indvars.iv138.i.i, %.split.i.i ], [ %indvars.iv.i.i, %.split.us.i.i ]
  br label %.loopexit91.i.i

.loopexit91.i.i:                                  ; preds = %.loopexit91.i.i.backedge, %bb.b
  %indvars.iv141.i.i = phi i64 [ -1, %bb.b ], [ %indvars.iv.next142.i.i, %.loopexit91.i.i.backedge ] ; 2 uses
  %.072.i.i = phi i32 [ 0, %bb.b ], [ %.173.fr.i.i, %.loopexit91.i.i.backedge ]
  %.069.i.i = phi i32 [ %1, %bb.b ], [ %.069.i.i.be, %.loopexit91.i.i.backedge ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %.0.i.i.be, %.loopexit91.i.i.backedge ]
  %indvars.iv.next142.i.i = add nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.k = icmp slt i64 %indvars.iv141.i.i, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit91.i.i
  %i.l = getelementptr inbounds [4 x i8], ptr @drfti1.ntryh, i64 %indvars.iv.next142.i.i
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.e

bb.d:                                             ; preds = %.loopexit91.i.i
  %i.n = add nsw i32 %.072.i.i, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.173.i.i = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  %.173.fr.i.i = freeze i32 %.173.i.i             ; 5 uses
  %.not120.i.i = icmp eq i32 %.173.fr.i.i, 2
  %sext.i = shl i64 %.0.i.i, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  br i1 %.not120.i.i, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ %i.o, %bb.e ] ; 5 uses
  %.170.us.i.i = phi i32 [ %i.p, %bb.f ], [ %.069.i.i, %bb.e ] ; 3 uses
  %i.p = sdiv i32 %.170.us.i.i, %.173.fr.i.i      ; 3 uses
  %i.q = mul nsw i32 %i.p, %.173.fr.i.i
  %.not.us.i.i = icmp eq i32 %.170.us.i.i, %i.q
  br i1 %.not.us.i.i, label %bb.f, label %.loopexit91.i.i.backedge

bb.f:                                             ; preds = %.split.us.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i32 %.173.fr.i.i, ptr %i.s, align 4
  %.not89.us.i.i = icmp eq i32 %i.p, 1
  br i1 %.not89.us.i.i, label %.split99.us.i.i, label %.split.us.i.i

.split99.us.i.i:                                  ; preds = %bb.f
  %i.t = icmp eq i64 %indvars.iv.i.i, 0
  br label %.split99.i.i

.split.i.i:                                       ; preds = %bb.e, %bb.h
  %indvars.iv138.i.i = phi i64 [ %indvars.iv.next139.i.i, %bb.h ], [ %i.o, %bb.e ] ; 7 uses
  %.170.i.i = phi i32 [ %i.u, %bb.h ], [ %.069.i.i, %bb.e ] ; 4 uses
  %indvars.iv.next139.i.i = add i64 %indvars.iv138.i.i, 1 ; 4 uses
  %i.u = sdiv i32 %.170.i.i, 2                    ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %.not.i.i = icmp eq i32 %.170.i.i, %i.v
  br i1 %.not.i.i, label %bb.g, label %.loopexit91.i.i.backedge

bb.g:                                             ; preds = %.split.i.i
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv138.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 2, ptr %i.x, align 4
  %i.y = icmp eq i64 %indvars.iv138.i.i, 0        ; 2 uses
  br i1 %i.y, label %bb.h, label %.preheader90.i.i

.preheader90.i.i:                                 ; preds = %bb.g
  %.not8895.i.i = icmp slt i64 %indvars.iv138.i.i, 1
  br i1 %.not8895.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader90.i.i
  %wide.trip.count.i.i = and i64 %indvars.iv.next139.i.i, 4294967295 ; 2 uses
  %i.z = add nsw i64 %wide.trip.count.i.i, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.z, -8                       ; 3 uses
  %i.aa = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = sub i64 %indvars.iv138.i.i, %index
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %wide.load = load <4 x i32>, ptr %i.ad, align 4
  %wide.load38 = load <4 x i32>, ptr %i.ae, align 4
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -20
  store <4 x i32> %wide.load, ptr %i.af, align 4
  store <4 x i32> %wide.load38, ptr %i.ag, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader
end_hunk_4
begin_hunk_5_@res2_class:bb.a
  %i.fn = load ptr, ptr %i.at, align 8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.05886.i
  store i64 0, ptr %i.fo, align 8
  %i.fp = load ptr, ptr %i.at, align 8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.05886.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 0, ptr %i.fr, align 8
  %i.fs = load ptr, ptr %i.at, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %.05886.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store i64 0, ptr %i.fu, align 8
  %i.fv = load ptr, ptr %i.at, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %.05886.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i64 0, ptr %i.fx, align 8
  %i.fy = add nuw nsw i64 %.05886.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_2class.exit.loopexit57.unr-lcssa, label %.preheader69.i, !llvm.loop !819

_2class.exit.loopexit53.unr-lcssa:                ; preds = %.preheader69.us.i
  %i.fz = and i32 %i.z, 3
  %lcmp.mod72.not = icmp eq i32 %i.fz, 0
  br i1 %lcmp.mod72.not, label %_2class.exit, label %.preheader69.us.i.epil.preheader

.preheader69.us.i.epil.preheader:                 ; preds = %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.preheader
  %.05886.us.i.epil.init = phi i64 [ 0, %.preheader69.us.i.preheader ], [ %i.fb, %_2class.exit.loopexit53.unr-lcssa ]
  %i.ga = and i32 %i.z, 3
  %lcmp.mod73 = icmp ne i32 %i.ga, 0
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %.preheader69.us.i.epil

.preheader69.us.i.epil:                           ; preds = %.preheader69.us.i.epil, %.preheader69.us.i.epil.preheader
  %.05886.us.i.epil = phi i64 [ %i.gd, %.preheader69.us.i.epil ], [ %.05886.us.i.epil.init, %.preheader69.us.i.epil.preheader ] ; 2 uses
  %epil.iter71 = phi i64 [ %epil.iter71.next, %.preheader69.us.i.epil ], [ 0, %.preheader69.us.i.epil.preheader ]
  %i.gb = load ptr, ptr %i.at, align 8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.05886.us.i.epil
  store i64 0, ptr %i.gc, align 8
  %i.gd = add nuw nsw i64 %.05886.us.i.epil, 1
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %_2class.exit, label %.preheader69.us.i.epil, !llvm.loop !823

_2class.exit.loopexit57.unr-lcssa:                ; preds = %.preheader69.i
  %i.ge = and i32 %i.z, 3
  %lcmp.mod.not = icmp eq i32 %i.ge, 0
  br i1 %lcmp.mod.not, label %_2class.exit, label %.preheader69.i.epil.preheader

.preheader69.i.epil.preheader:                    ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.preheader
  %.05886.i.epil.init = phi i64 [ 0, %.preheader69.i.preheader ], [ %i.fy, %_2class.exit.loopexit57.unr-lcssa ]
  %i.gf = and i32 %i.z, 3
  %lcmp.mod62 = icmp ne i32 %i.gf, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.preheader69.i.epil

.preheader69.i.epil:                              ; preds = %.preheader69.i.epil, %.preheader69.i.epil.preheader
  %.05886.i.epil = phi i64 [ %i.gi, %.preheader69.i.epil ], [ %.05886.i.epil.init, %.preheader69.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader69.i.epil ], [ 0, %.preheader69.i.epil.preheader ]
  %i.gg = load ptr, ptr %i.at, align 8
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.05886.i.epil
  store i64 0, ptr %i.gh, align 8
  %i.gi = add nuw nsw i64 %.05886.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_2class.exit, label %.preheader69.i.epil, !llvm.loop !824

_2class.exit:                                     ; preds = %_2class.exit.loopexit57.unr-lcssa, %.preheader69.i.epil, %._crit_edge.us.i, %._crit_edge.us97.us.i, %_2class.exit.loopexit53.unr-lcssa, %.preheader69.us.i.epil, %._crit_edge.us97.us111.i, %_vorbis_block_alloc.exit68.i
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = add nsw i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %_2class.exit
  %.012 = phi ptr [ %i.at, %_2class.exit ], [ null, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.012
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @res2_forward(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %i.d = sdiv i32 %i.c, 2                         ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.f = sext i32 %5 to i64                       ; 14 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = mul i64 %i.g, %i.e
  %i.i = add nsw i64 %i.h, 4
  %i.j = and i64 %i.i, -8                         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add nsw i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp sgt i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  br i1 %i.p, label %bb.b, label %_vorbis_block_alloc.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add nsw i64 %i.u, %i.l
  store i64 %i.v, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.s, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.j, ptr %i.n, align 8
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.j) #69 ; 2 uses
  store ptr %i.z, ptr %i.q, align 8
  br label %_vorbis_block_alloc.exit

_vorbis_block_alloc.exit:                         ; preds = %bb.a, %bb.d
  %i.aa = phi i64 [ 0, %bb.d ], [ %i.l, %bb.a ]   ; 4 uses
  %i.ab = phi ptr [ %i.z, %bb.d ], [ %i.r, %bb.a ] ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr i8, ptr %i.ab, i64 %i.aa  ; 12 uses
  %i.ae = add nsw i64 %i.aa, %i.j
  store i64 %i.ae, ptr %i.k, align 8
  store ptr %i.ad, ptr %i.a, align 8
  %i.af = icmp sgt i32 %5, 0
  br i1 %i.af, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %_vorbis_block_alloc.exit
  %i.ag = icmp sgt i32 %i.c, 1
  br i1 %i.ag, label %.lr.ph.us.preheader, label %.lr.ph61.split.preheader

.lr.ph61.split.preheader:                         ; preds = %.lr.ph61
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph61.split.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph61.split.preheader
  %n.vec = and i64 %i.f, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi80 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %wide.load = load <2 x i32>, ptr %i.ah, align 4
  %wide.load81 = load <2 x i32>, ptr %i.ai, align 4
  %i.aj = icmp ne <2 x i32> %wide.load, zeroinitializer
  %i.ak = icmp ne <2 x i32> %wide.load81, zeroinitializer
  %i.al = zext <2 x i1> %i.aj to <2 x i64>
  %i.am = zext <2 x i1> %i.ak to <2 x i64>
  %i.an = add <2 x i64> %vec.phi, %i.al           ; 2 uses
  %i.ao = add <2 x i64> %vec.phi80, %i.am         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !825

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ao, %i.an
  %i.aq = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge62, label %.lr.ph61.split.preheader125

.lr.ph61.split.preheader125:                      ; preds = %.lr.ph61.split.preheader, %middle.block
  %.04560.ph = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %n.vec, %middle.block ]
  %.05059.ph = phi i64 [ 0, %.lr.ph61.split.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph61.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph61
  %i.ar = add i64 %i.aa, %i.ac
  %min.iters.check83 = icmp ult i32 %i.c, 16
  %ident.check.not = icmp ne i32 %5, 1
  %or.cond.not124 = or i1 %min.iters.check83, %ident.check.not
  %n.vec86 = and i64 %i.e, 1073741816             ; 4 uses
  %cmp.n93 = icmp eq i64 %n.vec86, %i.e
  %xtraiter = and i64 %i.e, 3
  %i.as = and i32 %i.d, 3
  %lcmp.mod.not = icmp eq i32 %i.as, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04560.us = phi i64 [ %i.ck, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %.05059.us = phi i64 [ %spec.select.us, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %i.at = shl nuw nsw i64 %.04560.us, 2
  %i.au = add i64 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04560.us
  %i.aw = load ptr, ptr %i.av, align 8            ; 7 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.04560.us
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub i64 %i.au, %i.ax
  %diff.check = icmp ult i64 %i.ba, 32
  %or.cond122 = select i1 %or.cond.not124, i1 true, i1 %diff.check
  br i1 %or.cond122, label %scalar.ph82.preheader, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph.us
  %i.bb = add nuw i64 %.04560.us, %n.vec86
  %i.bc = getelementptr [4 x i8], ptr %i.ad, i64 %.04560.us
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next91, %vector.body87 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index88 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load89 = load <4 x float>, ptr %i.bd, align 4
  %wide.load90 = load <4 x float>, ptr %i.be, align 4
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %index88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <4 x float> %wide.load89, ptr %i.bf, align 4
  store <4 x float> %wide.load90, ptr %i.bg, align 4
  %index.next91 = add nuw i64 %index88, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next91, %n.vec86
  br i1 %i.bh, label %middle.block92, label %vector.body87, !llvm.loop !826

middle.block92:                                   ; preds = %vector.body87
  br i1 %cmp.n93, label %._crit_edge.us, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.us, %middle.block92
  %.04658.us.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec86, %middle.block92 ] ; 3 uses
  %.04857.us.ph = phi i64 [ %.04560.us, %.lr.ph.us ], [ %i.bb, %middle.block92 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol

scalar.ph82.prol:                                 ; preds = %scalar.ph82.preheader, %scalar.ph82.prol
  %.04658.us.prol = phi i64 [ %i.bl, %scalar.ph82.prol ], [ %.04658.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %.04857.us.prol = phi i64 [ %i.bm, %scalar.ph82.prol ], [ %.04857.us.ph, %scalar.ph82.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph82.prol ], [ 0, %scalar.ph82.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us.prol
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.04857.us.prol
  store float %i.bj, ptr %i.bk, align 4
  %i.bl = add nuw nsw i64 %.04658.us.prol, 1      ; 2 uses
  %i.bm = add nuw nsw i64 %.04857.us.prol, %i.f   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph82.prol.loopexit, label %scalar.ph82.prol, !llvm.loop !827

scalar.ph82.prol.loopexit:                        ; preds = %scalar.ph82.prol, %scalar.ph82.preheader
  %.04658.us.unr = phi i64 [ %.04658.us.ph, %scalar.ph82.preheader ], [ %i.bl, %scalar.ph82.prol ]
  %.04857.us.unr = phi i64 [ %.04857.us.ph, %scalar.ph82.preheader ], [ %i.bm, %scalar.ph82.prol ]
  %i.bn = sub nsw i64 %.04658.us.ph, %i.e
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %._crit_edge.us, label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %.04658.us = phi i64 [ %i.ch, %scalar.ph82 ], [ %.04658.us.unr, %scalar.ph82.prol.loopexit ] ; 5 uses
  %.04857.us = phi i64 [ %i.ci, %scalar.ph82 ], [ %.04857.us.unr, %scalar.ph82.prol.loopexit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.04857.us
  store float %i.bq, ptr %i.br, align 4
  %i.bs = add nuw nsw i64 %.04857.us, %i.f        ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bs
  store float %i.bv, ptr %i.bw, align 4
  %i.bx = add nuw nsw i64 %i.bs, %i.f             ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bx
  store float %i.ca, ptr %i.cb, align 4
  %i.cc = add nuw nsw i64 %i.bx, %i.f             ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.04658.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cc
  store float %i.cf, ptr %i.cg, align 4
  %i.ch = add nuw nsw i64 %.04658.us, 4           ; 2 uses
  %i.ci = add nuw nsw i64 %i.cc, %i.f
  %exitcond69.not.3 = icmp eq i64 %i.ch, %i.e
  br i1 %exitcond69.not.3, label %._crit_edge.us, label %scalar.ph82, !llvm.loop !828

._crit_edge.us:                                   ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82, %middle.block92
  %.not56.us = icmp ne i32 %i.az, 0
  %i.cj = zext i1 %.not56.us to i64
  %spec.select.us = add nuw nsw i64 %.05059.us, %i.cj ; 2 uses
  %i.ck = add nuw nsw i64 %.04560.us, 1           ; 2 uses
  %exitcond70.not = icmp eq i64 %i.ck, %i.f
  br i1 %exitcond70.not, label %._crit_edge62, label %.lr.ph.us, !llvm.loop !829

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader125, %.lr.ph61.split
  %.04560 = phi i64 [ %i.co, %.lr.ph61.split ], [ %.04560.ph, %.lr.ph61.split.preheader125 ] ; 2 uses
  %.05059 = phi i64 [ %spec.select, %.lr.ph61.split ], [ %.05059.ph, %.lr.ph61.split.preheader125 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.04560
  %i.cm = load i32, ptr %i.cl, align 4
  %.not56 = icmp ne i32 %i.cm, 0
  %i.cn = zext i1 %.not56 to i64
  %spec.select = add nuw nsw i64 %.05059, %i.cn   ; 2 uses
  %i.co = add nuw nsw i64 %.04560, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %i.f
  br i1 %exitcond.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !830

._crit_edge62:                                    ; preds = %.lr.ph61.split, %._crit_edge.us, %middle.block
  %.050.lcssa = phi i64 [ %spec.select.us, %._crit_edge.us ], [ %i.aq, %middle.block ], [ %spec.select, %.lr.ph61.split ]
  %.not = icmp eq i64 %.050.lcssa, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge62
  call fastcc void @_01forward(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %6)
  %.not55 = icmp ne ptr %3, null
  %i.cp = icmp sgt i32 %i.c, 1
  %i.cq = and i1 %.not55, %i.cp
  br i1 %i.cq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cr = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.cs = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.g
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr
  %scevgep100 = getelementptr i8, ptr %i.cu, i64 -4
  %min.iters.check105 = icmp ugt i32 %i.c, 15
  %ident.check97.not = icmp eq i32 %5, 1
  %or.cond123 = and i1 %min.iters.check105, %ident.check97.not
  %n.vec108 = and i64 %i.e, 1073741816            ; 4 uses
  %cmp.n119 = icmp eq i64 %n.vec108, %i.e
  %i.cv = and i32 %i.d, 1
  %lcmp.mod129.not = icmp eq i32 %i.cv, 0
  %i.cw = add nsw i64 %i.e, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.165 = phi i64 [ %i.et, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.165
  %i.cy = load ptr, ptr %i.cx, align 8            ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.165
  %i.da = load ptr, ptr %i.cz, align 8            ; 7 uses
  br i1 %or.cond123, label %vector.memcheck98, label %scalar.ph104.preheader

vector.memcheck98:                                ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.cr ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.cy, i64 %i.cr
  %bound0 = icmp ult ptr %i.da, %scevgep99
  %bound1 = icmp ult ptr %i.cy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %i.da, %scevgep100
  %bound1102 = icmp ult ptr %i.ad, %scevgep
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %i.db = add nuw i64 %.165, %n.vec108
  %i.dc = getelementptr [4 x i8], ptr %i.ad, i64 %.165
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next117, %vector.body109 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %index110 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load111 = load <4 x float>, ptr %i.dd, align 4, !alias.scope !831
  %wide.load112 = load <4 x float>, ptr %i.de, align 4, !alias.scope !831
  %i.df = getelementptr [4 x i8], ptr %i.dc, i64 %index110 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load113 = load <4 x float>, ptr %i.df, align 4, !alias.scope !834
  %wide.load114 = load <4 x float>, ptr %i.dg, align 4, !alias.scope !834
  %i.dh = fsub <4 x float> %wide.load111, %wide.load113
  %i.di = fsub <4 x float> %wide.load112, %wide.load114
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index110 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load115 = load <4 x float>, ptr %i.dj, align 4, !alias.scope !836, !noalias !838
  %wide.load116 = load <4 x float>, ptr %i.dk, align 4, !alias.scope !836, !noalias !838
  %i.dl = fadd <4 x float> %wide.load115, %i.dh
  %i.dm = fadd <4 x float> %wide.load116, %i.di
  store <4 x float> %i.dl, ptr %i.dj, align 4, !alias.scope !836, !noalias !838
  store <4 x float> %i.dm, ptr %i.dk, align 4, !alias.scope !836, !noalias !838
  %index.next117 = add nuw i64 %index110, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next117, %n.vec108
  br i1 %i.dn, label %middle.block118, label %vector.body109, !llvm.loop !839

middle.block118:                                  ; preds = %vector.body109
  br i1 %cmp.n119, label %._crit_edge, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %vector.memcheck98, %.lr.ph, %middle.block118
  %.14764.ph = phi i64 [ 0, %vector.memcheck98 ], [ 0, %.lr.ph ], [ %n.vec108, %middle.block118 ] ; 5 uses
  %.14963.ph = phi i64 [ %.165, %vector.memcheck98 ], [ %.165, %.lr.ph ], [ %i.db, %middle.block118 ] ; 3 uses
  br i1 %lcmp.mod129.not, label %scalar.ph104.prol.loopexit, label %scalar.ph104.prol

scalar.ph104.prol:                                ; preds = %scalar.ph104.preheader
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.14764.ph
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.14963.ph
  %i.dr = load float, ptr %i.dq, align 4
  %i.ds = fsub float %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %.14764.ph ; 2 uses
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = fadd float %i.du, %i.ds
  store float %i.dv, ptr %i.dt, align 4
  %i.dw = or disjoint i64 %.14764.ph, 1
  %i.dx = add nuw nsw i64 %.14963.ph, %i.f
  br label %scalar.ph104.prol.loopexit

end_hunk_5
begin_hunk_6_@mapping0_forward:bb.a
  %i.jp = fmul nnan float %i.jo, f0x3540A8C1
  %i.jq = fadd nnan float %i.jp, f0xC43F115B
  %i.jr = fmul nnan float %i.jq, 5.000000e-01
  %i.js = fadd float %i.di, %i.jr                 ; 3 uses
  %i.jt = lshr i64 %i.ji, 1
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.jt
  store float %i.js, ptr %i.ju, align 4
  %i.jv = fcmp ogt float %i.js, %i.jg
  %i.jw = select i1 %i.jv, float %i.js, float %i.jg ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.jx = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.jx, label %.lr.ph, label %._crit_edge, !llvm.loop !866

._crit_edge:                                      ; preds = %.lr.ph
  store float %i.jw, ptr %i.jf, align 4
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %_vorbis_apply_window.exit
  %i.jy = phi float [ %i.jw, %._crit_edge ], [ %i.je, %_vorbis_apply_window.exit ] ; 2 uses
  %i.jz = fcmp ogt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store float 0.000000e+00, ptr %i.jf, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ka = phi float [ 0.000000e+00, %bb.p ], [ %i.jy, %bb.o ] ; 2 uses
  %i.kb = fcmp ogt float %i.ka, %.0346461
  %.1347 = select i1 %i.kb, float %i.ka, float %.0346461 ; 2 uses
  %indvars.iv.next502 = add nuw nsw i64 %indvars.iv501, 1 ; 2 uses
  %i.kc = load i32, ptr %i.m, align 4
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i64 %indvars.iv.next502, %i.kd
  br i1 %i.ke, label %bb.k, label %._crit_edge464.loopexit, !llvm.loop !867

._crit_edge464.loopexit:                          ; preds = %bb.q
  %.pre = load i64, ptr %i.s, align 8
  %.pre534 = load i64, ptr %i.v, align 8
  %.pre535 = load ptr, ptr %i.y, align 8
  br label %._crit_edge464

._crit_edge464:                                   ; preds = %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge, %._crit_edge464.loopexit
  %.pre-phi553 = phi i64 [ %.pre552, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.db, %._crit_edge464.loopexit ] ; 13 uses
  %.pre-phi547 = phi i64 [ %.pre546, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.cy, %._crit_edge464.loopexit ] ; 5 uses
  %.pre-phi545 = phi i32 [ %.pre544, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.cx, %._crit_edge464.loopexit ] ; 2 uses
  %i.kf = phi ptr [ %i.bu, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.pre535, %._crit_edge464.loopexit ] ; 3 uses
  %i.kg = phi i64 [ %i.bs, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.pre534, %._crit_edge464.loopexit ] ; 2 uses
  %i.kh = phi i64 [ %i.bw, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.pre, %._crit_edge464.loopexit ] ; 3 uses
  %.0346.lcssa = phi float [ %i.by, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.1347, %._crit_edge464.loopexit ] ; 2 uses
  %i.ki = add nsw i64 %i.kh, %.pre-phi553
  %i.kj = icmp sgt i64 %i.ki, %i.kg
  br i1 %i.kj, label %bb.r, label %_vorbis_block_alloc.exit379

bb.r:                                             ; preds = %._crit_edge464
  %.not.i378 = icmp eq ptr %i.kf, null
  br i1 %.not.i378, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.kk = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 8
  %i.kn = add nsw i64 %i.km, %i.kh
  store i64 %i.kn, ptr %i.kl, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store ptr %i.kp, ptr %i.kq, align 8
  store ptr %i.kf, ptr %i.kk, align 8
  store ptr %i.kk, ptr %i.ko, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.pre-phi553, ptr %i.v, align 8
  %i.kr = tail call noalias ptr @malloc(i64 noundef %.pre-phi553) #69 ; 2 uses
  store ptr %i.kr, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit379

_vorbis_block_alloc.exit379:                      ; preds = %._crit_edge464, %bb.t
  %i.ks = phi i64 [ %.pre-phi553, %bb.t ], [ %i.kg, %._crit_edge464 ]
  %i.kt = phi i64 [ 0, %bb.t ], [ %i.kh, %._crit_edge464 ] ; 2 uses
  %i.ku = phi ptr [ %i.kr, %bb.t ], [ %i.kf, %._crit_edge464 ] ; 4 uses
  %i.kv = getelementptr inbounds i8, ptr %i.ku, i64 %i.kt ; 4 uses
  %i.kw = add nsw i64 %i.kt, %.pre-phi553         ; 3 uses
  %i.kx = add nsw i64 %i.kw, %.pre-phi553
  %i.ky = icmp sgt i64 %i.kx, %i.ks
  br i1 %i.ky, label %bb.u, label %_vorbis_block_alloc.exit382

bb.u:                                             ; preds = %_vorbis_block_alloc.exit379
  %.not.i381 = icmp eq ptr %i.ku, null
  br i1 %.not.i381, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = add nsw i64 %i.lb, %i.kw
  store i64 %i.lc, ptr %i.la, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.le, ptr %i.lf, align 8
  store ptr %i.ku, ptr %i.kz, align 8
  store ptr %i.kz, ptr %i.ld, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i64 %.pre-phi553, ptr %i.v, align 8
  %i.lg = tail call noalias ptr @malloc(i64 noundef %.pre-phi553) #69 ; 2 uses
  store ptr %i.lg, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit382

_vorbis_block_alloc.exit382:                      ; preds = %_vorbis_block_alloc.exit379, %bb.w
  %i.lh = phi i64 [ 0, %bb.w ], [ %i.kw, %_vorbis_block_alloc.exit379 ] ; 2 uses
  %i.li = phi ptr [ %i.lg, %bb.w ], [ %i.ku, %_vorbis_block_alloc.exit379 ]
  %i.lj = getelementptr inbounds i8, ptr %i.li, i64 %i.lh ; 4 uses
  %i.lk = add nsw i64 %i.lh, %.pre-phi553
  store i64 %i.lk, ptr %i.s, align 8
  %i.ll = load i32, ptr %i.m, align 4
  %.not357470 = icmp sgt i32 %i.ll, 0
  br i1 %.not357470, label %.lr.ph472, label %.critedge366

.lr.ph472:                                        ; preds = %_vorbis_block_alloc.exit382
  %i.lm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.lp = icmp sgt i32 %i.l, 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.f, i64 1320
  %i.lt = getelementptr inbounds nuw i8, ptr %i.cl, i64 1028
  %i.lu = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 5 uses
  %wide.trip.count = zext i32 %.pre-phi545 to i64 ; 5 uses
  %i.lv = shl nsw i64 %.pre-phi547, 2
  %min.iters.check717 = icmp ult i32 %.pre-phi545, 8
  %n.vec720 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  %cmp.n727 = icmp eq i64 %n.vec720, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.lw = add nsw i64 %wide.trip.count, -1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph472, %.loopexit452
  %indvars.iv515 = phi i64 [ 0, %.lr.ph472 ], [ %indvars.iv.next516, %.loopexit452 ] ; 6 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv515
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv515
  %i.ma = load ptr, ptr %i.lz, align 8            ; 5 uses
  %i.mb = ptrtoaddr ptr %i.ma to i64
  %i.mc = load ptr, ptr %0, align 8
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv515
  %i.me = load ptr, ptr %i.md, align 8            ; 9 uses
  %i.mf = ptrtoaddr ptr %i.me to i64
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.me, i64 %.pre-phi547 ; 8 uses
  store i32 %i.ch, ptr %i.cs, align 4
  %i.mh = load i64, ptr %i.s, align 8             ; 3 uses
  %i.mi = add nsw i64 %i.mh, 120
  %i.mj = load i64, ptr %i.v, align 8
  %i.mk = icmp sgt i64 %i.mi, %i.mj
  %i.ml = load ptr, ptr %i.y, align 8             ; 3 uses
  br i1 %i.mk, label %bb.y, label %_vorbis_block_alloc.exit385

bb.y:                                             ; preds = %bb.x
  %.not.i384 = icmp eq ptr %i.ml, null
  br i1 %.not.i384, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.mn = load i64, ptr %i.ln, align 8
  %i.mo = add nsw i64 %i.mn, %i.mh
  store i64 %i.mo, ptr %i.ln, align 8
  %i.mp = load ptr, ptr %i.lo, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr %i.mp, ptr %i.mq, align 8
  store ptr %i.ml, ptr %i.mm, align 8
  store ptr %i.mm, ptr %i.lo, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i64 120, ptr %i.v, align 8
  %i.mr = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #69 ; 2 uses
  store ptr %i.mr, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit385

_vorbis_block_alloc.exit385:                      ; preds = %bb.x, %bb.aa
  %i.ms = phi i64 [ 0, %bb.aa ], [ %i.mh, %bb.x ] ; 2 uses
  %i.mt = phi ptr [ %i.mr, %bb.aa ], [ %i.ml, %bb.x ]
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 %i.ms ; 2 uses
  %i.mv = add nsw i64 %i.ms, 120
  store i64 %i.mv, ptr %i.s, align 8
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv515 ; 9 uses
  store ptr %i.mu, ptr %i.mw, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.mu, i8 0, i64 120, i1 false)
  br i1 %i.lp, label %.lr.ph466.preheader, label %._crit_edge467

.lr.ph466.preheader:                              ; preds = %_vorbis_block_alloc.exit385
  br i1 %min.iters.check717, label %.lr.ph466.preheader769, label %vector.memcheck715

vector.memcheck715:                               ; preds = %.lr.ph466.preheader
  %i.mx = add i64 %i.lv, %i.mf
  %i.my = sub i64 %i.mx, %i.mb
  %diff.check = icmp ult i64 %i.my, 32
  br i1 %diff.check, label %.lr.ph466.preheader769, label %vector.body721

vector.body721:                                   ; preds = %vector.memcheck715, %vector.body721
  %index722 = phi i64 [ %index.next725, %vector.body721 ], [ 0, %vector.memcheck715 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %index722 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %wide.load723 = load <4 x i32>, ptr %i.mz, align 4
  %wide.load724 = load <4 x i32>, ptr %i.na, align 4
  %i.nb = and <4 x i32> %wide.load723, splat (i32 2147483647)
  %i.nc = and <4 x i32> %wide.load724, splat (i32 2147483647)
  %i.nd = uitofp nneg <4 x i32> %i.nb to <4 x float>
  %i.ne = uitofp nneg <4 x i32> %i.nc to <4 x float>
  %i.nf = fmul nnan <4 x float> %i.nd, splat (float f0x3540A8C1)
  %i.ng = fmul nnan <4 x float> %i.ne, splat (float f0x3540A8C1)
  %i.nh = fadd <4 x float> %i.nf, splat (float f0xC43F115B)
  %i.ni = fadd <4 x float> %i.ng, splat (float f0xC43F115B)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %index722 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <4 x float> %i.nh, ptr %i.nj, align 4
  store <4 x float> %i.ni, ptr %i.nk, align 4
  %index.next725 = add nuw i64 %index722, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next725, %n.vec720
  br i1 %i.nl, label %middle.block726, label %vector.body721, !llvm.loop !868

middle.block726:                                  ; preds = %vector.body721
  br i1 %cmp.n727, label %._crit_edge467, label %.lr.ph466.preheader769

.lr.ph466.preheader769:                           ; preds = %vector.memcheck715, %.lr.ph466.preheader, %middle.block726
  %indvars.iv504.ph = phi i64 [ 0, %vector.memcheck715 ], [ 0, %.lr.ph466.preheader ], [ %n.vec720, %middle.block726 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph466.prol.loopexit, label %.lr.ph466.prol

.lr.ph466.prol:                                   ; preds = %.lr.ph466.preheader769
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv504.ph
  %.val.prol = load i32, ptr %i.nm, align 4
  %i.nn = and i32 %.val.prol, 2147483647
  %i.no = uitofp nneg i32 %i.nn to float
  %i.np = fmul nnan float %i.no, f0x3540A8C1
  %i.nq = fadd float %i.np, f0xC43F115B
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv504.ph
  store float %i.nq, ptr %i.nr, align 4
  %indvars.iv.next505.prol = or disjoint i64 %indvars.iv504.ph, 1
  br label %.lr.ph466.prol.loopexit

.lr.ph466.prol.loopexit:                          ; preds = %.lr.ph466.prol, %.lr.ph466.preheader769
  %indvars.iv504.unr = phi i64 [ %indvars.iv504.ph, %.lr.ph466.preheader769 ], [ %indvars.iv.next505.prol, %.lr.ph466.prol ]
  %i.ns = icmp eq i64 %indvars.iv504.ph, %i.lw
  br i1 %i.ns, label %._crit_edge467, label %.lr.ph466

.lr.ph466:                                        ; preds = %.lr.ph466.prol.loopexit, %.lr.ph466
  %indvars.iv504 = phi i64 [ %indvars.iv.next505.1, %.lr.ph466 ], [ %indvars.iv504.unr, %.lr.ph466.prol.loopexit ] ; 4 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv504
  %.val = load i32, ptr %i.nt, align 4
  %i.nu = and i32 %.val, 2147483647
  %i.nv = uitofp nneg i32 %i.nu to float
  %i.nw = fmul nnan float %i.nv, f0x3540A8C1
  %i.nx = fadd float %i.nw, f0xC43F115B
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv504
  store float %i.nx, ptr %i.ny, align 4
  %indvars.iv.next505 = add nuw nsw i64 %indvars.iv504, 1 ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv.next505
  %.val.1 = load i32, ptr %i.nz, align 4
  %i.oa = and i32 %.val.1, 2147483647
  %i.ob = uitofp nneg i32 %i.oa to float
  %i.oc = fmul nnan float %i.ob, f0x3540A8C1
  %i.od = fadd float %i.oc, f0xC43F115B
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.next505
  store float %i.od, ptr %i.oe, align 4
  %indvars.iv.next505.1 = add nuw nsw i64 %indvars.iv504, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next505.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge467, label %.lr.ph466, !llvm.loop !869

._crit_edge467:                                   ; preds = %.lr.ph466.prol.loopexit, %.lr.ph466, %middle.block726, %_vorbis_block_alloc.exit385
  tail call void @_vp_noisemask(ptr noundef %i.cr, ptr noundef %i.mg, ptr noundef %i.kv)
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv515
  %i.og = load float, ptr %i.of, align 4
  tail call void @_vp_tonemask(ptr noundef %i.cr, ptr noundef %i.me, ptr noundef %i.lj, float noundef %.0346.lcssa, float noundef %i.og)
  %i.oh = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.oi = load ptr, ptr %i.lq, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = icmp sgt i32 %i.oh, 0
  br i1 %i.ol, label %.lr.ph.i, label %_vp_offset_and_mix.exit

.lr.ph.i:                                         ; preds = %._crit_edge467
  %wide.trip.count.i = zext nneg i32 %i.oh to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv.i387 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i388, %bb.ab ] ; 5 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.i387
  %i.on = load float, ptr %i.om, align 4
  %i.oo = load ptr, ptr %i.lr, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv.i387
  %i.os = load float, ptr %i.or, align 4
  %i.ot = fadd float %i.on, %i.os                 ; 2 uses
  %i.ou = load ptr, ptr %i.lq, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 108
  %i.ow = load float, ptr %i.ov, align 4          ; 2 uses
  %i.ox = fcmp ogt float %i.ot, %i.ow
  %.0.i = select i1 %i.ox, float %i.ow, float %i.ot ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i387
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = fadd float %i.ok, %i.oz                 ; 2 uses
  %i.pb = fcmp olt float %.0.i, %i.pa
  %i.pc = select i1 %i.pb, float %i.pa, float %.0.i
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i387
  store float %i.pc, ptr %i.pd, align 4
  %indvars.iv.next.i388 = add nuw nsw i64 %indvars.iv.i387, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i388, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_vp_offset_and_mix.exit, label %bb.ab, !llvm.loop !584

_vp_offset_and_mix.exit:                          ; preds = %bb.ab, %._crit_edge467
  %i.pe = sext i32 %i.ly to i64
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.lt, i64 %i.pe ; 5 uses
  %i.pg = load i32, ptr %i.pf, align 4
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4
  %.not354 = icmp eq i32 %i.pj, 1
  br i1 %.not354, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %_vp_offset_and_mix.exit
  %i.pk = load ptr, ptr %i.lu, align 8
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %i.ph
  %i.pm = load ptr, ptr %i.pl, align 8
  %i.pn = tail call ptr @floor1_fit(ptr noundef nonnull %0, ptr noundef %i.pm, ptr noundef %i.mg, ptr noundef %i.me)
  %i.po = load ptr, ptr %i.mw, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 56
  store ptr %i.pn, ptr %i.pp, align 8
  %i.pq = load ptr, ptr %i.a, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 136
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 144
  %i.pu = load ptr, ptr %i.pt, align 8
  %.not.i389.not = icmp eq ptr %i.pu, null
  br i1 %.not.i389.not, label %.loopexit452, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.pv = load ptr, ptr %i.mw, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.px = load ptr, ptr %i.pw, align 8
  %.not356 = icmp eq ptr %i.px, null
  br i1 %.not356, label %.loopexit452, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.py = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.pz = load ptr, ptr %i.lq, align 8
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 20
  %i.qb = load float, ptr %i.qa, align 4
  %i.qc = icmp sgt i32 %i.py, 0
  br i1 %i.qc, label %.lr.ph.i391, label %_vp_offset_and_mix.exit397

.lr.ph.i391:                                      ; preds = %bb.ae
  %wide.trip.count.i392 = zext nneg i32 %i.py to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i391
  %indvars.iv.i393 = phi i64 [ 0, %.lr.ph.i391 ], [ %indvars.iv.next.i395, %bb.af ] ; 5 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %indvars.iv.i393
  %i.qe = load float, ptr %i.qd, align 4
  %i.qf = load ptr, ptr %i.lr, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %indvars.iv.i393
  %i.qj = load float, ptr %i.qi, align 4
  %i.qk = fadd float %i.qe, %i.qj                 ; 2 uses
  %i.ql = load ptr, ptr %i.lq, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 108
  %i.qn = load float, ptr %i.qm, align 4          ; 2 uses
  %i.qo = fcmp ogt float %i.qk, %i.qn
  %.0.i394 = select i1 %i.qo, float %i.qn, float %i.qk ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv.i393
  %i.qq = load float, ptr %i.qp, align 4
  %i.qr = fadd float %i.qb, %i.qq                 ; 2 uses
  %i.qs = fcmp olt float %.0.i394, %i.qr
  %i.qt = select i1 %i.qs, float %i.qr, float %.0.i394
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i393
  store float %i.qt, ptr %i.qu, align 4
  %indvars.iv.next.i395 = add nuw nsw i64 %indvars.iv.i393, 1 ; 2 uses
  %exitcond.not.i396 = icmp eq i64 %indvars.iv.next.i395, %wide.trip.count.i392
  br i1 %exitcond.not.i396, label %_vp_offset_and_mix.exit397, label %bb.af, !llvm.loop !584

_vp_offset_and_mix.exit397:                       ; preds = %bb.af, %bb.ae
  %i.qv = load ptr, ptr %i.lu, align 8
  %i.qw = load i32, ptr %i.pf, align 4
  %i.qx = sext i32 %i.qw to i64
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.qv, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8
  %i.ra = tail call ptr @floor1_fit(ptr noundef nonnull %0, ptr noundef %i.qz, ptr noundef %i.mg, ptr noundef %i.me)
  %i.rb = load ptr, ptr %i.mw, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 112
  store ptr %i.ra, ptr %i.rc, align 8
  %i.rd = load i32, ptr %i.cr, align 8            ; 2 uses
  %i.re = load ptr, ptr %i.lq, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  %i.rg = load float, ptr %i.rf, align 4
  %i.rh = icmp sgt i32 %i.rd, 0
  br i1 %i.rh, label %.lr.ph.i399, label %_vp_offset_and_mix.exit405
end_hunk_6
begin_hunk_7_@mapping0_forward:bb.a
  %wide.load665 = load <4 x i32>, ptr %i.xf, align 4, !alias.scope !881
  %i.xp = and <4 x i32> %wide.load665, splat (i32 32768)
  %i.xq = icmp ne <4 x i32> %i.xp, zeroinitializer
  %wide.load666 = load <4 x i32>, ptr %i.xi, align 4, !alias.scope !884
  %i.xr = and <4 x i32> %wide.load666, splat (i32 32768)
  %i.xs = icmp ne <4 x i32> %i.xr, zeroinitializer
  %i.xt = select <4 x i1> %i.xq, <4 x i1> %i.xs, <4 x i1> zeroinitializer ; 4 uses
  %i.xu = extractelement <4 x i1> %i.xt, i64 0
  br i1 %i.xu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body661
  %i.xv = extractelement <4 x i32> %i.xn, i64 0
  %i.xw = or i32 %i.xv, 32768
  store i32 %i.xw, ptr %i.xo, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body661
  %i.xx = extractelement <4 x i1> %i.xt, i64 1
  br i1 %i.xx, label %pred.store.if667, label %pred.store.continue668

pred.store.if667:                                 ; preds = %pred.store.continue
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %index662
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 4
  %i.ya = extractelement <4 x i32> %i.xn, i64 1
  %i.yb = or i32 %i.ya, 32768
  store i32 %i.yb, ptr %i.xz, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue668

pred.store.continue668:                           ; preds = %pred.store.if667, %pred.store.continue
  %i.yc = extractelement <4 x i1> %i.xt, i64 2
  br i1 %i.yc, label %pred.store.if669, label %pred.store.continue670

pred.store.if669:                                 ; preds = %pred.store.continue668
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %index662
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = extractelement <4 x i32> %i.xn, i64 2
  %i.yg = or i32 %i.yf, 32768
  store i32 %i.yg, ptr %i.ye, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue670

pred.store.continue670:                           ; preds = %pred.store.if669, %pred.store.continue668
  %i.yh = extractelement <4 x i1> %i.xt, i64 3
  br i1 %i.yh, label %pred.store.if671, label %pred.store.continue672

pred.store.if671:                                 ; preds = %pred.store.continue670
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %index662
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 12
  %i.yk = extractelement <4 x i32> %i.xn, i64 3
  %i.yl = or i32 %i.yk, 32768
  store i32 %i.yl, ptr %i.yj, align 4, !alias.scope !886, !noalias !888
  br label %pred.store.continue672

pred.store.continue672:                           ; preds = %pred.store.if671, %pred.store.continue670
  %index.next673 = add nuw i64 %index662, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next673, %n.vec658
  br i1 %i.ym, label %middle.block674, label %vector.body661, !llvm.loop !889

middle.block674:                                  ; preds = %pred.store.continue672
  %cmp.n675 = icmp eq i64 %n.vec658, %i.wh
  br i1 %cmp.n675, label %floor1_interpolate_fit.exit419, label %scalar.ph654.preheader

scalar.ph654.preheader:                           ; preds = %vector.memcheck644, %.lr.ph.i413, %middle.block674
  %.02327.i414.ph = phi i64 [ 0, %vector.memcheck644 ], [ 0, %.lr.ph.i413 ], [ %n.vec658, %middle.block674 ]
  br label %scalar.ph654

scalar.ph654:                                     ; preds = %scalar.ph654.preheader, %bb.av
  %.02327.i414 = phi i64 [ %i.ze, %bb.av ], [ %.02327.i414.ph, %scalar.ph654.preheader ] ; 4 uses
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %.02327.i414 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 4
  %i.yp = and i32 %i.yo, 32767
  %i.yq = mul nsw i32 %i.yp, %i.xd
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %.02327.i414 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 4
  %i.yt = and i32 %i.ys, 32767
  %i.yu = mul nuw nsw i32 %i.yt, %.udiv
  %i.yv = add nsw i32 %i.yq, 32768
  %i.yw = add i32 %i.yv, %i.yu
  %i.yx = ashr i32 %i.yw, 16                      ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %.02327.i414 ; 2 uses
  store i32 %i.yx, ptr %i.yy, align 4
  %i.yz = load i32, ptr %i.yn, align 4
  %i.za = and i32 %i.yz, 32768
  %.not.i415 = icmp eq i32 %i.za, 0
  br i1 %.not.i415, label %bb.av, label %bb.at

bb.at:                                            ; preds = %scalar.ph654
  %i.zb = load i32, ptr %i.yr, align 4
  %i.zc = and i32 %i.zb, 32768
  %.not26.i416 = icmp eq i32 %i.zc, 0
  br i1 %.not26.i416, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.zd = or i32 %i.yx, 32768
  store i32 %i.zd, ptr %i.yy, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %scalar.ph654
  %i.ze = add nuw nsw i64 %.02327.i414, 1         ; 2 uses
  %exitcond.not.i417 = icmp eq i64 %i.ze, %i.wh
  br i1 %exitcond.not.i417, label %floor1_interpolate_fit.exit419, label %scalar.ph654, !llvm.loop !890

floor1_interpolate_fit.exit419:                   ; preds = %bb.av, %middle.block674, %.preheader451, %_vorbis_block_alloc.exit.i412
  %.0.i411 = phi ptr [ null, %.preheader451 ], [ %i.xa, %_vorbis_block_alloc.exit.i412 ], [ %i.xa, %middle.block674 ], [ %i.xa, %bb.av ]
  %i.zf = load ptr, ptr %i.mw, align 8
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %indvars.iv511
  store ptr %.0.i411, ptr %i.zg, align 8
  %indvars.iv.next512 = add nuw nsw i64 %indvars.iv511, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next512, 14
  br i1 %exitcond514.not, label %.loopexit452, label %.preheader451, !llvm.loop !891

.loopexit452:                                     ; preds = %floor1_interpolate_fit.exit419, %bb.ad, %bb.ac
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %i.zh = load i32, ptr %i.m, align 4
  %i.zi = sext i32 %i.zh to i64
  %.not357 = icmp slt i64 %indvars.iv.next516, %i.zi
  br i1 %.not357, label %bb.x, label %.critedge366, !llvm.loop !892

.critedge366:                                     ; preds = %.loopexit452, %_vorbis_block_alloc.exit382
  store float %.0346.lcssa, ptr %i.bx, align 8
  %i.zj = load i32, ptr %i.m, align 4             ; 2 uses
  %i.zk = sext i32 %i.zj to i64                   ; 2 uses
  %i.zl = shl nsw i64 %i.zk, 3                    ; 3 uses
  %i.zm = alloca i8, i64 %i.zl, align 16          ; 3 uses
  %i.zn = shl nsw i64 %i.zk, 2
  %i.zo = alloca i8, i64 %i.zn, align 16          ; 3 uses
  %i.zp = alloca i8, i64 %i.zl, align 16          ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.cl, i64 1156 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4
  %.not358 = icmp eq i32 %i.zr, 0
  br i1 %.not358, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge366
  %i.zs = getelementptr inbounds nuw i8, ptr %i.f, i64 4944
  %i.zt = tail call ptr @_vp_quantize_couple_memo(ptr noundef %0, ptr noundef nonnull %i.zs, ptr noundef %i.cr, ptr noundef nonnull %i.cl, ptr noundef %i.al) ; 2 uses
  %i.zu = tail call ptr @_vp_quantize_couple_sort(ptr noundef %0, ptr noundef %i.cr, ptr noundef nonnull %i.cl, ptr noundef %i.zt)
  %.pre536 = load i32, ptr %i.m, align 4          ; 2 uses
  %.pre540 = sext i32 %.pre536 to i64
  %.pre542 = shl nsw i64 %.pre540, 3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge366
  %.pre-phi543 = phi i64 [ %.pre542, %bb.aw ], [ %i.zl, %.critedge366 ]
  %i.zv = phi i32 [ %.pre536, %bb.aw ], [ %i.zj, %.critedge366 ]
  %.0351 = phi ptr [ %i.zu, %bb.aw ], [ undef, %.critedge366 ]
  %.0350 = phi ptr [ %i.zt, %bb.aw ], [ undef, %.critedge366 ]
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.zp, i8 0, i64 %.pre-phi543, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 500
  %i.zz = load i32, ptr %i.zy, align 4
  %.not359 = icmp ne i32 %i.zz, 0
  %i.aaa = icmp sgt i32 %i.zv, 0
  %or.cond = select i1 %.not359, i1 %i.aaa, i1 false
  br i1 %or.cond, label %.lr.ph474, label %.loopexit

.lr.ph474:                                        ; preds = %bb.ax
  %i.aab = sext i32 %i.l to i64
  %i.aac = shl nsw i64 %i.aab, 1
  %i.aad = and i64 %i.aac, 9223372036854775806
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph474, %bb.ay
  %indvars.iv518 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next519, %bb.ay ] ; 3 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv518
  %i.aaf = load ptr, ptr %i.aae, align 8
  %i.aag = alloca i8, i64 %i.aad, align 16        ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv518
  store ptr %i.aag, ptr %i.aah, align 8
  call void @_vp_noise_normalize_sort(ptr noundef nonnull %i.cr, ptr noundef %i.aaf, ptr noundef nonnull %i.aag)
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %i.aai = load i32, ptr %i.m, align 4
  %i.aaj = sext i32 %i.aai to i64
  %i.aak = icmp slt i64 %indvars.iv.next519, %i.aaj
  br i1 %i.aak, label %bb.ay, label %.loopexit, !llvm.loop !893

.loopexit:                                        ; preds = %bb.ay, %bb.ax
  %i.aal = load ptr, ptr %i.a, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 136
  %i.aan = load ptr, ptr %i.aam, align 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 144
  %i.aap = load ptr, ptr %i.aao, align 8
  %.not.i420.not = icmp eq ptr %i.aap, null
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cl, i64 1028
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.f, i64 5316 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.f, i64 4944
  %i.abb = getelementptr inbounds nuw i8, ptr %i.cl, i64 1092
  %i.abc = getelementptr inbounds nuw i8, ptr %i.f, i64 2088
  %i.abd = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.abg = select i1 %.not.i420.not, i64 7, i64 0
  %i.abh = shl nsw i64 %.pre-phi547, 2            ; 2 uses
  %diff.check744 = icmp ult i64 %i.abh, 16
  %diff.check730 = icmp ult i64 %i.abh, 16
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %oggpack_writealign.exit
  %indvars.iv531 = phi i64 [ %i.abg, %.loopexit ], [ %indvars.iv.next532, %oggpack_writealign.exit ] ; 7 uses
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef 0, i32 noundef 1)
  %i.abi = load i32, ptr %i.aar, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.cj, i32 noundef %i.abi)
  %i.abj = load i64, ptr %i.cf, align 8
  %.not363 = icmp eq i64 %i.abj, 0
  br i1 %.not363, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.abk = load i64, ptr %i.aas, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.abk, i32 noundef 1)
  %i.abl = load i64, ptr %i.aat, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aaq, i64 noundef %i.abl, i32 noundef 1)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.abm = load i32, ptr %i.m, align 4
  %i.abn = icmp sgt i32 %i.abm, 0
  br i1 %i.abn, label %.lr.ph477, label %._crit_edge478

.lr.ph477:                                        ; preds = %bb.bb
  %invariant.gep = getelementptr [4 x i8], ptr %i.aaz, i64 %indvars.iv531
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph477, %_vp_noise_normalize.exit
  %indvars.iv522 = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next523, %_vp_noise_normalize.exit ] ; 8 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv522
  %i.abp = load i32, ptr %i.abo, align 4
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv522
  %i.abr = load ptr, ptr %i.abq, align 8          ; 3 uses
  %i.abs = load ptr, ptr %0, align 8
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %indvars.iv522
  %i.abu = load ptr, ptr %i.abt, align 8          ; 23 uses
  %i.abv = load i64, ptr %i.s, align 8            ; 3 uses
  %i.abw = add nsw i64 %i.abv, %.pre-phi553
  %i.abx = load i64, ptr %i.v, align 8
  %i.aby = icmp sgt i64 %i.abw, %i.abx
  %i.abz = load ptr, ptr %i.y, align 8            ; 3 uses
  br i1 %i.aby, label %bb.bd, label %_vorbis_block_alloc.exit426

bb.bd:                                            ; preds = %bb.bc
  %.not.i425 = icmp eq ptr %i.abz, null
  br i1 %.not.i425, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aca = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.acb = load i64, ptr %i.aav, align 8
  %i.acc = add nsw i64 %i.acb, %i.abv
  store i64 %i.acc, ptr %i.aav, align 8
  %i.acd = load ptr, ptr %i.aaw, align 8
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr %i.acd, ptr %i.ace, align 8
  store ptr %i.abz, ptr %i.aca, align 8
  store ptr %i.aca, ptr %i.aaw, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i64 %.pre-phi553, ptr %i.v, align 8
  %i.acf = call noalias ptr @malloc(i64 noundef %.pre-phi553) #69 ; 2 uses
  store ptr %i.acf, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit426

_vorbis_block_alloc.exit426:                      ; preds = %bb.bc, %bb.bf
  %i.acg = phi i64 [ 0, %bb.bf ], [ %i.abv, %bb.bc ] ; 2 uses
  %i.ach = phi ptr [ %i.acf, %bb.bf ], [ %i.abz, %bb.bc ]
  %i.aci = getelementptr inbounds i8, ptr %i.ach, i64 %i.acg ; 5 uses
  %i.acj = add nsw i64 %i.acg, %.pre-phi553
  store i64 %i.acj, ptr %i.s, align 8
  %i.ack = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv522
  store ptr %i.aci, ptr %i.ack, align 8
  %i.acl = load ptr, ptr %i.aax, align 8
  %i.acm = sext i32 %i.abp to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.aay, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.acp
  %i.acr = load ptr, ptr %i.acq, align 8
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv522
  %i.act = load ptr, ptr %i.acs, align 8
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %indvars.iv531
  %i.acv = load ptr, ptr %i.acu, align 8
  %i.acw = call i32 @floor1_encode(ptr noundef nonnull %0, ptr noundef %i.acr, ptr noundef %i.acv, ptr noundef %i.aci)
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv522
  store i32 %i.acw, ptr %i.acx, align 4
  %i.acy = load i64, ptr %i.cf, align 8
  %gep = getelementptr [60 x i8], ptr %invariant.gep, i64 %i.acy
  %i.acz = load i32, ptr %gep, align 4
  %i.ada = load i32, ptr %i.cr, align 8           ; 3 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.acz, i32 %i.ada) ; 6 uses
  %i.adb = icmp sgt i32 %spec.select.i, 0
  br i1 %i.adb, label %.lr.ph.preheader.i429, label %.preheader.i427

.lr.ph.preheader.i429:                            ; preds = %_vorbis_block_alloc.exit426
  %wide.trip.count.i430 = zext nneg i32 %spec.select.i to i64 ; 2 uses
  %xtraiter774 = and i64 %wide.trip.count.i430, 1
  %i.adc = icmp eq i32 %spec.select.i, 1
  br i1 %i.adc, label %.lr.ph.i431.epil.preheader, label %.lr.ph.preheader.i429.new

.lr.ph.preheader.i429.new:                        ; preds = %.lr.ph.preheader.i429
  %unroll_iter = and i64 %wide.trip.count.i430, 2147483646
  br label %.lr.ph.i431

.preheader.i427.loopexit.unr-lcssa:               ; preds = %.lr.ph.i431
  %lcmp.mod775.not = icmp eq i64 %xtraiter774, 0
  br i1 %lcmp.mod775.not, label %.preheader.i427, label %.lr.ph.i431.epil.preheader

.lr.ph.i431.epil.preheader:                       ; preds = %.preheader.i427.loopexit.unr-lcssa, %.lr.ph.preheader.i429
  %indvars.iv.i432.epil.init = phi i64 [ 0, %.lr.ph.preheader.i429 ], [ %indvars.iv.next.i433.1, %.preheader.i427.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod776 = trunc i32 %spec.select.i to i1
  call void @llvm.assume(i1 %lcmp.mod776)
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.i432.epil.init
  %i.ade = load float, ptr %i.add, align 4
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i432.epil.init
  %i.adg = load i32, ptr %i.adf, align 4
  %i.adh = sext i32 %i.adg to i64
  %i.adi = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.adh
  %i.adj = load float, ptr %i.adi, align 4
  %i.adk = fmul float %i.ade, %i.adj
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i432.epil.init
  store float %i.adk, ptr %i.adl, align 4
  br label %.preheader.i427

.preheader.i427:                                  ; preds = %.lr.ph.i431.epil.preheader, %.preheader.i427.loopexit.unr-lcssa, %_vorbis_block_alloc.exit426
  %.017.lcssa.i = phi i32 [ 0, %_vorbis_block_alloc.exit426 ], [ %spec.select.i, %.preheader.i427.loopexit.unr-lcssa ], [ %spec.select.i, %.lr.ph.i431.epil.preheader ] ; 3 uses
  %i.adm = icmp slt i32 %.017.lcssa.i, %i.ada
  br i1 %i.adm, label %.lr.ph22.preheader.i, label %_vp_remove_floor.exit

.lr.ph22.preheader.i:                             ; preds = %.preheader.i427
  %i.adn = zext nneg i32 %.017.lcssa.i to i64
  %i.ado = shl nuw nsw i64 %i.adn, 2
  %scevgep.i = getelementptr i8, ptr %i.abu, i64 %i.ado
  %i.adp = xor i32 %.017.lcssa.i, -1
  %i.adq = add nsw i32 %i.ada, %i.adp
  %i.adr = zext i32 %i.adq to i64
  %i.ads = shl nuw nsw i64 %i.adr, 2
  %i.adt = add nuw nsw i64 %i.ads, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.adt, i1 false)
  br label %_vp_remove_floor.exit

.lr.ph.i431:                                      ; preds = %.lr.ph.i431, %.lr.ph.preheader.i429.new
  %indvars.iv.i432 = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %indvars.iv.next.i433.1, %.lr.ph.i431 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %niter.next.1, %.lr.ph.i431 ]
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.i432
  %i.adv = load float, ptr %i.adu, align 4
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.i432
  %i.adx = load i32, ptr %i.adw, align 4
  %i.ady = sext i32 %i.adx to i64
  %i.adz = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.ady
  %i.aea = load float, ptr %i.adz, align 4
  %i.aeb = fmul float %i.adv, %i.aea
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.i432
  store float %i.aeb, ptr %i.aec, align 4
  %indvars.iv.next.i433 = or disjoint i64 %indvars.iv.i432, 1 ; 3 uses
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.abr, i64 %indvars.iv.next.i433
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %indvars.iv.next.i433
  %i.aeg = load i32, ptr %i.aef, align 4
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.aeh
  %i.aej = load float, ptr %i.aei, align 4
  %i.aek = fmul float %i.aee, %i.aej
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.abu, i64 %indvars.iv.next.i433
  store float %i.aek, ptr %i.ael, align 4
  %indvars.iv.next.i433.1 = add nuw nsw i64 %indvars.iv.i432, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i427.loopexit.unr-lcssa, label %.lr.ph.i431, !llvm.loop !564

_vp_remove_floor.exit:                            ; preds = %.preheader.i427, %.lr.ph22.preheader.i
  %i.aem = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %.pre-phi547 ; 19 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %indvars.iv522
  %i.aeo = load ptr, ptr %i.aen, align 8          ; 6 uses
  %i.aep = load i32, ptr %i.cr, align 8           ; 6 uses
  %i.aeq = load ptr, ptr %i.zw, align 8           ; 4 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 512
  %i.aes = load i32, ptr %i.aer, align 8          ; 5 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeq, i64 508
  %i.aeu = load i32, ptr %i.aet, align 4
  %spec.select.i435 = call i32 @llvm.smin.i32(i32 %i.aeu, i32 %i.aep) ; 7 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeq, i64 500
  %i.aew = load i32, ptr %i.aev, align 4
  %.not.i436 = icmp eq i32 %i.aew, 0
  br i1 %.not.i436, label %.loopexit86.i, label %.preheader87.i

.preheader87.i:                                   ; preds = %_vp_remove_floor.exit
  %i.aex = icmp sgt i32 %spec.select.i435, 0
  br i1 %i.aex, label %.lr.ph.preheader.i439, label %.preheader85.i

.lr.ph.preheader.i439:                            ; preds = %.preheader87.i
  %wide.trip.count.i440 = zext nneg i32 %spec.select.i435 to i64 ; 5 uses
  %min.iters.check746 = icmp ult i32 %spec.select.i435, 4
  %or.cond759 = select i1 %min.iters.check746, i1 true, i1 %diff.check744
  br i1 %or.cond759, label %.lr.ph.i441.preheader, label %vector.ph747

vector.ph747:                                     ; preds = %.lr.ph.preheader.i439
  %n.vec749 = and i64 %wide.trip.count.i440, 2147483644 ; 3 uses
  br label %vector.body750
end_hunk_7
begin_hunk_8_@dradf2:bb.a
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !967

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.au = icmp slt i32 %0, 2
  br i1 %i.au, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.av = icmp eq i32 %0, 2
  br i1 %i.av, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.b
  br i1 %i.c, label %._crit_edge131.split, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.aw = zext nneg i32 %0 to i64
  %i.ax = sext i32 %i.a to i64
  %i.ay = zext nneg i32 %0 to i64                 ; 2 uses
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %._crit_edge126
  %indvars.iv155 = phi i64 [ %i.ax, %.lr.ph125.preheader ], [ %indvars.iv.next156, %._crit_edge126 ] ; 2 uses
  %indvars.iv151 = phi i32 [ %i.b, %.lr.ph125.preheader ], [ %indvars.iv.next152, %._crit_edge126 ] ; 2 uses
  %indvars.iv147 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next148, %._crit_edge126 ] ; 2 uses
  %indvars.iv143 = phi i32 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next144, %._crit_edge126 ] ; 2 uses
  %.1112127 = phi i32 [ 0, %.lr.ph125.preheader ], [ %i.cj, %._crit_edge126 ]
  %i.az = zext i32 %indvars.iv143 to i64
  %i.ba = sext i32 %indvars.iv151 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph125, %bb.c
  %indvars.iv159 = phi i64 [ 2, %.lr.ph125 ], [ %indvars.iv.next160, %bb.c ] ; 2 uses
  %indvars.iv157 = phi i64 [ %indvars.iv155, %.lr.ph125 ], [ %indvars.iv.next158, %bb.c ] ; 2 uses
  %indvars.iv153 = phi i64 [ %i.ba, %.lr.ph125 ], [ %indvars.iv.next154, %bb.c ] ; 2 uses
  %indvars.iv149 = phi i64 [ %indvars.iv147, %.lr.ph125 ], [ %indvars.iv.next150, %bb.c ] ; 2 uses
  %indvars.iv145 = phi i64 [ %i.az, %.lr.ph125 ], [ %indvars.iv.next146, %bb.c ] ; 2 uses
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, 2 ; 2 uses
  %indvars.iv.next154 = add nsw i64 %indvars.iv153, -2 ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 2 ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %4, i64 %indvars.iv159 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load float, ptr %i.bc, align 4          ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %2, i64 %indvars.iv157
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4          ; 2 uses
  %i.bh = fmul float %i.bd, %i.bg
  %i.bi = getelementptr i8, ptr %i.bb, i64 -4
  %i.bj = load float, ptr %i.bi, align 4          ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next158
  %i.bl = load float, ptr %i.bk, align 4          ; 2 uses
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = fadd float %i.bh, %i.bm                 ; 2 uses
  %i.bo = fmul float %i.bd, %i.bl
  %i.bp = fmul float %i.bg, %i.bj
  %i.bq = fsub float %i.bo, %i.bp                 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next150 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fadd float %i.bs, %i.bq
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next146
  store float %i.bt, ptr %i.bu, align 4
  %i.bv = load float, ptr %i.br, align 4
  %i.bw = fsub float %i.bq, %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next154
  store float %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fadd float %i.bn, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv145
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %i.cb, ptr %i.cd, align 4
  %i.ce = load float, ptr %i.bz, align 4
  %i.cf = fsub float %i.ce, %i.bn
  %i.cg = getelementptr [4 x i8], ptr %3, i64 %indvars.iv153
  %i.ch = getelementptr i8, ptr %i.cg, i64 -12
  store float %i.cf, ptr %i.ch, align 4
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 2 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next160, %i.ay
  br i1 %i.ci, label %bb.c, label %._crit_edge126, !llvm.loop !968

._crit_edge126:                                   ; preds = %bb.c
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, %i.aw
  %indvars.iv.next156 = add i64 %indvars.iv155, %i.ay
  %i.cj = add nuw nsw i32 %.1112127, 1            ; 2 uses
  %indvars.iv.next144 = add i32 %indvars.iv143, %i.b
  %indvars.iv.next152 = add i32 %indvars.iv151, %i.b
  %exitcond173.not = icmp eq i32 %i.cj, %1
  br i1 %exitcond173.not, label %._crit_edge131.split, label %.lr.ph125, !llvm.loop !969

._crit_edge131.split:                             ; preds = %._crit_edge126, %.preheader
  %.not = trunc i32 %0 to i1
  %brmerge = or i1 %i.c, %.not
  br i1 %brmerge, label %.loopexit, label %.lr.ph137.preheader

bb.d:                                             ; preds = %bb.b
  br i1 %i.c, label %.loopexit, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %._crit_edge131.split, %bb.d
  %i.ck = add nsw i32 %0, -1                      ; 2 uses
  %i.cl = add i32 %i.a, %i.ck
  %i.cm = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cn = zext nneg i32 %0 to i64                 ; 2 uses
  %i.co = sext i32 %i.cl to i64                   ; 2 uses
  %i.cp = zext nneg i32 %0 to i64                 ; 4 uses
  %i.cq = sext i32 %i.b to i64                    ; 2 uses
  %xtraiter = and i32 %1, 1
  %i.cr = icmp eq i32 %1, 1
  br i1 %i.cr, label %.lr.ph137.epil.preheader, label %.lr.ph137.preheader.new

.lr.ph137.preheader.new:                          ; preds = %.lr.ph137.preheader
  %unroll_iter = and i32 %1, -2
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137, %.lr.ph137.preheader.new
  %indvars.iv178 = phi i64 [ %i.cp, %.lr.ph137.preheader.new ], [ %indvars.iv.next179.1, %.lr.ph137 ] ; 2 uses
  %indvars.iv176 = phi i64 [ %i.co, %.lr.ph137.preheader.new ], [ %indvars.iv.next177.1, %.lr.ph137 ] ; 2 uses
  %indvars.iv174 = phi i64 [ %i.cm, %.lr.ph137.preheader.new ], [ %indvars.iv.next175.1, %.lr.ph137 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph137.preheader.new ], [ %niter.next.1, %.lr.ph137 ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv176
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = fneg float %i.ct
  %i.cv = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv178 ; 2 uses
  store float %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv174
  %i.cx = load float, ptr %i.cw, align 4
  %i.cy = getelementptr i8, ptr %i.cv, i64 -4
  store float %i.cx, ptr %i.cy, align 4
  %indvars.iv.next179 = add nsw i64 %indvars.iv178, %i.cq ; 2 uses
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.cp ; 2 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, %i.cn ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next177
  %i.da = load float, ptr %i.cz, align 4
  %i.db = fneg float %i.da
  %i.dc = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next179 ; 2 uses
  store float %i.db, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next175
  %i.de = load float, ptr %i.dd, align 4
  %i.df = getelementptr i8, ptr %i.dc, i64 -4
  store float %i.de, ptr %i.df, align 4
  %indvars.iv.next179.1 = add nsw i64 %indvars.iv.next179, %i.cq ; 2 uses
  %indvars.iv.next177.1 = add nsw i64 %indvars.iv.next177, %i.cp ; 2 uses
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv.next175, %i.cn ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph137, !llvm.loop !970

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph137
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph137.epil.preheader

.lr.ph137.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph137.preheader
  %indvars.iv178.epil.init = phi i64 [ %i.cp, %.lr.ph137.preheader ], [ %indvars.iv.next179.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv176.epil.init = phi i64 [ %i.co, %.lr.ph137.preheader ], [ %indvars.iv.next177.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv174.epil.init = phi i64 [ %i.cm, %.lr.ph137.preheader ], [ %indvars.iv.next175.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod248 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv176.epil.init
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = fneg float %i.dh
  %i.dj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv178.epil.init ; 2 uses
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv174.epil.init
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr i8, ptr %i.dj, i64 -4
  store float %i.dl, ptr %i.dm, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph137.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge131.split, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @dradfg(i32 noundef %0, i32 noundef range(i32 5, 4) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #56 {
bb.a:
  %i.a = ptrtoaddr ptr %6 to i64                  ; 8 uses
  %i.b = ptrtoaddr ptr %8 to i64                  ; 8 uses
  %i.c = sitofp i32 %1 to float
  %i.d = fdiv float f0x40C90FDB, %i.c
  %i.e = fpext float %i.d to double               ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #62
  %i.g = fptrunc double %i.f to float             ; 2 uses
  %i.h = tail call double @sin(double noundef %i.e) #62
  %i.i = fptrunc double %i.h to float             ; 2 uses
  %i.j = add nsw i32 %1, 1
  %i.k = ashr i32 %i.j, 1                         ; 12 uses
  %i.l = add i32 %0, -1                           ; 2 uses
  %i.m = ashr i32 %i.l, 1                         ; 3 uses
  %i.n = mul i32 %2, %0                           ; 26 uses
  %i.o = mul i32 %1, %0                           ; 7 uses
  %i.p = icmp eq i32 %0, 1                        ; 2 uses
  br i1 %i.p, label %.loopexit670, label %.preheader679

.preheader679:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.lr.ph.preheader, label %.preheader678

.lr.ph.preheader:                                 ; preds = %.preheader679
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.r = sub i64 %i.b, %i.a
  %diff.check = icmp ult i64 %i.r, 32
  %or.cond1570 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1570, label %.lr.ph.preheader1584, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x float>, ptr %i.s, align 4
  %wide.load1203 = load <4 x float>, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x float> %wide.load, ptr %i.u, align 4
  store <4 x float> %wide.load1203, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader678, label %.lr.ph.preheader1584

.lr.ph.preheader1584:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1584, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1584 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1584 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.prol
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.prol
  store float %i.y, ptr %i.z, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !972

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1584
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1584 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.preheader678, label %.lr.ph

.preheader678:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader679
  %i.ac = icmp sgt i32 %1, 1                      ; 3 uses
  %i.ad = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.ac, %i.ad
  br i1 %or.cond, label %.lr.ph683.preheader, label %._crit_edge687.split

.lr.ph683.preheader:                              ; preds = %.preheader678
  %i.ae = sext i32 %0 to i64                      ; 5 uses
  %i.af = add nsw i32 %2, -1
  %xtraiter1585 = and i32 %2, 3                   ; 3 uses
  %i.ag = icmp ult i32 %i.af, 3
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod1586.not = icmp eq i32 %xtraiter1585, 0
  %lcmp.mod1587 = icmp ne i32 %xtraiter1585, 0
  br label %.lr.ph683

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.ai, ptr %i.aj, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next
  store float %i.al, ptr %i.am, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.1
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.1
  store float %i.ao, ptr %i.ap, align 4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next.2
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next.2
  store float %i.ar, ptr %i.as, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader678, label %.lr.ph, !llvm.loop !973

.lr.ph683:                                        ; preds = %.lr.ph683.preheader, %._crit_edge
  %indvars.iv899 = phi i32 [ %i.n, %.lr.ph683.preheader ], [ %indvars.iv.next900, %._crit_edge ] ; 2 uses
  %.0550685 = phi i32 [ 1, %.lr.ph683.preheader ], [ %i.bj, %._crit_edge ]
  %i.at = sext i32 %indvars.iv899 to i64          ; 2 uses
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.lr.ph683, %.lr.ph683.new
  %indvars.iv901 = phi i64 [ %indvars.iv.next902.3, %.lr.ph683.new ], [ %i.at, %.lr.ph683 ] ; 3 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph683.new ], [ 0, %.lr.ph683 ]
  %i.au = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901
  %i.av = load float, ptr %i.au, align 4
  %i.aw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901
  store float %i.av, ptr %i.aw, align 4
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, %i.ae ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902
  %i.ay = load float, ptr %i.ax, align 4
  %i.az = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902
  store float %i.ay, ptr %i.az, align 4
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv.next902, %i.ae ; 3 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.1
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.1
  store float %i.bb, ptr %i.bc, align 4
  %indvars.iv.next902.2 = add nsw i64 %indvars.iv.next902.1, %i.ae ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next902.2
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next902.2
  store float %i.be, ptr %i.bf, align 4
  %indvars.iv.next902.3 = add nsw i64 %indvars.iv.next902.2, %i.ae ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph683.new, !llvm.loop !974

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph683.new
  br i1 %lcmp.mod1586.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph683
  %indvars.iv901.epil.init = phi i64 [ %i.at, %.lr.ph683 ], [ %indvars.iv.next902.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1587)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv901.epil = phi i64 [ %indvars.iv901.epil.init, %.epil.preheader ], [ %indvars.iv.next902.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv901.epil
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv901.epil
  store float %i.bh, ptr %i.bi, align 4
  %indvars.iv.next902.epil = add nsw i64 %indvars.iv901.epil, %i.ae
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1585
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !975

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %i.bj = add nuw nsw i32 %.0550685, 1            ; 2 uses
  %indvars.iv.next900 = add i32 %indvars.iv899, %i.n
  %exitcond905.not = icmp eq i32 %i.bj, %1
  br i1 %exitcond905.not, label %._crit_edge687.split, label %.lr.ph683, !llvm.loop !976

._crit_edge687.split:                             ; preds = %._crit_edge, %.preheader678
  %i.bk = icmp sgt i32 %i.m, %2
  br i1 %i.bk, label %.preheader674, label %.preheader676

.preheader676:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph702, label %.loopexit675

.lr.ph702:                                        ; preds = %.preheader676
  %i.bl = icmp slt i32 %0, 3
  %i.bm = icmp slt i32 %2, 1
  %brmerge = or i1 %i.bl, %i.bm
  br i1 %brmerge, label %.loopexit675, label %.lr.ph697.preheader

.lr.ph697.preheader:                              ; preds = %.lr.ph702
  %i.bn = add i32 %i.n, 2
  %i.bo = zext nneg i32 %0 to i64
  br label %.lr.ph697

.preheader674:                                    ; preds = %._crit_edge687.split
  br i1 %i.ac, label %.lr.ph718, label %.loopexit675

.lr.ph718:                                        ; preds = %.preheader674
  %i.bp = icmp slt i32 %2, 1
  %i.bq = icmp slt i32 %0, 3
  %brmerge873 = or i1 %i.bp, %i.bq
  br i1 %brmerge873, label %.loopexit675, label %.lr.ph713.preheader

.lr.ph713.preheader:                              ; preds = %.lr.ph718
  %scevgep = getelementptr i8, ptr %7, i64 4
  %i.br = add nsw i32 %0, -3
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 12               ; 3 uses
  %scevgep1222 = getelementptr i8, ptr %7, i64 %i.bv
  %scevgep1224 = getelementptr i8, ptr %9, i64 4
  %scevgep1226 = getelementptr i8, ptr %9, i64 %i.bv
  %scevgep1228 = getelementptr i8, ptr %5, i64 4
  %scevgep1230 = getelementptr i8, ptr %5, i64 %i.bv
  %i.bw = add nsw i32 %0, -3                      ; 2 uses
  %i.bx = lshr i32 %i.bw, 1
  %narrow = add nuw i32 %i.bx, 1
  %i.by = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check1236 = icmp ult i32 %i.bw, 6
  %n.vec1239 = and i64 %i.by, 4294967292          ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec1239, 1           ; 2 uses
  %i.ca = trunc nuw i64 %n.vec1239 to i32
  %i.cb = shl i32 %i.ca, 1
  %i.cc = or disjoint i32 %i.cb, 2
  %cmp.n1254 = icmp eq i64 %n.vec1239, %i.by
  br label %.lr.ph713
end_hunk_8
begin_hunk_9_@dradfg:bb.a
  br i1 %i.hk, label %.lr.ph738, label %._crit_edge745, !llvm.loop !993

._crit_edge745:                                   ; preds = %._crit_edge739
  %i.hl = add nuw nsw i32 %.3553748, 1            ; 2 uses
  %indvars.iv.next956 = sub i32 %indvars.iv955, %i.n
  %indvars.iv.next962 = add i32 %indvars.iv961, %i.n
  %exitcond971.not = icmp eq i32 %i.hl, %i.k
  br i1 %exitcond971.not, label %.loopexit670, label %.lr.ph744, !llvm.loop !994

.preheader671.lr.ph:                              ; preds = %.preheader671.lr.ph.preheader, %._crit_edge728
  %indvars.iv941 = phi i32 [ %i.n, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next942, %._crit_edge728 ] ; 3 uses
  %indvars.iv935 = phi i32 [ %i.ff, %.preheader671.lr.ph.preheader ], [ %indvars.iv.next936, %._crit_edge728 ] ; 3 uses
  %.4554731 = phi i32 [ 1, %.preheader671.lr.ph.preheader ], [ %i.kp, %._crit_edge728 ]
  %i.hm = sext i32 %indvars.iv941 to i64
  %i.hn = shl nsw i64 %i.hm, 2                    ; 6 uses
  %scevgep1260 = getelementptr i8, ptr %scevgep1259, i64 %i.hn ; 5 uses
  %scevgep1262 = getelementptr i8, ptr %scevgep1261, i64 %i.hn ; 5 uses
  %i.ho = sext i32 %indvars.iv935 to i64
  %i.hp = shl nsw i64 %i.ho, 2                    ; 6 uses
  %scevgep1264 = getelementptr i8, ptr %scevgep1263, i64 %i.hp ; 5 uses
  %scevgep1266 = getelementptr i8, ptr %scevgep1265, i64 %i.hp ; 5 uses
  %scevgep1268 = getelementptr i8, ptr %scevgep1267, i64 %i.hn ; 5 uses
  %scevgep1270 = getelementptr i8, ptr %scevgep1269, i64 %i.hn ; 5 uses
  %scevgep1272 = getelementptr i8, ptr %scevgep1271, i64 %i.hp ; 5 uses
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.hp ; 5 uses
  %scevgep1276 = getelementptr i8, ptr %scevgep1275, i64 %i.hp ; 3 uses
  %scevgep1278 = getelementptr i8, ptr %scevgep1277, i64 %i.hp ; 3 uses
  %scevgep1280 = getelementptr i8, ptr %scevgep1279, i64 %i.hn ; 4 uses
  %scevgep1282 = getelementptr i8, ptr %scevgep1281, i64 %i.hn ; 4 uses
  %i.hq = sext i32 %indvars.iv935 to i64
  %i.hr = sext i32 %indvars.iv941 to i64
  %i.hs = insertelement <4 x ptr> poison, ptr %scevgep1276, i64 0 ; 2 uses
  %i.ht = insertelement <4 x ptr> %i.hs, ptr %scevgep1260, i64 1
  %i.hu = insertelement <4 x ptr> %i.ht, ptr %scevgep1268, i64 2
  %i.hv = insertelement <4 x ptr> %i.hu, ptr %scevgep1264, i64 3
  %i.hw = insertelement <4 x ptr> poison, ptr %scevgep1262, i64 0
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep1282, i64 1
  %i.hy = insertelement <4 x ptr> %i.hx, ptr %scevgep1266, i64 2
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep1274, i64 3
  %i.ia = insertelement <4 x ptr> poison, ptr %scevgep1260, i64 0
  %i.ib = insertelement <4 x ptr> %i.ia, ptr %scevgep1280, i64 1
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %scevgep1264, i64 2
  %i.id = insertelement <4 x ptr> %i.ic, ptr %scevgep1272, i64 3
  %i.ie = insertelement <4 x ptr> poison, ptr %scevgep1278, i64 0 ; 2 uses
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1262, i64 1
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep1270, i64 2
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %scevgep1266, i64 3
  %i.ii = insertelement <4 x ptr> %i.hs, ptr %scevgep1264, i64 1
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1272, i64 2
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep1268, i64 3
  %i.il = insertelement <4 x ptr> poison, ptr %scevgep1266, i64 0
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep1282, i64 1
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep1270, i64 2
  %i.io = insertelement <4 x ptr> %i.in, ptr %scevgep1278, i64 3
  %i.ip = insertelement <4 x ptr> poison, ptr %scevgep1264, i64 0
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1280, i64 1
  %i.ir = insertelement <4 x ptr> %i.iq, ptr %scevgep1268, i64 2
  %i.is = insertelement <4 x ptr> %i.ir, ptr %scevgep1276, i64 3
  %i.it = insertelement <4 x ptr> %i.ie, ptr %scevgep1266, i64 1
  %i.iu = insertelement <4 x ptr> %i.it, ptr %scevgep1274, i64 2
  %i.iv = insertelement <4 x ptr> %i.iu, ptr %scevgep1270, i64 3
  %bound01283 = icmp ult ptr %scevgep1260, %scevgep1266
  %bound11284 = icmp ult ptr %scevgep1264, %scevgep1262
  %found.conflict1285 = and i1 %bound01283, %bound11284
  %bound01286 = icmp ult ptr %scevgep1260, %scevgep1270
  %bound11287 = icmp ult ptr %scevgep1268, %scevgep1262
  %found.conflict1288 = and i1 %bound01286, %bound11287
  %bound01290 = icmp ult ptr %scevgep1260, %scevgep1274
  %bound11291 = icmp ult ptr %scevgep1272, %scevgep1262
  %found.conflict1292 = and i1 %bound01290, %bound11291
  %i.iw = icmp ult <4 x ptr> %i.id, %i.ih
  %i.ix = icmp ult <4 x ptr> %i.hv, %i.hz
  %i.iy = and <4 x i1> %i.ix, %i.iw
  %i.iz = icmp ult <4 x ptr> %i.is, %i.iv
  %i.ja = icmp ult <4 x ptr> %i.ik, %i.io
  %i.jb = and <4 x i1> %i.ja, %i.iz
  %bound01326 = icmp ult ptr %scevgep1268, %scevgep1282
  %bound11327 = icmp ult ptr %scevgep1280, %scevgep1270
  %found.conflict1328 = and i1 %bound01326, %bound11327
  %bound01330 = icmp ult ptr %scevgep1272, %scevgep1278
  %bound11331 = icmp ult ptr %scevgep1276, %scevgep1274
  %found.conflict1332 = and i1 %bound01330, %bound11331
  %bound01334 = icmp ult ptr %scevgep1272, %scevgep1282
  %bound11335 = icmp ult ptr %scevgep1280, %scevgep1274
  %found.conflict1336 = and i1 %bound01334, %bound11335
  %rdx.op = or <4 x i1> %i.iy, %i.jb
  %i.jc = bitcast <4 x i1> %rdx.op to i4
  %i.jd = icmp ne i4 %i.jc, 0
  %op.rdx = or i1 %i.jd, %found.conflict1285
  %op.rdx1573 = or i1 %found.conflict1288, %found.conflict1292
  %op.rdx1574 = or i1 %found.conflict1328, %found.conflict1332
  %op.rdx1575 = or i1 %op.rdx, %op.rdx1573
  %op.rdx1576 = or i1 %op.rdx1574, %found.conflict1336
  %op.rdx1577 = or i1 %op.rdx1575, %op.rdx1576
  br label %.preheader671

.preheader671:                                    ; preds = %.preheader671.lr.ph, %._crit_edge724
  %indvars.iv943 = phi i64 [ %i.hr, %.preheader671.lr.ph ], [ %indvars.iv.next944, %._crit_edge724 ] ; 4 uses
  %indvars.iv937 = phi i64 [ %i.hq, %.preheader671.lr.ph ], [ %indvars.iv.next938, %._crit_edge724 ] ; 4 uses
  %.4562727 = phi i32 [ 0, %.preheader671.lr.ph ], [ %i.ko, %._crit_edge724 ]
  %brmerge1642 = select i1 %min.iters.check1339, i1 true, i1 %op.rdx1577
  br i1 %brmerge1642, label %scalar.ph1338.preheader, label %vector.ph1340

vector.ph1340:                                    ; preds = %.preheader671
  %i.je = add i64 %indvars.iv943, %i.fv
  %i.jf = add i64 %indvars.iv937, %i.fv
  %invariant.op1616 = add i64 %indvars.iv943, 1
  %invariant.op1618 = add i64 %indvars.iv937, 1
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1340
  %index1344 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1359, %vector.body1343 ] ; 2 uses
  %i.jg = shl i64 %index1344, 1                   ; 2 uses
  %.reass1617 = add i64 %i.jg, %invariant.op1616  ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1617 ; 2 uses
  %wide.vec1345 = load <8 x float>, ptr %i.jh, align 4, !alias.scope !995 ; 2 uses
  %.reass1619 = add i64 %i.jg, %invariant.op1618  ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1619
  %wide.vec1348 = load <8 x float>, ptr %i.ji, align 4, !alias.scope !998 ; 4 uses
  %i.jj = fadd <8 x float> %wide.vec1345, %wide.vec1348
  %i.jk = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1617
  %i.jl = fsub <8 x float> %wide.vec1345, %wide.vec1348
  %i.jm = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1619
  %wide.vec1351 = load <8 x float>, ptr %i.jh, align 4, !alias.scope !995 ; 2 uses
  %i.jn = fadd <8 x float> %wide.vec1351, %wide.vec1348
  %interleaved.vec1357 = shufflevector <8 x float> %i.jj, <8 x float> %i.jn, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  store <8 x float> %interleaved.vec1357, ptr %i.jk, align 4
  %i.jo = fsub <8 x float> %wide.vec1348, %wide.vec1351
  %interleaved.vec1358 = shufflevector <8 x float> %i.jl, <8 x float> %i.jo, <8 x i32> <i32 1, i32 8, i32 3, i32 10, i32 5, i32 12, i32 7, i32 14>
  store <8 x float> %interleaved.vec1358, ptr %i.jm, align 4
  %index.next1359 = add nuw i64 %index1344, 4     ; 2 uses
  %i.jp = icmp eq i64 %index.next1359, %n.vec1342
  br i1 %i.jp, label %middle.block1360, label %vector.body1343, !llvm.loop !1000

middle.block1360:                                 ; preds = %vector.body1343
  br i1 %cmp.n1361, label %._crit_edge724, label %scalar.ph1338.preheader

scalar.ph1338.preheader:                          ; preds = %.preheader671, %middle.block1360
  %indvars.iv945.ph = phi i64 [ %i.je, %middle.block1360 ], [ %indvars.iv943, %.preheader671 ]
  %indvars.iv939.ph = phi i64 [ %i.jf, %middle.block1360 ], [ %indvars.iv937, %.preheader671 ]
  %.3722.ph = phi i32 [ %i.fy, %middle.block1360 ], [ 2, %.preheader671 ]
  br label %scalar.ph1338

scalar.ph1338:                                    ; preds = %scalar.ph1338.preheader, %scalar.ph1338
  %indvars.iv945 = phi i64 [ %indvars.iv.next946, %scalar.ph1338 ], [ %indvars.iv945.ph, %scalar.ph1338.preheader ] ; 2 uses
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %scalar.ph1338 ], [ %indvars.iv939.ph, %scalar.ph1338.preheader ] ; 2 uses
  %.3722 = phi i32 [ %i.km, %scalar.ph1338 ], [ %.3722.ph, %scalar.ph1338.preheader ]
  %indvars.iv.next946 = add nuw nsw i64 %indvars.iv945, 2 ; 3 uses
  %indvars.iv.next940 = add nsw i64 %indvars.iv939, 2 ; 3 uses
  %i.jq = add nuw nsw i64 %indvars.iv945, 1       ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4
  %i.jt = add nsw i64 %indvars.iv939, 1           ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %7, i64 %i.jt ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4
  %i.jw = fadd float %i.js, %i.jv
  %i.jx = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jq
  store float %i.jw, ptr %i.jx, align 4
  %i.jy = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next946 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4
  %i.ka = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next940 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4
  %i.kc = fsub float %i.jz, %i.kb
  %i.kd = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jt
  store float %i.kc, ptr %i.kd, align 4
  %i.ke = load float, ptr %i.jy, align 4
  %i.kf = load float, ptr %i.ka, align 4
  %i.kg = fadd float %i.ke, %i.kf
  %i.kh = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next946
  store float %i.kg, ptr %i.kh, align 4
  %i.ki = load float, ptr %i.ju, align 4
  %i.kj = load float, ptr %i.jr, align 4
  %i.kk = fsub float %i.ki, %i.kj
  %i.kl = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next940
  store float %i.kk, ptr %i.kl, align 4
  %i.km = add nuw nsw i32 %.3722, 2               ; 2 uses
  %i.kn = icmp slt i32 %i.km, %0
  br i1 %i.kn, label %scalar.ph1338, label %._crit_edge724, !llvm.loop !1001

._crit_edge724:                                   ; preds = %scalar.ph1338, %middle.block1360
  %indvars.iv.next944 = add i64 %indvars.iv943, %i.fg
  %indvars.iv.next938 = add i64 %indvars.iv937, %i.fg
  %i.ko = add nuw nsw i32 %.4562727, 1            ; 2 uses
  %exitcond953.not = icmp eq i32 %i.ko, %2
  br i1 %exitcond953.not, label %._crit_edge728, label %.preheader671, !llvm.loop !1002

._crit_edge728:                                   ; preds = %._crit_edge724
  %i.kp = add nuw nsw i32 %.4554731, 1            ; 2 uses
  %indvars.iv.next936 = sub i32 %indvars.iv935, %i.n
  %indvars.iv.next942 = add i32 %indvars.iv941, %i.n
  %exitcond954.not = icmp eq i32 %i.kp, %i.k
  br i1 %exitcond954.not, label %.loopexit670, label %.preheader671.lr.ph, !llvm.loop !1003

.loopexit670:                                     ; preds = %._crit_edge728, %._crit_edge745, %.lr.ph749, %.lr.ph732, %.preheader672, %.preheader669, %bb.a
  %i.kq = icmp sgt i32 %3, 0                      ; 3 uses
  br i1 %i.kq, label %.lr.ph753.preheader, label %._crit_edge754

.lr.ph753.preheader:                              ; preds = %.loopexit670
  %wide.trip.count975 = zext nneg i32 %3 to i64   ; 5 uses
  %min.iters.check1368 = icmp ult i32 %3, 8
  %i.kr = sub i64 %i.a, %i.b
  %diff.check1366 = icmp ult i64 %i.kr, 32
  %or.cond1571 = or i1 %min.iters.check1368, %diff.check1366
  br i1 %or.cond1571, label %.lr.ph753.preheader1581, label %vector.ph1369

vector.ph1369:                                    ; preds = %.lr.ph753.preheader
  %n.vec1371 = and i64 %wide.trip.count975, 2147483640 ; 3 uses
  br label %vector.body1372

vector.body1372:                                  ; preds = %vector.body1372, %vector.ph1369
  %index1373 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1376, %vector.body1372 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1373 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load1374 = load <4 x float>, ptr %i.ks, align 4
  %wide.load1375 = load <4 x float>, ptr %i.kt, align 4
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1373 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  store <4 x float> %wide.load1374, ptr %i.ku, align 4
  store <4 x float> %wide.load1375, ptr %i.kv, align 4
  %index.next1376 = add nuw i64 %index1373, 8     ; 2 uses
  %i.kw = icmp eq i64 %index.next1376, %n.vec1371
  br i1 %i.kw, label %middle.block1377, label %vector.body1372, !llvm.loop !1004

middle.block1377:                                 ; preds = %vector.body1372
  %cmp.n1378 = icmp eq i64 %n.vec1371, %wide.trip.count975
  br i1 %cmp.n1378, label %._crit_edge754, label %.lr.ph753.preheader1581

.lr.ph753.preheader1581:                          ; preds = %.lr.ph753.preheader, %middle.block1377
  %indvars.iv972.ph = phi i64 [ 0, %.lr.ph753.preheader ], [ %n.vec1371, %middle.block1377 ] ; 3 uses
  %xtraiter1588 = and i64 %wide.trip.count975, 3  ; 2 uses
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol

.lr.ph753.prol:                                   ; preds = %.lr.ph753.preheader1581, %.lr.ph753.prol
  %indvars.iv972.prol = phi i64 [ %indvars.iv.next973.prol, %.lr.ph753.prol ], [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ] ; 3 uses
  %prol.iter1590 = phi i64 [ %prol.iter1590.next, %.lr.ph753.prol ], [ 0, %.lr.ph753.preheader1581 ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972.prol
  %i.ky = load float, ptr %i.kx, align 4
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972.prol
  store float %i.ky, ptr %i.kz, align 4
  %indvars.iv.next973.prol = add nuw nsw i64 %indvars.iv972.prol, 1 ; 2 uses
  %prol.iter1590.next = add i64 %prol.iter1590, 1 ; 2 uses
  %prol.iter1590.cmp.not = icmp eq i64 %prol.iter1590.next, %xtraiter1588
  br i1 %prol.iter1590.cmp.not, label %.lr.ph753.prol.loopexit, label %.lr.ph753.prol, !llvm.loop !1005

.lr.ph753.prol.loopexit:                          ; preds = %.lr.ph753.prol, %.lr.ph753.preheader1581
  %indvars.iv972.unr = phi i64 [ %indvars.iv972.ph, %.lr.ph753.preheader1581 ], [ %indvars.iv.next973.prol, %.lr.ph753.prol ]
  %i.la = sub nsw i64 %indvars.iv972.ph, %wide.trip.count975
  %i.lb = icmp ugt i64 %i.la, -4
  br i1 %i.lb, label %._crit_edge754, label %.lr.ph753

.lr.ph753:                                        ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753
  %indvars.iv972 = phi i64 [ %indvars.iv.next973.3, %.lr.ph753 ], [ %indvars.iv972.unr, %.lr.ph753.prol.loopexit ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv972
  %i.ld = load float, ptr %i.lc, align 4
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv972
  store float %i.ld, ptr %i.le, align 4
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973
  %i.lg = load float, ptr %i.lf, align 4
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973
  store float %i.lg, ptr %i.lh, align 4
  %indvars.iv.next973.1 = add nuw nsw i64 %indvars.iv972, 2 ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.1
  %i.lj = load float, ptr %i.li, align 4
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.1
  store float %i.lj, ptr %i.lk, align 4
  %indvars.iv.next973.2 = add nuw nsw i64 %indvars.iv972, 3 ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next973.2
  %i.lm = load float, ptr %i.ll, align 4
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next973.2
  store float %i.lm, ptr %i.ln, align 4
  %indvars.iv.next973.3 = add nuw nsw i64 %indvars.iv972, 4 ; 2 uses
  %exitcond976.not.3 = icmp eq i64 %indvars.iv.next973.3, %wide.trip.count975
  br i1 %exitcond976.not.3, label %._crit_edge754, label %.lr.ph753, !llvm.loop !1006

._crit_edge754:                                   ; preds = %.lr.ph753.prol.loopexit, %.lr.ph753, %middle.block1377, %.loopexit670
  %i.lo = icmp sgt i32 %i.k, 1                    ; 4 uses
  %i.lp = icmp sgt i32 %2, 0                      ; 2 uses
  %or.cond880 = and i1 %i.lo, %i.lp               ; 2 uses
  br i1 %or.cond880, label %.lr.ph759.preheader, label %._crit_edge766.split

.lr.ph759.preheader:                              ; preds = %._crit_edge754
  %i.lq = mul i32 %3, %1                          ; 2 uses
  %i.lr = add nsw i32 %2, -1                      ; 3 uses
  %i.ls = mul i32 %0, %i.lr
  %i.lt = sext i32 %0 to i64                      ; 6 uses
  %i.lu = xor i32 %2, -1
  %i.lv = mul i32 %0, %i.lu
  %i.lw = add i32 %i.lq, %i.lv
  %scevgep1383 = getelementptr i8, ptr %5, i64 4
  %i.lx = zext i32 %i.lr to i64
  %i.ly = shl nuw nsw i64 %i.lx, 2
  %i.lz = add nuw nsw i64 %i.ly, 8                ; 4 uses
  %scevgep1385 = getelementptr i8, ptr %5, i64 %i.lz
  %scevgep1387 = getelementptr i8, ptr %5, i64 4
  %i.ma = xor i32 %2, -1
  %i.mb = add i32 %i.lq, %i.ma
  %scevgep1389 = getelementptr i8, ptr %5, i64 %i.lz
  %scevgep1391 = getelementptr i8, ptr %7, i64 4
  %scevgep1393 = getelementptr i8, ptr %7, i64 %i.lz
  %scevgep1395 = getelementptr i8, ptr %7, i64 4
  %scevgep1397 = getelementptr i8, ptr %7, i64 %i.lz
  %i.mc = zext nneg i32 %2 to i64                 ; 2 uses
  %min.iters.check1419 = icmp ugt i32 %2, 7
  %ident.check1381.not = icmp eq i32 %0, 1
  %or.cond1572 = and i1 %min.iters.check1419, %ident.check1381.not
  %n.vec1422 = and i64 %i.mc, 2147483644          ; 5 uses
  %i.md = trunc nuw nsw i64 %n.vec1422 to i32
  %cmp.n1431 = icmp eq i64 %n.vec1422, %i.mc
  br label %.lr.ph759

.lr.ph759:                                        ; preds = %.lr.ph759.preheader, %._crit_edge760
  %indvar = phi i32 [ 0, %.lr.ph759.preheader ], [ %indvar.next, %._crit_edge760 ] ; 3 uses
  %indvars.iv981 = phi i32 [ %i.lw, %.lr.ph759.preheader ], [ %indvars.iv.next982, %._crit_edge760 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.ls, %.lr.ph759.preheader ], [ %indvars.iv.next978, %._crit_edge760 ] ; 2 uses
  %.5555763 = phi i32 [ 1, %.lr.ph759.preheader ], [ %i.of, %._crit_edge760 ]
  %i.me = sext i32 %indvars.iv977 to i64          ; 4 uses
  %i.mf = sext i32 %indvars.iv981 to i64          ; 4 uses
  br i1 %or.cond1572, label %vector.memcheck1382, label %scalar.ph1418.preheader

vector.memcheck1382:                              ; preds = %.lr.ph759
  %i.mg = mul i32 %2, %indvar
  %i.mh = add i32 %i.lr, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = shl nsw i64 %i.mi, 2                    ; 4 uses
  %scevgep1398 = getelementptr i8, ptr %scevgep1397, i64 %i.mj ; 2 uses
  %scevgep1396 = getelementptr i8, ptr %scevgep1395, i64 %i.mj ; 2 uses
  %i.mk = mul i32 %2, %indvar
  %i.ml = sub i32 %i.mb, %i.mk
  %i.mm = sext i32 %i.ml to i64
  %i.mn = shl nsw i64 %i.mm, 2                    ; 4 uses
  %scevgep1394 = getelementptr i8, ptr %scevgep1393, i64 %i.mn ; 2 uses
  %scevgep1392 = getelementptr i8, ptr %scevgep1391, i64 %i.mn ; 2 uses
  %scevgep1390 = getelementptr i8, ptr %scevgep1389, i64 %i.mn ; 3 uses
  %scevgep1388 = getelementptr i8, ptr %scevgep1387, i64 %i.mn ; 3 uses
  %scevgep1386 = getelementptr i8, ptr %scevgep1385, i64 %i.mj ; 3 uses
  %scevgep1384 = getelementptr i8, ptr %scevgep1383, i64 %i.mj ; 3 uses
  %bound01399 = icmp ult ptr %scevgep1384, %scevgep1390
  %bound11400 = icmp ult ptr %scevgep1388, %scevgep1386
  %found.conflict1401 = and i1 %bound01399, %bound11400
  %bound01402 = icmp ult ptr %scevgep1384, %scevgep1394
  %bound11403 = icmp ult ptr %scevgep1392, %scevgep1386
  %found.conflict1404 = and i1 %bound01402, %bound11403
  %conflict.rdx1405 = or i1 %found.conflict1401, %found.conflict1404
  %bound01406 = icmp ult ptr %scevgep1384, %scevgep1398
  %bound11407 = icmp ult ptr %scevgep1396, %scevgep1386
  %found.conflict1408 = and i1 %bound01406, %bound11407
  %conflict.rdx1409 = or i1 %conflict.rdx1405, %found.conflict1408
  %bound01410 = icmp ult ptr %scevgep1388, %scevgep1394
  %bound11411 = icmp ult ptr %scevgep1392, %scevgep1390
  %found.conflict1412 = and i1 %bound01410, %bound11411
  %conflict.rdx1413 = or i1 %conflict.rdx1409, %found.conflict1412
  %bound01414 = icmp ult ptr %scevgep1388, %scevgep1398
  %bound11415 = icmp ult ptr %scevgep1396, %scevgep1390
  %found.conflict1416 = and i1 %bound01414, %bound11415
  %conflict.rdx1417 = or i1 %conflict.rdx1413, %found.conflict1416
  br i1 %conflict.rdx1417, label %scalar.ph1418.preheader, label %vector.ph1420

vector.ph1420:                                    ; preds = %vector.memcheck1382
  %i.mo = add nsw i64 %n.vec1422, %i.mf
  %i.mp = add nsw i64 %n.vec1422, %i.me
  %invariant.op1620 = add i64 %i.me, 1
  %invariant.op1622 = add i64 %i.mf, 1
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1420
  %index1424 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1429, %vector.body1423 ] ; 3 uses
  %.reass1621 = add i64 %index1424, %invariant.op1620 ; 2 uses
  %.reass1623 = add i64 %index1424, %invariant.op1622 ; 2 uses
  %i.mq = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1621
  %wide.load1425 = load <4 x float>, ptr %i.mq, align 4, !alias.scope !1007 ; 2 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1623
  %wide.load1426 = load <4 x float>, ptr %i.mr, align 4, !alias.scope !1010 ; 2 uses
  %i.ms = fadd <4 x float> %wide.load1425, %wide.load1426
  %i.mt = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1621
  store <4 x float> %i.ms, ptr %i.mt, align 4, !alias.scope !1012, !noalias !1014
  %i.mu = fsub <4 x float> %wide.load1426, %wide.load1425
  %i.mv = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1623
  store <4 x float> %i.mu, ptr %i.mv, align 4, !alias.scope !1016, !noalias !1017
  %index.next1429 = add nuw i64 %index1424, 4     ; 2 uses
  %i.mw = icmp eq i64 %index.next1429, %n.vec1422
  br i1 %i.mw, label %middle.block1430, label %vector.body1423, !llvm.loop !1018

middle.block1430:                                 ; preds = %vector.body1423
  br i1 %cmp.n1431, label %._crit_edge760, label %scalar.ph1418.preheader

scalar.ph1418.preheader:                          ; preds = %vector.memcheck1382, %.lr.ph759, %middle.block1430
  %indvars.iv983.ph = phi i64 [ %i.mf, %vector.memcheck1382 ], [ %i.mf, %.lr.ph759 ], [ %i.mo, %middle.block1430 ] ; 2 uses
  %indvars.iv979.ph = phi i64 [ %i.me, %vector.memcheck1382 ], [ %i.me, %.lr.ph759 ], [ %i.mp, %middle.block1430 ] ; 2 uses
  %.5563757.ph = phi i32 [ 0, %vector.memcheck1382 ], [ 0, %.lr.ph759 ], [ %i.md, %middle.block1430 ] ; 4 uses
  %i.mx = sub i32 %2, %.5563757.ph
  %.neg = add i32 %.5563757.ph, 1
  %xtraiter1591 = and i32 %i.mx, 1
  %lcmp.mod1592.not = icmp eq i32 %xtraiter1591, 0
  br i1 %lcmp.mod1592.not, label %scalar.ph1418.prol.loopexit, label %scalar.ph1418.prol

scalar.ph1418.prol:                               ; preds = %scalar.ph1418.preheader
  %indvars.iv.next980.prol = add nsw i64 %indvars.iv979.ph, %i.lt ; 3 uses
  %indvars.iv.next984.prol = add nsw i64 %indvars.iv983.ph, %i.lt ; 3 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.prol ; 2 uses
  %i.mz = load float, ptr %i.my, align 4
  %i.na = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.prol ; 2 uses
  %i.nb = load float, ptr %i.na, align 4
  %i.nc = fadd float %i.mz, %i.nb
  %i.nd = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.prol
  store float %i.nc, ptr %i.nd, align 4
  %i.ne = load float, ptr %i.na, align 4
  %i.nf = load float, ptr %i.my, align 4
  %i.ng = fsub float %i.ne, %i.nf
  %i.nh = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.prol
  store float %i.ng, ptr %i.nh, align 4
  %i.ni = add nuw nsw i32 %.5563757.ph, 1
  br label %scalar.ph1418.prol.loopexit

scalar.ph1418.prol.loopexit:                      ; preds = %scalar.ph1418.prol, %scalar.ph1418.preheader
  %indvars.iv983.unr = phi i64 [ %indvars.iv983.ph, %scalar.ph1418.preheader ], [ %indvars.iv.next984.prol, %scalar.ph1418.prol ]
  %indvars.iv979.unr = phi i64 [ %indvars.iv979.ph, %scalar.ph1418.preheader ], [ %indvars.iv.next980.prol, %scalar.ph1418.prol ]
  %.5563757.unr = phi i32 [ %.5563757.ph, %scalar.ph1418.preheader ], [ %i.ni, %scalar.ph1418.prol ]
  %i.nj = icmp eq i32 %2, %.neg
  br i1 %i.nj, label %._crit_edge760, label %scalar.ph1418

scalar.ph1418:                                    ; preds = %scalar.ph1418.prol.loopexit, %scalar.ph1418
  %indvars.iv983 = phi i64 [ %indvars.iv.next984.1, %scalar.ph1418 ], [ %indvars.iv983.unr, %scalar.ph1418.prol.loopexit ]
  %indvars.iv979 = phi i64 [ %indvars.iv.next980.1, %scalar.ph1418 ], [ %indvars.iv979.unr, %scalar.ph1418.prol.loopexit ]
  %.5563757 = phi i32 [ %i.oe, %scalar.ph1418 ], [ %.5563757.unr, %scalar.ph1418.prol.loopexit ]
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, %i.lt ; 3 uses
  %indvars.iv.next984 = add nsw i64 %indvars.iv983, %i.lt ; 3 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980 ; 2 uses
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984 ; 2 uses
  %i.nn = load float, ptr %i.nm, align 4
  %i.no = fadd float %i.nl, %i.nn
  %i.np = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980
  store float %i.no, ptr %i.np, align 4
  %i.nq = load float, ptr %i.nm, align 4
  %i.nr = load float, ptr %i.nk, align 4
  %i.ns = fsub float %i.nq, %i.nr
  %i.nt = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984
  store float %i.ns, ptr %i.nt, align 4
  %indvars.iv.next980.1 = add nsw i64 %indvars.iv.next980, %i.lt ; 3 uses
  %indvars.iv.next984.1 = add nsw i64 %indvars.iv.next984, %i.lt ; 3 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next980.1 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4
  %i.nw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next984.1 ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4
  %i.ny = fadd float %i.nv, %i.nx
  %i.nz = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next980.1
  store float %i.ny, ptr %i.nz, align 4
  %i.oa = load float, ptr %i.nw, align 4
  %i.ob = load float, ptr %i.nu, align 4
  %i.oc = fsub float %i.oa, %i.ob
  %i.od = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next984.1
  store float %i.oc, ptr %i.od, align 4
  %i.oe = add nuw nsw i32 %.5563757, 2            ; 2 uses
  %exitcond988.not.1 = icmp eq i32 %i.oe, %2
  br i1 %exitcond988.not.1, label %._crit_edge760, label %scalar.ph1418, !llvm.loop !1019

._crit_edge760:                                   ; preds = %scalar.ph1418.prol.loopexit, %scalar.ph1418, %middle.block1430
  %i.of = add nuw nsw i32 %.5555763, 1            ; 2 uses
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.n
  %indvars.iv.next982 = sub i32 %indvars.iv981, %i.n
  %exitcond989.not = icmp eq i32 %i.of, %i.k
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond989.not, label %._crit_edge766.split, label %.lr.ph759, !llvm.loop !1020

._crit_edge766.split:                             ; preds = %._crit_edge760, %._crit_edge754
  %i.og = add i32 %1, -1                          ; 4 uses
  br i1 %i.lo, label %.lr.ph795, label %._crit_edge804.split

.lr.ph795:                                        ; preds = %._crit_edge766.split
  %i.oh = mul i32 %3, %i.og                       ; 2 uses
  %.not = icmp eq i32 %i.k, 2
  %i.oi = icmp slt i32 %3, 1
  %i.oj = sext i32 %3 to i64                      ; 5 uses
  %i.ok = sext i32 %i.oh to i64                   ; 5 uses
  %i.ol = add i32 %1, -2
  %i.om = mul i32 %3, %i.ol
  %i.on = shl i32 %3, 1
  %wide.trip.count1013 = zext i32 %3 to i64       ; 10 uses
  %brmerge884 = or i1 %.not, %i.oi
  %i.oo = add i32 %3, -1
  %i.op = zext i32 %i.oo to i64
  %i.oq = shl nuw nsw i64 %i.op, 2
  %i.or = add nuw nsw i64 %i.oq, 4                ; 4 uses
  %scevgep1437 = getelementptr i8, ptr %8, i64 %i.or
  %scevgep1440 = getelementptr i8, ptr %8, i64 %i.or
  %scevgep1443 = getelementptr i8, ptr %6, i64 %i.or
  %scevgep1446 = getelementptr i8, ptr %6, i64 %i.or
  %i.os = shl nsw i64 %i.ok, 2                    ; 2 uses
  %i.ot = add i64 %i.os, %i.a
  %i.ou = shl nsw i64 %i.oj, 2                    ; 2 uses
  %i.ov = add i64 %i.ou, %i.a
  %i.ow = sub i64 %i.b, %i.ov
  %i.ox = sub i64 %i.b, %i.a
  %i.oy = add i64 %i.os, %i.a
  %i.oz = sub i64 %i.b, %i.oy
  %i.pa = add i64 %i.ou, %i.a
  %i.pb = sub i64 %i.b, %i.pa
  %i.pc = sub i64 %i.b, %i.a
  %min.iters.check1503 = icmp ult i32 %3, 4
  %n.vec1506 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.pd = add nsw i64 %n.vec1506, %i.ok
  %i.pe = add nuw nsw i64 %n.vec1506, %i.oj
  %invariant.gep1624 = getelementptr [4 x i8], ptr %6, i64 %i.oj
  %invariant.gep1628 = getelementptr [4 x i8], ptr %6, i64 %i.ok
  %cmp.n1518 = icmp eq i64 %n.vec1506, %wide.trip.count1013
  %min.iters.check1468 = icmp ult i32 %3, 8
  %n.vec1471 = and i64 %wide.trip.count1013, 2147483644 ; 7 uses
  %i.pf = trunc nuw nsw i64 %n.vec1471 to i32
  %cmp.n1482 = icmp eq i64 %n.vec1471, %wide.trip.count1013
  br label %bb.e

.preheader667:                                    ; preds = %._crit_edge788.split
  br i1 %i.kq, label %.lr.ph799.preheader, label %._crit_edge804.split

.lr.ph799.preheader:                              ; preds = %.preheader667
  %wide.trip.count1046 = zext nneg i32 %3 to i64
  %i.pg = shl nuw nsw i64 %wide.trip.count1013, 2 ; 2 uses
  %scevgep1525 = getelementptr i8, ptr %8, i64 %i.pg
  %scevgep1527 = getelementptr i8, ptr %6, i64 %i.pg
  %min.iters.check1533 = icmp ult i32 %3, 8
  %n.vec1536 = and i64 %wide.trip.count1013, 2147483640 ; 4 uses
  %cmp.n1545 = icmp eq i64 %n.vec1536, %wide.trip.count1013
  %xtraiter1594 = and i64 %wide.trip.count1013, 1
  %lcmp.mod1595.not = icmp eq i64 %xtraiter1594, 0
  %i.ph = add nsw i64 %wide.trip.count1013, -1
  br label %.lr.ph799

bb.e:                                             ; preds = %.lr.ph795, %._crit_edge788.split
  %indvars.iv1000 = phi i32 [ %i.oh, %.lr.ph795 ], [ %indvars.iv.next1001, %._crit_edge788.split ] ; 4 uses
  %indvars.iv992 = phi i32 [ %3, %.lr.ph795 ], [ %indvars.iv.next993, %._crit_edge788.split ] ; 4 uses
  %.0569793 = phi i32 [ 1, %.lr.ph795 ], [ %i.rz, %._crit_edge788.split ]
  %.0599790 = phi float [ 1.000000e+00, %.lr.ph795 ], [ %i.pu, %._crit_edge788.split ] ; 2 uses
  %.0601789 = phi float [ 0.000000e+00, %.lr.ph795 ], [ %i.px, %._crit_edge788.split ] ; 2 uses
  %i.pi = sext i32 %indvars.iv1000 to i64
  %i.pj = shl nsw i64 %i.pi, 2                    ; 4 uses
  %i.pk = sext i32 %indvars.iv992 to i64
  %i.pl = shl nsw i64 %i.pk, 2                    ; 4 uses
  %10 = sub nsw i64 %i.pj, %i.pl
  %11 = add i64 %i.pl, %i.b
  %12 = sub i64 %i.ot, %11
  %13 = add i64 %i.ow, %i.pl
  %14 = add i64 %i.ox, %i.pl
  %15 = add i64 %i.oz, %i.pj
  %16 = add i64 %i.pb, %i.pj
  %17 = add i64 %i.pc, %i.pj
  %i.pm = sext i32 %indvars.iv992 to i64
  %i.pn = shl nsw i64 %i.pm, 2                    ; 2 uses
  %scevgep1436 = getelementptr i8, ptr %8, i64 %i.pn ; 3 uses
  %scevgep1438 = getelementptr i8, ptr %scevgep1437, i64 %i.pn ; 3 uses
  %i.po = sext i32 %indvars.iv1000 to i64
  %i.pp = shl nsw i64 %i.po, 2                    ; 2 uses
  %scevgep1439 = getelementptr i8, ptr %8, i64 %i.pp ; 3 uses
  %scevgep1441 = getelementptr i8, ptr %scevgep1440, i64 %i.pp ; 3 uses
  %i.pq = sext i32 %indvars.iv1000 to i64         ; 8 uses
  %i.pr = sext i32 %indvars.iv992 to i64          ; 8 uses
  %i.ps = fmul float %.0599790, %i.g
  %i.pt = fmul float %.0601789, %i.i
  %i.pu = fsub float %i.ps, %i.pt                 ; 6 uses
  %i.pv = fmul float %.0601789, %i.g
  %i.pw = fmul float %.0599790, %i.i
  %i.px = fadd float %i.pv, %i.pw                 ; 6 uses
  br i1 %i.kq, label %.lr.ph773.preheader, label %._crit_edge788.split

.lr.ph773.preheader:                              ; preds = %bb.e
  br i1 %min.iters.check1503, label %.lr.ph773.preheader1580, label %vector.memcheck1488

vector.memcheck1488:                              ; preds = %.lr.ph773.preheader
  %diff.check1489 = icmp ult i64 %10, 16
  %diff.check1490 = icmp ult i64 %12, 16
  %conflict.rdx1491 = or i1 %diff.check1489, %diff.check1490
  %diff.check1492 = icmp ult i64 %13, 16
  %conflict.rdx1493 = or i1 %conflict.rdx1491, %diff.check1492
  %diff.check1494 = icmp ult i64 %14, 16
  %conflict.rdx1495 = or i1 %conflict.rdx1493, %diff.check1494
  %diff.check1496 = icmp ult i64 %15, 16
  %conflict.rdx1497 = or i1 %conflict.rdx1495, %diff.check1496
  %diff.check1498 = icmp ult i64 %16, 16
  %conflict.rdx1499 = or i1 %conflict.rdx1497, %diff.check1498
  %diff.check1500 = icmp ult i64 %17, 16
  %conflict.rdx1501 = or i1 %conflict.rdx1499, %diff.check1500
  br i1 %conflict.rdx1501, label %.lr.ph773.preheader1580, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1488
  %i.py = add nsw i64 %n.vec1506, %i.pq
  %i.pz = add nsw i64 %n.vec1506, %i.pr
  %broadcast.splatinsert1507 = insertelement <4 x float> poison, float %i.pu, i64 0
  %broadcast.splat1508 = shufflevector <4 x float> %broadcast.splatinsert1507, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1509 = insertelement <4 x float> poison, float %i.px, i64 0
  %broadcast.splat1510 = shufflevector <4 x float> %broadcast.splatinsert1509, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1626 = getelementptr [4 x i8], ptr %8, i64 %i.pr
  %invariant.gep1630 = getelementptr [4 x i8], ptr %8, i64 %i.pq
  br label %vector.body1511

vector.body1511:                                  ; preds = %vector.body1511, %vector.ph1504
  %index1512 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1516, %vector.body1511 ] ; 6 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1512
  %wide.load1513 = load <4 x float>, ptr %i.qa, align 4
  %gep1625 = getelementptr [4 x i8], ptr %invariant.gep1624, i64 %index1512
  %wide.load1514 = load <4 x float>, ptr %gep1625, align 4
  %i.qb = fmul <4 x float> %broadcast.splat1508, %wide.load1514
  %i.qc = fadd <4 x float> %wide.load1513, %i.qb
  %gep1627 = getelementptr [4 x i8], ptr %invariant.gep1626, i64 %index1512
  store <4 x float> %i.qc, ptr %gep1627, align 4
  %gep1629 = getelementptr [4 x i8], ptr %invariant.gep1628, i64 %index1512
  %wide.load1515 = load <4 x float>, ptr %gep1629, align 4
  %i.qd = fmul <4 x float> %broadcast.splat1510, %wide.load1515
  %gep1631 = getelementptr [4 x i8], ptr %invariant.gep1630, i64 %index1512
  store <4 x float> %i.qd, ptr %gep1631, align 4
  %index.next1516 = add nuw i64 %index1512, 4     ; 2 uses
  %i.qe = icmp eq i64 %index.next1516, %n.vec1506
  br i1 %i.qe, label %middle.block1517, label %vector.body1511, !llvm.loop !1021

middle.block1517:                                 ; preds = %vector.body1511
  br i1 %cmp.n1518, label %.preheader668, label %.lr.ph773.preheader1580

.lr.ph773.preheader1580:                          ; preds = %vector.memcheck1488, %.lr.ph773.preheader, %middle.block1517
  %indvars.iv1002.ph = phi i64 [ %i.pq, %vector.memcheck1488 ], [ %i.pq, %.lr.ph773.preheader ], [ %i.py, %middle.block1517 ]
  %indvars.iv998.ph = phi i64 [ %i.ok, %vector.memcheck1488 ], [ %i.ok, %.lr.ph773.preheader ], [ %i.pd, %middle.block1517 ]
  %indvars.iv996.ph = phi i64 [ %i.oj, %vector.memcheck1488 ], [ %i.oj, %.lr.ph773.preheader ], [ %i.pe, %middle.block1517 ]
  %indvars.iv994.ph = phi i64 [ %i.pr, %vector.memcheck1488 ], [ %i.pr, %.lr.ph773.preheader ], [ %i.pz, %middle.block1517 ]
  %indvars.iv990.ph = phi i64 [ 0, %vector.memcheck1488 ], [ 0, %.lr.ph773.preheader ], [ %n.vec1506, %middle.block1517 ]
  br label %.lr.ph773

.preheader668:                                    ; preds = %.lr.ph773, %middle.block1517
  br i1 %brmerge884, label %._crit_edge788.split, label %.lr.ph780.preheader

.lr.ph780.preheader:                              ; preds = %.preheader668
  %bound01448 = icmp ult ptr %scevgep1436, %scevgep1441
  %bound11449 = icmp ult ptr %scevgep1439, %scevgep1438
  %found.conflict1450 = and i1 %bound01448, %bound11449
  %i.qf = add nsw i64 %n.vec1471, %i.pr
  %i.qg = add nsw i64 %n.vec1471, %i.pq
  %invariant.gep1634 = getelementptr [4 x i8], ptr %8, i64 %i.pr
  %invariant.gep1638 = getelementptr [4 x i8], ptr %8, i64 %i.pq
  br label %.lr.ph780

.lr.ph773:                                        ; preds = %.lr.ph773.preheader1580, %.lr.ph773
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003, %.lr.ph773 ], [ %indvars.iv1002.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv998 = phi i64 [ %indvars.iv.next999, %.lr.ph773 ], [ %indvars.iv998.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %.lr.ph773 ], [ %indvars.iv996.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv994 = phi i64 [ %indvars.iv.next995, %.lr.ph773 ], [ %indvars.iv994.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %indvars.iv990 = phi i64 [ %indvars.iv.next991, %.lr.ph773 ], [ %indvars.iv990.ph, %.lr.ph773.preheader1580 ] ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv990
  %i.qi = load float, ptr %i.qh, align 4
  %indvars.iv.next997 = add nuw nsw i64 %indvars.iv996, 1
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv996
  %i.qk = load float, ptr %i.qj, align 4
  %i.ql = fmul float %i.pu, %i.qk
  %i.qm = fadd float %i.qi, %i.ql
  %indvars.iv.next995 = add nsw i64 %indvars.iv994, 1
  %i.qn = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv994
  store float %i.qm, ptr %i.qn, align 4
  %indvars.iv.next999 = add nsw i64 %indvars.iv998, 1
  %i.qo = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv998
  %i.qp = load float, ptr %i.qo, align 4
  %i.qq = fmul float %i.px, %i.qp
  %indvars.iv.next1003 = add nsw i64 %indvars.iv1002, 1
  %i.qr = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1002
  store float %i.qq, ptr %i.qr, align 4
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1 ; 2 uses
  %exitcond1014.not = icmp eq i64 %indvars.iv.next991, %wide.trip.count1013
  br i1 %exitcond1014.not, label %.preheader668, label %.lr.ph773, !llvm.loop !1022

.lr.ph780:                                        ; preds = %.lr.ph780.preheader, %._crit_edge781
  %indvars.iv1019 = phi i32 [ %indvars.iv.next1020, %._crit_edge781 ], [ %i.on, %.lr.ph780.preheader ] ; 3 uses
  %indvars.iv1015 = phi i32 [ %indvars.iv.next1016, %._crit_edge781 ], [ %i.om, %.lr.ph780.preheader ] ; 3 uses
  %.6556786 = phi i32 [ %i.ry, %._crit_edge781 ], [ 2, %.lr.ph780.preheader ]
  %.0598785 = phi float [ %i.qw, %._crit_edge781 ], [ %i.pu, %.lr.ph780.preheader ] ; 2 uses
  %.0600784 = phi float [ %i.qz, %._crit_edge781 ], [ %i.px, %.lr.ph780.preheader ] ; 2 uses
  %i.qs = sext i32 %indvars.iv1015 to i64         ; 4 uses
  %i.qt = sext i32 %indvars.iv1019 to i64         ; 4 uses
  %i.qu = fmul float %i.pu, %.0598785
  %i.qv = fmul float %i.px, %.0600784
  %i.qw = fsub float %i.qu, %i.qv                 ; 3 uses
  %i.qx = fmul float %i.pu, %.0600784
  %i.qy = fmul float %i.px, %.0598785
  %i.qz = fadd float %i.qx, %i.qy                 ; 3 uses
  br i1 %min.iters.check1468, label %scalar.ph1467.preheader, label %vector.memcheck1435

vector.memcheck1435:                              ; preds = %.lr.ph780
  %i.ra = sext i32 %indvars.iv1019 to i64
  %i.rb = shl nsw i64 %i.ra, 2                    ; 2 uses
  %scevgep1447 = getelementptr i8, ptr %scevgep1446, i64 %i.rb ; 2 uses
  %scevgep1445 = getelementptr i8, ptr %6, i64 %i.rb ; 2 uses
  %i.rc = sext i32 %indvars.iv1015 to i64
  %i.rd = shl nsw i64 %i.rc, 2                    ; 2 uses
  %scevgep1444 = getelementptr i8, ptr %scevgep1443, i64 %i.rd ; 2 uses
  %scevgep1442 = getelementptr i8, ptr %6, i64 %i.rd ; 2 uses
  %bound01451 = icmp ult ptr %scevgep1436, %scevgep1444
  %bound11452 = icmp ult ptr %scevgep1442, %scevgep1438
  %found.conflict1453 = and i1 %bound01451, %bound11452
  %conflict.rdx1454 = or i1 %found.conflict1450, %found.conflict1453
  %bound01455 = icmp ult ptr %scevgep1436, %scevgep1447
  %bound11456 = icmp ult ptr %scevgep1445, %scevgep1438
  %found.conflict1457 = and i1 %bound01455, %bound11456
  %conflict.rdx1458 = or i1 %conflict.rdx1454, %found.conflict1457
  %bound01459 = icmp ult ptr %scevgep1439, %scevgep1444
  %bound11460 = icmp ult ptr %scevgep1442, %scevgep1441
  %found.conflict1461 = and i1 %bound01459, %bound11460
  %conflict.rdx1462 = or i1 %conflict.rdx1458, %found.conflict1461
  %bound01463 = icmp ult ptr %scevgep1439, %scevgep1447
  %bound11464 = icmp ult ptr %scevgep1445, %scevgep1441
  %found.conflict1465 = and i1 %bound01463, %bound11464
  %conflict.rdx1466 = or i1 %conflict.rdx1462, %found.conflict1465
  br i1 %conflict.rdx1466, label %scalar.ph1467.preheader, label %vector.ph1469

vector.ph1469:                                    ; preds = %vector.memcheck1435
  %i.re = add nsw i64 %n.vec1471, %i.qt
  %i.rf = add nsw i64 %n.vec1471, %i.qs
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1472 = insertelement <4 x float> poison, float %i.qz, i64 0
  %broadcast.splat1473 = shufflevector <4 x float> %broadcast.splatinsert1472, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1632 = getelementptr [4 x i8], ptr %6, i64 %i.qt
  %invariant.gep1636 = getelementptr [4 x i8], ptr %6, i64 %i.qs
  br label %vector.body1474

vector.body1474:                                  ; preds = %vector.body1474, %vector.ph1469
  %index1475 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1480, %vector.body1474 ] ; 5 uses
  %gep1633 = getelementptr [4 x i8], ptr %invariant.gep1632, i64 %index1475
  %wide.load1476 = load <4 x float>, ptr %gep1633, align 4, !alias.scope !1023
  %i.rg = fmul <4 x float> %broadcast.splat, %wide.load1476
  %gep1635 = getelementptr [4 x i8], ptr %invariant.gep1634, i64 %index1475 ; 2 uses
  %wide.load1477 = load <4 x float>, ptr %gep1635, align 4, !alias.scope !1026, !noalias !1028
  %i.rh = fadd <4 x float> %wide.load1477, %i.rg
  store <4 x float> %i.rh, ptr %gep1635, align 4, !alias.scope !1026, !noalias !1028
  %gep1637 = getelementptr [4 x i8], ptr %invariant.gep1636, i64 %index1475
  %wide.load1478 = load <4 x float>, ptr %gep1637, align 4, !alias.scope !1031
  %i.ri = fmul <4 x float> %broadcast.splat1473, %wide.load1478
  %gep1639 = getelementptr [4 x i8], ptr %invariant.gep1638, i64 %index1475 ; 2 uses
  %wide.load1479 = load <4 x float>, ptr %gep1639, align 4, !alias.scope !1032, !noalias !1033
  %i.rj = fadd <4 x float> %wide.load1479, %i.ri
  store <4 x float> %i.rj, ptr %gep1639, align 4, !alias.scope !1032, !noalias !1033
  %index.next1480 = add nuw i64 %index1475, 4     ; 2 uses
  %i.rk = icmp eq i64 %index.next1480, %n.vec1471
  br i1 %i.rk, label %middle.block1481, label %vector.body1474, !llvm.loop !1034

middle.block1481:                                 ; preds = %vector.body1474
  br i1 %cmp.n1482, label %._crit_edge781, label %scalar.ph1467.preheader

scalar.ph1467.preheader:                          ; preds = %vector.memcheck1435, %.lr.ph780, %middle.block1481
  %indvars.iv1025.ph = phi i64 [ %i.pr, %vector.memcheck1435 ], [ %i.pr, %.lr.ph780 ], [ %i.qf, %middle.block1481 ]
  %indvars.iv1023.ph = phi i64 [ %i.pq, %vector.memcheck1435 ], [ %i.pq, %.lr.ph780 ], [ %i.qg, %middle.block1481 ]
  %indvars.iv1021.ph = phi i64 [ %i.qt, %vector.memcheck1435 ], [ %i.qt, %.lr.ph780 ], [ %i.re, %middle.block1481 ]
  %indvars.iv1017.ph = phi i64 [ %i.qs, %vector.memcheck1435 ], [ %i.qs, %.lr.ph780 ], [ %i.rf, %middle.block1481 ]
  %.3573778.ph = phi i32 [ 0, %vector.memcheck1435 ], [ 0, %.lr.ph780 ], [ %i.pf, %middle.block1481 ]
  br label %scalar.ph1467

scalar.ph1467:                                    ; preds = %scalar.ph1467.preheader, %scalar.ph1467
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %scalar.ph1467 ], [ %indvars.iv1025.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %scalar.ph1467 ], [ %indvars.iv1023.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1021 = phi i64 [ %indvars.iv.next1022, %scalar.ph1467 ], [ %indvars.iv1021.ph, %scalar.ph1467.preheader ] ; 2 uses
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %scalar.ph1467 ], [ %indvars.iv1017.ph, %scalar.ph1467.preheader ] ; 2 uses
  %.3573778 = phi i32 [ %i.rx, %scalar.ph1467 ], [ %.3573778.ph, %scalar.ph1467.preheader ]
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, 1
  %i.rl = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1021
  %i.rm = load float, ptr %i.rl, align 4
  %i.rn = fmul float %i.qw, %i.rm
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, 1
  %i.ro = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1025 ; 2 uses
  %i.rp = load float, ptr %i.ro, align 4
  %i.rq = fadd float %i.rp, %i.rn
  store float %i.rq, ptr %i.ro, align 4
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, 1
  %i.rr = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1017
  %i.rs = load float, ptr %i.rr, align 4
  %i.rt = fmul float %i.qz, %i.rs
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, 1
  %i.ru = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1023 ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4
  %i.rw = fadd float %i.rv, %i.rt
  store float %i.rw, ptr %i.ru, align 4
  %i.rx = add nuw nsw i32 %.3573778, 1            ; 2 uses
  %exitcond1034.not = icmp eq i32 %i.rx, %3
  br i1 %exitcond1034.not, label %._crit_edge781, label %scalar.ph1467, !llvm.loop !1035

._crit_edge781:                                   ; preds = %scalar.ph1467, %middle.block1481
  %i.ry = add nuw nsw i32 %.6556786, 1            ; 2 uses
  %indvars.iv.next1016 = sub i32 %indvars.iv1015, %3
end_hunk_9
begin_hunk_10_@dradbg:bb.a
  %i.oi = fsub <4 x float> %strided.vec1398, %reverse1402
  %interleaved.vec = shufflevector <4 x float> %i.oc, <4 x float> %i.oi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.oe, align 4
  %i.oj = fadd <4 x float> %strided.vec1405, %reverse1410
  %interleaved.vec1411 = shufflevector <4 x float> %i.of, <4 x float> %i.oj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1411, ptr %i.oh, align 4
  %index.next1412 = add nuw i64 %index1397, 4     ; 2 uses
  %i.ok = icmp eq i64 %index.next1412, %n.vec1395
  br i1 %i.ok, label %middle.block1413, label %vector.body1396, !llvm.loop !1197

middle.block1413:                                 ; preds = %vector.body1396
  br i1 %cmp.n1414, label %._crit_edge702, label %scalar.ph1391.preheader

scalar.ph1391.preheader:                          ; preds = %vector.memcheck1303, %vector.scevcheck1284, %.preheader662, %middle.block1413
  %indvars.iv955.ph = phi i64 [ %indvars.iv953, %vector.memcheck1303 ], [ %indvars.iv953, %vector.scevcheck1284 ], [ %indvars.iv953, %.preheader662 ], [ %i.no, %middle.block1413 ]
  %indvars.iv949.ph = phi i64 [ %indvars.iv947, %vector.memcheck1303 ], [ %indvars.iv947, %vector.scevcheck1284 ], [ %indvars.iv947, %.preheader662 ], [ %i.np, %middle.block1413 ]
  %indvars.iv943.ph = phi i64 [ %indvars.iv939, %vector.memcheck1303 ], [ %indvars.iv939, %vector.scevcheck1284 ], [ %indvars.iv939, %.preheader662 ], [ %i.nq, %middle.block1413 ]
  %indvars.iv941.ph = phi i64 [ %indvars.iv939, %vector.memcheck1303 ], [ %indvars.iv939, %vector.scevcheck1284 ], [ %indvars.iv939, %.preheader662 ], [ %i.nr, %middle.block1413 ]
  %.2700.ph = phi i32 [ 2, %vector.memcheck1303 ], [ 2, %vector.scevcheck1284 ], [ 2, %.preheader662 ], [ %i.kf, %middle.block1413 ]
  br label %scalar.ph1391

scalar.ph1391:                                    ; preds = %scalar.ph1391.preheader, %scalar.ph1391
  %indvars.iv955 = phi i64 [ %indvars.iv.next956, %scalar.ph1391 ], [ %indvars.iv955.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv949 = phi i64 [ %indvars.iv.next950, %scalar.ph1391 ], [ %indvars.iv949.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv943 = phi i64 [ %indvars.iv.next944, %scalar.ph1391 ], [ %indvars.iv943.ph, %scalar.ph1391.preheader ] ; 2 uses
  %indvars.iv941 = phi i64 [ %indvars.iv.next942, %scalar.ph1391 ], [ %indvars.iv941.ph, %scalar.ph1391.preheader ] ; 2 uses
  %.2700 = phi i32 [ %i.pj, %scalar.ph1391 ], [ %.2700.ph, %scalar.ph1391.preheader ]
  %indvars.iv.next956 = add nuw nsw i64 %indvars.iv955, 2 ; 2 uses
  %indvars.iv.next950 = add nsw i64 %indvars.iv949, 2 ; 2 uses
  %indvars.iv.next944 = add nsw i64 %indvars.iv943, 2 ; 2 uses
  %indvars.iv.next942 = add nsw i64 %indvars.iv941, -2 ; 2 uses
  %i.ol = getelementptr [4 x i8], ptr %4, i64 %indvars.iv943
  %i.om = getelementptr i8, ptr %i.ol, i64 4      ; 2 uses
  %i.on = load float, ptr %i.om, align 4
  %i.oo = getelementptr [4 x i8], ptr %4, i64 %indvars.iv941
  %i.op = getelementptr i8, ptr %i.oo, i64 -12    ; 2 uses
  %i.oq = load float, ptr %i.op, align 4
  %i.or = fadd float %i.on, %i.oq
  %i.os = getelementptr [4 x i8], ptr %7, i64 %indvars.iv955
  %i.ot = getelementptr i8, ptr %i.os, i64 4
  store float %i.or, ptr %i.ot, align 4
  %i.ou = load float, ptr %i.om, align 4
  %i.ov = load float, ptr %i.op, align 4
  %i.ow = fsub float %i.ou, %i.ov
  %i.ox = getelementptr [4 x i8], ptr %7, i64 %indvars.iv949
  %i.oy = getelementptr i8, ptr %i.ox, i64 4
  store float %i.ow, ptr %i.oy, align 4
  %i.oz = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next944 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4
  %i.pb = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next942 ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4
  %i.pd = fsub float %i.pa, %i.pc
  %i.pe = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next956
  store float %i.pd, ptr %i.pe, align 4
  %i.pf = load float, ptr %i.oz, align 4
  %i.pg = load float, ptr %i.pb, align 4
  %i.ph = fadd float %i.pf, %i.pg
  %i.pi = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next950
  store float %i.ph, ptr %i.pi, align 4
  %i.pj = add nuw nsw i32 %.2700, 2               ; 2 uses
  %i.pk = icmp slt i32 %i.pj, %0
  br i1 %i.pk, label %scalar.ph1391, label %._crit_edge702, !llvm.loop !1198

._crit_edge702:                                   ; preds = %scalar.ph1391, %middle.block1413
  %indvars.iv.next954 = add i64 %indvars.iv953, %i.ix
  %indvars.iv.next948 = add i64 %indvars.iv947, %i.ix
  %indvars.iv.next940 = add i64 %indvars.iv939, %i.iu
  %i.pl = add nuw nsw i32 %.3546706, 1            ; 2 uses
  %exitcond969.not = icmp eq i32 %i.pl, %2
  %indvar.next1286 = add i64 %indvar1285, 1
  br i1 %exitcond969.not, label %._crit_edge707, label %.preheader662, !llvm.loop !1199

._crit_edge707:                                   ; preds = %._crit_edge702
  %i.pm = add nuw nsw i32 %.1536711, 1            ; 2 uses
  %indvars.iv.next938 = add i32 %indvars.iv937, %i.du
  %indvars.iv.next946 = sub i32 %indvars.iv945, %i.d
  %indvars.iv.next952 = add i32 %indvars.iv951, %i.d
  %exitcond970.not = icmp eq i32 %i.pm, %i.o
  br i1 %exitcond970.not, label %.loopexit661, label %.preheader662.lr.ph, !llvm.loop !1200

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %._crit_edge729
  %indvars.iv989 = phi i32 [ %i.kp, %.lr.ph728.preheader ], [ %indvars.iv.next990, %._crit_edge729 ] ; 2 uses
  %indvars.iv983 = phi i32 [ %i.kn, %.lr.ph728.preheader ], [ %indvars.iv.next984, %._crit_edge729 ] ; 2 uses
  %indvars.iv977 = phi i32 [ %i.kk, %.lr.ph728.preheader ], [ %indvars.iv.next978, %._crit_edge729 ] ; 2 uses
  %indvars.iv971 = phi i32 [ %i.ki, %.lr.ph728.preheader ], [ %indvars.iv.next972, %._crit_edge729 ] ; 2 uses
  %.2537733 = phi i32 [ 1, %.lr.ph728.preheader ], [ %i.qo, %._crit_edge729 ]
  br label %.lr.ph720

.lr.ph720:                                        ; preds = %.lr.ph728, %._crit_edge721
  %indvars.iv991 = phi i32 [ %indvars.iv989, %.lr.ph728 ], [ %indvars.iv.next992, %._crit_edge721 ] ; 2 uses
  %indvars.iv985 = phi i32 [ %indvars.iv983, %.lr.ph728 ], [ %indvars.iv.next986, %._crit_edge721 ] ; 2 uses
  %indvars.iv979 = phi i32 [ %indvars.iv977, %.lr.ph728 ], [ %indvars.iv.next980, %._crit_edge721 ] ; 2 uses
  %indvars.iv973 = phi i32 [ %indvars.iv971, %.lr.ph728 ], [ %indvars.iv.next974, %._crit_edge721 ] ; 2 uses
  %.3726 = phi i32 [ 2, %.lr.ph728 ], [ %i.qm, %._crit_edge721 ]
  %i.pn = sext i32 %indvars.iv973 to i64
  %i.po = sext i32 %indvars.iv979 to i64
  %i.pp = sext i32 %indvars.iv985 to i64
  %i.pq = sext i32 %indvars.iv991 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph720, %bb.c
  %indvars.iv993 = phi i64 [ %i.pq, %.lr.ph720 ], [ %indvars.iv.next994, %bb.c ] ; 2 uses
  %indvars.iv987 = phi i64 [ %i.pp, %.lr.ph720 ], [ %indvars.iv.next988, %bb.c ] ; 2 uses
  %indvars.iv981 = phi i64 [ %i.po, %.lr.ph720 ], [ %indvars.iv.next982, %bb.c ] ; 2 uses
  %indvars.iv975 = phi i64 [ %i.pn, %.lr.ph720 ], [ %indvars.iv.next976, %bb.c ] ; 2 uses
  %.4547718 = phi i32 [ 0, %.lr.ph720 ], [ %i.ql, %bb.c ]
  %i.pr = getelementptr [4 x i8], ptr %4, i64 %indvars.iv981 ; 3 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 -4     ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4
  %i.pu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv975 ; 3 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 -4     ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4
  %i.px = fadd float %i.pt, %i.pw
  %i.py = getelementptr [4 x i8], ptr %7, i64 %indvars.iv993 ; 2 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 -4
  store float %i.px, ptr %i.pz, align 4
  %i.qa = load float, ptr %i.ps, align 4
  %i.qb = load float, ptr %i.pv, align 4
  %i.qc = fsub float %i.qa, %i.qb
  %i.qd = getelementptr [4 x i8], ptr %7, i64 %indvars.iv987 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -4
  store float %i.qc, ptr %i.qe, align 4
  %i.qf = load float, ptr %i.pr, align 4
  %i.qg = load float, ptr %i.pu, align 4
  %i.qh = fsub float %i.qf, %i.qg
  store float %i.qh, ptr %i.py, align 4
  %i.qi = load float, ptr %i.pr, align 4
  %i.qj = load float, ptr %i.pu, align 4
  %i.qk = fadd float %i.qi, %i.qj
  store float %i.qk, ptr %i.qd, align 4
  %indvars.iv.next994 = add nsw i64 %indvars.iv993, %i.ko
  %indvars.iv.next988 = add nsw i64 %indvars.iv987, %i.ko
  %indvars.iv.next982 = add nsw i64 %indvars.iv981, %i.kj
  %indvars.iv.next976 = add nsw i64 %indvars.iv975, %i.kj
  %i.ql = add nuw nsw i32 %.4547718, 1            ; 2 uses
  %exitcond1002.not = icmp eq i32 %i.ql, %2
  br i1 %exitcond1002.not, label %._crit_edge721, label %bb.c, !llvm.loop !1201

._crit_edge721:                                   ; preds = %bb.c
  %i.qm = add nuw nsw i32 %.3726, 2               ; 2 uses
  %i.qn = icmp slt i32 %i.qm, %0
  %indvars.iv.next974 = add i32 %indvars.iv973, -2
  %indvars.iv.next980 = add i32 %indvars.iv979, 2
  %indvars.iv.next986 = add i32 %indvars.iv985, 2
  %indvars.iv.next992 = add i32 %indvars.iv991, 2
  br i1 %i.qn, label %.lr.ph720, label %._crit_edge729, !llvm.loop !1202

._crit_edge729:                                   ; preds = %._crit_edge721
  %i.qo = add nuw nsw i32 %.2537733, 1            ; 2 uses
  %indvars.iv.next972 = add i32 %indvars.iv971, %i.du
  %indvars.iv.next978 = add i32 %indvars.iv977, %i.du
  %indvars.iv.next984 = sub i32 %indvars.iv983, %i.d
  %indvars.iv.next990 = add i32 %indvars.iv989, %i.d
  %exitcond1003.not = icmp eq i32 %i.qo, %i.o
  br i1 %exitcond1003.not, label %.loopexit661, label %.lr.ph728, !llvm.loop !1203

.loopexit661.thread:                              ; preds = %.lr.ph734, %.lr.ph712
  %i.qp = add i32 %1, -1
  br label %.lr.ph767

.loopexit661.thread1192:                          ; preds = %.preheader663, %.preheader660
  %i.qq = add i32 %1, -1
  br label %.preheader658.thread

.loopexit661:                                     ; preds = %._crit_edge707, %._crit_edge729, %._crit_edge695.split
  %i.qr = add i32 %1, -1                          ; 2 uses
  br i1 %i.dv, label %.lr.ph767, label %.preheader658.thread

.lr.ph767:                                        ; preds = %.loopexit661.thread, %.loopexit661
  %i.qs = phi i32 [ %i.qp, %.loopexit661.thread ], [ %i.qr, %.loopexit661 ] ; 5 uses
  %i.qt = mul i32 %3, %i.qs                       ; 2 uses
  %i.qu = icmp sgt i32 %3, 0
  %.not = icmp eq i32 %i.o, 2
  %i.qv = icmp slt i32 %3, 1
  %i.qw = sext i32 %i.qt to i64                   ; 5 uses
  %i.qx = sext i32 %3 to i64                      ; 5 uses
  %i.qy = add i32 %1, -2
  %i.qz = mul i32 %3, %i.qy
  %i.ra = shl i32 %3, 1
  %wide.trip.count1029 = zext i32 %3 to i64       ; 7 uses
  %brmerge870 = or i1 %.not, %i.qv
  %i.rb = add i32 %3, -1
  %i.rc = zext i32 %i.rb to i64
  %i.rd = shl nuw nsw i64 %i.rc, 2
  %i.re = add nuw nsw i64 %i.rd, 4                ; 4 uses
  %scevgep1422 = getelementptr i8, ptr %6, i64 %i.re
  %scevgep1425 = getelementptr i8, ptr %6, i64 %i.re
  %scevgep1428 = getelementptr i8, ptr %8, i64 %i.re
  %scevgep1431 = getelementptr i8, ptr %8, i64 %i.re
  %i.rf = shl nsw i64 %i.qw, 2                    ; 2 uses
  %i.rg = add i64 %i.rf, %i.b
  %i.rh = shl nsw i64 %i.qx, 2                    ; 2 uses
  %i.ri = add i64 %i.rh, %i.b
  %i.rj = sub i64 %i.a, %i.ri
  %i.rk = sub i64 %i.a, %i.b
  %i.rl = add i64 %i.rf, %i.b
  %i.rm = sub i64 %i.a, %i.rl
  %i.rn = add i64 %i.rh, %i.b
  %i.ro = sub i64 %i.a, %i.rn
  %i.rp = sub i64 %i.a, %i.b
  %min.iters.check1487 = icmp ult i32 %3, 4
  %n.vec1490 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rq = add nuw nsw i64 %n.vec1490, %i.qx
  %i.rr = add nsw i64 %n.vec1490, %i.qw
  %invariant.gep1834 = getelementptr [4 x i8], ptr %8, i64 %i.qx
  %invariant.gep1838 = getelementptr [4 x i8], ptr %8, i64 %i.qw
  %cmp.n1502 = icmp eq i64 %n.vec1490, %wide.trip.count1029
  %min.iters.check1453 = icmp ult i32 %3, 8
  %n.vec1456 = and i64 %wide.trip.count1029, 2147483644 ; 7 uses
  %i.rs = trunc nuw nsw i64 %n.vec1456 to i32
  %cmp.n1467 = icmp eq i64 %n.vec1456, %wide.trip.count1029
  br label %bb.d

.preheader658.thread:                             ; preds = %.loopexit661, %.loopexit661.thread1192
  %.ph = phi i32 [ %i.qr, %.loopexit661 ], [ %i.qq, %.loopexit661.thread1192 ]
  %i.rt = icmp sgt i32 %3, 0
  br label %._crit_edge786.split

.preheader659:                                    ; preds = %._crit_edge760.split
  %i.ru = icmp sgt i32 %3, 0                      ; 3 uses
  %or.cond867 = and i1 %i.dv, %i.ru
  br i1 %or.cond867, label %.lr.ph771.preheader, label %.preheader658

.lr.ph771.preheader:                              ; preds = %.preheader659
  %wide.trip.count1062 = zext nneg i32 %3 to i64
  %min.iters.check1509 = icmp ult i32 %3, 8
  %n.vec1512 = and i64 %wide.trip.count1029, 2147483640 ; 4 uses
  %cmp.n1521 = icmp eq i64 %n.vec1512, %wide.trip.count1029
  br label %.lr.ph771

bb.d:                                             ; preds = %.lr.ph767, %._crit_edge760.split
  %indvars.iv1014 = phi i32 [ %3, %.lr.ph767 ], [ %indvars.iv.next1015, %._crit_edge760.split ] ; 4 uses
  %indvars.iv1010 = phi i32 [ %i.qt, %.lr.ph767 ], [ %indvars.iv.next1011, %._crit_edge760.split ] ; 4 uses
  %.0554765 = phi i32 [ 1, %.lr.ph767 ], [ %i.um, %._crit_edge760.split ]
  %.0573763 = phi float [ 1.000000e+00, %.lr.ph767 ], [ %i.sh, %._crit_edge760.split ] ; 2 uses
  %.0575762 = phi float [ 0.000000e+00, %.lr.ph767 ], [ %i.sk, %._crit_edge760.split ] ; 2 uses
  %i.rv = sext i32 %indvars.iv1010 to i64
  %i.rw = shl nsw i64 %i.rv, 2                    ; 4 uses
  %i.rx = sext i32 %indvars.iv1014 to i64
  %i.ry = shl nsw i64 %i.rx, 2                    ; 4 uses
  %10 = sub nsw i64 %i.rw, %i.ry
  %11 = add i64 %i.ry, %i.a
  %12 = sub i64 %i.rg, %11
  %13 = add i64 %i.rj, %i.ry
  %14 = add i64 %i.rk, %i.ry
  %15 = add i64 %i.rm, %i.rw
  %16 = add i64 %i.ro, %i.rw
  %17 = add i64 %i.rp, %i.rw
  %i.rz = sext i32 %indvars.iv1014 to i64
  %i.sa = shl nsw i64 %i.rz, 2                    ; 2 uses
  %scevgep1421 = getelementptr i8, ptr %6, i64 %i.sa ; 3 uses
  %scevgep1423 = getelementptr i8, ptr %scevgep1422, i64 %i.sa ; 3 uses
  %i.sb = sext i32 %indvars.iv1010 to i64
  %i.sc = shl nsw i64 %i.sb, 2                    ; 2 uses
  %scevgep1424 = getelementptr i8, ptr %6, i64 %i.sc ; 3 uses
  %scevgep1426 = getelementptr i8, ptr %scevgep1425, i64 %i.sc ; 3 uses
  %i.sd = sext i32 %indvars.iv1010 to i64         ; 8 uses
  %i.se = sext i32 %indvars.iv1014 to i64         ; 8 uses
  %i.sf = fmul float %.0573763, %i.i
  %i.sg = fmul float %.0575762, %i.k
  %i.sh = fsub float %i.sf, %i.sg                 ; 6 uses
  %i.si = fmul float %.0575762, %i.i
  %i.sj = fmul float %.0573763, %i.k
  %i.sk = fadd float %i.si, %i.sj                 ; 6 uses
  br i1 %i.qu, label %.lr.ph743.preheader, label %._crit_edge760.split

.lr.ph743.preheader:                              ; preds = %bb.d
  br i1 %min.iters.check1487, label %.lr.ph743.preheader1800, label %vector.memcheck1473

vector.memcheck1473:                              ; preds = %.lr.ph743.preheader
  %diff.check = icmp ult i64 %10, 16
  %diff.check1474 = icmp ult i64 %12, 16
  %conflict.rdx1475 = or i1 %diff.check, %diff.check1474
  %diff.check1476 = icmp ult i64 %13, 16
  %conflict.rdx1477 = or i1 %conflict.rdx1475, %diff.check1476
  %diff.check1478 = icmp ult i64 %14, 16
  %conflict.rdx1479 = or i1 %conflict.rdx1477, %diff.check1478
  %diff.check1480 = icmp ult i64 %15, 16
  %conflict.rdx1481 = or i1 %conflict.rdx1479, %diff.check1480
  %diff.check1482 = icmp ult i64 %16, 16
  %conflict.rdx1483 = or i1 %conflict.rdx1481, %diff.check1482
  %diff.check1484 = icmp ult i64 %17, 16
  %conflict.rdx1485 = or i1 %conflict.rdx1483, %diff.check1484
  br i1 %conflict.rdx1485, label %.lr.ph743.preheader1800, label %vector.ph1488

vector.ph1488:                                    ; preds = %vector.memcheck1473
  %i.sl = add nsw i64 %n.vec1490, %i.se
  %i.sm = add nsw i64 %n.vec1490, %i.sd
  %broadcast.splatinsert1491 = insertelement <4 x float> poison, float %i.sh, i64 0
  %broadcast.splat1492 = shufflevector <4 x float> %broadcast.splatinsert1491, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1493 = insertelement <4 x float> poison, float %i.sk, i64 0
  %broadcast.splat1494 = shufflevector <4 x float> %broadcast.splatinsert1493, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1836 = getelementptr [4 x i8], ptr %6, i64 %i.se
  %invariant.gep1840 = getelementptr [4 x i8], ptr %6, i64 %i.sd
  br label %vector.body1495

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1488
  %index1496 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1500, %vector.body1495 ] ; 6 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1496
  %wide.load1497 = load <4 x float>, ptr %i.sn, align 4
  %gep1835 = getelementptr [4 x i8], ptr %invariant.gep1834, i64 %index1496
  %wide.load1498 = load <4 x float>, ptr %gep1835, align 4
  %i.so = fmul <4 x float> %broadcast.splat1492, %wide.load1498
  %i.sp = fadd <4 x float> %wide.load1497, %i.so
  %gep1837 = getelementptr [4 x i8], ptr %invariant.gep1836, i64 %index1496
  store <4 x float> %i.sp, ptr %gep1837, align 4
  %gep1839 = getelementptr [4 x i8], ptr %invariant.gep1838, i64 %index1496
  %wide.load1499 = load <4 x float>, ptr %gep1839, align 4
  %i.sq = fmul <4 x float> %broadcast.splat1494, %wide.load1499
  %gep1841 = getelementptr [4 x i8], ptr %invariant.gep1840, i64 %index1496
  store <4 x float> %i.sq, ptr %gep1841, align 4
  %index.next1500 = add nuw i64 %index1496, 4     ; 2 uses
  %i.sr = icmp eq i64 %index.next1500, %n.vec1490
  br i1 %i.sr, label %middle.block1501, label %vector.body1495, !llvm.loop !1204

middle.block1501:                                 ; preds = %vector.body1495
  br i1 %cmp.n1502, label %._crit_edge744, label %.lr.ph743.preheader1800

.lr.ph743.preheader1800:                          ; preds = %vector.memcheck1473, %.lr.ph743.preheader, %middle.block1501
  %indvars.iv1016.ph = phi i64 [ %i.se, %vector.memcheck1473 ], [ %i.se, %.lr.ph743.preheader ], [ %i.sl, %middle.block1501 ]
  %indvars.iv1012.ph = phi i64 [ %i.sd, %vector.memcheck1473 ], [ %i.sd, %.lr.ph743.preheader ], [ %i.sm, %middle.block1501 ]
  %indvars.iv1008.ph = phi i64 [ 0, %vector.memcheck1473 ], [ 0, %.lr.ph743.preheader ], [ %n.vec1490, %middle.block1501 ]
  %indvars.iv1006.ph = phi i64 [ %i.qx, %vector.memcheck1473 ], [ %i.qx, %.lr.ph743.preheader ], [ %i.rq, %middle.block1501 ]
  %indvars.iv1004.ph = phi i64 [ %i.qw, %vector.memcheck1473 ], [ %i.qw, %.lr.ph743.preheader ], [ %i.rr, %middle.block1501 ]
  br label %.lr.ph743

.lr.ph743:                                        ; preds = %.lr.ph743.preheader1800, %.lr.ph743
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %.lr.ph743 ], [ %indvars.iv1016.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %.lr.ph743 ], [ %indvars.iv1012.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1008 = phi i64 [ %indvars.iv.next1009, %.lr.ph743 ], [ %indvars.iv1008.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1006 = phi i64 [ %indvars.iv.next1007, %.lr.ph743 ], [ %indvars.iv1006.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv1004 = phi i64 [ %indvars.iv.next1005, %.lr.ph743 ], [ %indvars.iv1004.ph, %.lr.ph743.preheader1800 ] ; 2 uses
  %indvars.iv.next1009 = add nuw nsw i64 %indvars.iv1008, 1 ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1008
  %i.st = load float, ptr %i.ss, align 4
  %indvars.iv.next1007 = add nuw nsw i64 %indvars.iv1006, 1
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1006
  %i.sv = load float, ptr %i.su, align 4
  %i.sw = fmul float %i.sh, %i.sv
  %i.sx = fadd float %i.st, %i.sw
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1
  %i.sy = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1016
  store float %i.sx, ptr %i.sy, align 4
  %indvars.iv.next1005 = add nsw i64 %indvars.iv1004, 1
  %i.sz = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1004
  %i.ta = load float, ptr %i.sz, align 4
  %i.tb = fmul float %i.sk, %i.ta
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1
  %i.tc = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1012
  store float %i.tb, ptr %i.tc, align 4
  %exitcond1030.not = icmp eq i64 %indvars.iv.next1009, %wide.trip.count1029
  br i1 %exitcond1030.not, label %._crit_edge744, label %.lr.ph743, !llvm.loop !1205

._crit_edge744:                                   ; preds = %.lr.ph743, %middle.block1501
  br i1 %brmerge870, label %._crit_edge760.split, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %._crit_edge744
  %bound01433 = icmp ult ptr %scevgep1421, %scevgep1426
  %bound11434 = icmp ult ptr %scevgep1424, %scevgep1423
  %found.conflict1435 = and i1 %bound01433, %bound11434
  %i.td = add nsw i64 %n.vec1456, %i.se
  %i.te = add nsw i64 %n.vec1456, %i.sd
  %invariant.gep1844 = getelementptr [4 x i8], ptr %6, i64 %i.se
  %invariant.gep1848 = getelementptr [4 x i8], ptr %6, i64 %i.sd
  br label %.lr.ph751

.lr.ph751:                                        ; preds = %.lr.ph751.preheader, %._crit_edge752
  %indvars.iv1035 = phi i32 [ %indvars.iv.next1036, %._crit_edge752 ], [ %i.ra, %.lr.ph751.preheader ] ; 3 uses
  %indvars.iv1031 = phi i32 [ %indvars.iv.next1032, %._crit_edge752 ], [ %i.qz, %.lr.ph751.preheader ] ; 3 uses
  %.3538757 = phi i32 [ %i.ul, %._crit_edge752 ], [ 2, %.lr.ph751.preheader ]
  %.0572756 = phi float [ %i.tj, %._crit_edge752 ], [ %i.sh, %.lr.ph751.preheader ] ; 2 uses
  %.0574755 = phi float [ %i.tm, %._crit_edge752 ], [ %i.sk, %.lr.ph751.preheader ] ; 2 uses
  %i.tf = sext i32 %indvars.iv1031 to i64         ; 4 uses
  %i.tg = sext i32 %indvars.iv1035 to i64         ; 4 uses
  %i.th = fmul float %i.sh, %.0572756
  %i.ti = fmul float %i.sk, %.0574755
  %i.tj = fsub float %i.th, %i.ti                 ; 3 uses
  %i.tk = fmul float %i.sh, %.0574755
  %i.tl = fmul float %i.sk, %.0572756
  %i.tm = fadd float %i.tk, %i.tl                 ; 3 uses
  br i1 %min.iters.check1453, label %scalar.ph1452.preheader, label %vector.memcheck1420

vector.memcheck1420:                              ; preds = %.lr.ph751
  %i.tn = sext i32 %indvars.iv1035 to i64
  %i.to = shl nsw i64 %i.tn, 2                    ; 2 uses
  %scevgep1432 = getelementptr i8, ptr %scevgep1431, i64 %i.to ; 2 uses
  %scevgep1430 = getelementptr i8, ptr %8, i64 %i.to ; 2 uses
  %i.tp = sext i32 %indvars.iv1031 to i64
  %i.tq = shl nsw i64 %i.tp, 2                    ; 2 uses
  %scevgep1429 = getelementptr i8, ptr %scevgep1428, i64 %i.tq ; 2 uses
  %scevgep1427 = getelementptr i8, ptr %8, i64 %i.tq ; 2 uses
  %bound01436 = icmp ult ptr %scevgep1421, %scevgep1429
  %bound11437 = icmp ult ptr %scevgep1427, %scevgep1423
  %found.conflict1438 = and i1 %bound01436, %bound11437
  %conflict.rdx1439 = or i1 %found.conflict1435, %found.conflict1438
  %bound01440 = icmp ult ptr %scevgep1421, %scevgep1432
  %bound11441 = icmp ult ptr %scevgep1430, %scevgep1423
  %found.conflict1442 = and i1 %bound01440, %bound11441
  %conflict.rdx1443 = or i1 %conflict.rdx1439, %found.conflict1442
  %bound01444 = icmp ult ptr %scevgep1424, %scevgep1429
  %bound11445 = icmp ult ptr %scevgep1427, %scevgep1426
  %found.conflict1446 = and i1 %bound01444, %bound11445
  %conflict.rdx1447 = or i1 %conflict.rdx1443, %found.conflict1446
  %bound01448 = icmp ult ptr %scevgep1424, %scevgep1432
  %bound11449 = icmp ult ptr %scevgep1430, %scevgep1426
  %found.conflict1450 = and i1 %bound01448, %bound11449
  %conflict.rdx1451 = or i1 %conflict.rdx1447, %found.conflict1450
  br i1 %conflict.rdx1451, label %scalar.ph1452.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.memcheck1420
  %i.tr = add nsw i64 %n.vec1456, %i.tg
  %i.ts = add nsw i64 %n.vec1456, %i.tf
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.tj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1457 = insertelement <4 x float> poison, float %i.tm, i64 0
  %broadcast.splat1458 = shufflevector <4 x float> %broadcast.splatinsert1457, <4 x float> poison, <4 x i32> zeroinitializer
  %invariant.gep1842 = getelementptr [4 x i8], ptr %8, i64 %i.tg
  %invariant.gep1846 = getelementptr [4 x i8], ptr %8, i64 %i.tf
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.body1459, %vector.ph1454
  %index1460 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1465, %vector.body1459 ] ; 5 uses
  %gep1843 = getelementptr [4 x i8], ptr %invariant.gep1842, i64 %index1460
  %wide.load1461 = load <4 x float>, ptr %gep1843, align 4, !alias.scope !1206
  %i.tt = fmul <4 x float> %broadcast.splat, %wide.load1461
  %gep1845 = getelementptr [4 x i8], ptr %invariant.gep1844, i64 %index1460 ; 2 uses
  %wide.load1462 = load <4 x float>, ptr %gep1845, align 4, !alias.scope !1209, !noalias !1211
  %i.tu = fadd <4 x float> %wide.load1462, %i.tt
  store <4 x float> %i.tu, ptr %gep1845, align 4, !alias.scope !1209, !noalias !1211
  %gep1847 = getelementptr [4 x i8], ptr %invariant.gep1846, i64 %index1460
  %wide.load1463 = load <4 x float>, ptr %gep1847, align 4, !alias.scope !1214
  %i.tv = fmul <4 x float> %broadcast.splat1458, %wide.load1463
  %gep1849 = getelementptr [4 x i8], ptr %invariant.gep1848, i64 %index1460 ; 2 uses
  %wide.load1464 = load <4 x float>, ptr %gep1849, align 4, !alias.scope !1215, !noalias !1216
  %i.tw = fadd <4 x float> %wide.load1464, %i.tv
  store <4 x float> %i.tw, ptr %gep1849, align 4, !alias.scope !1215, !noalias !1216
  %index.next1465 = add nuw i64 %index1460, 4     ; 2 uses
  %i.tx = icmp eq i64 %index.next1465, %n.vec1456
  br i1 %i.tx, label %middle.block1466, label %vector.body1459, !llvm.loop !1217

middle.block1466:                                 ; preds = %vector.body1459
  br i1 %cmp.n1467, label %._crit_edge752, label %scalar.ph1452.preheader

scalar.ph1452.preheader:                          ; preds = %vector.memcheck1420, %.lr.ph751, %middle.block1466
  %indvars.iv1041.ph = phi i64 [ %i.se, %vector.memcheck1420 ], [ %i.se, %.lr.ph751 ], [ %i.td, %middle.block1466 ]
  %indvars.iv1039.ph = phi i64 [ %i.sd, %vector.memcheck1420 ], [ %i.sd, %.lr.ph751 ], [ %i.te, %middle.block1466 ]
  %indvars.iv1037.ph = phi i64 [ %i.tg, %vector.memcheck1420 ], [ %i.tg, %.lr.ph751 ], [ %i.tr, %middle.block1466 ]
  %indvars.iv1033.ph = phi i64 [ %i.tf, %vector.memcheck1420 ], [ %i.tf, %.lr.ph751 ], [ %i.ts, %middle.block1466 ]
  %.1556749.ph = phi i32 [ 0, %vector.memcheck1420 ], [ 0, %.lr.ph751 ], [ %i.rs, %middle.block1466 ]
  br label %scalar.ph1452

scalar.ph1452:                                    ; preds = %scalar.ph1452.preheader, %scalar.ph1452
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %scalar.ph1452 ], [ %indvars.iv1041.ph, %scalar.ph1452.preheader ] ; 2 uses
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %scalar.ph1452 ], [ %indvars.iv1039.ph, %scalar.ph1452.preheader ] ; 2 uses
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %scalar.ph1452 ], [ %indvars.iv1037.ph, %scalar.ph1452.preheader ] ; 2 uses
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %scalar.ph1452 ], [ %indvars.iv1033.ph, %scalar.ph1452.preheader ] ; 2 uses
  %.1556749 = phi i32 [ %i.uk, %scalar.ph1452 ], [ %.1556749.ph, %scalar.ph1452.preheader ]
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, 1
  %i.ty = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1037
  %i.tz = load float, ptr %i.ty, align 4
  %i.ua = fmul float %i.tj, %i.tz
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, 1
  %i.ub = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1041 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4
  %i.ud = fadd float %i.uc, %i.ua
  store float %i.ud, ptr %i.ub, align 4
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, 1
  %i.ue = getelementptr inbounds [4 x i8], ptr %8, i64 %indvars.iv1033
  %i.uf = load float, ptr %i.ue, align 4
  %i.ug = fmul float %i.tm, %i.uf
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, 1
  %i.uh = getelementptr inbounds [4 x i8], ptr %6, i64 %indvars.iv1039 ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4
  %i.uj = fadd float %i.ui, %i.ug
  store float %i.uj, ptr %i.uh, align 4
  %i.uk = add nuw nsw i32 %.1556749, 1            ; 2 uses
  %exitcond1050.not = icmp eq i32 %i.uk, %3
  br i1 %exitcond1050.not, label %._crit_edge752, label %scalar.ph1452, !llvm.loop !1218

._crit_edge752:                                   ; preds = %scalar.ph1452, %middle.block1466
  %i.ul = add nuw nsw i32 %.3538757, 1            ; 2 uses
  %indvars.iv.next1032 = sub i32 %indvars.iv1031, %3
end_hunk_10
begin_hunk_11_@dradbg:bb.a
  %i.aaf = icmp ult <4 x ptr> %i.zy, %i.aab
  %i.aag = icmp ult <4 x ptr> %i.zq, %i.zu
  %i.aah = and <4 x i1> %i.aag, %i.aaf
  %bound01645 = icmp ult ptr %scevgep1587, %scevgep1601
  %bound11646 = icmp ult ptr %scevgep1599, %scevgep1589
  %found.conflict1647 = and i1 %bound01645, %bound11646
  %bound01649 = icmp ult ptr %scevgep1591, %scevgep1597
  %bound11650 = icmp ult ptr %scevgep1595, %scevgep1593
  %found.conflict1651 = and i1 %bound01649, %bound11650
  %bound01653 = icmp ult ptr %scevgep1591, %scevgep1601
  %bound11654 = icmp ult ptr %scevgep1599, %scevgep1593
  %found.conflict1655 = and i1 %bound01653, %bound11654
  %rdx.op = or <4 x i1> %i.aae, %i.aah
  %i.aai = bitcast <4 x i1> %rdx.op to i4
  %i.aaj = icmp ne i4 %i.aai, 0
  %op.rdx = or i1 %i.aaj, %found.conflict1604
  %op.rdx1771 = or i1 %found.conflict1607, %found.conflict1611
  %op.rdx1772 = or i1 %found.conflict1647, %found.conflict1651
  %op.rdx1773 = or i1 %op.rdx, %op.rdx1771
  %op.rdx1774 = or i1 %op.rdx1772, %found.conflict1655
  %op.rdx1775 = or i1 %op.rdx1773, %op.rdx1774
  br label %.preheader655

.preheader655:                                    ; preds = %.preheader655.lr.ph, %._crit_edge791
  %indvars.iv1086 = phi i64 [ %i.yx, %.preheader655.lr.ph ], [ %indvars.iv.next1087, %._crit_edge791 ] ; 4 uses
  %indvars.iv1080 = phi i64 [ %i.yw, %.preheader655.lr.ph ], [ %indvars.iv.next1081, %._crit_edge791 ] ; 4 uses
  %.6549794 = phi i32 [ 0, %.preheader655.lr.ph ], [ %i.abx, %._crit_edge791 ]
  %brmerge1859 = select i1 %min.iters.check1658, i1 true, i1 %op.rdx1775
  br i1 %brmerge1859, label %scalar.ph1657.preheader, label %vector.ph1659

vector.ph1659:                                    ; preds = %.preheader655
  %i.aak = add i64 %indvars.iv1086, %i.yi
  %i.aal = add i64 %indvars.iv1080, %i.yi
  %invariant.op1852.a = add i64 %indvars.iv1086, 1
  br label %vector.body1662

vector.body1662:                                  ; preds = %vector.body1662, %vector.ph1659
  %index1663 = phi i64 [ 0, %vector.ph1659 ], [ %index.next1678, %vector.body1662 ] ; 2 uses
  %i.aam = shl i64 %index1663, 1                  ; 2 uses
  %i.aan = add i64 %indvars.iv1080, %i.aam        ; 2 uses
  %.reass1853.a = add i64 %i.aam, %invariant.op1852.a ; 2 uses
  %i.aao = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1853.a ; 2 uses
  %wide.vec1664 = load <8 x float>, ptr %i.aao, align 4, !alias.scope !1238 ; 2 uses
  %strided.vec1665 = shufflevector <8 x float> %wide.vec1664, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1666 = shufflevector <8 x float> %wide.vec1664, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aap = getelementptr [4 x i8], ptr %5, i64 %i.aan
  %i.aaq = getelementptr i8, ptr %i.aap, i64 4    ; 2 uses
  %wide.vec1667 = load <8 x float>, ptr %i.aaq, align 4, !alias.scope !1241 ; 2 uses
  %strided.vec1668 = shufflevector <8 x float> %wide.vec1667, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1669 = shufflevector <8 x float> %wide.vec1667, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aar = fsub <4 x float> %strided.vec1665, %strided.vec1669
  %i.aas = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1853.a
  %wide.vec1670 = load <8 x float>, ptr %i.aao, align 4, !alias.scope !1238 ; 2 uses
  %strided.vec1671 = shufflevector <8 x float> %wide.vec1670, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1672 = shufflevector <8 x float> %wide.vec1670, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1673 = load <8 x float>, ptr %i.aaq, align 4, !alias.scope !1241 ; 2 uses
  %strided.vec1674 = shufflevector <8 x float> %wide.vec1673, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1675 = shufflevector <8 x float> %wide.vec1673, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aat = fadd <4 x float> %strided.vec1671, %strided.vec1675
  %i.aau = getelementptr [4 x i8], ptr %7, i64 %i.aan
  %i.aav = getelementptr i8, ptr %i.aau, i64 4
  %i.aaw = fadd <4 x float> %strided.vec1666, %strided.vec1668
  %interleaved.vec1676 = shufflevector <4 x float> %i.aar, <4 x float> %i.aaw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1676, ptr %i.aas, align 4
  %i.aax = fsub <4 x float> %strided.vec1672, %strided.vec1674
  %interleaved.vec1677 = shufflevector <4 x float> %i.aat, <4 x float> %i.aax, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec1677, ptr %i.aav, align 4
  %index.next1678 = add nuw i64 %index1663, 4     ; 2 uses
  %i.aay = icmp eq i64 %index.next1678, %n.vec1661
  br i1 %i.aay, label %middle.block1679, label %vector.body1662, !llvm.loop !1243

middle.block1679:                                 ; preds = %vector.body1662
  br i1 %cmp.n1680, label %._crit_edge791, label %scalar.ph1657.preheader

scalar.ph1657.preheader:                          ; preds = %.preheader655, %middle.block1679
  %indvars.iv1088.ph = phi i64 [ %i.aak, %middle.block1679 ], [ %indvars.iv1086, %.preheader655 ]
  %indvars.iv1082.ph = phi i64 [ %i.aal, %middle.block1679 ], [ %indvars.iv1080, %.preheader655 ]
  %.4789.ph = phi i32 [ %i.yl, %middle.block1679 ], [ 2, %.preheader655 ]
  br label %scalar.ph1657

scalar.ph1657:                                    ; preds = %scalar.ph1657.preheader, %scalar.ph1657
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %scalar.ph1657 ], [ %indvars.iv1088.ph, %scalar.ph1657.preheader ] ; 2 uses
  %indvars.iv1082 = phi i64 [ %indvars.iv.next1083, %scalar.ph1657 ], [ %indvars.iv1082.ph, %scalar.ph1657.preheader ] ; 2 uses
  %.4789 = phi i32 [ %i.abv, %scalar.ph1657 ], [ %.4789.ph, %scalar.ph1657.preheader ]
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 2 ; 3 uses
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, 2 ; 3 uses
  %i.aaz = add nuw nsw i64 %indvars.iv1088, 1     ; 2 uses
  %i.aba = getelementptr inbounds [4 x i8], ptr %5, i64 %i.aaz ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4
  %i.abc = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1083 ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4
  %i.abe = fsub float %i.abb, %i.abd
  %i.abf = getelementptr inbounds [4 x i8], ptr %7, i64 %i.aaz
  store float %i.abe, ptr %i.abf, align 4
  %i.abg = load float, ptr %i.aba, align 4
  %i.abh = load float, ptr %i.abc, align 4
  %i.abi = fadd float %i.abg, %i.abh
  %i.abj = add nsw i64 %indvars.iv1082, 1         ; 2 uses
  %i.abk = getelementptr inbounds [4 x i8], ptr %7, i64 %i.abj
  store float %i.abi, ptr %i.abk, align 4
  %i.abl = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1089 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 4
  %i.abn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.abj ; 2 uses
  %i.abo = load float, ptr %i.abn, align 4
  %i.abp = fadd float %i.abm, %i.abo
  %i.abq = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1089
  store float %i.abp, ptr %i.abq, align 4
  %i.abr = load float, ptr %i.abl, align 4
  %i.abs = load float, ptr %i.abn, align 4
  %i.abt = fsub float %i.abr, %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1083
  store float %i.abt, ptr %i.abu, align 4
  %i.abv = add nuw nsw i32 %.4789, 2              ; 2 uses
  %i.abw = icmp slt i32 %i.abv, %0
  br i1 %i.abw, label %scalar.ph1657, label %._crit_edge791, !llvm.loop !1244

._crit_edge791:                                   ; preds = %scalar.ph1657, %middle.block1679
  %indvars.iv.next1087 = add i64 %indvars.iv1086, %i.xt
  %indvars.iv.next1081 = add i64 %indvars.iv1080, %i.xt
  %i.abx = add nuw nsw i32 %.6549794, 1           ; 2 uses
  %exitcond1096.not = icmp eq i32 %i.abx, %2
  br i1 %exitcond1096.not, label %._crit_edge795, label %.preheader655, !llvm.loop !1245

._crit_edge795:                                   ; preds = %._crit_edge791
  %i.aby = add nuw nsw i32 %.6541798, 1           ; 2 uses
  %indvars.iv.next1079 = sub i32 %indvars.iv1078, %i.d
  %indvars.iv.next1085 = add i32 %indvars.iv1084, %i.d
  %exitcond1097.not = icmp eq i32 %i.aby, %i.o
  br i1 %exitcond1097.not, label %.loopexit, label %.preheader655.lr.ph, !llvm.loop !1246

.lr.ph811:                                        ; preds = %.lr.ph811.preheader, %._crit_edge812
  %indvars.iv1104 = phi i32 [ %i.yr, %.lr.ph811.preheader ], [ %indvars.iv.next1105, %._crit_edge812 ] ; 2 uses
  %indvars.iv1098 = phi i32 [ %i.yp, %.lr.ph811.preheader ], [ %indvars.iv.next1099, %._crit_edge812 ] ; 2 uses
  %.7542815 = phi i32 [ 1, %.lr.ph811.preheader ], [ %i.ada, %._crit_edge812 ]
  br label %.lr.ph805

.lr.ph805:                                        ; preds = %.lr.ph811, %._crit_edge806
  %indvars.iv1106 = phi i32 [ %indvars.iv1104, %.lr.ph811 ], [ %indvars.iv.next1107, %._crit_edge806 ] ; 2 uses
  %indvars.iv1100 = phi i32 [ %indvars.iv1098, %.lr.ph811 ], [ %indvars.iv.next1101, %._crit_edge806 ] ; 2 uses
  %.5809 = phi i32 [ 2, %.lr.ph811 ], [ %i.acy, %._crit_edge806 ]
  %i.abz = sext i32 %indvars.iv1100 to i64
  %i.aca = sext i32 %indvars.iv1106 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph805, %bb.f
  %indvars.iv1108 = phi i64 [ %i.aca, %.lr.ph805 ], [ %indvars.iv.next1109, %bb.f ] ; 4 uses
  %indvars.iv1102 = phi i64 [ %i.abz, %.lr.ph805 ], [ %indvars.iv.next1103, %bb.f ] ; 4 uses
  %.7550803 = phi i32 [ 0, %.lr.ph805 ], [ %i.acx, %bb.f ]
  %i.acb = add nsw i64 %indvars.iv1108, -1        ; 2 uses
  %i.acc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acb ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4
  %i.ace = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1102 ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4
  %i.acg = fsub float %i.acd, %i.acf
  %i.ach = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acb
  store float %i.acg, ptr %i.ach, align 4
  %i.aci = load float, ptr %i.acc, align 4
  %i.acj = load float, ptr %i.ace, align 4
  %i.ack = fadd float %i.aci, %i.acj
  %i.acl = add nsw i64 %indvars.iv1102, -1        ; 2 uses
  %i.acm = getelementptr inbounds [4 x i8], ptr %7, i64 %i.acl
  store float %i.ack, ptr %i.acm, align 4
  %i.acn = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1108 ; 2 uses
  %i.aco = load float, ptr %i.acn, align 4
  %i.acp = getelementptr inbounds [4 x i8], ptr %5, i64 %i.acl ; 2 uses
  %i.acq = load float, ptr %i.acp, align 4
  %i.acr = fadd float %i.aco, %i.acq
  %i.acs = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1108
  store float %i.acr, ptr %i.acs, align 4
  %i.act = load float, ptr %i.acn, align 4
  %i.acu = load float, ptr %i.acp, align 4
  %i.acv = fsub float %i.act, %i.acu
  %i.acw = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1102
  store float %i.acv, ptr %i.acw, align 4
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, %i.yq
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, %i.yq
  %i.acx = add nuw nsw i32 %.7550803, 1           ; 2 uses
  %exitcond1113.not = icmp eq i32 %i.acx, %2
  br i1 %exitcond1113.not, label %._crit_edge806, label %bb.f, !llvm.loop !1247

._crit_edge806:                                   ; preds = %bb.f
  %i.acy = add nuw nsw i32 %.5809, 2              ; 2 uses
  %i.acz = icmp slt i32 %i.acy, %0
  %indvars.iv.next1101 = add i32 %indvars.iv1100, 2
  %indvars.iv.next1107 = add i32 %indvars.iv1106, 2
  br i1 %i.acz, label %.lr.ph805, label %._crit_edge812, !llvm.loop !1248

._crit_edge812:                                   ; preds = %._crit_edge806
  %i.ada = add nuw nsw i32 %.7542815, 1           ; 2 uses
  %indvars.iv.next1099 = sub i32 %indvars.iv1098, %i.d
  %indvars.iv.next1105 = add i32 %indvars.iv1104, %i.d
  %exitcond1114.not = icmp eq i32 %i.ada, %i.o
  br i1 %exitcond1114.not, label %.loopexit, label %.lr.ph811, !llvm.loop !1249

.loopexit:                                        ; preds = %._crit_edge795, %._crit_edge812, %.lr.ph816, %.lr.ph799, %.preheader656, %.preheader654
  br i1 %i.xo, label %.lr.ph820.preheader, label %.preheader653

.lr.ph820.preheader:                              ; preds = %.loopexit
  %wide.trip.count1118 = zext i32 %3 to i64       ; 5 uses
  %min.iters.check1687 = icmp ult i32 %3, 8
  %i.adb = sub i64 %i.a, %i.b
  %diff.check1685 = icmp ult i64 %i.adb, 32
  %or.cond1770 = or i1 %min.iters.check1687, %diff.check1685
  br i1 %or.cond1770, label %.lr.ph820.preheader1798, label %vector.ph1688

vector.ph1688:                                    ; preds = %.lr.ph820.preheader
  %n.vec1690 = and i64 %wide.trip.count1118, 2147483640 ; 3 uses
  br label %vector.body1691

vector.body1691:                                  ; preds = %vector.body1691, %vector.ph1688
  %index1692 = phi i64 [ 0, %vector.ph1688 ], [ %index.next1695, %vector.body1691 ] ; 3 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index1692 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  %wide.load1693 = load <4 x float>, ptr %i.adc, align 4
  %wide.load1694 = load <4 x float>, ptr %i.add, align 4
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index1692 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  store <4 x float> %wide.load1693, ptr %i.ade, align 4
  store <4 x float> %wide.load1694, ptr %i.adf, align 4
  %index.next1695 = add nuw i64 %index1692, 8     ; 2 uses
  %i.adg = icmp eq i64 %index.next1695, %n.vec1690
  br i1 %i.adg, label %middle.block1696, label %vector.body1691, !llvm.loop !1250

middle.block1696:                                 ; preds = %vector.body1691
  %cmp.n1697 = icmp eq i64 %n.vec1690, %wide.trip.count1118
  br i1 %cmp.n1697, label %.preheader653, label %.lr.ph820.preheader1798

.lr.ph820.preheader1798:                          ; preds = %.lr.ph820.preheader, %middle.block1696
  %indvars.iv1115.ph = phi i64 [ 0, %.lr.ph820.preheader ], [ %n.vec1690, %middle.block1696 ] ; 3 uses
  %xtraiter1812 = and i64 %wide.trip.count1118, 3 ; 2 uses
  %lcmp.mod1813.not = icmp eq i64 %xtraiter1812, 0
  br i1 %lcmp.mod1813.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol

.lr.ph820.prol:                                   ; preds = %.lr.ph820.preheader1798, %.lr.ph820.prol
  %indvars.iv1115.prol = phi i64 [ %indvars.iv.next1116.prol, %.lr.ph820.prol ], [ %indvars.iv1115.ph, %.lr.ph820.preheader1798 ] ; 3 uses
  %prol.iter1814 = phi i64 [ %prol.iter1814.next, %.lr.ph820.prol ], [ 0, %.lr.ph820.preheader1798 ]
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1115.prol
  %i.adi = load float, ptr %i.adh, align 4
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1115.prol
  store float %i.adi, ptr %i.adj, align 4
  %indvars.iv.next1116.prol = add nuw nsw i64 %indvars.iv1115.prol, 1 ; 2 uses
  %prol.iter1814.next = add i64 %prol.iter1814, 1 ; 2 uses
  %prol.iter1814.cmp.not = icmp eq i64 %prol.iter1814.next, %xtraiter1812
  br i1 %prol.iter1814.cmp.not, label %.lr.ph820.prol.loopexit, label %.lr.ph820.prol, !llvm.loop !1251

.lr.ph820.prol.loopexit:                          ; preds = %.lr.ph820.prol, %.lr.ph820.preheader1798
  %indvars.iv1115.unr = phi i64 [ %indvars.iv1115.ph, %.lr.ph820.preheader1798 ], [ %indvars.iv.next1116.prol, %.lr.ph820.prol ]
  %i.adk = sub nsw i64 %indvars.iv1115.ph, %wide.trip.count1118
  %i.adl = icmp ugt i64 %i.adk, -4
  br i1 %i.adl, label %.preheader653, label %.lr.ph820

.preheader653:                                    ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820, %middle.block1696, %.loopexit
  %i.adm = icmp sgt i32 %1, 1                     ; 3 uses
  %or.cond878 = and i1 %i.adm, %i.dw
  br i1 %or.cond878, label %.lr.ph824.preheader, label %._crit_edge829.split

.lr.ph824.preheader:                              ; preds = %.preheader653
  %i.adn = sext i32 %0 to i64                     ; 5 uses
  %i.ado = add nsw i32 %2, -1
  %xtraiter1815 = and i32 %2, 3                   ; 3 uses
  %i.adp = icmp ult i32 %i.ado, 3
  %unroll_iter = and i32 %2, 2147483644
  %lcmp.mod1816.not = icmp eq i32 %xtraiter1815, 0
  %lcmp.mod1817 = icmp ne i32 %xtraiter1815, 0
  br label %.lr.ph824

.lr.ph820:                                        ; preds = %.lr.ph820.prol.loopexit, %.lr.ph820
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116.3, %.lr.ph820 ], [ %indvars.iv1115.unr, %.lr.ph820.prol.loopexit ] ; 6 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv1115
  %i.adr = load float, ptr %i.adq, align 4
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv1115
  store float %i.adr, ptr %i.ads, align 4
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 1 ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116
  %i.adu = load float, ptr %i.adt, align 4
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116
  store float %i.adu, ptr %i.adv, align 4
  %indvars.iv.next1116.1 = add nuw nsw i64 %indvars.iv1115, 2 ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116.1
  %i.adx = load float, ptr %i.adw, align 4
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116.1
  store float %i.adx, ptr %i.ady, align 4
  %indvars.iv.next1116.2 = add nuw nsw i64 %indvars.iv1115, 3 ; 2 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.next1116.2
  %i.aea = load float, ptr %i.adz, align 4
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next1116.2
  store float %i.aea, ptr %i.aeb, align 4
  %indvars.iv.next1116.3 = add nuw nsw i64 %indvars.iv1115, 4 ; 2 uses
  %exitcond1119.not.3 = icmp eq i64 %indvars.iv.next1116.3, %wide.trip.count1118
  br i1 %exitcond1119.not.3, label %.preheader653, label %.lr.ph820, !llvm.loop !1252

.lr.ph824:                                        ; preds = %.lr.ph824.preheader, %._crit_edge825
  %indvars.iv1120 = phi i32 [ %i.d, %.lr.ph824.preheader ], [ %indvars.iv.next1121, %._crit_edge825 ] ; 2 uses
  %.8827 = phi i32 [ 1, %.lr.ph824.preheader ], [ %i.aes, %._crit_edge825 ]
  %i.aec = sext i32 %indvars.iv1120 to i64        ; 2 uses
  br i1 %i.adp, label %.epil.preheader, label %.lr.ph824.new

.lr.ph824.new:                                    ; preds = %.lr.ph824, %.lr.ph824.new
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123.3, %.lr.ph824.new ], [ %i.aec, %.lr.ph824 ] ; 3 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph824.new ], [ 0, %.lr.ph824 ]
  %i.aed = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122
  %i.aee = load float, ptr %i.aed, align 4
  %i.aef = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122
  store float %i.aee, ptr %i.aef, align 4
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, %i.adn ; 3 uses
  %i.aeg = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123
  %i.aeh = load float, ptr %i.aeg, align 4
  %i.aei = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123
  store float %i.aeh, ptr %i.aei, align 4
  %indvars.iv.next1123.1 = add nsw i64 %indvars.iv.next1123, %i.adn ; 3 uses
  %i.aej = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.1
  %i.aek = load float, ptr %i.aej, align 4
  %i.ael = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.1
  store float %i.aek, ptr %i.ael, align 4
  %indvars.iv.next1123.2 = add nsw i64 %indvars.iv.next1123.1, %i.adn ; 3 uses
  %i.aem = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv.next1123.2
  %i.aen = load float, ptr %i.aem, align 4
  %i.aeo = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next1123.2
  store float %i.aen, ptr %i.aeo, align 4
  %indvars.iv.next1123.3 = add nsw i64 %indvars.iv.next1123.2, %i.adn ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge825.unr-lcssa, label %.lr.ph824.new, !llvm.loop !1253

._crit_edge825.unr-lcssa:                         ; preds = %.lr.ph824.new
  br i1 %lcmp.mod1816.not, label %._crit_edge825, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge825.unr-lcssa, %.lr.ph824
  %indvars.iv1122.epil.init = phi i64 [ %i.aec, %.lr.ph824 ], [ %indvars.iv.next1123.3, %._crit_edge825.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1817)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv1122.epil = phi i64 [ %indvars.iv1122.epil.init, %.epil.preheader ], [ %indvars.iv.next1123.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.aep = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1122.epil
  %i.aeq = load float, ptr %i.aep, align 4
  %i.aer = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv1122.epil
  store float %i.aeq, ptr %i.aer, align 4
  %indvars.iv.next1123.epil = add nsw i64 %indvars.iv1122.epil, %i.adn
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1815
  br i1 %epil.iter.cmp.not, label %._crit_edge825, label %bb.g, !llvm.loop !1254

._crit_edge825:                                   ; preds = %bb.g, %._crit_edge825.unr-lcssa
  %i.aes = add nuw nsw i32 %.8827, 1              ; 2 uses
  %indvars.iv.next1121 = add i32 %indvars.iv1120, %i.d
  %exitcond1126.not = icmp eq i32 %i.aes, %1
  br i1 %exitcond1126.not, label %._crit_edge829.split, label %.lr.ph824, !llvm.loop !1255

._crit_edge829.split:                             ; preds = %._crit_edge825, %.preheader653
  %i.aet = icmp sgt i32 %i.m, %2
  br i1 %i.aet, label %bb.j, label %bb.h

bb.h:                                             ; preds = %._crit_edge829.split
  br i1 %i.adm, label %.lr.ph845, label %.critedge

.lr.ph845:                                        ; preds = %bb.h
  %i.aeu = icmp slt i32 %0, 3
  %i.aev = icmp slt i32 %2, 1
  %brmerge881 = or i1 %i.aeu, %i.aev
  br i1 %brmerge881, label %.critedge, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.lr.ph845
  %i.aew = add i32 %i.d, 2
  %i.aex = zext nneg i32 %0 to i64
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839.preheader, %._crit_edge840
  %indvars.iv1135 = phi i32 [ -1, %.lr.ph839.preheader ], [ %indvars.iv.next1136, %._crit_edge840 ] ; 2 uses
  %indvars.iv1127 = phi i32 [ %i.aew, %.lr.ph839.preheader ], [ %indvars.iv.next1128, %._crit_edge840 ] ; 2 uses
  %.9843 = phi i32 [ 1, %.lr.ph839.preheader ], [ %i.afz, %._crit_edge840 ]
  %i.aey = sext i32 %indvars.iv1135 to i64
  br label %.lr.ph833

.lr.ph833:                                        ; preds = %.lr.ph839, %._crit_edge834
  %indvars.iv1137 = phi i64 [ %i.aey, %.lr.ph839 ], [ %indvars.iv.next1138, %._crit_edge834 ] ; 2 uses
  %indvars.iv1129 = phi i32 [ %indvars.iv1127, %.lr.ph839 ], [ %indvars.iv.next1130, %._crit_edge834 ] ; 2 uses
  %.6836 = phi i32 [ 2, %.lr.ph839 ], [ %i.afx, %._crit_edge834 ]
  %i.aez = sext i32 %indvars.iv1129 to i64
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, 2 ; 2 uses
  %i.afa = getelementptr [4 x i8], ptr %9, i64 %indvars.iv1137
  %i.afb = getelementptr i8, ptr %i.afa, i64 4    ; 2 uses
  %i.afc = getelementptr inbounds [4 x i8], ptr %9, i64 %indvars.iv.next1138 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph833, %bb.i
  %indvars.iv1131 = phi i64 [ %i.aez, %.lr.ph833 ], [ %indvars.iv.next1132, %bb.i ] ; 4 uses
  %.9552831 = phi i32 [ 0, %.lr.ph833 ], [ %i.afw, %bb.i ]
  %i.afd = load float, ptr %i.afb, align 4
  %i.afe = add nsw i64 %indvars.iv1131, -1        ; 2 uses
  %i.aff = getelementptr inbounds [4 x i8], ptr %7, i64 %i.afe ; 2 uses
  %i.afg = load float, ptr %i.aff, align 4
  %i.afh = fmul float %i.afd, %i.afg
  %i.afi = load float, ptr %i.afc, align 4
  %i.afj = getelementptr inbounds [4 x i8], ptr %7, i64 %indvars.iv1131 ; 2 uses
  %i.afk = load float, ptr %i.afj, align 4
  %i.afl = fmul float %i.afi, %i.afk
  %i.afm = fsub float %i.afh, %i.afl
  %i.afn = getelementptr inbounds [4 x i8], ptr %5, i64 %i.afe
  store float %i.afm, ptr %i.afn, align 4
  %i.afo = load float, ptr %i.afb, align 4
end_hunk_11
