Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN5btLCPC2EiiiPfS0_S0_S0_S0_S0_S0_S0_S0_S0_S0_PbPiS2_S2_PS0_:bb.a
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.ci = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv122.epil.init
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !49
  %indvars.iv.next123.epil = shl i64 %indvars.iv122.epil.init, 2
  %i.cl = add i64 %indvars.iv.next123.epil, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.079101.epil.init, ptr noundef nonnull align 4 dereferenceable(1) %i.ck, i64 %i.cl, i1 false)
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader175
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.co = load i32, ptr %i.a, align 4, !tbaa !30
  tail call void @_Z12btFactorLDLTPfS_ii(ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %i.bi, i32 noundef %i.co)
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.cr = shl nuw nsw i64 %wide.trip.count125, 2  ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cp, ptr align 4 %i.cq, i64 %i.cr, i1 false)
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !40  ; 2 uses
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !41  ; 8 uses
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !35  ; 10 uses
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !30  ; 2 uses
  tail call void @_Z9btSolveL1PKfPfii(ptr noundef %i.cs, ptr noundef %i.cu, i32 noundef %i.bi, i32 noundef %i.cv)
  %min.iters.check147 = icmp ult i32 %i.bi, 8
  br i1 %min.iters.check147, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.cw = getelementptr i8, ptr %i.cu, i64 %i.cr
  %i.cx = getelementptr i8, ptr %i.ct, i64 %i.cr
  %bound0 = icmp ult ptr %i.cu, %i.cx
  %bound1 = icmp ult ptr %i.ct, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck
  %n.vec149 = and i64 %wide.trip.count125, 2147483640 ; 3 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index151 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <4 x float>, ptr %i.cy, align 4, !tbaa !17, !alias.scope !116
  %wide.load152.a = load <4 x float>, ptr %i.cz, align 4, !tbaa !17, !alias.scope !116
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index151 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load153.a = load <4 x float>, ptr %i.da, align 4, !tbaa !17, !alias.scope !117, !noalias !116
  %wide.load154 = load <4 x float>, ptr %i.db, align 4, !tbaa !17, !alias.scope !117, !noalias !116
  %i.dc = fmul <4 x float> %wide.load, %wide.load153.a
  %i.dd = fmul <4 x float> %wide.load152.a, %wide.load154
  store <4 x float> %i.dc, ptr %i.da, align 4, !tbaa !17, !alias.scope !117, !noalias !116
  store <4 x float> %i.dd, ptr %i.db, align 4, !tbaa !17, !alias.scope !117, !noalias !116
  %index.next155 = add nuw i64 %index151, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.de, label %middle.block156, label %vector.body150, !llvm.loop !109

middle.block156:                                  ; preds = %vector.body150
  %cmp.n157 = icmp eq i64 %n.vec149, %wide.trip.count125
  br i1 %cmp.n157, label %.lr.ph104.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block156
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec149, %middle.block156 ] ; 3 uses
  %xtraiter182 = and i64 %wide.trip.count125, 3   ; 2 uses
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i.prol
  %i.dg = load float, ptr %i.df, align 4, !tbaa !17
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i.prol ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !17
  %i.dj = fmul float %i.dg, %i.di
  store float %i.dj, ptr %i.dh, align 4, !tbaa !17
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter182
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !110

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.dk = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count125
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %.lr.ph104.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !17
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !17
  %i.dq = fmul float %i.dn, %i.dp
  store float %i.dq, ptr %i.do, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !17
  %i.dv = fmul float %i.ds, %i.du
  store float %i.dv, ptr %i.dt, align 4, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.1
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !17
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !17
  %i.ea = fmul float %i.dx, %i.dz
  store float %i.ea, ptr %i.dy, align 4, !tbaa !17
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.2
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !17
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !17
  %i.ef = fmul float %i.ec, %i.ee
  store float %i.ef, ptr %i.ed, align 4, !tbaa !17
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count125
  br i1 %exitcond.not.i.i.3, label %.lr.ph104.preheader, label %.lr.ph.i.i, !llvm.loop !111

