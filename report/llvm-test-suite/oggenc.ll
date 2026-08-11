inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 206
begin_hunk_0_@res_push:bb.a
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
  %.07389 = phi ptr [ %6, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %.08088 = phi i64 [ %8, %.lr.ph ], [ %i.q, %bb.b ]
  %.08187 = phi ptr [ %i.l, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.n = load float, ptr %.07389, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.08187, i64 4 ; 2 uses
  store float %i.n, ptr %.08187, align 4
  %i.p = getelementptr inbounds [4 x i8], ptr %.07389, i64 %i.m ; 2 uses
  %i.q = add i64 %.08088, -1                      ; 3 uses
  %i.r = icmp ult ptr %i.o, %i.f
  %i.s = icmp ne i64 %i.q, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.080.lcssa = phi i64 [ %8, %bb.a ], [ %i.q, %bb.b ] ; 3 uses
  %.073.lcssa = phi ptr [ %6, %bb.a ], [ %i.p, %bb.b ] ; 6 uses
  %i.u = icmp eq i64 %.080.lcssa, 0
  br i1 %i.u, label %bb.h, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = sext i32 %7 to i64                       ; 5 uses
  %i.w = mul i64 %.080.lcssa, %i.v                ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 2
  %i.x = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 %.idx ; 4 uses
  %.not114 = icmp eq i64 %i.w, 0
  br i1 %.not114, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = sext i32 %5 to i64
  %.pre = load i32, ptr %3, align 4
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph93, %sum.exit
  %i.aa = phi i32 [ %i.bp, %sum.exit ], [ %i.bt, %.lr.ph93 ]
  %.2.lcssa = phi ptr [ %.195, %sum.exit ], [ %i.bu, %.lr.ph93 ] ; 3 uses
  %i.ab = icmp ult ptr %.2.lcssa, %i.x
  br i1 %i.ab, label %bb.d, label %._crit_edge99, !llvm.loop !136

bb.d:                                             ; preds = %.lr.ph98, %.loopexit
  %i.ac = phi i32 [ %.pre, %.lr.ph98 ], [ %i.aa, %.loopexit ]
  %.07296 = phi ptr [ %4, %.lr.ph98 ], [ %i.bm, %.loopexit ] ; 2 uses
  %.195 = phi ptr [ %.073.lcssa, %.lr.ph98 ], [ %.2.lcssa, %.loopexit ] ; 6 uses
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
  %i.aj = load float, ptr %.195, align 4
  %i.ak = load float, ptr %i.ah, align 4
  %i.al = fmul float %i.aj, %i.ak
  %i.am = fadd float %i.al, 0.000000e+00          ; 2 uses
  %i.an = icmp eq ptr %.195, %.073.lcssa          ; 2 uses
  %spec.select.i.prol = select i1 %i.an, ptr %i.f, ptr %.195
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
  %.01317.i.unr = phi ptr [ %.195, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
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
  %i.ax = icmp eq ptr %.01317.i, %.073.lcssa      ; 2 uses
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
  %i.bh = icmp eq ptr %i.ba, %.073.lcssa          ; 2 uses
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
  store float %.0.lcssa.i, ptr %.07296, align 4
  %i.bm = getelementptr inbounds [4 x i8], ptr %.07296, i64 %i.z ; 2 uses
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
  %.292 = phi ptr [ %i.bu, %.lr.ph93 ], [ %.195, %sum.exit ]
  %i.bt = sub nuw i32 %i.bs, %i.br                ; 4 uses
  store i32 %i.bt, ptr %3, align 4
  %i.bu = getelementptr inbounds [4 x i8], ptr %.292, i64 %i.v ; 2 uses
  %i.bv = load i32, ptr %i.g, align 8             ; 2 uses
  %.not = icmp ult i32 %i.bt, %i.bv
  br i1 %.not, label %.loopexit, label %.lr.ph93, !llvm.loop !138

._crit_edge99:                                    ; preds = %.loopexit, %bb.c
  %.1.lcssa = phi ptr [ %.073.lcssa, %bb.c ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %.072.lcssa = phi ptr [ %4, %bb.c ], [ %i.bm, %.loopexit ]
  %i.bw = ptrtoint ptr %.1.lcssa to i64
  %i.bx = ptrtoint ptr %i.x to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2
  %i.ca = sdiv i64 %i.bz, %i.v
  %i.cb = add i64 %i.ca, %.080.lcssa              ; 6 uses
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
  %i.ci = shl i64 %i.cb, 2
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, 4
  %i.cl = shl nuw nsw i64 %i.e, 2
  %i.cm = add i64 %i.cl, %i.ch
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cm)
  %9 = xor i64 %i.ch, -1
  %i.co = add i64 %i.cn, %9
  %10 = shl i64 %i.cb, 2
  %11 = sub i64 %i.co, %10                        ; 2 uses
  %i.cp = lshr i64 %11, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 28
  br i1 %min.iters.check, label %.lr.ph105.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cq, 9223372036854775800     ; 3 uses
  %i.cr = shl i64 %n.vec, 2                       ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cg, i64 %i.cr
  %i.ct = getelementptr i8, ptr %1, i64 %i.cr     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cu ; 2 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load144 = load <4 x float>, ptr %i.cv, align 4
  %i.cw = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x float> %wide.load, ptr %next.gep143, align 4
  store <4 x float> %wide.load144, ptr %i.cw, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge106, label %.lr.ph105.preheader146

.lr.ph105.preheader146:                           ; preds = %.lr.ph105.preheader, %middle.block
  %.074103.ph = phi ptr [ %i.cg, %.lr.ph105.preheader ], [ %i.cs, %middle.block ]
  %.077102.ph = phi ptr [ %1, %.lr.ph105.preheader ], [ %i.ct, %middle.block ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader146, %.lr.ph105
  %.074103 = phi ptr [ %i.cy, %.lr.ph105 ], [ %.074103.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %.077102 = phi ptr [ %i.da, %.lr.ph105 ], [ %.077102.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.074103, i64 4 ; 2 uses
  %i.cz = load float, ptr %.074103, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.077102, i64 4 ; 2 uses
  store float %i.cz, ptr %.077102, align 4
  %i.db = icmp ult ptr %i.cy, %i.f
  br i1 %i.db, label %.lr.ph105, label %._crit_edge106, !llvm.loop !140

._crit_edge106:                                   ; preds = %.lr.ph105, %middle.block, %bb.e
  %.077.lcssa = phi ptr [ %1, %bb.e ], [ %i.ct, %middle.block ], [ %i.da, %.lr.ph105 ]
  %i.dc = mul nsw i64 %i.cb, %i.v
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge99
  %i.dd = mul i32 %i.cc, %7
  %i.de = zext i32 %i.dd to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge106
  %.178 = phi ptr [ %.077.lcssa, %._crit_edge106 ], [ %1, %bb.f ] ; 2 uses
  %.pn86 = phi i64 [ %i.dc, %._crit_edge106 ], [ %i.de, %bb.f ]
  %.pn = sub nsw i64 0, %.pn86
  %.175 = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %.pn ; 2 uses
  %i.df = icmp ult ptr %.175, %i.x
  br i1 %i.df, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.g, %.lr.ph111
  %.276109 = phi ptr [ %i.di, %.lr.ph111 ], [ %.175, %bb.g ] ; 2 uses
  %.279108 = phi ptr [ %i.dh, %.lr.ph111 ], [ %.178, %bb.g ] ; 2 uses
  %i.dg = load float, ptr %.276109, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.279108, i64 4 ; 2 uses
  store float %i.dg, ptr %.279108, align 4
  %i.di = getelementptr inbounds [4 x i8], ptr %.276109, i64 %i.v ; 2 uses
  %i.dj = icmp ult ptr %i.di, %i.x
  br i1 %i.dj, label %.lr.ph111, label %._crit_edge112, !llvm.loop !141

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.g
  %.279.lcssa = phi ptr [ %.178, %bb.g ], [ %i.dh, %.lr.ph111 ]
  %i.dk = ptrtoint ptr %.279.lcssa to i64
  %i.dl = ptrtoint ptr %1 to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = lshr exact i64 %i.dm, 2
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %2, align 4
  %i.dp = ptrtoint ptr %.072.lcssa to i64
  %i.dq = ptrtoint ptr %4 to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 2
  %i.dt = sext i32 %5 to i64
  %i.du = sdiv i64 %i.ds, %i.dt
  %i.dv = trunc i64 %i.du to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge112
  %.0 = phi i32 [ %i.dv, %._crit_edge112 ], [ 0, %._crit_edge ]
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
end_hunk_0
begin_hunk_1_@_ov_getlap:bb.a

.lr.ph79:                                         ; preds = %.preheader
  %i.bf = sext i32 %.053.ph to i64                ; 2 uses
  %i.bg = sext i32 %4 to i64
  %i.bh = shl nsw i64 %i.bg, 2
  %i.bi = sub nsw i64 %i.bh, %i.bf
  br label %bb.k

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
  %i.bs = tail call i64 @llvm.smax.i64(i64 %i.br, i64 1) ; 2 uses
  %min.iters.check182 = icmp ult i32 %i.bo, 16
  %i.bt = shl nsw i64 %i.bn, 2
  %diff.check180 = icmp ugt i64 %i.bt, -32
  %or.cond = select i1 %min.iters.check182, i1 true, i1 %diff.check180
  %n.vec184 = and i64 %i.bs, 1073741816           ; 3 uses
  %i.bu = sub nsw i64 %i.br, %n.vec184
  %cmp.n191 = icmp eq i64 %i.bs, %n.vec184
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge124
  %indvars.iv144 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next145, %._crit_edge124 ] ; 2 uses
  %i.bv = load ptr, ptr %i.bk, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv144
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bn ; 2 uses
  br i1 %or.cond, label %scalar.ph181.preheader, label %vector.body185

vector.body185:                                   ; preds = %.lr.ph123, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %.lr.ph123 ] ; 2 uses
  %i.bz = xor i64 %index186, -1
  %i.ca = add i64 %i.bz, %i.br                    ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -12
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -28
  %wide.load187 = load <4 x float>, ptr %i.cc, align 4
  %wide.load188 = load <4 x float>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -12
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -28
  store <4 x float> %wide.load187, ptr %i.cf, align 4
  store <4 x float> %wide.load188, ptr %i.cg, align 4
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ch, label %middle.block190, label %vector.body185, !llvm.loop !329

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %._crit_edge124, label %scalar.ph181.preheader

scalar.ph181.preheader:                           ; preds = %.lr.ph123, %middle.block190
  %indvars.iv141.ph = phi i64 [ %i.br, %.lr.ph123 ], [ %i.bu, %middle.block190 ]
  br label %scalar.ph181

scalar.ph181:                                     ; preds = %scalar.ph181.preheader, %scalar.ph181
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph181 ], [ %indvars.iv141.ph, %scalar.ph181.preheader ] ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.next142
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next142
  store float %i.cj, ptr %i.ck, align 4
  %i.cl = icmp sgt i64 %indvars.iv141, 1
  br i1 %i.cl, label %scalar.ph181, label %._crit_edge124, !llvm.loop !330

._crit_edge124:                                   ; preds = %scalar.ph181, %middle.block190
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.cm = load i32, ptr %i.bh, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next145, %i.cn
  br i1 %i.co, label %.lr.ph123, label %._crit_edge127.split.loopexit, !llvm.loop !331

._crit_edge127.split.loopexit:                    ; preds = %._crit_edge124
  %.pre152 = load i32, ptr %i.v, align 8
  br label %._crit_edge127.split

._crit_edge127.split:                             ; preds = %.preheader107.._crit_edge127.split_crit_edge, %._crit_edge127.split.loopexit, %.lr.ph126
  %.pre-phi157 = phi i32 [ %.pre156, %.preheader107.._crit_edge127.split_crit_edge ], [ %i.bm, %._crit_edge127.split.loopexit ], [ %i.bm, %.lr.ph126 ] ; 2 uses
  %i.cp = phi i32 [ %i.bb, %.preheader107.._crit_edge127.split_crit_edge ], [ %.pre152, %._crit_edge127.split.loopexit ], [ %i.bb, %.lr.ph126 ]
  %i.cq = add nsw i32 %i.cp, %.pre-phi157
  br label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.cr = icmp eq i64 %i.be, 0
  br i1 %i.cr, label %.preheader108, label %bb.e

.preheader108:                                    ; preds = %bb.d
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph119, label %._crit_edge120.split

.lr.ph119:                                        ; preds = %.preheader108
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %sext106 = shl i64 %i.p, 32                     ; 2 uses
  %i.cw = ashr exact i64 %sext106, 32
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = icmp sgt i32 %i.q, 0
  br i1 %i.cy, label %.lr.ph116.preheader, label %._crit_edge120.split

.lr.ph116.preheader:                              ; preds = %.lr.ph119
  %i.cz = and i64 %i.p, 2147483647                ; 5 uses
  %i.da = lshr exact i64 %sext106, 30
  %i.db = ashr exact i64 %sext, 30
  %i.dc = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 1) ; 2 uses
  %min.iters.check168 = icmp samesign ult i64 %i.cz, 8
  %i.dd = sub nsw i64 %i.db, %i.da
  %diff.check = icmp ugt i64 %i.dd, -32
  %or.cond193 = select i1 %min.iters.check168, i1 true, i1 %diff.check
  %n.vec170 = and i64 %i.dc, 2147483640           ; 3 uses
  %i.de = sub nsw i64 %i.cz, %n.vec170
  %cmp.n177 = icmp eq i64 %i.dc, %n.vec170
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %._crit_edge117
  %indvars.iv138 = phi i64 [ 0, %.lr.ph116.preheader ], [ %indvars.iv.next139, %._crit_edge117 ] ; 2 uses
  %i.df = load ptr, ptr %i.cv, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv138
  %i.dh = load ptr, ptr %i.dg, align 8            ; 3 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.aa
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.cx ; 2 uses
  br i1 %or.cond193, label %scalar.ph167.preheader, label %vector.body171

vector.body171:                                   ; preds = %.lr.ph116, %vector.body171
  %index172 = phi i64 [ %index.next175, %vector.body171 ], [ 0, %.lr.ph116 ] ; 2 uses
  %i.dk = xor i64 %index172, -1
  %i.dl = add i64 %i.cz, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -12
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 -28
  %wide.load173 = load <4 x float>, ptr %i.dn, align 4
  %wide.load174 = load <4 x float>, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dl ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -12
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -28
  store <4 x float> %wide.load173, ptr %i.dq, align 4
  store <4 x float> %wide.load174, ptr %i.dr, align 4
  %index.next175 = add nuw i64 %index172, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.ds, label %middle.block176, label %vector.body171, !llvm.loop !332

middle.block176:                                  ; preds = %vector.body171
  br i1 %cmp.n177, label %._crit_edge117, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph116, %middle.block176
  %indvars.iv135.ph = phi i64 [ %i.cz, %.lr.ph116 ], [ %i.de, %middle.block176 ]
  br label %scalar.ph167

scalar.ph167:                                     ; preds = %scalar.ph167.preheader, %scalar.ph167
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %scalar.ph167 ], [ %indvars.iv135.ph, %scalar.ph167.preheader ] ; 2 uses
  %indvars.iv.next136 = add nsw i64 %indvars.iv135, -1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next136
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next136
  store float %i.du, ptr %i.dv, align 4
  %i.dw = icmp sgt i64 %indvars.iv135, 1
  br i1 %i.dw, label %scalar.ph167, label %._crit_edge117, !llvm.loop !333

._crit_edge117:                                   ; preds = %scalar.ph167, %middle.block176
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.dx = load i32, ptr %i.cs, align 4
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next139, %i.dy
  br i1 %i.dz, label %.lr.ph116, label %._crit_edge120.split.loopexit, !llvm.loop !334

._crit_edge120.split.loopexit:                    ; preds = %._crit_edge117
  %.pre151 = load i32, ptr %i.v, align 8
  br label %._crit_edge120.split

._crit_edge120.split:                             ; preds = %._crit_edge120.split.loopexit, %.lr.ph119, %.preheader108
  %i.ea = phi i32 [ %.pre151, %._crit_edge120.split.loopexit ], [ %i.bb, %.lr.ph119 ], [ %i.bb, %.preheader108 ]
  %i.eb = sub nsw i32 %i.u, %i.q                  ; 2 uses
  %i.ec = add nsw i32 %i.ea, %i.eb
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge127.split, %._crit_edge120.split
  %.sink = phi i32 [ %i.ec, %._crit_edge120.split ], [ %i.cq, %._crit_edge127.split ] ; 2 uses
  %.sink163 = phi i32 [ %i.eb, %._crit_edge120.split ], [ %.pre-phi157, %._crit_edge127.split ]
  store i32 %.sink, ptr %i.v, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add nsw i32 %i.ee, %.sink163
  store i32 %i.ef, ptr %i.ed, align 4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.eg = phi i32 [ %i.bb, %bb.d ], [ %.sink, %.sink.split ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph129, label %._crit_edge130

.lr.ph129:                                        ; preds = %.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph129, %bb.f
  %indvars.iv147 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next148, %bb.f ] ; 3 uses
  %i.em = load ptr, ptr %i.ek, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv147
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load i32, ptr %i.v, align 8
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  %i.es = load ptr, ptr %i.el, align 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv147
  store ptr %i.er, ptr %i.et, align 8
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.eu = load i32, ptr %i.eh, align 4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next148, %i.ev
  br i1 %i.ew, label %bb.f, label %._crit_edge130, !llvm.loop !335

._crit_edge130:                                   ; preds = %bb.f, %.preheader
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  store ptr %i.ey, ptr %1, align 8
  %.pre153 = load i32, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge130, %bb.e
  %i.ez = phi i32 [ %.pre153, %._crit_edge130 ], [ %i.eg, %bb.e ]
  %i.fa = add nsw i32 %i.u, %i.n
  %i.fb = sub i32 %i.fa, %i.ez
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.099 = phi i32 [ %i.fb, %bb.g ], [ 0, %bb.a ]
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
end_hunk_1
begin_hunk_2_@vorbis_lpc_to_lsp:bb.a
  %i.bu = icmp ult i32 %i.b, 4
  br i1 %i.bu, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.bt, 2147483644
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph132

.preheader118:                                    ; preds = %._crit_edge129
  %.not104136 = icmp slt i32 %i.j, 2
  br i1 %.not104136, label %.loopexit119, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.preheader118
  %i.bv = add nuw nsw i32 %i.j, 1
  %wide.trip.count164 = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.bw = add nsw i64 %wide.trip.count164, -2     ; 3 uses
  %min.iters.check205 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check205, label %.lr.ph138.preheader262, label %vector.ph206

vector.ph206:                                     ; preds = %.lr.ph138.preheader
  %n.vec207 = and i64 %i.bw, -2                   ; 3 uses
  %i.bx = add nsw i64 %n.vec207, 2
  %i.by = shl nuw nsw i64 %i.an, 2
  %i.bz = getelementptr i8, ptr %i.g, i64 %i.by
  %scevgep259 = getelementptr i8, ptr %i.bz, i64 -4
  %load_initial260 = load <2 x float>, ptr %scevgep259, align 4
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph206
  %store_forwarded261 = phi <2 x float> [ %load_initial260, %vector.ph206 ], [ %i.ce, %vector.body208 ]
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next212, %vector.body208 ] ; 2 uses
  %i.ca = add nuw i64 %index209, 2
  %i.cb = sub nsw i64 %i.an, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %wide.load211 = load <2 x float>, ptr %i.cd, align 4
  %i.ce = fadd <2 x float> %store_forwarded261, %wide.load211 ; 2 uses
  store <2 x float> %i.ce, ptr %i.cd, align 4
  %index.next212 = add nuw i64 %index209, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.cf, label %middle.block213, label %vector.body208, !llvm.loop !664

