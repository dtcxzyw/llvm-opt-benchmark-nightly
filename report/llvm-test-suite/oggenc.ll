inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@res_push:bb.a
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
  %i.cb = add i64 %i.ca, %.080.lcssa              ; 7 uses
  %i.cc = load i32, ptr %i.c, align 4             ; 2 uses
  %i.cd = zext i32 %i.cc to i64
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge99
  %i.cf = icmp samesign ult i64 %i.cb, %i.e
  br i1 %i.cf, label %.lr.ph105.preheader, label %._crit_edge106

.lr.ph105.preheader:                              ; preds = %bb.e
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb ; 3 uses
  %9 = ptrtoaddr ptr %1 to i64                    ; 3 uses
  %i.ch = shl i64 %i.cb, 2
  %i.ci = add i64 %i.ch, %9
  %i.cj = add i64 %i.ci, 4
  %i.ck = shl nuw nsw i64 %i.e, 2
  %i.cl = add i64 %i.ck, %9
  %i.cm = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.cl)
  %i.cn = shl i64 %i.cb, 2
  %i.co = add i64 %i.cn, %9
  %i.cp = xor i64 %i.co, -1
  %i.cq = add i64 %i.cm, %i.cp                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 60
  %i.ct = shl i64 %i.cb, 2
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph105.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 3 uses
  %i.cu = shl i64 %n.vec, 2                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cg, i64 %i.cu
  %i.cw = getelementptr i8, ptr %1, i64 %i.cu     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cg, i64 %i.cx ; 2 uses
  %next.gep143 = getelementptr i8, ptr %1, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load144 = load <4 x float>, ptr %i.cy, align 4
  %i.cz = getelementptr i8, ptr %next.gep143, i64 16
  store <4 x float> %wide.load, ptr %next.gep143, align 4
  store <4 x float> %wide.load144, ptr %i.cz, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %._crit_edge106, label %.lr.ph105.preheader146