.lr.ph104.preheader:                              ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block156
  tail call void @_Z10btSolveL1TPKfPfii(ptr noundef %i.cs, ptr noundef nonnull %i.cu, i32 noundef %i.bi, i32 noundef %i.cv)
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %i.cr, i1 false), !tbaa !17
  %i.eh = load ptr, ptr %i.s, align 8, !tbaa !48  ; 2 uses
  %min.iters.check160 = icmp ult i32 %i.bi, 8
  br i1 %min.iters.check160, label %.lr.ph104.preheader172, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph104.preheader
  %n.vec162 = and i64 %wide.trip.count125, 2147483640 ; 3 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 2 uses
  %vec.ind165 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph161 ], [ %vec.ind.next168, %vector.body163 ] ; 3 uses
  %step.add166 = add <4 x i32> %vec.ind165, splat (i32 4)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index164 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <4 x i32> %vec.ind165, ptr %i.ei, align 4, !tbaa !50
  store <4 x i32> %step.add166, ptr %i.ej, align 4, !tbaa !50
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %vec.ind.next168 = add <4 x i32> %vec.ind165, splat (i32 8)
  %i.ek = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.ek, label %middle.block169, label %vector.body163, !llvm.loop !112

middle.block169:                                  ; preds = %vector.body163
  %cmp.n170 = icmp eq i64 %n.vec162, %wide.trip.count125
  br i1 %cmp.n170, label %._crit_edge105, label %.lr.ph104.preheader172

.lr.ph104.preheader172:                           ; preds = %.lr.ph104.preheader, %middle.block169
  %indvars.iv127.ph = phi i64 [ 0, %.lr.ph104.preheader ], [ %n.vec162, %middle.block169 ]
  br label %.lr.ph104

bb.k:                                             ; preds = %bb.k, %.new
  %indvars.iv122 = phi i64 [ 0, %.new ], [ %indvars.iv.next123.1, %bb.k ] ; 3 uses
  %.079101 = phi ptr [ %i.ce, %.new ], [ %i.eu, %bb.k ] ; 2 uses
  %niter181 = phi i64 [ 0, %.new ], [ %niter181.next.1, %bb.k ]
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv122
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49
  %indvars.iv.next123 = or disjoint i64 %indvars.iv122, 1 ; 2 uses
  %i.eo = shl nuw nsw i64 %indvars.iv.next123, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.079101, ptr noundef nonnull align 4 dereferenceable(1) %i.en, i64 %i.eo, i1 false)
  %i.ep = getelementptr inbounds [4 x i8], ptr %.079101, i64 %i.cg ; 2 uses
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next123
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !49
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122, 2 ; 3 uses
  %i.et = shl nuw nsw i64 %indvars.iv.next123.1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ep, ptr noundef nonnull align 4 dereferenceable(1) %i.es, i64 %i.et, i1 false)
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.cg ; 2 uses
  %niter181.next.1 = add i64 %niter181, 2         ; 2 uses
  %niter181.ncmp.1 = icmp eq i64 %niter181.next.1, %unroll_iter180
  br i1 %niter181.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.k, !llvm.loop !113

._crit_edge105:                                   ; preds = %.lr.ph104, %middle.block169
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !32
  br label %bb.l