middle.block213:                                  ; preds = %vector.body208
  %cmp.n214 = icmp eq i64 %i.bw, %n.vec207
  br i1 %cmp.n214, label %.loopexit119, label %.lr.ph138.preheader262

.lr.ph138.preheader262:                           ; preds = %.lr.ph138.preheader, %middle.block213
  %indvars.iv161.ph = phi i64 [ 2, %.lr.ph138.preheader ], [ %i.bx, %middle.block213 ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader262, %.lr.ph138
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph138 ], [ %indvars.iv161.ph, %.lr.ph138.preheader262 ] ; 2 uses
  %i.cg = sub nsw i64 %i.an, %indvars.iv161
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = load float, ptr %i.ch, align 4
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.ch, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit119, label %.lr.ph138, !llvm.loop !665

.preheader120.loopexit.unr-lcssa:                 ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader120, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.preheader
  %store_forwarded258.epil.init = phi float [ %load_initial257, %.lr.ph132.preheader ], [ %i.dg, %.preheader120.loopexit.unr-lcssa ]
  %indvars.iv151.epil.init = phi i64 [ 1, %.lr.ph132.preheader ], [ %indvars.iv.next152.3, %.preheader120.loopexit.unr-lcssa ]
  %lcmp.mod266 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %store_forwarded258.epil = phi float [ %store_forwarded258.epil.init, %.lr.ph132.epil.preheader ], [ %i.cp, %.lr.ph132.epil ]
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph132.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph132.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph132.epil.preheader ], [ %epil.iter.next, %.lr.ph132.epil ]
  %i.cm = sub nsw i64 %i.k, %indvars.iv151.epil
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fsub float %i.co, %store_forwarded258.epil ; 2 uses
  store float %i.cp, ptr %i.cn, align 4
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader120, label %.lr.ph132.epil, !llvm.loop !666