.lr.ph105.preheader146:                           ; preds = %.lr.ph105.preheader, %middle.block
  %.074103.ph = phi ptr [ %i.cg, %.lr.ph105.preheader ], [ %i.cv, %middle.block ]
  %.077102.ph = phi ptr [ %1, %.lr.ph105.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph105.preheader146, %.lr.ph105
  %.074103 = phi ptr [ %i.db, %.lr.ph105 ], [ %.074103.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %.077102 = phi ptr [ %i.dd, %.lr.ph105 ], [ %.077102.ph, %.lr.ph105.preheader146 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.074103, i64 4 ; 2 uses
  %i.dc = load float, ptr %.074103, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.077102, i64 4 ; 2 uses
  store float %i.dc, ptr %.077102, align 4
  %i.de = icmp ult ptr %i.db, %i.f
  br i1 %i.de, label %.lr.ph105, label %._crit_edge106, !llvm.loop !140

._crit_edge106:                                   ; preds = %.lr.ph105, %middle.block, %bb.e
  %.077.lcssa = phi ptr [ %1, %bb.e ], [ %i.cw, %middle.block ], [ %i.dd, %.lr.ph105 ]
  %i.df = mul nsw i64 %i.cb, %i.v
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge99
  %i.dg = mul i32 %i.cc, %7
  %i.dh = zext i32 %i.dg to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge106
  %.178 = phi ptr [ %.077.lcssa, %._crit_edge106 ], [ %1, %bb.f ] ; 2 uses
  %.pn86 = phi i64 [ %i.df, %._crit_edge106 ], [ %i.dh, %bb.f ]
  %.pn = sub nsw i64 0, %.pn86
  %.175 = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %.pn ; 2 uses
  %i.di = icmp ult ptr %.175, %i.x
  br i1 %i.di, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.g, %.lr.ph111
  %.276109 = phi ptr [ %i.dl, %.lr.ph111 ], [ %.175, %bb.g ] ; 2 uses
  %.279108 = phi ptr [ %i.dk, %.lr.ph111 ], [ %.178, %bb.g ] ; 2 uses
  %i.dj = load float, ptr %.276109, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.279108, i64 4 ; 2 uses
  store float %i.dj, ptr %.279108, align 4
  %i.dl = getelementptr inbounds [4 x i8], ptr %.276109, i64 %i.v ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %i.x
  br i1 %i.dm, label %.lr.ph111, label %._crit_edge112, !llvm.loop !141

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.g
  %.279.lcssa = phi ptr [ %.178, %bb.g ], [ %i.dk, %.lr.ph111 ]
  %i.dn = ptrtoint ptr %.279.lcssa to i64
  %i.do = ptrtoint ptr %1 to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = lshr exact i64 %i.dp, 2
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %2, align 4
  %i.ds = ptrtoint ptr %.072.lcssa to i64
  %i.dt = ptrtoint ptr %4 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %i.dw = sext i32 %5 to i64
  %i.dx = sdiv i64 %i.dv, %i.dw
  %i.dy = trunc i64 %i.dx to i32
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge112
  %.0 = phi i32 [ %i.dy, %._crit_edge112 ], [ 0, %._crit_edge ]
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
end_hunk_0
begin_hunk_1_@mapping0_forward:bb.a
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.aax = getelementptr inbounds nuw i8, ptr %i.cl, i64 1028
  %i.aay = getelementptr inbounds nuw i8, ptr %i.f, i64 5316 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.f, i64 4944
  %i.aba = getelementptr inbounds nuw i8, ptr %i.cl, i64 1092
  %i.abb = getelementptr inbounds nuw i8, ptr %i.f, i64 2088
  %i.abc = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.abf = select i1 %.not.i420.not, i64 7, i64 0
  %i.abg = shl nsw i64 %.pre-phi546, 2            ; 2 uses
  %i.abh = add nsw i64 %i.abg, -1
  %diff.check743 = icmp ult i64 %i.abh, 15
  %i.abi = add nsw i64 %i.abg, -1
  %diff.check729 = icmp ult i64 %i.abi, 15
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %oggpack_writealign.exit
  %indvars.iv530 = phi i64 [ %i.abf, %.loopexit ], [ %indvars.iv.next531, %oggpack_writealign.exit ] ; 7 uses
  call void @oggpack_write(ptr noundef nonnull %i.aap, i64 noundef 0, i32 noundef 1)
  %i.abj = load i32, ptr %i.aaq, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aap, i64 noundef %i.cj, i32 noundef %i.abj)
  %i.abk = load i64, ptr %i.cf, align 8
  %.not363 = icmp eq i64 %i.abk, 0
  br i1 %.not363, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.abl = load i64, ptr %i.aar, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aap, i64 noundef %i.abl, i32 noundef 1)
  %i.abm = load i64, ptr %i.aas, align 8
  call void @oggpack_write(ptr noundef nonnull %i.aap, i64 noundef %i.abm, i32 noundef 1)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.abn = load i32, ptr %i.m, align 4
  %i.abo = icmp sgt i32 %i.abn, 0
  br i1 %i.abo, label %.lr.ph476, label %._crit_edge477

.lr.ph476:                                        ; preds = %bb.bb
  %invariant.gep = getelementptr [4 x i8], ptr %i.aay, i64 %indvars.iv530
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph476, %_vp_noise_normalize.exit
  %indvars.iv521 = phi i64 [ 0, %.lr.ph476 ], [ %indvars.iv.next522, %_vp_noise_normalize.exit ] ; 8 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv521
  %i.abq = load i32, ptr %i.abp, align 4
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv521
  %i.abs = load ptr, ptr %i.abr, align 8          ; 3 uses
  %i.abt = load ptr, ptr %0, align 8
  %i.abu = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %indvars.iv521
  %i.abv = load ptr, ptr %i.abu, align 8          ; 23 uses
  %i.abw = load i64, ptr %i.s, align 8            ; 3 uses
  %i.abx = add nsw i64 %i.abw, %.pre-phi552
  %i.aby = load i64, ptr %i.v, align 8
  %i.abz = icmp sgt i64 %i.abx, %i.aby
  %i.aca = load ptr, ptr %i.y, align 8            ; 3 uses
  br i1 %i.abz, label %bb.bd, label %_vorbis_block_alloc.exit426

bb.bd:                                            ; preds = %bb.bc
  %.not.i425 = icmp eq ptr %i.aca, null
  br i1 %.not.i425, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.acb = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #69 ; 3 uses
  %i.acc = load i64, ptr %i.aau, align 8
  %i.acd = add nsw i64 %i.acc, %i.abw
  store i64 %i.acd, ptr %i.aau, align 8
  %i.ace = load ptr, ptr %i.aav, align 8
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  store ptr %i.ace, ptr %i.acf, align 8
  store ptr %i.aca, ptr %i.acb, align 8
  store ptr %i.acb, ptr %i.aav, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i64 %.pre-phi552, ptr %i.v, align 8
  %i.acg = call noalias ptr @malloc(i64 noundef %.pre-phi552) #69 ; 2 uses
  store ptr %i.acg, ptr %i.y, align 8
  br label %_vorbis_block_alloc.exit426

_vorbis_block_alloc.exit426:                      ; preds = %bb.bc, %bb.bf
  %i.ach = phi i64 [ 0, %bb.bf ], [ %i.abw, %bb.bc ] ; 2 uses
  %i.aci = phi ptr [ %i.acg, %bb.bf ], [ %i.aca, %bb.bc ]
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 %i.ach ; 5 uses
  %i.ack = add nsw i64 %i.ach, %.pre-phi552
  store i64 %i.ack, ptr %i.s, align 8
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv521
  store ptr %i.acj, ptr %i.acl, align 8
  %i.acm = load ptr, ptr %i.aaw, align 8
  %i.acn = sext i32 %i.abq to i64
  %i.aco = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.acn
  %i.acp = load i32, ptr %i.aco, align 4
  %i.acq = sext i32 %i.acp to i64
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.acm, i64 %i.acq
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv521
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %indvars.iv530
  %i.acw = load ptr, ptr %i.acv, align 8
  %i.acx = call i32 @floor1_encode(ptr noundef nonnull %0, ptr noundef %i.acs, ptr noundef %i.acw, ptr noundef %i.acj)
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv521
  store i32 %i.acx, ptr %i.acy, align 4
  %i.acz = load i64, ptr %i.cf, align 8
  %gep = getelementptr [60 x i8], ptr %invariant.gep, i64 %i.acz
  %i.ada = load i32, ptr %gep, align 4
  %i.adb = load i32, ptr %i.cr, align 8           ; 3 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ada, i32 %i.adb) ; 6 uses
  %i.adc = icmp sgt i32 %spec.select.i, 0
  br i1 %i.adc, label %.lr.ph.preheader.i429, label %.preheader.i427

.lr.ph.preheader.i429:                            ; preds = %_vorbis_block_alloc.exit426
  %wide.trip.count.i430 = zext nneg i32 %spec.select.i to i64 ; 2 uses
  %xtraiter773.a = and i64 %wide.trip.count.i430, 1
  %i.add = icmp eq i32 %spec.select.i, 1
  br i1 %i.add, label %.lr.ph.i431.epil.preheader, label %.lr.ph.preheader.i429.new

.lr.ph.preheader.i429.new:                        ; preds = %.lr.ph.preheader.i429
  %unroll_iter = and i64 %wide.trip.count.i430, 2147483646
  br label %.lr.ph.i431

.preheader.i427.loopexit.unr-lcssa:               ; preds = %.lr.ph.i431
  %lcmp.mod774.not.a = icmp eq i64 %xtraiter773.a, 0
  br i1 %lcmp.mod774.not.a, label %.preheader.i427, label %.lr.ph.i431.epil.preheader