.lr.ph104:                                        ; preds = %.lr.ph104.preheader172, %.lr.ph104
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %.lr.ph104 ], [ %indvars.iv127.ph, %.lr.ph104.preheader172 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv127
  %i.ew = trunc nuw nsw i64 %indvars.iv127 to i32
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !50
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count125
  br i1 %exitcond131.not, label %._crit_edge105, label %.lr.ph104, !llvm.loop !114

bb.l:                                             ; preds = %._crit_edge105, %._crit_edge100
  %i.ex = load ptr, ptr %i.q, align 8, !tbaa !46  ; 3 uses
  %.not = icmp eq ptr %i.ex, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ey = load i32, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.ez = load i32, ptr %0, align 8, !tbaa !29    ; 2 uses
  %.not88.not107 = icmp sgt i32 %i.ez, %i.ey
  br i1 %.not88.not107, label %.lr.ph111.preheader, label %.loopexit

.lr.ph111.preheader:                              ; preds = %bb.m
  %i.fa = sext i32 %i.ez to i64
  %i.fb = sext i32 %i.ey to i64
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader, %bb.o
  %indvars.iv132 = phi i64 [ %i.fa, %.lr.ph111.preheader ], [ %indvars.iv.next133, %bb.o ]
  %.076108 = phi i32 [ 0, %.lr.ph111.preheader ], [ %.1, %bb.o ] ; 3 uses
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -1 ; 4 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %indvars.iv.next133
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !50
  %i.fe = icmp sgt i32 %i.fd, -1
  br i1 %i.fe, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph111
  %i.ff = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.fg = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.fh = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.fi = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.fk = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.fl = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !45
  %i.fn = load i32, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fo = xor i32 %.076108, -1
  %i.fp = add i32 %i.fn, %i.fo
  %i.fq = trunc nsw i64 %indvars.iv.next133 to i32
  tail call fastcc void @_ZL13btSwapProblemPPfS_S_S_S_S_PiPbS1_iiiii(ptr noundef %i.ff, ptr noundef %i.fg, ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef %i.fj, ptr noundef %i.fk, ptr noundef %i.fl, ptr noundef %i.fm, ptr noundef nonnull %i.ex, i32 noundef %i.fn, i32 noundef %i.fq, i32 noundef %i.fp, i32 noundef 1)
  %i.fr = add nsw i32 %.076108, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph111, %bb.n
  %.1 = phi i32 [ %i.fr, %bb.n ], [ %.076108, %.lr.ph111 ]
  %.not88.not = icmp sgt i64 %indvars.iv.next133, %i.fb
  br i1 %.not88.not, label %.lr.ph111, label %.loopexit, !llvm.loop !115

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL13btSwapProblemPPfS_S_S_S_S_PiPbS1_iiiii(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(address_is_null) %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef range(i32 0, 2) %12) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %10, %11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %10 to i64                      ; 19 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 12 uses
  %i.e = sext i32 %11 to i64                      ; 14 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 12 uses
  %.06266.i = add nsw i32 %10, 1
  %i.h = icmp slt i32 %.06266.i, %11
  br i1 %i.h, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = add nsw i64 %i.b, 1                      ; 4 uses
  %i.j = add i32 %11, -2
  %i.k = sub i32 %10, %11
  %i.l = and i32 %i.k, 1
  %lcmp.mod.not.not = icmp eq i32 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.b ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !17
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  store float %i.p, ptr %i.q, align 4, !tbaa !17
  %i.r = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.i
  %i.s = load float, ptr %i.r, align 4, !tbaa !17
  store float %i.s, ptr %i.o, align 4, !tbaa !17
  %indvars.iv.next.i.prol = add nsw i64 %i.b, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.t = icmp eq i32 %i.j, %10
  br i1 %i.t, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %i.u = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !17
  %i.w = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  store float %i.v, ptr %i.w, align 4, !tbaa !17
  %i.x = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !17
  store float %i.y, ptr %i.u, align 4, !tbaa !17
  %i.z = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  %i.aa = load float, ptr %i.z, align 4, !tbaa !17
  store float %i.aa, ptr %i.x, align 4, !tbaa !17
  %.not.i = icmp eq i32 %12, 0
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not6568.i = icmp slt i32 %11, 0
  br i1 %.not6568.i, label %.loopexit.i, label %.lr.ph70.preheader.i

.lr.ph70.preheader.i:                             ; preds = %.preheader.i
  %i.ab = add nuw i32 %11, 1
  %wide.trip.count.i = zext i32 %i.ab to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %11, 7
  br i1 %min.iters.check, label %.lr.ph70.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph70.preheader.i
  %i.ac = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.g, i64 %i.ac
  %bound0 = icmp ult ptr %i.d, %i.ae
  %bound1 = icmp ult ptr %i.g, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph70.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.af, align 4, !tbaa !17, !alias.scope !125, !noalias !126
  %wide.load2 = load <4 x float>, ptr %i.ag, align 4, !tbaa !17, !alias.scope !125, !noalias !126
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load3 = load <4 x float>, ptr %i.ah, align 4, !tbaa !17, !alias.scope !126
  %wide.load4 = load <4 x float>, ptr %i.ai, align 4, !tbaa !17, !alias.scope !126
  store <4 x float> %wide.load3, ptr %i.af, align 4, !tbaa !17, !alias.scope !125, !noalias !126
  store <4 x float> %wide.load4, ptr %i.ag, align 4, !tbaa !17, !alias.scope !125, !noalias !126
  store <4 x float> %wide.load, ptr %i.ah, align 4, !tbaa !17, !alias.scope !126
  store <4 x float> %wide.load2, ptr %i.ai, align 4, !tbaa !17, !alias.scope !126
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph70.i.preheader

.lr.ph70.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph70.preheader.i, %middle.block
  %indvars.iv77.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph70.preheader.i ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ak = zext nneg i32 %11 to i64
  %xtraiter5 = and i64 %wide.trip.count.i, 1
  %lcmp.mod6.not = icmp eq i64 %xtraiter5, 0
  br i1 %lcmp.mod6.not, label %.lr.ph70.i.prol.loopexit, label %.lr.ph70.i.prol

.lr.ph70.i.prol:                                  ; preds = %.lr.ph70.i.preheader
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv77.i.ph ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !17
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv77.i.ph ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !17
  store float %i.ao, ptr %i.al, align 4, !tbaa !17
  store float %i.am, ptr %i.an, align 4, !tbaa !17
  %indvars.iv.next78.i.prol = or disjoint i64 %indvars.iv77.i.ph, 1
  br label %.lr.ph70.i.prol.loopexit

.lr.ph70.i.prol.loopexit:                         ; preds = %.lr.ph70.i.prol, %.lr.ph70.i.preheader
  %indvars.iv77.i.unr = phi i64 [ %indvars.iv77.i.ph, %.lr.ph70.i.preheader ], [ %indvars.iv.next78.i.prol, %.lr.ph70.i.prol ]
  %i.ap = icmp eq i64 %indvars.iv77.i.ph, %i.ak
  br i1 %i.ap, label %.loopexit.i, label %.lr.ph70.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.b ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !17
  %i.au = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.i
  store float %i.at, ptr %i.au, align 4, !tbaa !17
  %i.av = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.aw = load float, ptr %i.av, align 4, !tbaa !17
  store float %i.aw, ptr %i.as, align 4, !tbaa !17
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.b ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !17
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv.next.i
  store float %i.ba, ptr %i.bb, align 4, !tbaa !17
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !17
  store float %i.bd, ptr %i.az, align 4, !tbaa !17
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %11, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !122

bb.c:                                             ; preds = %._crit_edge.i
  store ptr %i.g, ptr %i.c, align 8, !tbaa !49
  store ptr %i.d, ptr %i.f, align 8, !tbaa !49
  br label %.loopexit.i

.lr.ph70.i:                                       ; preds = %.lr.ph70.i.prol.loopexit, %.lr.ph70.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i.1, %.lr.ph70.i ], [ %indvars.iv77.i.unr, %.lr.ph70.i.prol.loopexit ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv77.i ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !17
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv77.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !17
  store float %i.bh, ptr %i.be, align 4, !tbaa !17
  store float %i.bf, ptr %i.bg, align 4, !tbaa !17
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next78.i ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next78.i ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !17
  store float %i.bl, ptr %i.bi, align 4, !tbaa !17
  store float %i.bj, ptr %i.bk, align 4, !tbaa !17
  %indvars.iv.next78.i.1 = add nuw nsw i64 %indvars.iv77.i, 2 ; 2 uses
  %exitcond80.not.i.1 = icmp eq i64 %indvars.iv.next78.i.1, %wide.trip.count.i
  br i1 %exitcond80.not.i.1, label %.loopexit.i, label %.lr.ph70.i, !llvm.loop !123

.loopexit.i:                                      ; preds = %.lr.ph70.i.prol.loopexit, %.lr.ph70.i, %middle.block, %bb.c, %.preheader.i
  %.071.i = add nsw i32 %11, 1                    ; 2 uses
  %i.bm = icmp slt i32 %.071.i, %9
  br i1 %i.bm, label %.lr.ph74.preheader.i, label %_ZL17btSwapRowsAndColsPPfiiiii.exit

.lr.ph74.preheader.i:                             ; preds = %.loopexit.i
  %i.bn = sext i32 %.071.i to i64                 ; 3 uses
  %i.bo = add i32 %9, -2
  %i.bp = sub i32 %11, %9
  %i.bq = and i32 %i.bp, 1
  %lcmp.mod8.not.not = icmp eq i32 %i.bq, 0
  br i1 %lcmp.mod8.not.not, label %.lr.ph74.i.prol, label %.lr.ph74.i.prol.loopexit

.lr.ph74.i.prol:                                  ; preds = %.lr.ph74.preheader.i
  %i.br = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bn
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49 ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.b ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.e ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !17
  store float %i.bw, ptr %i.bt, align 4, !tbaa !17
end_hunk_0