.preheader120:                                    ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader122
  br i1 %.not101125, label %.loopexit119, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %.preheader120
  %i.cq = shl nuw nsw i64 %i.an, 2
  %scevgep253 = getelementptr i8, ptr %i.g, i64 %i.cq
  %load_initial254 = load float, ptr %scevgep253, align 4 ; 2 uses
  %i.cr = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter267 = and i64 %i.cr, 3                 ; 3 uses
  %i.cs = icmp ult i32 %i.j, 4
  br i1 %i.cs, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter271 = and i64 %i.cr, 2147483644
  %invariant.gep286 = getelementptr [4 x i8], ptr %i.g, i64 %i.an
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %store_forwarded258 = phi float [ %load_initial257, %.lr.ph132.preheader.new ], [ %i.dg, %.lr.ph132 ]
  %indvars.iv151 = phi i64 [ 1, %.lr.ph132.preheader.new ], [ %indvars.iv.next152.3, %.lr.ph132 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.ct = sub nsw i64 %i.k, %indvars.iv151
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.cv, %store_forwarded258   ; 2 uses
  store float %i.cw, ptr %i.cu, align 4
  %indvars.iv.next152.neg = xor i64 %indvars.iv151, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next152.neg ; 2 uses
  %i.cx = load float, ptr %gep, align 4
  %i.cy = fsub float %i.cx, %i.cw                 ; 2 uses
  store float %i.cy, ptr %gep, align 4
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2
  %i.cz = sub nsw i64 %i.k, %indvars.iv.next152.1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fsub float %i.db, %i.cy                 ; 2 uses
  store float %i.dc, ptr %i.da, align 4
  %indvars.iv.next152.2 = add nuw nsw i64 %indvars.iv151, 3
  %i.dd = sub nsw i64 %i.k, %indvars.iv.next152.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fsub float %i.df, %i.dc                 ; 3 uses
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader120.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !667

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %store_forwarded255 = phi float [ %load_initial254, %.lr.ph135.preheader.new ], [ %i.du, %.lr.ph135 ]
  %indvars.iv156 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next157.3, %.lr.ph135 ] ; 5 uses
  %niter272 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter272.next.3, %.lr.ph135 ]
  %i.dh = sub nsw i64 %i.an, %indvars.iv156
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fadd float %store_forwarded255, %i.dj   ; 2 uses
  store float %i.dk, ptr %i.di, align 4
  %indvars.iv.next157.neg = xor i64 %indvars.iv156, -1
  %gep287 = getelementptr [4 x i8], ptr %invariant.gep286, i64 %indvars.iv.next157.neg ; 2 uses
  %i.dl = load float, ptr %gep287, align 4
  %i.dm = fadd float %i.dk, %i.dl                 ; 2 uses
  store float %i.dm, ptr %gep287, align 4
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2
  %i.dn = sub nsw i64 %i.an, %indvars.iv.next157.1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dm, %i.dp                 ; 2 uses
  store float %i.dq, ptr %i.do, align 4
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3
  %i.dr = sub nsw i64 %i.an, %indvars.iv.next157.2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = fadd float %i.dq, %i.dt                 ; 3 uses
  store float %i.du, ptr %i.ds, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter272.next.3 = add nuw i64 %niter272, 4     ; 2 uses
  %niter272.ncmp.3 = icmp eq i64 %niter272.next.3, %unroll_iter271
  br i1 %niter272.ncmp.3, label %.loopexit119.loopexit263.unr-lcssa, label %.lr.ph135, !llvm.loop !668