.lr.ph.i431.epil.preheader:                       ; preds = %.preheader.i427.loopexit.unr-lcssa, %.lr.ph.preheader.i429
  %indvars.iv.i432.epil.init = phi i64 [ 0, %.lr.ph.preheader.i429 ], [ %indvars.iv.next.i433.1, %.preheader.i427.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod775 = trunc i32 %spec.select.i to i1
  call void @llvm.assume(i1 %lcmp.mod775)
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.i432.epil.init
  %i.adf = load float, ptr %i.ade, align 4
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i432.epil.init
  %i.adh = load i32, ptr %i.adg, align 4
  %i.adi = sext i32 %i.adh to i64
  %i.adj = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.adi
  %i.adk = load float, ptr %i.adj, align 4
  %i.adl = fmul float %i.adf, %i.adk
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.i432.epil.init
  store float %i.adl, ptr %i.adm, align 4
  br label %.preheader.i427

.preheader.i427:                                  ; preds = %.lr.ph.i431.epil.preheader, %.preheader.i427.loopexit.unr-lcssa, %_vorbis_block_alloc.exit426
  %.017.lcssa.i = phi i32 [ 0, %_vorbis_block_alloc.exit426 ], [ %spec.select.i, %.preheader.i427.loopexit.unr-lcssa ], [ %spec.select.i, %.lr.ph.i431.epil.preheader ] ; 3 uses
  %i.adn = icmp slt i32 %.017.lcssa.i, %i.adb
  br i1 %i.adn, label %.lr.ph22.preheader.i, label %_vp_remove_floor.exit

.lr.ph22.preheader.i:                             ; preds = %.preheader.i427
  %i.ado = zext nneg i32 %.017.lcssa.i to i64
  %i.adp = shl nuw nsw i64 %i.ado, 2
  %scevgep.i = getelementptr i8, ptr %i.abv, i64 %i.adp
  %i.adq = xor i32 %.017.lcssa.i, -1
  %i.adr = add nsw i32 %i.adb, %i.adq
  %i.ads = zext i32 %i.adr to i64
  %i.adt = shl nuw nsw i64 %i.ads, 2
  %i.adu = add nuw nsw i64 %i.adt, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.adu, i1 false)
  br label %_vp_remove_floor.exit

.lr.ph.i431:                                      ; preds = %.lr.ph.i431, %.lr.ph.preheader.i429.new
  %indvars.iv.i432 = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %indvars.iv.next.i433.1, %.lr.ph.i431 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i429.new ], [ %niter.next.1, %.lr.ph.i431 ]
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.i432
  %i.adw = load float, ptr %i.adv, align 4
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.i432
  %i.ady = load i32, ptr %i.adx, align 4
  %i.adz = sext i32 %i.ady to i64
  %i.aea = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.adz
  %i.aeb = load float, ptr %i.aea, align 4
  %i.aec = fmul float %i.adw, %i.aeb
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.i432
  store float %i.aec, ptr %i.aed, align 4
  %indvars.iv.next.i433 = or disjoint i64 %indvars.iv.i432, 1 ; 3 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %indvars.iv.next.i433
  %i.aef = load float, ptr %i.aee, align 4
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %indvars.iv.next.i433
  %i.aeh = load i32, ptr %i.aeg, align 4
  %i.aei = sext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.aei
  %i.aek = load float, ptr %i.aej, align 4
  %i.ael = fmul float %i.aef, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.next.i433
  store float %i.ael, ptr %i.aem, align 4
  %indvars.iv.next.i433.1 = add nuw nsw i64 %indvars.iv.i432, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i427.loopexit.unr-lcssa, label %.lr.ph.i431, !llvm.loop !564

_vp_remove_floor.exit:                            ; preds = %.preheader.i427, %.lr.ph22.preheader.i
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %.pre-phi546 ; 19 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %indvars.iv521
  %i.aep = load ptr, ptr %i.aeo, align 8          ; 6 uses
  %i.aeq = load i32, ptr %i.cr, align 8           ; 6 uses
  %i.aer = load ptr, ptr %i.zv, align 8           ; 4 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 512
  %i.aet = load i32, ptr %i.aes, align 8          ; 4 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 508
  %i.aev = load i32, ptr %i.aeu, align 4
  %spec.select.i435 = call i32 @llvm.smin.i32(i32 %i.aev, i32 %i.aeq) ; 7 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aer, i64 500
  %i.aex = load i32, ptr %i.aew, align 4
  %.not.i436 = icmp eq i32 %i.aex, 0
  br i1 %.not.i436, label %.loopexit86.i, label %.preheader87.i

.preheader87.i:                                   ; preds = %_vp_remove_floor.exit
  %i.aey = icmp sgt i32 %spec.select.i435, 0
  br i1 %i.aey, label %.lr.ph.preheader.i438, label %.preheader85.i

.lr.ph.preheader.i438:                            ; preds = %.preheader87.i
  %wide.trip.count.i439 = zext nneg i32 %spec.select.i435 to i64 ; 5 uses
  %min.iters.check745 = icmp ult i32 %spec.select.i435, 4
  %or.cond758 = select i1 %min.iters.check745, i1 true, i1 %diff.check743
  br i1 %or.cond758, label %.lr.ph.i440.preheader, label %vector.ph746

vector.ph746:                                     ; preds = %.lr.ph.preheader.i438
  %n.vec748 = and i64 %wide.trip.count.i439, 2147483644 ; 3 uses
  br label %vector.body749

vector.body749:                                   ; preds = %vector.body749, %vector.ph746
  %index750 = phi i64 [ 0, %vector.ph746 ], [ %index.next752, %vector.body749 ] ; 3 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %index750
  %wide.load751 = load <4 x float>, ptr %i.aez, align 4
  %i.afa = call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load751)
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %index750
  store <4 x float> %i.afa, ptr %i.afb, align 4
  %index.next752 = add nuw i64 %index750, 4       ; 2 uses
  %i.afc = icmp eq i64 %index.next752, %n.vec748
  br i1 %i.afc, label %middle.block753, label %vector.body749, !llvm.loop !894

