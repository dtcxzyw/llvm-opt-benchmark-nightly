inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
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
  %i.ch = ptrtoaddr ptr %1 to i64                 ; 3 uses
  %i.ci = shl i64 %i.cb, 2
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, 4
  %i.cl = shl nuw nsw i64 %i.e, 2
  %i.cm = add i64 %i.cl, %i.ch
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.cm)
  %i.co = shl i64 %i.cb, 2
  %i.cp = add i64 %i.co, %i.ch
  %i.cq = xor i64 %i.cp, -1
  %i.cr = add i64 %i.cn, %i.cq                    ; 2 uses
  %i.cs = lshr i64 %i.cr, 2
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cr, 60
  %9 = shl i64 %i.cb, 2
  %diff.check = icmp ugt i64 %9, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph105.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.ct, 9223372036854775800     ; 3 uses
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
  %cmp.n = icmp eq i64 %i.ct, %n.vec
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

._crit_edge:                                      ; preds = %bb.b, %.preheader
end_hunk_0
begin_hunk_1_@llvm.umul.with.overflow.i64
attributes #16 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(write, argmem: read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #51 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #59 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { nofree nounwind }
attributes #61 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #62 = { nounwind }
attributes #63 = { nounwind willreturn memory(read) }
attributes #64 = { cold }
attributes #65 = { cold nounwind }
attributes #66 = { nounwind allocsize(1) }
attributes #67 = { cold noreturn nounwind }
attributes #68 = { noreturn nounwind }
attributes #69 = { nounwind allocsize(0) }
attributes #70 = { nounwind willreturn memory(none) }
attributes #71 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{null}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = !{ptr @vorbis_analysis}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
!48 = distinct !{!48, !6}
!49 = distinct !{!49, !6}
!50 = distinct !{!50, !6}
!51 = distinct !{!51, !6}
!52 = distinct !{!52, !6}
!53 = distinct !{!53, !6}
!54 = distinct !{!54, !6}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !6, !61}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !6, !61}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !6, !61}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !6, !61}
!80 = distinct !{!80, !6}
!81 = distinct !{!81, !6}
!82 = distinct !{!82, !6}
!83 = distinct !{!83, !6}
!84 = distinct !{!84, !6}
!85 = distinct !{!85, !6}
!86 = distinct !{!86, !6}
!87 = distinct !{!87, !6}
!88 = distinct !{!88, !6}
!89 = distinct !{null}
!90 = distinct !{!90, !6}
!91 = distinct !{!91, !6}
!92 = distinct !{!92, !6}
!93 = distinct !{!93, !6}
!94 = distinct !{!94, !6}
!95 = distinct !{!95, !6}
!96 = distinct !{!96, !6}
!97 = !{!98}
!98 = distinct !{!98, !99}
!99 = distinct !{!99, !"LVerDomain"}
!100 = !{!101}
!101 = distinct !{!101, !99}
!102 = distinct !{!102, !6, !61, !103}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !21}
!105 = distinct !{!105, !6, !61}
!106 = distinct !{!106, !6}
!107 = distinct !{!107, !6}
!108 = distinct !{!108, !6}
!109 = distinct !{!109, !6}
!110 = distinct !{!110, !6}
!111 = distinct !{!111, !6}
!112 = distinct !{!112, !6}
!113 = distinct !{!113, !6}
!114 = distinct !{!114, !6}
!115 = distinct !{!115, !6}
!116 = distinct !{!116, !6}
!117 = distinct !{!117, !6}
!118 = distinct !{!118, !6}
!119 = distinct !{!119, !6}
!120 = distinct !{!120, !6}
!121 = distinct !{!121, !6}
!122 = distinct !{!122, !6}
!123 = distinct !{!123, !6}
!124 = distinct !{!124, !6}
!125 = distinct !{!125, !6}
!126 = distinct !{!126, !6}
!127 = distinct !{!127, !6}
!128 = distinct !{!128, !6}
!129 = distinct !{!129, !6}
!130 = distinct !{!130, !21}
!131 = distinct !{!131, !6}
!132 = distinct !{!132, !6}
!133 = distinct !{!133, !6}
!134 = distinct !{!134, !6}
!135 = distinct !{!135, !6}
!136 = distinct !{!136, !6}
!137 = distinct !{!137, !6}
!138 = distinct !{!138, !6}
!139 = distinct !{!139, !6, !61, !103}
!140 = distinct !{!140, !6, !61}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !6}
!143 = distinct !{!143, !6}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !6, !61, !103}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !6, !61, !103}
!156 = distinct !{!156, !6, !61}
!157 = distinct !{!157, !6, !61}
!158 = distinct !{!158, !6}
!159 = distinct !{!159, !6}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !6, !61, !103}
!166 = !{!167}
!167 = distinct !{!167, !168}
!168 = distinct !{!168, !"LVerDomain"}
!169 = !{!170}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !6, !61, !103}
!172 = distinct !{!172, !6, !61}
!173 = distinct !{!173, !6, !61}
!174 = distinct !{!174, !6}
!175 = distinct !{!175, !6}
!176 = distinct !{!176, !6}
!177 = distinct !{!177, !6}
!178 = distinct !{!178, !6, !61, !103}
!179 = distinct !{!179, !6, !103, !61}
!180 = distinct !{!180, !6, !61, !103}
!181 = distinct !{!181, !6, !103, !61}
!182 = distinct !{!182, !6}
!183 = distinct !{!183, !6}
!184 = distinct !{!184, !6}
!185 = distinct !{!185, !6}
!186 = distinct !{null}
!187 = distinct !{null, null, null}
!188 = distinct !{!188, !6}
!189 = distinct !{!189, !6}
!190 = distinct !{null, null, null}
!191 = distinct !{null, null, ptr @_get_next_page, null}
!192 = distinct !{!192, !6}
!193 = distinct !{!193, !6}
!194 = distinct !{!194, !6}
!195 = distinct !{null, null, null, null}
!196 = distinct !{!196, !6}
!197 = distinct !{!197, !6}
!198 = !{ptr @ov_halfrate}
!199 = distinct !{!199, !6, !61, !103}
!200 = distinct !{!200, !6, !103, !61}
!201 = distinct !{!201, !6}
!202 = distinct !{!202, !6}
!203 = distinct !{!203, !6}
!204 = distinct !{null}
!205 = distinct !{!205, !6, !61, !103}
!206 = distinct !{!206, !6, !103, !61}
!207 = distinct !{!207, !6}
!208 = distinct !{null}
!209 = !{!210}
!210 = distinct !{!210, !211}
!211 = distinct !{!211, !"LVerDomain"}
!212 = distinct !{!212, !6, !61, !103}
!213 = !{!214}
!214 = distinct !{!214, !211}
!215 = distinct !{!215, !6, !61}
!216 = distinct !{!216, !6}
!217 = distinct !{!217, !6, !218}
!218 = !{!"llvm.loop.peeled.count", i32 1}
!219 = distinct !{!219, !6}
!220 = distinct !{!220, !6}
!221 = distinct !{!221, !6}
!222 = distinct !{null, null}
!223 = !{!224}
!224 = distinct !{!224, !225}
!225 = distinct !{!225, !"LVerDomain"}
!226 = distinct !{!226, !6, !61, !103}
!227 = !{!228}
!228 = distinct !{!228, !225}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !6, !61}
!231 = distinct !{!231, !6}
!232 = distinct !{!232, !6}
!233 = !{!234}
!234 = distinct !{!234, !235}
!235 = distinct !{!235, !"LVerDomain"}
!236 = !{!237, !238}
!237 = distinct !{!237, !235}
!238 = distinct !{!238, !235}
!239 = !{!237}
!240 = !{!238}
!241 = distinct !{!241, !6, !61, !103}
!242 = distinct !{!242, !6, !61}
!243 = !{!244}
!244 = distinct !{!244, !245}
!245 = distinct !{!245, !"LVerDomain"}
!246 = !{!247, !248, !249}
!247 = distinct !{!247, !245}
!248 = distinct !{!248, !245}
!249 = distinct !{!249, !245}
!250 = !{!248}
!251 = !{!249}
!252 = !{!247}
!253 = distinct !{!253, !6, !61, !103}
!254 = distinct !{!254, !6, !61}
!255 = !{!256}
!256 = distinct !{!256, !257}
!257 = distinct !{!257, !"LVerDomain"}
!258 = !{!259, !260, !261}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !257}
!261 = distinct !{!261, !257}
!262 = !{!260}
!263 = !{!261}
!264 = !{!259}
!265 = distinct !{!265, !6, !61, !103}
!266 = distinct !{!266, !6, !61, !103}
!267 = distinct !{!267, !21}
!268 = distinct !{!268, !6, !61}
!269 = distinct !{!269, !6, !61}
!270 = !{!271}
!271 = distinct !{!271, !272}
!272 = distinct !{!272, !"LVerDomain"}
!273 = !{!274, !275, !276}
!274 = distinct !{!274, !272}
!275 = distinct !{!275, !272}
!276 = distinct !{!276, !272}
!277 = !{!275}
!278 = !{!276}
!279 = !{!274}
!280 = distinct !{!280, !6, !61, !103}
!281 = distinct !{!281, !6, !61}
!282 = distinct !{!282, !6, !61, !103}
!283 = distinct !{!283, !21}
!284 = distinct !{!284, !6, !61}
!285 = distinct !{!285, !6}
!286 = distinct !{!286, !6}
!287 = distinct !{!287, !6, !61, !103}
!288 = distinct !{!288, !6, !103, !61}
!289 = distinct !{!289, !6}
!290 = distinct !{!290, !6}
!291 = distinct !{!291, !6}
!292 = distinct !{!292, !6}
!293 = distinct !{!293, !6}
!294 = distinct !{!294, !6}
!295 = distinct !{!295, !6}
!296 = distinct !{!296, !6}
!297 = distinct !{!297, !6}
!298 = distinct !{!298, !6}
!299 = distinct !{!299, !6}
!300 = distinct !{!300, !6}
!301 = distinct !{!301, !6, !61, !103}
!302 = distinct !{!302, !6, !103, !61}
!303 = distinct !{!303, !6}
!304 = !{!305}
!305 = distinct !{!305, !306}
!306 = distinct !{!306, !"LVerDomain"}
!307 = !{!308}
!308 = distinct !{!308, !306}
!309 = !{!305, !310}
!310 = distinct !{!310, !306}
!311 = !{!310}
!312 = distinct !{!312, !6, !61, !103}
!313 = distinct !{!313, !6, !61}
!314 = distinct !{!314, !6}
!315 = !{!316}
!316 = distinct !{!316, !317}
!317 = distinct !{!317, !"LVerDomain"}
!318 = !{!319}
!319 = distinct !{!319, !317}
!320 = distinct !{!320, !6, !61, !103}
!321 = distinct !{!321, !6, !61}
!322 = distinct !{!322, !6}
!323 = distinct !{!323, !6}
!324 = distinct !{!324, !6}
!325 = distinct !{!325, !6}
!326 = distinct !{!326, !6, !61, !103}
!327 = distinct !{!327, !6, !103, !61}
!328 = distinct !{!328, !6}
!329 = distinct !{!329, !6, !61, !103}
!330 = distinct !{!330, !6, !61}
!331 = distinct !{!331, !6}
!332 = distinct !{!332, !6, !61, !103}
!333 = distinct !{!333, !6, !61}
!334 = distinct !{!334, !6}
!335 = distinct !{!335, !6}
!336 = distinct !{!336, !6, !61, !103}
!337 = distinct !{!337, !6, !103, !61}
!338 = !{ptr @ov_pcm_seek, ptr @ov_pcm_seek_page, ptr @ov_raw_seek}
!339 = !{!340}
!340 = distinct !{!340, !341}
end_hunk_1