.loopexit119.loopexit263.unr-lcssa:               ; preds = %.lr.ph135
  %lcmp.mod269.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod269.not, label %.loopexit119, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %.loopexit119.loopexit263.unr-lcssa, %.lr.ph135.preheader
  %store_forwarded255.epil.init = phi float [ %load_initial254, %.lr.ph135.preheader ], [ %i.du, %.loopexit119.loopexit263.unr-lcssa ]
  %indvars.iv156.epil.init = phi i64 [ 1, %.lr.ph135.preheader ], [ %indvars.iv.next157.3, %.loopexit119.loopexit263.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter267, 0
  tail call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %store_forwarded255.epil = phi float [ %store_forwarded255.epil.init, %.lr.ph135.epil.preheader ], [ %i.dy, %.lr.ph135.epil ]
  %indvars.iv156.epil = phi i64 [ %indvars.iv156.epil.init, %.lr.ph135.epil.preheader ], [ %indvars.iv.next157.epil, %.lr.ph135.epil ] ; 2 uses
  %epil.iter268 = phi i64 [ 0, %.lr.ph135.epil.preheader ], [ %epil.iter268.next, %.lr.ph135.epil ]
  %i.dv = sub nsw i64 %i.an, %indvars.iv156.epil
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fadd float %store_forwarded255.epil, %i.dx ; 2 uses
  store float %i.dy, ptr %i.dw, align 4
  %indvars.iv.next157.epil = add nuw nsw i64 %indvars.iv156.epil, 1
  %epil.iter268.next = add i64 %epil.iter268, 1   ; 2 uses
  %epil.iter268.cmp.not = icmp eq i64 %epil.iter268.next, %xtraiter267
  br i1 %epil.iter268.cmp.not, label %.loopexit119, label %.lr.ph135.epil, !llvm.loop !669

.loopexit119:                                     ; preds = %.loopexit119.loopexit263.unr-lcssa, %.lr.ph135.epil, %.lr.ph138, %middle.block213, %.preheader120, %.preheader118
  %i.dz = load float, ptr %i.f, align 16
  %i.ea = fmul float %i.dz, 5.000000e-01
  store float %i.ea, ptr %i.f, align 16
  %.not19.i = icmp slt i32 %i.b, 2
  br i1 %.not19.i, label %cheby.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit119
  %i.eb = zext nneg i32 %i.b to i64               ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %i.f, i64 %i.ec
  %scevgep250 = getelementptr i8, ptr %i.ed, i64 -4
  %3 = add nuw nsw i64 %i.eb, 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit249, %.preheader.preheader.i
  %indvars.iv22.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next23.i, %.loopexit249 ] ; 3 uses
  %i.ee = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i, i64 %i.eb)
  %i.ef = sub nsw i64 %3, %i.ee                   ; 3 uses
  %min.iters.check217.not = icmp ult i64 %i.ef, 2
  br i1 %min.iters.check217.not, label %scalar.ph216.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %.preheader.i
  %n.vec219 = and i64 %i.ef, -2                   ; 3 uses
  %i.eg = sub nsw i64 %i.eb, %n.vec219
  %load_initial251 = load <2 x float>, ptr %scevgep250, align 4
  %i.eh = shufflevector <2 x float> %load_initial251, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %store_forwarded252 = phi <2 x float> [ %i.eh, %vector.ph218 ], [ %i.em, %vector.body220 ] ; 3 uses
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next228, %vector.body220 ] ; 2 uses
  %i.ei = sub i64 %i.eb, %index221
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = getelementptr i8, ptr %i.ej, i64 -12    ; 2 uses
  %wide.load224 = load <2 x float>, ptr %i.el, align 4
  %reverse225 = shufflevector <2 x float> %wide.load224, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.em = fsub <2 x float> %reverse225, %store_forwarded252 ; 2 uses
  %reverse226 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse226, ptr %i.el, align 4
  %i.en = fadd <2 x float> %store_forwarded252, %store_forwarded252
  %reverse227 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse227, ptr %i.ek, align 4
  %index.next228 = add nuw i64 %index221, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next228, %n.vec219
  br i1 %i.eo, label %middle.block229, label %vector.body220, !llvm.loop !670