middle.block753:                                  ; preds = %vector.body749
  %cmp.n754 = icmp eq i64 %n.vec748, %wide.trip.count.i439
  br i1 %cmp.n754, label %.preheader85.i, label %.lr.ph.i440.preheader

.lr.ph.i440.preheader:                            ; preds = %.lr.ph.preheader.i438, %middle.block753
  %indvars.iv.i441.ph = phi i64 [ 0, %.lr.ph.preheader.i438 ], [ %n.vec748, %middle.block753 ] ; 3 uses
  %xtraiter776.a = and i64 %wide.trip.count.i439, 3 ; 2 uses
  %lcmp.mod777.not.a = icmp eq i64 %xtraiter776.a, 0
  br i1 %lcmp.mod777.not.a, label %.lr.ph.i440.prol.loopexit, label %.lr.ph.i440.prol

.lr.ph.i440.prol:                                 ; preds = %.lr.ph.i440.preheader, %.lr.ph.i440.prol
  %indvars.iv.i441.prol = phi i64 [ %indvars.iv.next.i442.prol, %.lr.ph.i440.prol ], [ %indvars.iv.i441.ph, %.lr.ph.i440.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i440.prol ], [ 0, %.lr.ph.i440.preheader ]
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.i441.prol
  %i.afe = load float, ptr %i.afd, align 4
  %i.aff = call float @llvm.rint.f32(float %i.afe)
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i441.prol
  store float %i.aff, ptr %i.afg, align 4
  %indvars.iv.next.i442.prol = add nuw nsw i64 %indvars.iv.i441.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter776.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i440.prol.loopexit, label %.lr.ph.i440.prol, !llvm.loop !895

.lr.ph.i440.prol.loopexit:                        ; preds = %.lr.ph.i440.prol, %.lr.ph.i440.preheader
  %indvars.iv.i441.unr = phi i64 [ %indvars.iv.i441.ph, %.lr.ph.i440.preheader ], [ %indvars.iv.next.i442.prol, %.lr.ph.i440.prol ]
  %i.afh = sub nsw i64 %indvars.iv.i441.ph, %wide.trip.count.i439
  %i.afi = icmp ugt i64 %i.afh, -4
  br i1 %i.afi, label %.preheader85.i, label %.lr.ph.i440

.preheader85.i:                                   ; preds = %.lr.ph.i440.prol.loopexit, %.lr.ph.i440, %middle.block753, %.preheader87.i
  %.076.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %spec.select.i435, %middle.block753 ], [ %spec.select.i435, %.lr.ph.i440 ], [ %spec.select.i435, %.lr.ph.i440.prol.loopexit ] ; 3 uses
  %i.afj = add nsw i32 %.076.lcssa.i, %i.aet      ; 3 uses
  %.not83102.i = icmp sgt i32 %i.afj, %i.aeq
  br i1 %.not83102.i, label %.loopexit86.i, label %.preheader84.lr.ph.i

.preheader84.lr.ph.i:                             ; preds = %.preheader85.i
  %i.afk = icmp sgt i32 %i.aet, 0
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aer, i64 520
  br i1 %i.afk, label %.preheader84.us.preheader.i, label %.preheader84.i

.preheader84.us.preheader.i:                      ; preds = %.preheader84.lr.ph.i
  %i.afm = zext nneg i32 %i.aet to i64            ; 6 uses
  %i.afn = zext nneg i32 %i.afj to i64            ; 2 uses
  %i.afo = sext i32 %i.aeq to i64
  %i.afp = add nsw i64 %i.afn, -1
  br label %.preheader84.us.i

.preheader84.us.i:                                ; preds = %.loopexit.us.i, %.preheader84.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.us.i ], [ 0, %.preheader84.us.preheader.i ] ; 2 uses
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.loopexit.us.i ], [ %i.afn, %.preheader84.us.preheader.i ] ; 5 uses
  %.177103.us.i = phi i32 [ %i.aiv, %.loopexit.us.i ], [ %.076.lcssa.i, %.preheader84.us.preheader.i ] ; 2 uses
  %i.afq = sext i32 %.177103.us.i to i64          ; 5 uses
  %i.afr = icmp sgt i64 %indvars.iv139.i, %i.afq
  br i1 %i.afr, label %.lr.ph91.us.i.preheader, label %.preheader.us.i

.lr.ph91.us.i.preheader:                          ; preds = %.preheader84.us.i
  %i.afs = mul i64 %indvar, %i.afm
  %i.aft = add i64 %i.afp, %i.afs
  %i.afu = sub i64 %indvars.iv139.i, %i.afq
  %i.afv = sub i64 %i.aft, %i.afq
  %xtraiter778 = and i64 %i.afu, 3                ; 2 uses
  %lcmp.mod779.not = icmp eq i64 %xtraiter778, 0
  br i1 %lcmp.mod779.not, label %.lr.ph91.us.i.prol.loopexit, label %.lr.ph91.us.i.prol

.lr.ph91.us.i.prol:                               ; preds = %.lr.ph91.us.i.preheader, %.lr.ph91.us.i.prol
  %indvars.iv126.i.prol = phi i64 [ %indvars.iv.next127.i.prol, %.lr.ph91.us.i.prol ], [ %i.afq, %.lr.ph91.us.i.preheader ] ; 2 uses
  %.090.us.i.prol = phi float [ %i.afz, %.lr.ph91.us.i.prol ], [ 0.000000e+00, %.lr.ph91.us.i.preheader ]
  %prol.iter780 = phi i64 [ %prol.iter780.next, %.lr.ph91.us.i.prol ], [ 0, %.lr.ph91.us.i.preheader ]
  %i.afw = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv126.i.prol
  %i.afx = load float, ptr %i.afw, align 4        ; 2 uses
  %i.afy = fmul float %i.afx, %i.afx
  %i.afz = fadd float %.090.us.i.prol, %i.afy     ; 3 uses
  %indvars.iv.next127.i.prol = add nsw i64 %indvars.iv126.i.prol, 1 ; 2 uses
  %prol.iter780.next = add i64 %prol.iter780, 1   ; 2 uses
  %prol.iter780.cmp.not = icmp eq i64 %prol.iter780.next, %xtraiter778
  br i1 %prol.iter780.cmp.not, label %.lr.ph91.us.i.prol.loopexit, label %.lr.ph91.us.i.prol, !llvm.loop !896

