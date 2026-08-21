Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@res_push:bb.a
  %i.k = load i32, ptr %i.g, align 4
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = mul i32 %i.k, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call fastcc i32 @push(ptr noundef nonnull %0, ptr noundef %i.o, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.q, i32 noundef 1, ptr noundef %i.s, i32 noundef 1, i64 noundef %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %0, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4
  %.pre19 = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi i32 [ -1, %bb.a ], [ %.pre19, %._crit_edge.loopexit ]
  %i.y = phi i32 [ -1, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
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
  %i.a = load i32, ptr %2, align 4
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = icmp slt i64 %i.b, %i.e
  %i.j = icmp ne i64 %8, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  %i.m = sext i32 %7 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07589 = phi ptr [ %i.l, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %.07688 = phi i64 [ %8, %.lr.ph ], [ %i.q, %bb.b ]
  %.07887 = phi ptr [ %6, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.n = load float, ptr %.07887, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.07589, i64 4 ; 2 uses
  store float %i.n, ptr %.07589, align 4
  %i.p = getelementptr inbounds [4 x i8], ptr %.07887, i64 %i.m ; 2 uses
  %i.q = add i64 %.07688, -1                      ; 3 uses
  %i.r = icmp ult ptr %i.o, %i.f
  %i.s = icmp ne i64 %i.q, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.078.lcssa = phi ptr [ %6, %bb.a ], [ %i.p, %bb.b ] ; 6 uses
  %.076.lcssa = phi i64 [ %8, %bb.a ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = icmp eq i64 %.076.lcssa, 0
  br i1 %i.u, label %bb.h, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = sext i32 %7 to i64                       ; 5 uses
  %i.w = mul i64 %.076.lcssa, %i.v                ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %.078.lcssa, i64 %.idx ; 4 uses
  %.not114 = icmp eq i64 %i.w, 0
  br i1 %.not114, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = sext i32 %5 to i64
  %.pre = load i32, ptr %3, align 4
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph93, %sum.exit
  %i.aa = phi i32 [ %i.bp, %sum.exit ], [ %i.bt, %.lr.ph93 ]
  %.280.lcssa = phi ptr [ %.17996, %sum.exit ], [ %i.bu, %.lr.ph93 ] ; 3 uses
  %i.ab = icmp ult ptr %.280.lcssa, %i.x
  br i1 %i.ab, label %bb.d, label %._crit_edge99, !llvm.loop !136

bb.d:                                             ; preds = %.lr.ph98, %.loopexit
  %i.ac = phi i32 [ %.pre, %.lr.ph98 ], [ %i.aa, %.loopexit ]
  %.17996 = phi ptr [ %.078.lcssa, %.lr.ph98 ], [ %.280.lcssa, %.loopexit ] ; 6 uses
  %.08195 = phi ptr [ %4, %.lr.ph98 ], [ %i.bm, %.loopexit ] ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4             ; 6 uses
  %.not16.i = icmp eq i32 %i.ad, 0
  br i1 %.not16.i, label %sum.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ae = load ptr, ptr %i.y, align 8
  %i.af = mul i32 %i.ad, %i.ac
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag ; 3 uses
  %xtraiter = and i32 %i.ad, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ai = add nsw i32 %i.ad, -1
  %i.aj = load float, ptr %.17996, align 4
  %i.ak = load float, ptr %i.ah, align 4
  %i.al = fmul float %i.aj, %i.ak
  %i.am = fadd float %i.al, 0.000000e+00          ; 2 uses
  %i.an = icmp eq ptr %.17996, %.078.lcssa        ; 2 uses
  %spec.select.i.prol = select i1 %i.an, ptr %i.f, ptr %.17996
  %spec.select15.i.prol = select i1 %i.an, i32 1, i32 %7 ; 2 uses
  %i.ao = sext i32 %spec.select15.i.prol to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [4 x i8], ptr %spec.select.i.prol, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa148.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.021.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph.i.prol ]
  %.01020.i.unr = phi i32 [ %7, %.lr.ph.i.preheader ], [ %spec.select15.i.prol, %.lr.ph.i.prol ]
  %.01119.i.unr = phi ptr [ %i.ah, %.lr.ph.i.preheader ], [ %i.ar, %.lr.ph.i.prol ]
  %.01218.i.unr = phi i32 [ %i.ad, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %.01317.i.unr = phi ptr [ %.17996, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.as = icmp eq i32 %i.ad, 1
  br i1 %i.as, label %sum.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.021.i = phi float [ %i.bg, %.lr.ph.i ], [ %.021.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01020.i = phi i32 [ %spec.select15.i.1, %.lr.ph.i ], [ %.01020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01119.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.01119.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01218.i = phi i32 [ %i.bc, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01317.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.01317.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.at = load float, ptr %.01317.i, align 4
  %i.au = load float, ptr %.01119.i, align 4
  %i.av = fmul float %i.at, %i.au
  %i.aw = fadd float %.021.i, %i.av
  %i.ax = icmp eq ptr %.01317.i, %.078.lcssa      ; 2 uses
  %spec.select.i = select i1 %i.ax, ptr %i.f, ptr %.01317.i
  %spec.select15.i = select i1 %i.ax, i32 1, i32 %.01020.i ; 2 uses
  %i.ay = sext i32 %spec.select15.i to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %spec.select.i, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01119.i, i64 4
  %i.bc = add nsw i32 %.01218.i, -2               ; 2 uses
  %i.bd = load float, ptr %i.ba, align 4
  %i.be = load float, ptr %i.bb, align 4
  %i.bf = fmul float %i.bd, %i.be
  %i.bg = fadd float %i.aw, %i.bf                 ; 2 uses
  %i.bh = icmp eq ptr %i.ba, %.078.lcssa          ; 2 uses
  %spec.select.i.1 = select i1 %i.bh, ptr %i.f, ptr %i.ba
  %spec.select15.i.1 = select i1 %i.bh, i32 1, i32 %spec.select15.i ; 2 uses
  %i.bi = sext i32 %spec.select15.i.1 to i64
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %spec.select.i.1, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.01119.i, i64 8
  %.not.i.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.1, label %sum.exit, label %.lr.ph.i, !llvm.loop !137

sum.exit:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi float [ 0.000000e+00, %bb.d ], [ %.lcssa148.unr, %.lr.ph.i.prol.loopexit ], [ %i.bg, %.lr.ph.i ]
  store float %.0.lcssa.i, ptr %.08195, align 4
  %i.bm = getelementptr inbounds [4 x i8], ptr %.08195, i64 %i.z ; 2 uses
  %i.bn = load i32, ptr %i.h, align 4
  %i.bo = load i32, ptr %3, align 4
  %i.bp = add i32 %i.bo, %i.bn                    ; 4 uses
  store i32 %i.bp, ptr %3, align 4
  %i.bq = load i32, ptr %i.g, align 8             ; 2 uses
  %.not91 = icmp ult i32 %i.bp, %i.bq
  br i1 %.not91, label %.loopexit, label %.lr.ph93

.lr.ph93:                                         ; preds = %sum.exit, %.lr.ph93
  %i.br = phi i32 [ %i.bv, %.lr.ph93 ], [ %i.bq, %sum.exit ]
  %i.bs = phi i32 [ %i.bt, %.lr.ph93 ], [ %i.bp, %sum.exit ]
  %.28092 = phi ptr [ %i.bu, %.lr.ph93 ], [ %.17996, %sum.exit ]
  %i.bt = sub nuw i32 %i.bs, %i.br                ; 4 uses
  store i32 %i.bt, ptr %3, align 4
  %i.bu = getelementptr inbounds [4 x i8], ptr %.28092, i64 %i.v ; 2 uses
  %i.bv = load i32, ptr %i.g, align 8             ; 2 uses
  %.not = icmp ult i32 %i.bt, %i.bv
  br i1 %.not, label %.loopexit, label %.lr.ph93, !llvm.loop !138

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  %.081.lcssa = phi ptr [ %4, %bb.c ], [ %i.bm, %.loopexit ]
  %.179.lcssa = phi ptr [ %.078.lcssa, %bb.c ], [ %.280.lcssa, %.loopexit ] ; 2 uses
  %i.bw = ptrtoint ptr %.179.lcssa to i64
  %i.bx = ptrtoint ptr %i.x to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2
  %i.ca = sdiv i64 %i.bz, %i.v
  %i.cb = add i64 %i.ca, %.076.lcssa              ; 5 uses
  %i.cc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge99
  %i.cf = icmp samesign ult i64 %i.cb, %i.e
  br i1 %i.cf, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb ; 3 uses
  %i.ch = ptrtoaddr ptr %1 to i64                 ; 3 uses
  %i.ci = shl i64 %i.cb, 2                        ; 2 uses
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, 4
  %i.cl = shl nuw nsw i64 %i.e, 2
  %i.cm = add i64 %i.cl, %i.ch
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cm)
  %i.co = xor i64 %i.ch, -1
  %i.cp = add i64 %i.cn, %i.co
  %i.cq = sub i64 %i.cp, %i.ci                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 28
  br i1 %min.iters.check, label %.lr.ph105.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 3 uses
  %i.ct = shl i64 %n.vec, 2                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cg, i64 %i.ct
  %i.cv = getelementptr i8, ptr %1, i64 %i.ct     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cw ; 2 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load144 = load <4 x float>, ptr %i.cx, align 4
  %i.cy = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x float> %wide.load, ptr %next.gep143, align 4
  store <4 x float> %wide.load144, ptr %i.cy, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge106, label %.lr.ph105.preheader146

.lr.ph105.preheader146:                           ; preds = %.lr.ph105.preheader, %middle.block
  %.0103.ph = phi ptr [ %i.cg, %.lr.ph105.preheader ], [ %i.cu, %middle.block ]
  %.072102.ph = phi ptr [ %1, %.lr.ph105.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader146, %.lr.ph105
  %.0103 = phi ptr [ %i.da, %.lr.ph105 ], [ %.0103.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %.072102 = phi ptr [ %i.dc, %.lr.ph105 ], [ %.072102.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0103, i64 4 ; 2 uses
  %i.db = load float, ptr %.0103, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.072102, i64 4 ; 2 uses
  store float %i.db, ptr %.072102, align 4
  %i.dd = icmp ult ptr %i.da, %i.f
  br i1 %i.dd, label %.lr.ph105, label %._crit_edge106, !llvm.loop !140

._crit_edge106:                                   ; preds = %.lr.ph105, %middle.block, %bb.e
  %.072.lcssa = phi ptr [ %1, %bb.e ], [ %i.cv, %middle.block ], [ %i.dc, %.lr.ph105 ]
  %i.de = mul nsw i64 %i.cb, %i.v
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge99
  %i.df = mul i32 %i.cc, %7
  %i.dg = zext i32 %i.df to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge106
  %.173 = phi ptr [ %.072.lcssa, %._crit_edge106 ], [ %1, %bb.f ] ; 2 uses
  %.pn86 = phi i64 [ %i.de, %._crit_edge106 ], [ %i.dg, %bb.f ]
  %.pn = sub nsw i64 0, %.pn86
  %.1 = getelementptr inbounds [4 x i8], ptr %.179.lcssa, i64 %.pn ; 2 uses
  %i.dh = icmp ult ptr %.1, %i.x
  br i1 %i.dh, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.g, %.lr.ph111
  %.2109 = phi ptr [ %i.dk, %.lr.ph111 ], [ %.1, %bb.g ] ; 2 uses
  %.274108 = phi ptr [ %i.dj, %.lr.ph111 ], [ %.173, %bb.g ] ; 2 uses
  %i.di = load float, ptr %.2109, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.274108, i64 4 ; 2 uses
  store float %i.di, ptr %.274108, align 4
  %i.dk = getelementptr inbounds [4 x i8], ptr %.2109, i64 %i.v ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.x
  br i1 %i.dl, label %.lr.ph111, label %._crit_edge112, !llvm.loop !141

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.g
  %.274.lcssa = phi ptr [ %.173, %bb.g ], [ %i.dj, %.lr.ph111 ]
  %i.dm = ptrtoint ptr %.274.lcssa to i64
  %i.dn = ptrtoint ptr %1 to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = lshr exact i64 %i.do, 2
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %2, align 4
  %i.dr = ptrtoint ptr %.081.lcssa to i64
  %i.ds = ptrtoint ptr %4 to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = sext i32 %5 to i64
  %i.dw = sdiv i64 %i.du, %i.dv
  %i.dx = trunc i64 %i.dw to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge112
  %.077 = phi i32 [ %i.dx, %._crit_edge112 ], [ 0, %._crit_edge ]
  ret i32 %.077
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
end_hunk_0