middle.block229:                                  ; preds = %vector.body220
  %cmp.n230 = icmp eq i64 %i.ef, %n.vec219
  br i1 %cmp.n230, label %.loopexit249, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %.preheader.i, %middle.block229
  %indvars.iv.i.ph = phi i64 [ %i.eb, %.preheader.i ], [ %i.eg, %middle.block229 ]
  br label %scalar.ph216

scalar.ph216:                                     ; preds = %scalar.ph216.preheader, %scalar.ph216
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph216 ], [ %indvars.iv.i.ph, %scalar.ph216.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.eq = load float, ptr %i.ep, align 4          ; 3 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 -8     ; 2 uses
  %i.es = load float, ptr %i.er, align 4
  %i.et = fsub float %i.es, %i.eq
  store float %i.et, ptr %i.er, align 4
  %i.eu = fadd float %i.eq, %i.eq
  store float %i.eu, ptr %i.ep, align 4
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not17.not.i = icmp sgt i64 %indvars.iv.i, %indvars.iv22.i
  br i1 %.not17.not.i, label %scalar.ph216, label %.loopexit249, !llvm.loop !671

.loopexit249:                                     ; preds = %scalar.ph216, %middle.block229
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next23.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cheby.exit, label %.preheader.i, !llvm.loop !672

cheby.exit:                                       ; preds = %.loopexit249, %.loopexit119
  %i.ev = load float, ptr %i.g, align 16
  %i.ew = fmul float %i.ev, 5.000000e-01
  store float %i.ew, ptr %i.g, align 16
  %.not19.i107 = icmp slt i32 %i.j, 2
  br i1 %.not19.i107, label %cheby.exit117, label %.preheader.preheader.i108

.preheader.preheader.i108:                        ; preds = %cheby.exit
  %i.ex = zext nneg i32 %i.j to i64               ; 6 uses
  %i.ey = add nuw nsw i32 %i.j, 1
  %wide.trip.count.i109 = zext nneg i32 %i.ey to i64
  %i.ez = shl nuw nsw i64 %i.ex, 2
  %i.fa = getelementptr i8, ptr %i.g, i64 %i.ez
  %scevgep = getelementptr i8, ptr %i.fa, i64 -4
  %4 = add nuw nsw i64 %i.ex, 1
  br label %.preheader.i110

.preheader.i110:                                  ; preds = %.loopexit248, %.preheader.preheader.i108
  %indvars.iv22.i111 = phi i64 [ 2, %.preheader.preheader.i108 ], [ %indvars.iv.next23.i115, %.loopexit248 ] ; 3 uses
  %i.fb = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i111, i64 %i.ex)
  %i.fc = sub nsw i64 %4, %i.fb                   ; 3 uses
  %min.iters.check233.not = icmp ult i64 %i.fc, 2
  br i1 %min.iters.check233.not, label %scalar.ph232.preheader, label %vector.ph234