.lr.ph91.us.i.prol.loopexit:                      ; preds = %.lr.ph91.us.i.prol, %.lr.ph91.us.i.preheader
  %.lcssa763.unr = phi float [ poison, %.lr.ph91.us.i.preheader ], [ %i.afz, %.lr.ph91.us.i.prol ]
  %indvars.iv126.i.unr = phi i64 [ %i.afq, %.lr.ph91.us.i.preheader ], [ %indvars.iv.next127.i.prol, %.lr.ph91.us.i.prol ]
  %.090.us.i.unr = phi float [ 0.000000e+00, %.lr.ph91.us.i.preheader ], [ %i.afz, %.lr.ph91.us.i.prol ]
  %i.aga = icmp ult i64 %i.afv, 3
  br i1 %i.aga, label %.preheader.us.i, label %.lr.ph91.us.i

bb.bg:                                            ; preds = %.preheader.us.i, %5
  %indvars.iv129.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next130.i, %5 ] ; 6 uses
  %.194.us.i = phi float [ %.0.lcssa.us.i, %.preheader.us.i ], [ %.2.us.i, %5 ] ; 3 uses
  %i.agb = trunc nuw nsw i64 %indvars.iv129.i to i32
  %i.agc = add i32 %i.aiw, %i.agb
  %i.agd = sext i32 %i.agc to i64
  %i.age = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.agd
  %i.agf = load i32, ptr %i.age, align 4
  %i.agg = sext i32 %i.agf to i64                 ; 3 uses
  %i.agh = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.agg ; 2 uses
  %i.agi = load float, ptr %i.agh, align 4        ; 4 uses
  %i.agj = fmul float %i.agi, %i.agi
  %i.agk = fcmp ult float %i.agj, 2.500000e-01
  br i1 %i.agk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.agl = call float @llvm.rint.f32(float %i.agi)
  %i.agm = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.agg
  store float %i.agl, ptr %i.agm, align 4
  %i.agn = load float, ptr %i.agh, align 4        ; 2 uses
  %i.ago = fmul float %i.agn, %i.agn
  %i.agp = fsub float %.194.us.i, %i.ago
  br label %5

bb.bi:                                            ; preds = %bb.bg
  %i.agq = fpext float %.194.us.i to double
  %i.agr = load double, ptr %i.afl, align 8
  %i.ags = fcmp ogt double %i.agr, %i.agq
  br i1 %i.ags, label %.lr.ph101.us.i.preheader, label %1

.lr.ph101.us.i.preheader:                         ; preds = %bb.bi
  %i.agt = sub nsw i64 %i.afm, %indvars.iv129.i
  %xtraiter783 = and i64 %i.agt, 3                ; 2 uses
  %lcmp.mod784.not = icmp eq i64 %xtraiter783, 0
  br i1 %lcmp.mod784.not, label %.lr.ph101.us.i.prol.loopexit, label %.lr.ph101.us.i.prol

.lr.ph101.us.i.prol:                              ; preds = %.lr.ph101.us.i.preheader, %.lr.ph101.us.i.prol
  %indvars.iv134.i.prol = phi i64 [ %indvars.iv.next135.i.prol, %.lr.ph101.us.i.prol ], [ %indvars.iv129.i, %.lr.ph101.us.i.preheader ] ; 2 uses
  %prol.iter785 = phi i64 [ %prol.iter785.next, %.lr.ph101.us.i.prol ], [ 0, %.lr.ph101.us.i.preheader ]
  %i.agu = trunc nsw i64 %indvars.iv134.i.prol to i32
  %i.agv = add i32 %i.aiw, %i.agu
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.agz
  store float 0.000000e+00, ptr %i.aha, align 4
  %indvars.iv.next135.i.prol = add nuw nsw i64 %indvars.iv134.i.prol, 1 ; 2 uses
  %prol.iter785.next = add i64 %prol.iter785, 1   ; 2 uses
  %prol.iter785.cmp.not = icmp eq i64 %prol.iter785.next, %xtraiter783
  br i1 %prol.iter785.cmp.not, label %.lr.ph101.us.i.prol.loopexit, label %.lr.ph101.us.i.prol, !llvm.loop !897

.lr.ph101.us.i.prol.loopexit:                     ; preds = %.lr.ph101.us.i.prol, %.lr.ph101.us.i.preheader
  %indvars.iv134.i.unr = phi i64 [ %indvars.iv129.i, %.lr.ph101.us.i.preheader ], [ %indvars.iv.next135.i.prol, %.lr.ph101.us.i.prol ]
  %i.ahb = sub nsw i64 %indvars.iv129.i, %i.afm
  %i.ahc = icmp ugt i64 %i.ahb, -4
  br i1 %i.ahc, label %.loopexit.us.i, label %.lr.ph101.us.i.preheader.new

.lr.ph101.us.i.preheader.new:                     ; preds = %.lr.ph101.us.i.prol.loopexit
  %invariant.op = add i32 1, %i.aiw
  %invariant.op797 = add i32 2, %i.aiw
  %invariant.op799 = add i32 3, %i.aiw
  br label %.lr.ph101.us.i

1:                                                ; preds = %bb.bi
  %2 = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.agi)
  %3 = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.agg
  store float %2, ptr %3, align 4
  %4 = fadd float %.194.us.i, -1.000000e+00
  br label %5

5:                                                ; preds = %1, %bb.bh
  %.2.us.i = phi float [ %i.agp, %bb.bh ], [ %4, %1 ]
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %exitcond133.not.i = icmp eq i64 %indvars.iv.next130.i, %i.afm
  br i1 %exitcond133.not.i, label %.loopexit.us.i, label %bb.bg, !llvm.loop !601

