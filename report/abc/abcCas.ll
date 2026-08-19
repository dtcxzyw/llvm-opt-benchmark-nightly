inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_LutCascadeTruth:bb.a
  %exitcond123.not = icmp eq i32 %i.ih, %i.cy
  br i1 %exitcond123.not, label %._crit_edge103.loopexit, label %bb.n, !llvm.loop !163

._crit_edge103.loopexit:                          ; preds = %Abc_TtOr.exit
  %.pre128 = load i64, ptr %i.ch, align 8, !tbaa !68
  %.pre129 = load i64, ptr %0, align 8, !tbaa !68
  br label %._crit_edge103

._crit_edge103:                                   ; preds = %._crit_edge103.loopexit, %.preheader
  %i.ii = phi i64 [ %.pre129, %._crit_edge103.loopexit ], [ %i.cb, %.preheader ] ; 2 uses
  %i.ij = phi i64 [ %.pre128, %._crit_edge103.loopexit ], [ %i.cj, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.ik = load i64, ptr %i.cd, align 8, !tbaa !68
  %i.il = trunc i64 %i.ik to i32
  %i.im = add i32 %.066105, %i.il
  %i.in = icmp ugt i64 %i.ii, %indvars.iv.next125
  br i1 %i.in, label %bb.m, label %._crit_edge107, !llvm.loop !164

._crit_edge107:                                   ; preds = %._crit_edge103
  %i.io = trunc i64 %i.ij to i32
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge107, %Vec_WrdFillExtra.exit
  %.0.lcssa = phi i32 [ %i.io, %._crit_edge107 ], [ -1, %Vec_WrdFillExtra.exit ]
  %i.ip = mul i32 %.0.lcssa, %i.f
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %.val73, i64 %i.iq ; 6 uses
  br i1 %i.v, label %.lr.ph.preheader.i87, label %Vec_WrdFree.exit

.lr.ph.preheader.i87:                             ; preds = %bb.o
  %wide.trip.count.i88 = zext nneg i32 %i.f to i64 ; 5 uses
  %min.iters.check215 = icmp ult i32 %i.f, 10
  %i.is = shl nsw i64 %i.iq, 3
  %diff.check = icmp ugt i64 %i.is, -32
  %or.cond = select i1 %min.iters.check215, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i89.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph.preheader.i87
  %n.vec217 = and i64 %wide.trip.count.i88, 2147483644 ; 3 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body218 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %index219 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load220 = load <2 x i64>, ptr %i.it, align 8, !tbaa !68
  %wide.load221 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !68
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %index219 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <2 x i64> %wide.load220, ptr %i.iv, align 8, !tbaa !68
  store <2 x i64> %wide.load221, ptr %i.iw, align 8, !tbaa !68
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next222, %n.vec217
  br i1 %i.ix, label %middle.block223, label %vector.body218, !llvm.loop !165

middle.block223:                                  ; preds = %vector.body218
  %cmp.n224 = icmp eq i64 %n.vec217, %wide.trip.count.i88
  br i1 %cmp.n224, label %Vec_WrdFree.exit, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.lr.ph.preheader.i87, %middle.block223
  %indvars.iv.i90.ph = phi i64 [ 0, %.lr.ph.preheader.i87 ], [ %n.vec217, %middle.block223 ] ; 3 uses
  %xtraiter240 = and i64 %wide.trip.count.i88, 3  ; 2 uses
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol

.lr.ph.i89.prol:                                  ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89.prol
  %indvars.iv.i90.prol = phi i64 [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ], [ %indvars.iv.i90.ph, %.lr.ph.i89.preheader ] ; 3 uses
  %prol.iter242 = phi i64 [ %prol.iter242.next, %.lr.ph.i89.prol ], [ 0, %.lr.ph.i89.preheader ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i90.prol
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !68
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv.i90.prol
  store i64 %i.iz, ptr %i.ja, align 8, !tbaa !68
  %indvars.iv.next.i91.prol = add nuw nsw i64 %indvars.iv.i90.prol, 1 ; 2 uses
  %prol.iter242.next = add i64 %prol.iter242, 1   ; 2 uses
  %prol.iter242.cmp.not = icmp eq i64 %prol.iter242.next, %xtraiter240
  br i1 %prol.iter242.cmp.not, label %.lr.ph.i89.prol.loopexit, label %.lr.ph.i89.prol, !llvm.loop !166

.lr.ph.i89.prol.loopexit:                         ; preds = %.lr.ph.i89.prol, %.lr.ph.i89.preheader
  %indvars.iv.i90.unr = phi i64 [ %indvars.iv.i90.ph, %.lr.ph.i89.preheader ], [ %indvars.iv.next.i91.prol, %.lr.ph.i89.prol ]
  %i.jb = sub nsw i64 %indvars.iv.i90.ph, %wide.trip.count.i88
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %Vec_WrdFree.exit, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.prol.loopexit, %.lr.ph.i89
  %indvars.iv.i90 = phi i64 [ %indvars.iv.next.i91.3, %.lr.ph.i89 ], [ %indvars.iv.i90.unr, %.lr.ph.i89.prol.loopexit ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.i90
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !68
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv.i90
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !68
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i90, 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i91
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !68
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv.next.i91
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !68
  %indvars.iv.next.i91.1 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i91.1
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !68
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv.next.i91.1
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !68
  %indvars.iv.next.i91.2 = add nuw nsw i64 %indvars.iv.i90, 3 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i91.2
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !68
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv.next.i91.2
  store i64 %i.jn, ptr %i.jo, align 8, !tbaa !68
  %indvars.iv.next.i91.3 = add nuw nsw i64 %indvars.iv.i90, 4 ; 2 uses
  %exitcond.not.i92.3 = icmp eq i64 %indvars.iv.next.i91.3, %wide.trip.count.i88
  br i1 %exitcond.not.i92.3, label %Vec_WrdFree.exit, label %.lr.ph.i89, !llvm.loop !167

Vec_WrdFree.exit:                                 ; preds = %.lr.ph.i89.prol.loopexit, %.lr.ph.i89, %middle.block223, %bb.o
  ret ptr %.val73
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_LutCascadeMinBase(ptr nofree noundef captures(address) %0, i32 %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = load i64, ptr %0, align 8, !tbaa !68
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a, %bb.m
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.m ], [ 0, %bb.a ]
  %.04052 = phi i32 [ %i.jx, %bb.m ], [ 1, %bb.a ] ; 2 uses
  %i.c = sext i32 %.04052 to i64                  ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 11 uses
  %.not57 = icmp eq i64 %i.f, 0
  br i1 %.not57, label %Abc_TtMinBase.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph55
  %min.iters.check161 = icmp ult i64 %i.f, 4
  br i1 %min.iters.check161, label %.lr.ph.preheader181, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.preheader
  %n.vec163 = and i64 %i.f, -4                    ; 3 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next168, %vector.body164 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index165 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load166 = load <2 x i64>, ptr %i.j, align 8, !tbaa !68
  %wide.load167 = load <2 x i64>, ptr %i.k, align 8, !tbaa !68
  %i.l = trunc <2 x i64> %wide.load166 to <2 x i32>
  %i.m = trunc <2 x i64> %wide.load167 to <2 x i32>
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index165 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store <2 x i32> %i.l, ptr %i.n, align 16, !tbaa !52
  store <2 x i32> %i.m, ptr %i.o, align 8, !tbaa !52
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.p = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.p, label %middle.block169, label %vector.body164, !llvm.loop !168

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %i.f, %n.vec163
  br i1 %cmp.n170, label %._crit_edge, label %.lr.ph.preheader181

.lr.ph.preheader181:                              ; preds = %.lr.ph.preheader, %middle.block169
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec163, %middle.block169 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader181, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader181 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169

._crit_edge:                                      ; preds = %.lr.ph, %middle.block169
  %i.u = trunc nuw i64 %i.f to i32                ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %Abc_TtMinBase.exit.thread

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.w = icmp ult i64 %i.f, 7
  %i.x = add nsw i32 %i.u, -6                     ; 3 uses
  %i.y = shl nuw i32 1, %i.x                      ; 4 uses
  %i.z = sext i32 %i.y to i64
  %.idx.i.i = shl nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds i8, ptr %i.i, i64 %.idx.i.i ; 3 uses
  %.not.i.i = icmp eq i32 %i.x, 31                ; 5 uses
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64 ; 2 uses
  br i1 %i.w, label %.lr.ph.i.split.us, label %.lr.ph.i.split.preheader

.lr.ph.i.split.preheader:                         ; preds = %.lr.ph.i
  %i.ab = shl nuw nsw i64 %i.f, 3                 ; 3 uses
  %i.ac = shl nsw i64 %i.c, 3                     ; 3 uses
  %i.ad = shl nuw nsw i64 %i.f, 3                 ; 4 uses
  %i.ae = shl nsw i64 %i.c, 3                     ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 %i.ad
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = getelementptr i8, ptr %i.ag, i64 %i.ae
  %i.ai = getelementptr i8, ptr %0, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 24
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ae
  %i.al = getelementptr i8, ptr %0, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = getelementptr i8, ptr %i.am, i64 %i.ae
  %i.ao = getelementptr i8, ptr %0, i64 %i.ad
  %i.ap = getelementptr i8, ptr %0, i64 %i.ab
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ac
  %i.as = getelementptr i8, ptr %0, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ac
  %i.av = getelementptr i8, ptr %0, i64 %i.ab
  %i.aw = getelementptr i8, ptr %i.av, i64 24
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.ac
  %min.iters.check98 = icmp slt i32 %i.y, 4
  %n.vec100 = and i64 %wide.trip.count57.i.i, 2147483644
  %exitcond160.not.i.i = icmp slt i32 %i.y, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %exitcond160.not.i.i.1 = icmp eq i32 %i.x, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  br label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %.promoted = load i64, ptr %i.i, align 8, !tbaa !68
  br label %Abc_TtHasVar.exit.i.us

Abc_TtHasVar.exit.i.us:                           ; preds = %Abc_TtHasVar.exit.thread.i.us, %.lr.ph.i.split.us
  %i.ba = phi i64 [ %.promoted, %.lr.ph.i.split.us ], [ %i.cg, %Abc_TtHasVar.exit.thread.i.us ] ; 7 uses
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.split.us ], [ %indvars.iv.next.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 6 uses
  %.051.i.us = phi i32 [ 0, %.lr.ph.i.split.us ], [ %.1.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 4 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.bc = shl nuw i32 1, %i.bb                    ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.us
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !68
  %i.bh = xor i64 %i.be, %i.ba
  %i.bi = and i64 %i.bh, %i.bg
  %.not44.i.us = icmp eq i64 %i.bi, 0
  br i1 %.not44.i.us, label %Abc_TtHasVar.exit.thread.i.us, label %Abc_TtHasVar.exit.thread41.thread.i.us

Abc_TtHasVar.exit.thread41.thread.i.us:           ; preds = %Abc_TtHasVar.exit.i.us
  %i.bj = sext i32 %.051.i.us to i64              ; 3 uses
  %i.bk = icmp sgt i64 %indvars.iv.i.us, %i.bj
  br i1 %i.bk, label %.thread.i.us, label %Abc_TtSwapVars.exit.i.us

.thread.i.us:                                     ; preds = %Abc_TtHasVar.exit.thread41.thread.i.us
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !52
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bj
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !52
  %i.bo = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.bj
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %indvars.iv.i.us ; 3 uses
  %.neg.i.i.i.us = shl nsw i32 -1, %.051.i.us
  %i.bq = add i32 %.neg.i.i.i.us, %i.bc
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !68
  %i.bs = and i64 %i.br, %i.ba
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !68
  %i.bv = and i64 %i.bu, %i.ba
  %i.bw = zext i32 %i.bq to i64                   ; 2 uses
  %i.bx = shl i64 %i.bv, %i.bw
  %i.by = or i64 %i.bx, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !68
  %i.cb = and i64 %i.ca, %i.ba
  %i.cc = lshr i64 %i.cb, %i.bw
  %i.cd = or i64 %i.by, %i.cc                     ; 2 uses
  store i64 %i.cd, ptr %i.i, align 8, !tbaa !68
  br label %Abc_TtSwapVars.exit.i.us

Abc_TtSwapVars.exit.i.us:                         ; preds = %.thread.i.us, %Abc_TtHasVar.exit.thread41.thread.i.us
  %i.ce = phi i64 [ %i.cd, %.thread.i.us ], [ %i.ba, %Abc_TtHasVar.exit.thread41.thread.i.us ]
  %i.cf = add nsw i32 %.051.i.us, 1
  br label %Abc_TtHasVar.exit.thread.i.us

Abc_TtHasVar.exit.thread.i.us:                    ; preds = %Abc_TtSwapVars.exit.i.us, %Abc_TtHasVar.exit.i.us
  %i.cg = phi i64 [ %i.ce, %Abc_TtSwapVars.exit.i.us ], [ %i.ba, %Abc_TtHasVar.exit.i.us ]
  %.1.i.us = phi i32 [ %i.cf, %Abc_TtSwapVars.exit.i.us ], [ %.051.i.us, %Abc_TtHasVar.exit.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.f
  br i1 %exitcond.not.i.us, label %Abc_TtMinBase.exit, label %Abc_TtHasVar.exit.i.us, !llvm.loop !170

.lr.ph.i.split:                                   ; preds = %.lr.ph.i.split.preheader, %Abc_TtHasVar.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i.split.preheader ] ; 11 uses
  %.051.i = phi i32 [ %.1.i, %Abc_TtHasVar.exit.thread.i ], [ 0, %.lr.ph.i.split.preheader ] ; 11 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.i, 6  ; 2 uses
  br i1 %i.ch, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i.split
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !68
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.d, !llvm.loop !171

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.c ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv53.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.cp = lshr i64 %i.co, %i.ck
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = and i64 %i.cq, %i.cm
  %.not39.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not39.i.i, label %bb.c, label %Abc_TtHasVar.exit.thread41.i

bb.e:                                             ; preds = %.lr.ph.i.split
  %i.cs = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.ct = trunc nsw i64 %i.cs to i32              ; 2 uses
  %i.cu = shl nuw i32 1, %i.ct                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.e
  %i.cv = icmp eq i64 %i.cs, 31
  %i.cw = shl i32 2, %i.ct
  %i.cx = sext i32 %i.cw to i64
  br i1 %i.cv, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.cy = sext i32 %i.cu to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.dc, %._crit_edge.us.i.i ], [ %i.i, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %i.cy
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.g, !llvm.loop !172

bb.g:                                             ; preds = %bb.f, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !68
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.db = load i64, ptr %gep.i.i, align 8, !tbaa !68
  %.not.us.i.i = icmp eq i64 %i.da, %i.db
  br i1 %.not.us.i.i, label %bb.f, label %Abc_TtHasVar.exit.thread41.i

._crit_edge.us.i.i:                               ; preds = %bb.f
  %i.dc = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.cx ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %i.aa
  br i1 %i.dd, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !173

Abc_TtHasVar.exit.thread41.i:                     ; preds = %bb.d, %bb.g
  %i.de = sext i32 %.051.i to i64                 ; 4 uses
  %i.df = icmp sgt i64 %indvars.iv.i, %i.de
  br i1 %i.df, label %bb.h, label %Abc_TtSwapVars.exit.i

bb.h:                                             ; preds = %Abc_TtHasVar.exit.thread41.i
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !52
  %i.di = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.de
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !52
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.i
  %.neg.i.i = shl nsw i32 -1, %.051.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dk = shl nuw nsw i32 1, %i.dj
  %i.dl = add nsw i32 %.neg.i.i, %i.dk
  %i.dm = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.de
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %indvars.iv.i ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !68 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !68 ; 4 uses
  %i.dr = zext i32 %i.dl to i64                   ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !68 ; 4 uses
  br i1 %min.iters.check98, label %scalar.ph97, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert101 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat102 = shufflevector <2 x i64> %broadcast.splatinsert101, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert103 = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat104 = shufflevector <2 x i64> %broadcast.splatinsert103, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert105 = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %broadcast.splat106 = shufflevector <2 x i64> %broadcast.splatinsert105, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph99
  %index108 = phi i64 [ 0, %vector.ph99 ], [ %index.next111, %vector.body107 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index108 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load109 = load <2 x i64>, ptr %i.du, align 8, !tbaa !68 ; 3 uses
  %wide.load110 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !68 ; 3 uses
  %i.dw = and <2 x i64> %wide.load109, %broadcast.splat
  %i.dx = and <2 x i64> %wide.load110, %broadcast.splat
  %i.dy = and <2 x i64> %wide.load109, %broadcast.splat102
  %i.dz = and <2 x i64> %wide.load110, %broadcast.splat102
  %i.ea = shl <2 x i64> %i.dy, %broadcast.splat104
  %i.eb = shl <2 x i64> %i.dz, %broadcast.splat104
  %i.ec = or <2 x i64> %i.ea, %i.dw
  %i.ed = or <2 x i64> %i.eb, %i.dx
  %i.ee = and <2 x i64> %wide.load109, %broadcast.splat106
  %i.ef = and <2 x i64> %wide.load110, %broadcast.splat106
  %i.eg = lshr <2 x i64> %i.ee, %broadcast.splat104
  %i.eh = lshr <2 x i64> %i.ef, %broadcast.splat104
  %i.ei = or <2 x i64> %i.ec, %i.eg
  %i.ej = or <2 x i64> %i.ed, %i.eh
  store <2 x i64> %i.ei, ptr %i.du, align 8, !tbaa !68
  store <2 x i64> %i.ej, ptr %i.dv, align 8, !tbaa !68
  %index.next111 = add nuw i64 %index108, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next111, %n.vec100
  br i1 %i.ek, label %Abc_TtSwapVars.exit.i, label %vector.body107, !llvm.loop !174

scalar.ph97:                                      ; preds = %.lr.ph.i37.i
  %i.el = load i64, ptr %i.i, align 8, !tbaa !68  ; 3 uses
  %i.em = and i64 %i.el, %i.do
  %i.en = and i64 %i.el, %i.dq
  %i.eo = shl i64 %i.en, %i.dr
  %i.ep = or i64 %i.eo, %i.em
  %i.eq = and i64 %i.el, %i.dt
  %i.er = lshr i64 %i.eq, %i.dr
  %i.es = or i64 %i.ep, %i.er
  store i64 %i.es, ptr %i.i, align 8, !tbaa !68
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph97.1

scalar.ph97.1:                                    ; preds = %scalar.ph97
  %i.et = load i64, ptr %i.ay, align 8, !tbaa !68 ; 3 uses
  %i.eu = and i64 %i.et, %i.do
  %i.ev = and i64 %i.et, %i.dq
  %i.ew = shl i64 %i.ev, %i.dr
  %i.ex = or i64 %i.ew, %i.eu
  %i.ey = and i64 %i.et, %i.dt
  %i.ez = lshr i64 %i.ey, %i.dr
  %i.fa = or i64 %i.ex, %i.ez
  store i64 %i.fa, ptr %i.ay, align 8, !tbaa !68
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph97.2

scalar.ph97.2:                                    ; preds = %scalar.ph97.1
  %i.fb = load i64, ptr %i.az, align 8, !tbaa !68 ; 3 uses
  %i.fc = and i64 %i.fb, %i.do
  %i.fd = and i64 %i.fb, %i.dq
  %i.fe = shl i64 %i.fd, %i.dr
  %i.ff = or i64 %i.fe, %i.fc
  %i.fg = and i64 %i.fb, %i.dt
  %i.fh = lshr i64 %i.fg, %i.dr
  %i.fi = or i64 %i.ff, %i.fh
  store i64 %i.fi, ptr %i.az, align 8, !tbaa !68
  br label %Abc_TtSwapVars.exit.i

bb.j:                                             ; preds = %bb.h
  %i.fj = icmp slt i32 %.051.i, 6
  br i1 %i.fj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.k
  %i.fk = trunc i64 %indvars.iv.i to i32
  %i.fl = add i32 %i.fk, -6                       ; 2 uses
  %i.fm = shl nuw i32 1, %i.fl                    ; 3 uses
  %i.fn = shl nuw nsw i32 1, %.051.i
  %i.fo = zext nneg i32 %i.fn to i64              ; 3 uses
  %i.fp = shl i32 2, %i.fl
  %i.fq = sext i32 %i.fp to i64                   ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.de
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !68 ; 5 uses
  %i.ft = xor i64 %i.fs, -1                       ; 2 uses
  %i.fu = sext i32 %i.fm to i64                   ; 2 uses
  %smax152.i.i = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 1)
  %wide.trip.count153.i.i = zext nneg i32 %smax152.i.i to i64 ; 3 uses
  %i.fv = shl nuw nsw i64 %wide.trip.count153.i.i, 3 ; 2 uses
  %i.fw = shl nsw i64 %i.fq, 3
  %i.fx = shl nsw i64 %i.fu, 3                    ; 2 uses
  %min.iters.check118 = icmp slt i32 %i.fm, 2
  %i.fy = getelementptr i8, ptr %i.ar, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fv
  %i.ga = getelementptr i8, ptr %i.au, i64 %i.fx
  %i.gb = getelementptr i8, ptr %i.ax, i64 %i.fv
  %n.vec120 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert121 = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat122 = shufflevector <2 x i64> %broadcast.splatinsert121, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert123 = insertelement <2 x i64> poison, i64 %i.fo, i64 0
  %broadcast.splat124 = shufflevector <2 x i64> %broadcast.splatinsert123, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat126 = shufflevector <2 x i64> %broadcast.splatinsert125, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.i34.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.i34.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.gz, %._crit_edge.us.i36.i ], [ %i.i, %.preheader.lr.ph.i34.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.fu ; 2 uses
  br i1 %min.iters.check118, label %scalar.ph117.preheader, label %vector.memcheck

scalar.ph117.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i35.i
  br label %scalar.ph117

vector.memcheck:                                  ; preds = %.preheader.us.i35.i
  %i.gc = mul i64 %i.fw, %indvar                  ; 3 uses
  %scevgep116 = getelementptr i8, ptr %i.fz, i64 %i.gc
  %scevgep115 = getelementptr i8, ptr %i.ga, i64 %i.gc
  %scevgep = getelementptr i8, ptr %i.gb, i64 %i.gc
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep116
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph117.preheader, label %vector.body127

vector.body127:                                   ; preds = %vector.memcheck, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index128 ; 2 uses
  %wide.load129 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !68, !alias.scope !175, !noalias !178 ; 2 uses
  %i.ge = and <2 x i64> %wide.load129, %broadcast.splat122
  %i.gf = lshr <2 x i64> %i.ge, %broadcast.splat124
  %i.gg = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index128 ; 2 uses
  %wide.load130 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !68, !alias.scope !178 ; 2 uses
  %i.gh = shl <2 x i64> %wide.load130, %broadcast.splat124
  %i.gi = and <2 x i64> %i.gh, %broadcast.splat122
  %i.gj = and <2 x i64> %wide.load129, %broadcast.splat126
  %i.gk = or <2 x i64> %i.gi, %i.gj
  store <2 x i64> %i.gk, ptr %i.gd, align 8, !tbaa !68, !alias.scope !175, !noalias !178
  %i.gl = and <2 x i64> %wide.load130, %broadcast.splat122
  %i.gm = or <2 x i64> %i.gl, %i.gf
  store <2 x i64> %i.gm, ptr %i.gg, align 8, !tbaa !68, !alias.scope !178
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next131, %n.vec120
  br i1 %i.gn, label %._crit_edge.us.i36.i, label %vector.body127, !llvm.loop !180

scalar.ph117:                                     ; preds = %scalar.ph117.preheader, %scalar.ph117
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph117 ], [ 0, %scalar.ph117.preheader ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !68 ; 2 uses
  %i.gq = and i64 %i.gp, %i.fs
  %i.gr = lshr i64 %i.gq, %i.fo
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gs = load i64, ptr %gep170.i.i, align 8, !tbaa !68 ; 2 uses
  %i.gt = shl i64 %i.gs, %i.fo
  %i.gu = and i64 %i.gt, %i.fs
  %i.gv = and i64 %i.gp, %i.ft
  %i.gw = or i64 %i.gu, %i.gv
  store i64 %i.gw, ptr %i.go, align 8, !tbaa !68
  %i.gx = and i64 %i.gs, %i.fs
  %i.gy = or i64 %i.gx, %i.gr
  store i64 %i.gy, ptr %gep170.i.i, align 8, !tbaa !68
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph117, !llvm.loop !181

._crit_edge.us.i36.i:                             ; preds = %vector.body127, %scalar.ph117
  %i.gz = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.fq ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %i.aa
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ha, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !182

bb.l:                                             ; preds = %bb.j
  %i.hb = add nsw i32 %.051.i, -6                 ; 3 uses
  %i.hc = shl nuw i32 1, %i.hb                    ; 4 uses
  %i.hd = trunc i64 %indvars.iv.i to i32
  %i.he = add i32 %i.hd, -6                       ; 2 uses
  %i.hf = shl nuw i32 1, %i.he                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.lr.ph.i.i

.preheader120.lr.ph.i.i:                          ; preds = %bb.l
  %i.hg = shl i32 2, %i.he
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %.not131.i.i = icmp eq i32 %i.hb, 31
  br i1 %.not131.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.us.us.preheader.i.i

.preheader120.us.us.preheader.i.i:                ; preds = %.preheader120.lr.ph.i.i
  %i.hi = shl i32 2, %i.hb                        ; 3 uses
  %smax.i27.i = tail call i32 @llvm.smax.i32(i32 %i.hc, i32 1) ; 2 uses
  %i.hj = sext i32 %i.hi to i64                   ; 6 uses
  %i.hk = sext i32 %i.hc to i64                   ; 2 uses
  %i.hl = sext i32 %i.hf to i64                   ; 4 uses
  %wide.trip.count.i28.i = zext nneg i32 %smax.i27.i to i64 ; 4 uses
  %i.hm = shl nsw i64 %i.hk, 3                    ; 2 uses
  %i.hn = shl nsw i64 %i.hh, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.hj, i64 %i.hl)
  %i.ho = icmp slt i32 %i.hi, %i.hf
  %umin = zext i1 %i.ho to i64                    ; 3 uses
  %i.hp = or disjoint i64 %umin, %i.hj
  %i.hq = sub i64 %smax, %i.hp                    ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hj, i64 1) ; 2 uses
  %i.hr = shl nuw nsw i64 %wide.trip.count.i28.i, 3 ; 2 uses
  %i.hs = shl nsw i64 %i.hl, 3                    ; 2 uses
  %2 = udiv i64 %i.hq, %umax
  %3 = add i64 %2, %umin
  %4 = shl i64 %3, 3
  %5 = mul i64 %4, %i.hj
  %i.ht = getelementptr i8, ptr %i.ah, i64 %i.hm
  %i.hu = getelementptr i8, ptr %i.ak, i64 %i.hs
  %i.hv = getelementptr i8, ptr %i.an, i64 %5
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hs
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.hr
  %min.iters.check147 = icmp slt i32 %i.hc, 12
  %stride.check = icmp slt i32 %i.hi, 0
  %n.vec149 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i28.i, 1
  %i.hy = icmp slt i32 %i.hc, 2
  %unroll_iter = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar136 = phi i64 [ %indvar.next137, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.is, %._crit_edge124.us.us.i.i ], [ %i.i, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.hz = mul i64 %i.hn, %indvar136               ; 4 uses
  %scevgep138 = getelementptr i8, ptr %i.ht, i64 %i.hz
  %scevgep138.a = getelementptr i8, ptr %i.hu, i64 %i.hz
  %scevgep140 = getelementptr i8, ptr %i.hx, i64 %i.hz
  %invariant.gep.i29.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hk
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hl
  %scevgep139 = getelementptr i8, ptr %i.ao, i64 %i.hz
  %scevgep141 = getelementptr i8, ptr %scevgep139, i64 24
  %6 = getelementptr i8, ptr %scevgep141, i64 %i.ae
  %invariant.gep = getelementptr i8, ptr %6, i64 %i.hm
  %invariant.gep183 = getelementptr i8, ptr %invariant.gep, i64 %i.hr
  %bound0142 = icmp ult ptr %scevgep138, %scevgep140
  br label %.preheader119.us.us.i.i

scalar.ph146:                                     ; preds = %scalar.ph146.preheader, %scalar.ph146
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph146 ], [ 0, %scalar.ph146.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph146 ], [ 0, %scalar.ph146.preheader ]
  %i.ia = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !68
  %i.ic = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !68
  store i64 %i.id, ptr %i.ia, align 8, !tbaa !68
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !68
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.ie = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !68
  %i.ig = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !68
  store i64 %i.ih, ptr %i.ie, align 8, !tbaa !68
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !68
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph146, !llvm.loop !183

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ 0, %.preheader120.us.us.i.i ], [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep.i29.i, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  br i1 %min.iters.check147, label %scalar.ph146.preheader, label %scalar.ph146.preheader.a

scalar.ph146.preheader:                           ; preds = %scalar.ph146.preheader.a, %.preheader119.us.us.i.i
  br i1 %i.hy, label %scalar.ph146.epil.preheader, label %scalar.ph146

scalar.ph146.preheader.a:                         ; preds = %.preheader119.us.us.i.i
  %7 = udiv i64 %i.hq, %umax
  %8 = add i64 %7, %umin
  %9 = shl i64 %8, 3
  %10 = mul i64 %9, %i.hj
  %gep184 = getelementptr i8, ptr %invariant.gep183, i64 %10
  %bound1143 = icmp ult ptr %scevgep138.a, %gep184
  %found.conflict144 = and i1 %bound0142, %bound1143
  %11 = or i1 %found.conflict144, %stride.check
  br i1 %11, label %scalar.ph146.preheader, label %vector.body150

vector.body150:                                   ; preds = %scalar.ph146.preheader.a, %vector.body150
  %index151 = phi i64 [ %index.next156, %vector.body150 ], [ 0, %scalar.ph146.preheader.a ] ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index151 ; 3 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 16     ; 2 uses
  %wide.load152 = load <2 x i64>, ptr %i.ii, align 8, !tbaa !68, !alias.scope !184, !noalias !187
  %wide.load153 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !68, !alias.scope !184, !noalias !187
  %i.ik = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index151 ; 3 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16     ; 2 uses
  %wide.load154 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !68, !alias.scope !187
  %wide.load155 = load <2 x i64>, ptr %i.il, align 8, !tbaa !68, !alias.scope !187
  store <2 x i64> %wide.load154, ptr %i.ii, align 8, !tbaa !68, !alias.scope !184, !noalias !187
  store <2 x i64> %wide.load155, ptr %i.ij, align 8, !tbaa !68, !alias.scope !184, !noalias !187
  store <2 x i64> %wide.load152, ptr %i.ik, align 8, !tbaa !68, !alias.scope !187
  store <2 x i64> %wide.load153, ptr %i.il, align 8, !tbaa !68, !alias.scope !187
  %index.next156 = add nuw i64 %index151, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next156, %n.vec149
  br i1 %i.im, label %._crit_edge.us.us.i.i, label %vector.body150, !llvm.loop !189

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph146
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %scalar.ph146.epil.preheader

scalar.ph146.epil.preheader:                      ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %scalar.ph146.preheader
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %scalar.ph146.preheader ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.in = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !68
  %i.ip = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !68
  store i64 %i.iq, ptr %i.in, align 8, !tbaa !68
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !68
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body150, %scalar.ph146.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.hj ; 2 uses
  %i.ir = icmp slt i64 %indvars.iv.next147.i.i, %i.hl
  br i1 %i.ir, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !190

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.is = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hh ; 2 uses
  %i.it = icmp ult ptr %i.is, %i.aa
  %indvar.next137 = add i64 %indvar136, 1
  br i1 %i.it, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !191

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body107, %scalar.ph97, %scalar.ph97.1, %scalar.ph97.2, %.preheader120.lr.ph.i.i, %bb.l, %bb.k, %bb.i, %Abc_TtHasVar.exit.thread41.i
  %i.iu = add nsw i32 %.051.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.e, %bb.b
  %.1.i = phi i32 [ %i.iu, %Abc_TtSwapVars.exit.i ], [ %.051.i, %bb.c ], [ %.051.i, %.preheader.lr.ph.i.i ], [ %.051.i, %bb.e ], [ %.051.i, %bb.b ], [ %.051.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %exitcond.not.i, label %Abc_TtMinBase.exit, label %.lr.ph.i.split, !llvm.loop !170

Abc_TtMinBase.exit.thread:                        ; preds = %._crit_edge, %.lr.ph55
  store i64 0, ptr %i.e, align 8, !tbaa !68
  br label %._crit_edge51.thread

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.thread.i.us
  %.0.lcssa.i = phi i32 [ %.1.i.us, %Abc_TtHasVar.exit.thread.i.us ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ]
  %.0.lcssa.i.fr = freeze i32 %.0.lcssa.i         ; 6 uses
  %i.iv = sext i32 %.0.lcssa.i.fr to i64          ; 4 uses
  store i64 %i.iv, ptr %i.e, align 8, !tbaa !68
  %i.iw = icmp sgt i32 %.0.lcssa.i.fr, 0
  br i1 %i.iw, label %.lr.ph50.preheader, label %._crit_edge51.thread

.lr.ph50.preheader:                               ; preds = %Abc_TtMinBase.exit
  %wide.trip.count = zext nneg i32 %.0.lcssa.i.fr to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0.lcssa.i.fr, 4
  br i1 %min.iters.check, label %.lr.ph50.preheader179, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph50.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %wide.load = load <2 x i32>, ptr %i.ix, align 16, !tbaa !52
  %wide.load96 = load <2 x i32>, ptr %i.iy, align 8, !tbaa !52
  %i.iz = sext <2 x i32> %wide.load to <2 x i64>
  %i.ja = sext <2 x i32> %wide.load96 to <2 x i64>
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <2 x i64> %i.iz, ptr %i.jb, align 8, !tbaa !68
  store <2 x i64> %i.ja, ptr %i.jc, align 8, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge51, label %.lr.ph50.preheader179

.lr.ph50.preheader179:                            ; preds = %.lr.ph50.preheader, %middle.block
  %indvars.iv68.ph = phi i64 [ 0, %.lr.ph50.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader179, %.lr.ph50
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph50 ], [ %indvars.iv68.ph, %.lr.ph50.preheader179 ] ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv68
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !52
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv68
  store i64 %i.jg, ptr %i.jh, align 8, !tbaa !68
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next69, %wide.trip.count
  br i1 %exitcond71.not, label %._crit_edge51, label %.lr.ph50, !llvm.loop !193

._crit_edge51.thread:                             ; preds = %Abc_TtMinBase.exit.thread, %Abc_TtMinBase.exit
  %.ph = phi i64 [ %i.iv, %Abc_TtMinBase.exit ], [ 0, %Abc_TtMinBase.exit.thread ] ; 2 uses
  %i.ji = load i64, ptr %i.h, align 8, !tbaa !68
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.ph
  store i64 %i.ji, ptr %i.jj, align 8, !tbaa !68
  br label %bb.m

._crit_edge51:                                    ; preds = %.lr.ph50, %middle.block
  %i.jk = load i64, ptr %i.h, align 8, !tbaa !68
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.iv
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !68
  %i.jm = icmp ult i32 %.0.lcssa.i.fr, 7
  %i.jn = add nsw i32 %.0.lcssa.i.fr, -6
  %i.jo = shl nuw i32 1, %i.jn
  %spec.select = select i1 %i.jm, i32 1, i32 %i.jo
  %i.jp = sext i32 %spec.select to i64
  %i.jq = shl nsw i64 %i.jp, 3
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge51, %._crit_edge51.thread
  %i.jr = phi i64 [ %i.iv, %._crit_edge51 ], [ %.ph, %._crit_edge51.thread ]
  %i.js = phi i64 [ %i.jq, %._crit_edge51 ], [ 8, %._crit_edge51.thread ]
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.jr
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ju, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.js, i1 false)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.jv = load i64, ptr %i.d, align 8, !tbaa !68
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = add i32 %.04052, %i.jw
  %i.jy = load i64, ptr %0, align 8, !tbaa !68
  %i.jz = icmp ugt i64 %i.jy, %indvars.iv.next73
  br i1 %i.jz, label %.lr.ph55, label %._crit_edge56, !llvm.loop !194

._crit_edge56:                                    ; preds = %bb.m, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Abc_LutCascadeCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !68
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree nounwind uwtable
define noundef ptr @Abc_LutCascadeTest(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
.lr.ph.i:
  %i.a = tail call noalias dereferenceable_or_null(160) ptr @calloc(i64 noundef 20, i64 noundef 8) #34 ; 21 uses
  store i64 2, ptr %i.a, align 8, !tbaa !68
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 6, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 2, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 3, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 4, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 5, ptr %i.h, align 8, !tbaa !68
  %i.i = getelementptr i8, ptr %i.a, i64 72
  store i64 9, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -9223372036854775808, ptr %i.j, align 8, !tbaa !68
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 8, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 4, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 9, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 6, ptr %i.n, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 7, ptr %i.o, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 8, ptr %i.p, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 10, ptr %i.q, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 -281479271743490, ptr %i.r, align 8, !tbaa !68
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef 2) ; 0 uses
  tail call void @Abc_LutCascadePrintLut(ptr noundef nonnull readonly %i.a, i32 noundef 0, i32 noundef 1, i32 noundef %1, i32 noundef 9)
  tail call void @Abc_LutCascadePrintLut(ptr noundef nonnull readonly %i.a, i32 noundef 1, i32 noundef 11, i32 noundef %1, i32 noundef 9)
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_TtGetGuide(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !63      ; 2 uses
  %.not61 = icmp eq i8 %i.a, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i8 [ %i.h, %bb.c ], [ %i.a, %bb.a ]
  %.063 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %.04762 = phi i32 [ %.148, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond57 = icmp ult i8 %i.c, 10
  br i1 %or.cond57, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nsw i32 %.04762, 1
  %i.e = icmp eq i32 %.04762, %1
  br i1 %i.e, label %._crit_edge.loopexit.split.loop.exit, label %bb.c
end_hunk_0