vector.ph234:                                     ; preds = %.preheader.i110
  %n.vec235 = and i64 %i.fc, -2                   ; 3 uses
  %i.fd = sub nsw i64 %i.ex, %n.vec235
  %load_initial = load <2 x float>, ptr %scevgep, align 4
  %i.fe = shufflevector <2 x float> %load_initial, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %store_forwarded = phi <2 x float> [ %i.fe, %vector.ph234 ], [ %i.fj, %vector.body236 ] ; 3 uses
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next244, %vector.body236 ] ; 2 uses
  %i.ff = sub i64 %i.ex, %index237
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fi = getelementptr i8, ptr %i.fg, i64 -12    ; 2 uses
  %wide.load240 = load <2 x float>, ptr %i.fi, align 4
  %reverse241 = shufflevector <2 x float> %wide.load240, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = fsub <2 x float> %reverse241, %store_forwarded ; 2 uses
  %reverse242 = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse242, ptr %i.fi, align 4
  %i.fk = fadd <2 x float> %store_forwarded, %store_forwarded
  %reverse243 = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse243, ptr %i.fh, align 4
  %index.next244 = add nuw i64 %index237, 2       ; 2 uses
  %i.fl = icmp eq i64 %index.next244, %n.vec235
  br i1 %i.fl, label %middle.block245, label %vector.body236, !llvm.loop !673