.lr.ph101.us.i:                                   ; preds = %.lr.ph101.us.i, %.lr.ph101.us.i.preheader.new
  %indvars.iv134.i = phi i64 [ %indvars.iv134.i.unr, %.lr.ph101.us.i.preheader.new ], [ %indvars.iv.next135.i.3, %.lr.ph101.us.i ] ; 5 uses
  %i.ahd = trunc nsw i64 %indvars.iv134.i to i32
  %i.ahe = add i32 %i.aiw, %i.ahd
  %i.ahf = sext i32 %i.ahe to i64
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.ahf
  %i.ahh = load i32, ptr %i.ahg, align 4
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.ahi
  store float 0.000000e+00, ptr %i.ahj, align 4
  %i.ahk = trunc i64 %indvars.iv134.i to i32
  %.reass = add i32 %i.ahk, %invariant.op
  %i.ahl = sext i32 %.reass to i64
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.ahl
  %i.ahn = load i32, ptr %i.ahm, align 4
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aho
  store float 0.000000e+00, ptr %i.ahp, align 4
  %i.ahq = trunc i64 %indvars.iv134.i to i32
  %.reass798 = add i32 %i.ahq, %invariant.op797
  %i.ahr = sext i32 %.reass798 to i64
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4
  %i.ahu = sext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.ahu
  store float 0.000000e+00, ptr %i.ahv, align 4
  %i.ahw = trunc i64 %indvars.iv134.i to i32
  %.reass800 = add i32 %i.ahw, %invariant.op799
  %i.ahx = sext i32 %.reass800 to i64
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.aep, i64 %i.ahx
  %i.ahz = load i32, ptr %i.ahy, align 4
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.aia
  store float 0.000000e+00, ptr %i.aib, align 4
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next135.i.3, %i.afm
  br i1 %exitcond138.not.i.3, label %.loopexit.us.i, label %.lr.ph101.us.i, !llvm.loop !603

.lr.ph91.us.i:                                    ; preds = %.lr.ph91.us.i.prol.loopexit, %.lr.ph91.us.i
  %indvars.iv126.i = phi i64 [ %indvars.iv.next127.i.3, %.lr.ph91.us.i ], [ %indvars.iv126.i.unr, %.lr.ph91.us.i.prol.loopexit ] ; 5 uses
  %.090.us.i = phi float [ %i.aiu, %.lr.ph91.us.i ], [ %.090.us.i.unr, %.lr.ph91.us.i.prol.loopexit ]
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv126.i
  %i.aid = load float, ptr %i.aic, align 4        ; 2 uses
  %i.aie = fmul float %i.aid, %i.aid
  %i.aif = fadd float %.090.us.i, %i.aie
  %i.aig = getelementptr [4 x i8], ptr %i.abv, i64 %indvars.iv126.i
  %i.aih = getelementptr i8, ptr %i.aig, i64 4
  %i.aii = load float, ptr %i.aih, align 4        ; 2 uses
  %i.aij = fmul float %i.aii, %i.aii
  %i.aik = fadd float %i.aif, %i.aij
  %i.ail = getelementptr [4 x i8], ptr %i.abv, i64 %indvars.iv126.i
  %i.aim = getelementptr i8, ptr %i.ail, i64 8
  %i.ain = load float, ptr %i.aim, align 4        ; 2 uses
  %i.aio = fmul float %i.ain, %i.ain
  %i.aip = fadd float %i.aik, %i.aio
  %i.aiq = getelementptr [4 x i8], ptr %i.abv, i64 %indvars.iv126.i
  %i.air = getelementptr i8, ptr %i.aiq, i64 12
  %i.ais = load float, ptr %i.air, align 4        ; 2 uses
  %i.ait = fmul float %i.ais, %i.ais
  %i.aiu = fadd float %i.aip, %i.ait              ; 2 uses
  %indvars.iv.next127.i.3 = add nsw i64 %indvars.iv126.i, 4 ; 2 uses
  %exitcond520.not.3 = icmp eq i64 %indvars.iv.next127.i.3, %indvars.iv139.i
  br i1 %exitcond520.not.3, label %.preheader.us.i, label %.lr.ph91.us.i, !llvm.loop !604

.loopexit.us.i:                                   ; preds = %5, %.lr.ph101.us.i.prol.loopexit, %.lr.ph101.us.i
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, %i.afm ; 2 uses
  %.not83.us.i = icmp sgt i64 %indvars.iv.next140.i, %i.afo
  %i.aiv = trunc nuw nsw i64 %indvars.iv139.i to i32 ; 2 uses
  %indvar.next = add i64 %indvar, 1
  br i1 %.not83.us.i, label %.loopexit86.i, label %.preheader84.us.i, !llvm.loop !605

.preheader.us.i:                                  ; preds = %.lr.ph91.us.i.prol.loopexit, %.lr.ph91.us.i, %.preheader84.us.i
  %.0.lcssa.us.i = phi float [ 0.000000e+00, %.preheader84.us.i ], [ %.lcssa763.unr, %.lr.ph91.us.i.prol.loopexit ], [ %i.aiu, %.lr.ph91.us.i ]
  %i.aiw = sub i32 %.177103.us.i, %spec.select.i435 ; 6 uses
  br label %bb.bg

.lr.ph.i440:                                      ; preds = %.lr.ph.i440.prol.loopexit, %.lr.ph.i440
  %indvars.iv.i441 = phi i64 [ %indvars.iv.next.i442.3, %.lr.ph.i440 ], [ %indvars.iv.i441.unr, %.lr.ph.i440.prol.loopexit ] ; 6 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.i441
  %i.aiy = load float, ptr %i.aix, align 4
  %i.aiz = call float @llvm.rint.f32(float %i.aiy)
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.i441
  store float %i.aiz, ptr %i.aja, align 4
  %indvars.iv.next.i442 = add nuw nsw i64 %indvars.iv.i441, 1 ; 2 uses
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.next.i442
  %i.ajc = load float, ptr %i.ajb, align 4
  %i.ajd = call float @llvm.rint.f32(float %i.ajc)
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i442
  store float %i.ajd, ptr %i.aje, align 4
  %indvars.iv.next.i442.1 = add nuw nsw i64 %indvars.iv.i441, 2 ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.next.i442.1
  %i.ajg = load float, ptr %i.ajf, align 4
  %i.ajh = call float @llvm.rint.f32(float %i.ajg)
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i442.1
  store float %i.ajh, ptr %i.aji, align 4
  %indvars.iv.next.i442.2 = add nuw nsw i64 %indvars.iv.i441, 3 ; 2 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.abv, i64 %indvars.iv.next.i442.2
  %i.ajk = load float, ptr %i.ajj, align 4
  %i.ajl = call float @llvm.rint.f32(float %i.ajk)
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next.i442.2
  store float %i.ajl, ptr %i.ajm, align 4
  %indvars.iv.next.i442.3 = add nuw nsw i64 %indvars.iv.i441, 4 ; 2 uses
  %exitcond.not.i443.3 = icmp eq i64 %indvars.iv.next.i442.3, %wide.trip.count.i439
  br i1 %exitcond.not.i443.3, label %.preheader85.i, label %.lr.ph.i440, !llvm.loop !898

.preheader84.i:                                   ; preds = %.preheader84.lr.ph.i, %.preheader84.i
  %i.ajn = phi i32 [ %i.ajo, %.preheader84.i ], [ %i.afj, %.preheader84.lr.ph.i ] ; 2 uses
  %i.ajo = add nsw i32 %i.ajn, %i.aet             ; 2 uses
  %.not83.i = icmp sgt i32 %i.ajo, %i.aeq
  br i1 %.not83.i, label %.loopexit86.i, label %.preheader84.i, !llvm.loop !605

.loopexit86.i:                                    ; preds = %.preheader84.i, %.loopexit.us.i, %.preheader85.i, %_vp_remove_floor.exit
  %.278.i = phi i32 [ 0, %_vp_remove_floor.exit ], [ %.076.lcssa.i, %.preheader85.i ], [ %i.aiv, %.loopexit.us.i ], [ %i.ajn, %.preheader84.i ] ; 2 uses
  %i.ajp = icmp slt i32 %.278.i, %i.aeq
  br i1 %i.ajp, label %.lr.ph120.preheader.i, label %_vp_noise_normalize.exit

.lr.ph120.preheader.i:                            ; preds = %.loopexit86.i
  %i.ajq = sext i32 %.278.i to i64                ; 4 uses
  %wide.trip.count145.i = sext i32 %i.aeq to i64  ; 4 uses
  %i.ajr = sub nsw i64 %wide.trip.count145.i, %i.ajq ; 3 uses
  %min.iters.check731 = icmp ult i64 %i.ajr, 4
  %or.cond759 = select i1 %min.iters.check731, i1 true, i1 %diff.check729
  br i1 %or.cond759, label %.lr.ph120.i.preheader, label %vector.ph732

vector.ph732:                                     ; preds = %.lr.ph120.preheader.i
  %n.vec734 = and i64 %i.ajr, -4                  ; 3 uses
  %i.ajs = add nsw i64 %n.vec734, %i.ajq
  br label %vector.body735

vector.body735:                                   ; preds = %vector.body735, %vector.ph732
  %index736 = phi i64 [ 0, %vector.ph732 ], [ %index.next738, %vector.body735 ] ; 2 uses
  %i.ajt = add i64 %index736, %i.ajq              ; 2 uses
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.ajt
  %wide.load737 = load <4 x float>, ptr %i.aju, align 4
  %i.ajv = call <4 x float> @llvm.rint.v4f32(<4 x float> %wide.load737)
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.ajt
  store <4 x float> %i.ajv, ptr %i.ajw, align 4
  %index.next738 = add nuw i64 %index736, 4       ; 2 uses
  %i.ajx = icmp eq i64 %index.next738, %n.vec734
  br i1 %i.ajx, label %middle.block739, label %vector.body735, !llvm.loop !899

middle.block739:                                  ; preds = %vector.body735
  %cmp.n740 = icmp eq i64 %i.ajr, %n.vec734
  br i1 %cmp.n740, label %_vp_noise_normalize.exit, label %.lr.ph120.i.preheader

.lr.ph120.i.preheader:                            ; preds = %.lr.ph120.preheader.i, %middle.block739
  %indvars.iv142.i.ph = phi i64 [ %i.ajq, %.lr.ph120.preheader.i ], [ %i.ajs, %middle.block739 ] ; 4 uses
  %i.ajy = sub nsw i64 %wide.trip.count145.i, %indvars.iv142.i.ph
  %xtraiter786 = and i64 %i.ajy, 3                ; 2 uses
  %lcmp.mod787.not = icmp eq i64 %xtraiter786, 0
  br i1 %lcmp.mod787.not, label %.lr.ph120.i.prol.loopexit, label %.lr.ph120.i.prol