middle.block245:                                  ; preds = %vector.body236
  %cmp.n246 = icmp eq i64 %i.fc, %n.vec235
  br i1 %cmp.n246, label %.loopexit248, label %scalar.ph232.preheader

scalar.ph232.preheader:                           ; preds = %.preheader.i110, %middle.block245
  %indvars.iv.i112.ph = phi i64 [ %i.ex, %.preheader.i110 ], [ %i.fd, %middle.block245 ]
  br label %scalar.ph232

scalar.ph232:                                     ; preds = %scalar.ph232.preheader, %scalar.ph232
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %scalar.ph232 ], [ %indvars.iv.i112.ph, %scalar.ph232.preheader ] ; 3 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i112 ; 3 uses
  %i.fn = load float, ptr %i.fm, align 4          ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fm, i64 -8     ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4
  %i.fq = fsub float %i.fp, %i.fn
  store float %i.fq, ptr %i.fo, align 4
  %i.fr = fadd float %i.fn, %i.fn
  store float %i.fr, ptr %i.fm, align 4
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i112, -1
  %.not17.not.i114 = icmp sgt i64 %indvars.iv.i112, %indvars.iv22.i111
  br i1 %.not17.not.i114, label %scalar.ph232, label %.loopexit248, !llvm.loop !674

.loopexit248:                                     ; preds = %scalar.ph232, %middle.block245
  %indvars.iv.next23.i115 = add nuw nsw i64 %indvars.iv22.i111, 1 ; 2 uses
  %exitcond.not.i116 = icmp eq i64 %indvars.iv.next23.i115, %wide.trip.count.i109
  br i1 %exitcond.not.i116, label %cheby.exit117, label %.preheader.i110, !llvm.loop !672

cheby.exit117:                                    ; preds = %.loopexit248, %cheby.exit
  %i.fs = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  %.not105 = icmp eq i32 %i.fs, 0
  br i1 %.not105, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %cheby.exit117
  %i.ft = call fastcc i32 @Laguerre_With_Deflation(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  %.not106 = icmp eq i32 %i.ft, 0
  br i1 %.not106, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call fastcc void @Newton_Raphson(ptr noundef %i.f, i32 noundef %i.b, ptr noundef %i.h)
  call fastcc void @Newton_Raphson(ptr noundef %i.g, i32 noundef %i.j, ptr noundef %i.i)
  call void @qsort(ptr noundef nonnull %i.h, i64 noundef %i.k, i64 noundef 4, ptr noundef nonnull @comp) #62
  call void @qsort(ptr noundef nonnull %i.i, i64 noundef %i.an, i64 noundef 4, ptr noundef nonnull @comp) #62
  %i.fu = icmp sgt i32 %i.b, 0
  br i1 %i.fu, label %.lr.ph141.preheader, label %.preheader

.lr.ph141.preheader:                              ; preds = %bb.c
  %wide.trip.count169 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter273 = and i64 %wide.trip.count169, 1
  %i.fv = icmp eq i32 %i.b, 1
  br i1 %i.fv, label %.lr.ph141.epil.preheader, label %.lr.ph141.preheader.new

.lr.ph141.preheader.new:                          ; preds = %.lr.ph141.preheader
  %unroll_iter277 = and i64 %wide.trip.count169, 2147483646
  br label %.lr.ph141

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph141
  %lcmp.mod275.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod275.not, label %.preheader, label %.lr.ph141.epil.preheader

.lr.ph141.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph141.preheader
  %indvars.iv166.epil.init = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next167.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod276 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod276)
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166.epil.init
  %i.fx = load float, ptr %i.fw, align 4
  %i.fy = fpext float %i.fx to double
  %i.fz = call double @acos(double noundef %i.fy) #62
  %i.ga = fptrunc double %i.fz to float
  %.idx.epil = shl nuw nsw i64 %indvars.iv166.epil.init, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.epil
  store float %i.ga, ptr %i.gb, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph141.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.gc = icmp sgt i32 %i.j, 0
  br i1 %i.gc, label %.lr.ph143.preheader, label %.loopexit