.lr.ph120.i.prol:                                 ; preds = %.lr.ph120.i.preheader, %.lr.ph120.i.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.lr.ph120.i.prol ], [ %indvars.iv142.i.ph, %.lr.ph120.i.preheader ] ; 3 uses
  %prol.iter788 = phi i64 [ %prol.iter788.next, %.lr.ph120.i.prol ], [ 0, %.lr.ph120.i.preheader ]
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv142.i.prol
  %i.aka = load float, ptr %i.ajz, align 4
  %i.akb = call float @llvm.rint.f32(float %i.aka)
  %i.akc = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv142.i.prol
  store float %i.akb, ptr %i.akc, align 4
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter788.next = add i64 %prol.iter788, 1   ; 2 uses
  %prol.iter788.cmp.not = icmp eq i64 %prol.iter788.next, %xtraiter786
  br i1 %prol.iter788.cmp.not, label %.lr.ph120.i.prol.loopexit, label %.lr.ph120.i.prol, !llvm.loop !900

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol, %.lr.ph120.i.preheader
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %.lr.ph120.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph120.i.prol ]
  %i.akd = sub nsw i64 %indvars.iv142.i.ph, %wide.trip.count145.i
  %i.ake = icmp ugt i64 %i.akd, -4
  br i1 %i.ake, label %_vp_noise_normalize.exit, label %.lr.ph120.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %.lr.ph120.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph120.i ], [ %indvars.iv142.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %i.akf = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv142.i
  %i.akg = load float, ptr %i.akf, align 4
  %i.akh = call float @llvm.rint.f32(float %i.akg)
  %i.aki = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv142.i
  store float %i.akh, ptr %i.aki, align 4
  %indvars.iv.next143.i = add nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.akj = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv.next143.i
  %i.akk = load float, ptr %i.akj, align 4
  %i.akl = call float @llvm.rint.f32(float %i.akk)
  %i.akm = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv.next143.i
  store float %i.akl, ptr %i.akm, align 4
  %indvars.iv.next143.i.1 = add nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %i.akn = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv.next143.i.1
  %i.ako = load float, ptr %i.akn, align 4
  %i.akp = call float @llvm.rint.f32(float %i.ako)
  %i.akq = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv.next143.i.1
  store float %i.akp, ptr %i.akq, align 4
  %indvars.iv.next143.i.2 = add nsw i64 %indvars.iv142.i, 3 ; 2 uses
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %indvars.iv.next143.i.2
  %i.aks = load float, ptr %i.akr, align 4
  %i.akt = call float @llvm.rint.f32(float %i.aks)
  %i.aku = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %indvars.iv.next143.i.2
  store float %i.akt, ptr %i.aku, align 4
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count145.i
  br i1 %exitcond146.not.i.3, label %_vp_noise_normalize.exit, label %.lr.ph120.i, !llvm.loop !901

_vp_noise_normalize.exit:                         ; preds = %.lr.ph120.i.prol.loopexit, %.lr.ph120.i, %middle.block739, %.loopexit86.i
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1 ; 2 uses
  %i.akv = load i32, ptr %i.m, align 4
  %i.akw = sext i32 %i.akv to i64
  %i.akx = icmp slt i64 %indvars.iv.next522, %i.akw
  br i1 %i.akx, label %bb.bc, label %._crit_edge477, !llvm.loop !902

._crit_edge477:                                   ; preds = %_vp_noise_normalize.exit, %bb.bb
  %i.aky = load i32, ptr %i.zp, align 4
  %.not364 = icmp eq i32 %i.aky, 0
  br i1 %.not364, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge477
  %i.akz = load ptr, ptr %0, align 8
  %i.ala = load i64, ptr %i.cf, align 8
  %i.alb = getelementptr inbounds [60 x i8], ptr %i.aay, i64 %i.ala
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %indvars.iv530
  %i.ald = load i32, ptr %i.alc, align 4
  %i.ale = trunc nuw nsw i64 %indvars.iv530 to i32
  call void @_vp_couple(i32 noundef %i.ale, ptr noundef nonnull %i.aaz, ptr noundef %i.cr, ptr noundef nonnull %i.cl, ptr noundef %i.akz, ptr noundef %.0350, ptr noundef %.0351, ptr noundef %i.bd, ptr noundef nonnull %i.q, i32 noundef %i.ald)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge477
  %i.alf = load i32, ptr %i.cl, align 4
  %i.alg = icmp sgt i32 %i.alf, 0
  br i1 %i.alg, label %.lr.ph486, label %._crit_edge487

.lr.ph486:                                        ; preds = %bb.bk, %._crit_edge482
  %indvars.iv527 = phi i64 [ %indvars.iv.next528, %._crit_edge482 ], [ 0, %bb.bk ] ; 3 uses
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %indvars.iv527
  %i.ali = load i32, ptr %i.alh, align 4
  %i.alj = load i32, ptr %i.m, align 4            ; 2 uses
  %i.alk = icmp sgt i32 %i.alj, 0
  br i1 %i.alk, label %.lr.ph481.preheader, label %._crit_edge482

.lr.ph481.preheader:                              ; preds = %.lr.ph486
  %i.all = zext nneg i32 %i.alj to i64
  br label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph481.preheader, %bb.bm
  %indvars.iv524 = phi i64 [ 0, %.lr.ph481.preheader ], [ %indvars.iv.next525, %bb.bm ] ; 4 uses
  %.0338479 = phi i32 [ 0, %.lr.ph481.preheader ], [ %.1339, %bb.bm ] ; 3 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %indvars.iv524
  %i.aln = load i32, ptr %i.alm, align 4
  %i.alo = zext i32 %i.aln to i64
  %i.alp = icmp eq i64 %indvars.iv527, %i.alo
  br i1 %i.alp, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.lr.ph481
  %i.alq = sext i32 %.0338479 to i64              ; 2 uses
  %i.alr = getelementptr inbounds [4 x i8], ptr %i.zn, i64 %i.alq
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv524
  %i.alt = load i32, ptr %i.als, align 4
  %.not365 = icmp ne i32 %i.alt, 0
  %spec.store.select = zext i1 %.not365 to i32
  store i32 %spec.store.select, ptr %i.alr, align 4
  %i.alu = load ptr, ptr %0, align 8
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %indvars.iv524
  %i.alw = load ptr, ptr %i.alv, align 8
  %i.alx = getelementptr inbounds [4 x i8], ptr %i.alw, i64 %.pre-phi546
  %i.aly = add nsw i32 %.0338479, 1
  %i.alz = getelementptr inbounds [8 x i8], ptr %i.zl, i64 %i.alq
  store ptr %i.alx, ptr %i.alz, align 8
  br label %bb.bm

end_hunk_1