.lr.ph143.preheader:                              ; preds = %.preheader
  %wide.trip.count174 = zext nneg i32 %i.j to i64 ; 2 uses
  %xtraiter279 = and i64 %wide.trip.count174, 1
  %i.gd = icmp eq i32 %i.j, 1
  br i1 %i.gd, label %.lr.ph143.epil.preheader, label %.lr.ph143.preheader.new

.lr.ph143.preheader.new:                          ; preds = %.lr.ph143.preheader
  %unroll_iter283 = and i64 %wide.trip.count174, 2147483646
  br label %.lr.ph143

.lr.ph141:                                        ; preds = %.lr.ph141, %.lr.ph141.preheader.new
  %indvars.iv166 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %indvars.iv.next167.1, %.lr.ph141 ] ; 4 uses
  %niter278 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %niter278.next.1, %.lr.ph141 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv166
  %i.gf = load float, ptr %i.ge, align 8
  %i.gg = fpext float %i.gf to double
  %i.gh = call double @acos(double noundef %i.gg) #62
  %i.gi = fptrunc double %i.gh to float
  %.idx = shl nuw nsw i64 %indvars.iv166, 3
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  store float %i.gi, ptr %i.gj, align 4
  %indvars.iv.next167 = or disjoint i64 %indvars.iv166, 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next167
  %i.gl = load float, ptr %i.gk, align 4
  %i.gm = fpext float %i.gl to double
  %i.gn = call double @acos(double noundef %i.gm) #62
  %i.go = fptrunc double %i.gn to float
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next167, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.1
  store float %i.go, ptr %i.gp, align 4
  %indvars.iv.next167.1 = add nuw nsw i64 %indvars.iv166, 2 ; 2 uses
  %niter278.next.1 = add i64 %niter278, 2         ; 2 uses
  %niter278.ncmp.1 = icmp eq i64 %niter278.next.1, %unroll_iter277
  br i1 %niter278.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph141, !llvm.loop !675

.lr.ph143:                                        ; preds = %.lr.ph143, %.lr.ph143.preheader.new
  %indvars.iv171 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %indvars.iv.next172.1, %.lr.ph143 ] ; 4 uses
  %niter284 = phi i64 [ 0, %.lr.ph143.preheader.new ], [ %niter284.next.1, %.lr.ph143 ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171
  %i.gr = load float, ptr %i.gq, align 8
  %i.gs = fpext float %i.gr to double
  %i.gt = call double @acos(double noundef %i.gs) #62
  %i.gu = fptrunc double %i.gt to float
  %.idx177 = shl nuw nsw i64 %indvars.iv171, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store float %i.gu, ptr %i.gw, align 4
  %indvars.iv.next172 = or disjoint i64 %indvars.iv171, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next172
  %i.gy = load float, ptr %i.gx, align 4
  %i.gz = fpext float %i.gy to double
  %i.ha = call double @acos(double noundef %i.gz) #62
  %i.hb = fptrunc double %i.ha to float
  %.idx177.1 = shl nuw nsw i64 %indvars.iv.next172, 3
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.hb, ptr %i.hd, align 4
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %niter284.next.1 = add i64 %niter284, 2         ; 2 uses
  %niter284.ncmp.1 = icmp eq i64 %niter284.next.1, %unroll_iter283
  br i1 %niter284.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph143, !llvm.loop !676

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph143
  %lcmp.mod281.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod281.not, label %.loopexit, label %.lr.ph143.epil.preheader

.lr.ph143.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph143.preheader
  %indvars.iv171.epil.init = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next172.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171.epil.init
  %i.hf = load float, ptr %i.he, align 4
  %i.hg = fpext float %i.hf to double
  %i.hh = call double @acos(double noundef %i.hg) #62
  %i.hi = fptrunc double %i.hh to float
  %.idx177.epil = shl nuw nsw i64 %indvars.iv171.epil.init, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.epil
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store float %i.hi, ptr %i.hk, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %cheby.exit117, %bb.b
  %.096 = phi i32 [ -1, %cheby.exit117 ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph143.epil.preheader ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 -1, 1) i32 @Laguerre_With_Deflation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #56 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.not101 = icmp slt i32 %1, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load142 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load142 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !677

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader97, label %.lr.ph.preheader150

end_hunk_2
