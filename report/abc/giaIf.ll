Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Abc_TtSwapVars:bb.a
  %bound1192 = icmp ult ptr %invariant.gep169, %i.da
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %scalar.ph188.preheader, label %vector.body200

vector.body200:                                   ; preds = %vector.memcheck190, %vector.body200
  %index201 = phi i64 [ %index.next204, %vector.body200 ], [ 0, %vector.memcheck190 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index201 ; 2 uses
  %wide.load202 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !110, !alias.scope !481, !noalias !482 ; 2 uses
  %i.dd = and <2 x i64> %broadcast.splat, %wide.load202
  %i.de = lshr <2 x i64> %i.dd, %broadcast.splat197
  %i.df = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index201 ; 2 uses
  %wide.load203 = load <2 x i64>, ptr %i.df, align 8, !tbaa !110, !alias.scope !482 ; 2 uses
  %i.dg = shl <2 x i64> %wide.load203, %broadcast.splat197
  %i.dh = and <2 x i64> %i.dg, %broadcast.splat
  %i.di = and <2 x i64> %wide.load202, %broadcast.splat199
  %i.dj = or <2 x i64> %i.dh, %i.di
  store <2 x i64> %i.dj, ptr %i.dc, align 8, !tbaa !110, !alias.scope !481, !noalias !482
  %i.dk = and <2 x i64> %wide.load203, %broadcast.splat
  %i.dl = or <2 x i64> %i.dk, %i.de
  store <2 x i64> %i.dl, ptr %i.df, align 8, !tbaa !110, !alias.scope !482
  %index.next204 = add nuw i64 %index201, 2       ; 2 uses
  %i.dm = icmp eq i64 %index.next204, %n.vec195
  br i1 %i.dm, label %._crit_edge.us, label %vector.body200, !llvm.loop !471

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph188 ], [ 0, %scalar.ph188.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !110 ; 2 uses
  %i.dp = and i64 %i.cq, %i.do
  %i.dq = lshr i64 %i.dp, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dr = load i64, ptr %gep170, align 8, !tbaa !110 ; 2 uses
  %i.ds = shl i64 %i.dr, %i.cl
  %i.dt = and i64 %i.ds, %i.cq
  %i.du = and i64 %i.do, %i.cr
  %i.dv = or i64 %i.dt, %i.du
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !110
  %i.dw = and i64 %i.dr, %i.cq
  %i.dx = or i64 %i.dw, %i.dq
  store i64 %i.dx, ptr %gep170, align 8, !tbaa !110
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph188, !llvm.loop !472

._crit_edge.us:                                   ; preds = %vector.body200, %scalar.ph188
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ch
  %indvar.next187 = add i64 %indvar186, 1
  br i1 %i.dz, label %.preheader.us, label %.loopexit, !llvm.loop !473

bb.h:                                             ; preds = %bb.f
  %i.ea = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.eb = shl nuw i32 1, %i.ea                    ; 4 uses
  %i.ec = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ed = shl nuw i32 1, %i.ec                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.ec, 31
  %i.ee = shl i32 2, %i.ec
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.ea, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.eg = shl i32 2, %i.ea                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 1) ; 2 uses
  %i.eh = sext i32 %i.eg to i64                   ; 5 uses
  %i.ei = sext i32 %i.eb to i64                   ; 2 uses
  %i.ej = sext i32 %i.ed to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ek = shl nsw i64 %i.ef, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %smax175 = tail call i64 @llvm.smax.i64(i64 %i.ej, i64 %i.eh)
  %i.el = icmp slt i32 %i.eg, %i.ed
  %umin = zext i1 %i.el to i64                    ; 2 uses
  %i.em = or disjoint i64 %umin, %i.eh
  %i.en = sub i64 %smax175, %i.em
  %min.iters.check = icmp slt i32 %i.eb, 4
  %invariant.op = add i64 %i.ei, %wide.trip.count
  %invariant.op236 = add i64 %i.ej, %wide.trip.count
  %stride.check = icmp slt i32 %i.eg, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp slt i32 %i.eb, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod233 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fo, %._crit_edge124.us.us ] ; 3 uses
  %i.ep = mul i64 %i.ek, %indvar                  ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ei ; 2 uses
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ej ; 2 uses
  %invariant.gep234 = getelementptr i8, ptr %0, i64 %i.ep
  %invariant.gep238 = getelementptr i8, ptr %0, i64 %i.ep
  br label %.preheader119.us.us

.preheader119.us.us:                              ; preds = %._crit_edge.us.us, %.preheader120.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %._crit_edge.us.us ], [ 0, %.preheader120.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader119.us.us
  br i1 %i.eo, label %scalar.ph.epil.preheader, label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader119.us.us
  %i.eq = udiv i64 %i.en, %umax
  %i.er = add i64 %i.eq, %umin
  %i.es = mul i64 %i.er, %i.eh                    ; 2 uses
  %.reass = add i64 %i.es, %invariant.op
  %i.et = shl i64 %.reass, 3
  %gep235 = getelementptr i8, ptr %invariant.gep234, i64 %i.et
  %.reass237 = add i64 %i.es, %invariant.op236
  %i.eu = shl i64 %.reass237, 3
  %gep239 = getelementptr i8, ptr %invariant.gep238, i64 %i.eu
  %bound0 = icmp ult ptr %invariant.gep, %gep239
  %bound1 = icmp ult ptr %invariant.gep167, %gep235
  %found.conflict = and i1 %bound0, %bound1
  %i.ev = or i1 %found.conflict, %stride.check
  br i1 %i.ev, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ew, align 8, !tbaa !110, !alias.scope !483, !noalias !484
  %wide.load176 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !110, !alias.scope !483, !noalias !484
  %i.ey = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16     ; 2 uses
  %wide.load177 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !110, !alias.scope !484
  %wide.load178 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !110, !alias.scope !484
  store <2 x i64> %wide.load177, ptr %i.ew, align 8, !tbaa !110, !alias.scope !483, !noalias !484
  store <2 x i64> %wide.load178, ptr %i.ex, align 8, !tbaa !110, !alias.scope !483, !noalias !484
  store <2 x i64> %wide.load, ptr %i.ey, align 8, !tbaa !110, !alias.scope !484
  store <2 x i64> %wide.load176, ptr %i.ez, align 8, !tbaa !110, !alias.scope !484
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %._crit_edge.us.us, label %vector.body, !llvm.loop !477

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !110
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !110
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !110
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !110
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !110
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !110
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !110
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !110
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !478

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.fj = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !110
  %i.fl = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !110
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !110
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !110
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eh ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next147, %i.ej
  br i1 %i.fn, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !479

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fo = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ef ; 2 uses
  %i.fp = icmp ult ptr %i.fo, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fp, label %.preheader120.us.us, label %.loopexit, !llvm.loop !480

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body220, %scalar.ph208, %scalar.ph208.1, %scalar.ph208.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @Abc_TtDeriveBiDecOne(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #23 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 9 uses
  %i.b = alloca [64 x i64], align 16              ; 9 uses
  %i.c = alloca [64 x i64], align 16              ; 26 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.e = icmp samesign ult i32 %1, 7
  %i.f = add nsw i32 %1, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g
  %.fr83.i = freeze i32 %i.h                      ; 11 uses
  %i.i = icmp sgt i32 %.fr83.i, 0                 ; 4 uses
  br i1 %i.i, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %bb.a
  %wide.trip.count24.i = zext nneg i32 %.fr83.i to i64
  %i.j = shl nuw nsw i64 %wide.trip.count24.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 8 %0, i64 %i.j, i1 false), !tbaa !110
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph18.preheader.i, %bb.a
  %.not21 = icmp eq i32 %1, 0
  br i1 %.not21, label %Abc_TtShrink.exit, label %.lr.ph

.lr.ph:                                           ; preds = %Abc_TtCopy.exit
  %i.k = icmp eq i32 %.fr83.i, 1
  %i.l = sext i32 %.fr83.i to i64
  %.idx.i.i = shl nsw i64 %i.l, 3                 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i.i
  %i.n = zext i32 %.fr83.i to i64                 ; 12 uses
  %.idx.i7.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i7.i
  %wide.trip.count30 = zext nneg i32 %1 to i64    ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check63 = icmp ult i32 %.fr83.i, 4
  %n.vec65 = and i64 %i.n, 2147483644             ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec65, %i.n
  %min.iters.check49 = icmp ult i32 %.fr83.i, 4
  %n.vec51 = and i64 %i.n, 2147483644             ; 3 uses
  %cmp.n60 = icmp eq i64 %n.vec51, %i.n
  %min.iters.check = icmp ult i32 %.fr83.i, 4
  %n.vec = and i64 %i.n, 4294967292               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.c, align 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %i.p = phi i64 [ %.promoted, %.lr.ph.split.us.preheader ], [ %i.af, %bb.b ] ; 3 uses
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next28, %bb.b ] ; 4 uses
  %i.q = trunc nuw nsw i64 %indvars.iv27 to i32
  %i.r = shl nuw i32 1, %i.q                      ; 2 uses
  %i.s = and i32 %i.r, %2
  %.not.us = icmp eq i32 %i.s, 0
  br i1 %.not.us, label %Abc_TtCofactor0p.exit.thread24.i.us, label %bb.b

Abc_TtCofactor0p.exit.thread24.i.us:              ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv27
  %i.u = load i64, ptr %i.t, align 8, !tbaa !110
  %i.v = and i64 %i.u, %i.p                       ; 2 uses
  %i.w = zext nneg i32 %i.r to i64                ; 2 uses
  %i.x = shl i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv27
  %i.z = load i64, ptr %i.y, align 8, !tbaa !110
  %i.aa = and i64 %i.z, %i.p                      ; 2 uses
  %i.ab = lshr i64 %i.aa, %i.w
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = or i64 %i.ac, %i.v
  %i.ae = or i64 %i.ad, %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.b

bb.b:                                             ; preds = %Abc_TtCofactor0p.exit.thread24.i.us, %.lr.ph.split.us
  %i.af = phi i64 [ %i.ae, %Abc_TtCofactor0p.exit.thread24.i.us ], [ %i.p, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %._crit_edge.loopexit, label %.lr.ph.split.us, !llvm.loop !485

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph.split.preheader ] ; 6 uses
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.ai = and i32 %i.ah, %2
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.aj = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %.lr.ph.i.i, label %Abc_TtExist.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !110 ; 2 uses
  %i.am = zext nneg i32 %i.ah to i64              ; 4 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert66 = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat67 = shufflevector <2 x i64> %broadcast.splatinsert66, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert68 = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat69 = shufflevector <2 x i64> %broadcast.splatinsert68, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph64
  %index71 = phi i64 [ 0, %vector.ph64 ], [ %index.next74, %vector.body70 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index71 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load72 = load <2 x i64>, ptr %i.an, align 16, !tbaa !110
  %wide.load73 = load <2 x i64>, ptr %i.ao, align 16, !tbaa !110
  %i.ap = and <2 x i64> %wide.load72, %broadcast.splat67 ; 2 uses
  %i.aq = and <2 x i64> %wide.load73, %broadcast.splat67 ; 2 uses
  %i.ar = shl <2 x i64> %i.ap, %broadcast.splat69
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat69
  %i.at = or <2 x i64> %i.ar, %i.ap
  %i.au = or <2 x i64> %i.as, %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index71 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <2 x i64> %i.at, ptr %i.av, align 16, !tbaa !110
  store <2 x i64> %i.au, ptr %i.aw, align 16, !tbaa !110
  %index.next74 = add nuw i64 %index71, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.ax, label %middle.block75, label %vector.body70, !llvm.loop !486

middle.block75:                                   ; preds = %vector.body70
  br i1 %cmp.n76, label %.lr.ph.i18.i, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %.lr.ph.i.i, %middle.block75
  %indvars.iv56.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec65, %middle.block75 ]
  br label %scalar.ph62

scalar.ph62:                                      ; preds = %scalar.ph62.preheader, %scalar.ph62
  %indvars.iv56.i.i = phi i64 [ %indvars.iv.next57.i.i, %scalar.ph62 ], [ %indvars.iv56.i.i.ph, %scalar.ph62.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv56.i.i
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !110
  %i.ba = and i64 %i.az, %i.al                    ; 2 uses
  %i.bb = shl i64 %i.ba, %i.am
  %i.bc = or i64 %i.bb, %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv56.i.i
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !110
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %exitcond60.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, %i.n
  br i1 %exitcond60.not.i.i, label %.lr.ph.i18.i, label %scalar.ph62, !llvm.loop !487

bb.e:                                             ; preds = %bb.c
  %i.be = add nsw i64 %indvars.iv, -6             ; 4 uses
  %i.bf = trunc nsw i64 %i.be to i32              ; 2 uses
  %i.bg = shl nuw i32 1, %i.bf                    ; 6 uses
  br i1 %i.i, label %.preheader.lr.ph.i.i, label %Abc_TtExist.exit

.preheader.lr.ph.i.i:                             ; preds = %bb.e
  %i.bh = icmp eq i64 %i.be, 31
  %i.bi = shl i32 2, %i.bf
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.bk = sext i32 %i.bg to i64                   ; 6 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %min.iters.check93 = icmp slt i32 %i.bg, 4
  %n.vec97 = and i64 %wide.trip.count.i.i, 2147483644
  %exitcond.not.i.i = icmp slt i32 %i.bg, 2
  %exitcond.not.i.i.1 = icmp eq i64 %i.be, 1
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.04251.us.i.i = phi ptr [ %i.ca, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 6 uses
  %.04350.us.i.i = phi ptr [ %i.bz, %._crit_edge.us.i.i ], [ %i.c, %.preheader.us.preheader.i.i ] ; 5 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.04251.us.i.i, i64 %i.bk ; 4 uses
  br i1 %min.iters.check93, label %scalar.ph92, label %vector.body98

vector.body98:                                    ; preds = %.preheader.us.i.i, %vector.body98
  %index99 = phi i64 [ %index.next102, %vector.body98 ], [ 0, %.preheader.us.i.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %index99 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !110 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !110 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %index99 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %wide.load100, ptr %i.bn, align 8, !tbaa !110
  store <2 x i64> %wide.load101, ptr %i.bo, align 8, !tbaa !110
  %i.bp = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index99 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store <2 x i64> %wide.load100, ptr %i.bp, align 8, !tbaa !110
  store <2 x i64> %wide.load101, ptr %i.bq, align 8, !tbaa !110
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.br = icmp eq i64 %index.next102, %n.vec97
  br i1 %i.br, label %._crit_edge.us.i.i, label %vector.body98, !llvm.loop !488

scalar.ph92:                                      ; preds = %.preheader.us.i.i
  %i.bs = load i64, ptr %.04350.us.i.i, align 8, !tbaa !110 ; 2 uses
  store i64 %i.bs, ptr %.04251.us.i.i, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@Abc_TtDeriveBiDecOne:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %.04350.us.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !110 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.04251.us.i.i, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !110
  %gep.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i, i64 8
  store i64 %i.bu, ptr %gep.i.i.1, align 8, !tbaa !110
  br i1 %exitcond.not.i.i.1, label %._crit_edge.us.i.i, label %scalar.ph92.2

scalar.ph92.2:                                    ; preds = %scalar.ph92.1
  %i.bw = getelementptr inbounds nuw i8, ptr %.04350.us.i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !110 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.04251.us.i.i, i64 16
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !110
  %gep.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i, i64 16
  store i64 %i.bx, ptr %gep.i.i.2, align 8, !tbaa !110
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %vector.body98, %scalar.ph92, %scalar.ph92.1, %scalar.ph92.2
  %i.bz = getelementptr inbounds [8 x i8], ptr %.04350.us.i.i, i64 %i.bj ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.04251.us.i.i, i64 %i.bj
  %i.cb = icmp ult ptr %i.bz, %i.m
  br i1 %i.cb, label %.preheader.us.i.i, label %.preheader.us.i13.i.preheader, !llvm.loop !9

.preheader.us.i13.i.preheader:                    ; preds = %._crit_edge.us.i.i
  %min.iters.check79 = icmp slt i32 %i.bg, 4
  %n.vec81 = and i64 %wide.trip.count.i.i, 2147483644
  %exitcond.not.i16.i = icmp slt i32 %i.bg, 2
  %i.cc = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %exitcond.not.i16.i.1 = icmp eq i64 %i.be, 1
  %i.cd = add nuw nsw i64 %i.bk, 2                ; 2 uses
  br label %.preheader.us.i13.i

.lr.ph.i18.i:                                     ; preds = %scalar.ph62, %middle.block75
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check49, label %scalar.ph48.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i18.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert52 = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat53 = shufflevector <2 x i64> %broadcast.splatinsert52, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph50
  %index55 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body54 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index55 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load56 = load <2 x i64>, ptr %i.cg, align 16, !tbaa !110
  %wide.load57 = load <2 x i64>, ptr %i.ch, align 16, !tbaa !110
  %i.ci = and <2 x i64> %wide.load56, %broadcast.splat ; 2 uses
  %i.cj = and <2 x i64> %wide.load57, %broadcast.splat ; 2 uses
  %i.ck = lshr <2 x i64> %i.ci, %broadcast.splat53
  %i.cl = lshr <2 x i64> %i.cj, %broadcast.splat53
  %i.cm = or <2 x i64> %i.ck, %i.ci
  %i.cn = or <2 x i64> %i.cl, %i.cj
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index55 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x i64> %i.cm, ptr %i.co, align 16, !tbaa !110
  store <2 x i64> %i.cn, ptr %i.cp, align 16, !tbaa !110
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.cq, label %middle.block59, label %vector.body54, !llvm.loop !489

middle.block59:                                   ; preds = %vector.body54
  br i1 %cmp.n60, label %.lr.ph.preheader.i.i, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.lr.ph.i18.i, %middle.block59
  %indvars.iv58.i.i.ph = phi i64 [ 0, %.lr.ph.i18.i ], [ %n.vec51, %middle.block59 ]
  br label %scalar.ph48

scalar.ph48:                                      ; preds = %scalar.ph48.preheader, %scalar.ph48
  %indvars.iv58.i.i = phi i64 [ %indvars.iv.next59.i.i, %scalar.ph48 ], [ %indvars.iv58.i.i.ph, %scalar.ph48.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv58.i.i
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !110
  %i.ct = and i64 %i.cs, %i.cf                    ; 2 uses
  %i.cu = lshr i64 %i.ct, %i.am
  %i.cv = or i64 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv58.i.i
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !110
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, %i.n
  br i1 %exitcond62.not.i.i, label %.lr.ph.preheader.i.i, label %scalar.ph48, !llvm.loop !490

.preheader.us.i13.i:                              ; preds = %.preheader.us.i13.i.preheader, %._crit_edge.us.i17.i
  %.04453.us.i.i = phi ptr [ %i.dr, %._crit_edge.us.i17.i ], [ %i.b, %.preheader.us.i13.i.preheader ] ; 9 uses
  %.04552.us.i.i = phi ptr [ %i.dq, %._crit_edge.us.i17.i ], [ %i.c, %.preheader.us.i13.i.preheader ] ; 5 uses
  br i1 %min.iters.check79, label %scalar.ph78, label %vector.body82

vector.body82:                                    ; preds = %.preheader.us.i13.i, %vector.body82
  %index83 = phi i64 [ %index.next86, %vector.body82 ], [ 0, %.preheader.us.i13.i ] ; 3 uses
  %i.cx = add nuw nsw i64 %index83, %i.bk         ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load84 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !110 ; 2 uses
  %wide.load85 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !110 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %index83 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load84, ptr %i.da, align 8, !tbaa !110
  store <2 x i64> %wide.load85, ptr %i.db, align 8, !tbaa !110
  %i.dc = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.cx ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %wide.load84, ptr %i.dc, align 8, !tbaa !110
  store <2 x i64> %wide.load85, ptr %i.dd, align 8, !tbaa !110
  %index.next86 = add nuw i64 %index83, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next86, %n.vec81
  br i1 %i.de, label %._crit_edge.us.i17.i, label %vector.body82, !llvm.loop !491

scalar.ph78:                                      ; preds = %.preheader.us.i13.i
  %i.df = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.bk
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !110 ; 2 uses
  store i64 %i.dg, ptr %.04453.us.i.i, align 8, !tbaa !110
  %i.dh = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.bk
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !110
  br i1 %exitcond.not.i16.i, label %._crit_edge.us.i17.i, label %scalar.ph78.1

scalar.ph78.1:                                    ; preds = %scalar.ph78
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i.i, i64 %i.cc
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !110 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.04453.us.i.i, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !110
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %i.cc
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !110
  br i1 %exitcond.not.i16.i.1, label %._crit_edge.us.i17.i, label %scalar.ph78.2

scalar.ph78.2:                                    ; preds = %scalar.ph78.1
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.04552.us.i.i, i64 %i.cd
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !110 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.04453.us.i.i, i64 16
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !110
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %i.cd
  store i64 %i.dn, ptr %i.dp, align 8, !tbaa !110
  br label %._crit_edge.us.i17.i

._crit_edge.us.i17.i:                             ; preds = %vector.body82, %scalar.ph78, %scalar.ph78.1, %scalar.ph78.2
  %i.dq = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.bj ; 2 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.bj
  %i.ds = icmp ult ptr %i.dq, %i.o
  br i1 %i.ds, label %.preheader.us.i13.i, label %.lr.ph.preheader.i.i, !llvm.loop !8

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.us.i17.i, %scalar.ph48, %middle.block59, %.preheader.lr.ph.i.i
  br i1 %min.iters.check, label %.lr.ph.i20.i.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <2 x i64>, ptr %i.dt, align 16, !tbaa !110
  %wide.load45 = load <2 x i64>, ptr %i.du, align 16, !tbaa !110
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %wide.load46 = load <2 x i64>, ptr %i.dv, align 16, !tbaa !110
  %wide.load47 = load <2 x i64>, ptr %i.dw, align 16, !tbaa !110
  %i.dx = or <2 x i64> %wide.load46, %wide.load
  %i.dy = or <2 x i64> %wide.load47, %wide.load45
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <2 x i64> %i.dx, ptr %i.dz, align 16, !tbaa !110
  store <2 x i64> %i.dy, ptr %i.ea, align 16, !tbaa !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !492

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtExist.exit, label %.lr.ph.i20.i.preheader

.lr.ph.i20.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i21.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i.preheader, %.lr.ph.i20.i
  %indvars.iv.i21.i = phi i64 [ %indvars.iv.next.i22.i, %.lr.ph.i20.i ], [ %indvars.iv.i21.i.ph, %.lr.ph.i20.i.preheader ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i21.i
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !110
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i21.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !110
  %i.eg = or i64 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i21.i
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !110
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1 ; 2 uses
  %exitcond.not.i23.i = icmp eq i64 %indvars.iv.next.i22.i, %i.n
  br i1 %exitcond.not.i23.i, label %Abc_TtExist.exit, label %.lr.ph.i20.i, !llvm.loop !493

Abc_TtExist.exit:                                 ; preds = %.lr.ph.i20.i, %middle.block, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %Abc_TtExist.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count30
  br i1 %exitcond.not, label %.lr.ph61.i, label %.lr.ph.split, !llvm.loop !485

._crit_edge.loopexit:                             ; preds = %bb.b
  store i64 %i.af, ptr %i.c, align 16
  br label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %bb.f, %._crit_edge.loopexit
  %i.ei = sext i32 %.fr83.i to i64
  %.idx65.i.i.a = shl nsw i64 %i.ei, 3
  %i.ej = getelementptr inbounds i8, ptr %i.c, i64 %.idx65.i.i.a ; 2 uses
  %wide.trip.count73.i.i = zext nneg i32 %.fr83.i to i64
  br i1 %i.i, label %.lr.ph61.split.us.split.us.preheader.i, label %Abc_TtShrink.exit

.lr.ph61.split.us.split.us.preheader.i:           ; preds = %.lr.ph61.i
  %wide.trip.count107.i = zext nneg i32 %1 to i64
  %i.ek = add i64 %.idx.i.i, %i.d
  %min.iters.check107 = icmp ult i32 %.fr83.i, 4
  %n.vec109 = and i64 %i.n, 2147483644            ; 3 uses
  %cmp.n124 = icmp eq i64 %n.vec109, %i.n
  br label %.lr.ph61.split.us.split.us.i

.lr.ph61.split.us.split.us.i:                     ; preds = %bb.h, %.lr.ph61.split.us.split.us.preheader.i
  %indvars.iv101.i = phi i64 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %indvars.iv.next102.i, %bb.h ] ; 3 uses
  %.056.us.us.i = phi i32 [ 0, %.lr.ph61.split.us.split.us.preheader.i ], [ %.1.us.us.i, %bb.h ] ; 4 uses
  %indvars106.i = trunc i64 %indvars.iv101.i to i32 ; 2 uses
  %i.el = shl nuw i32 1, %indvars106.i
  %i.em = and i32 %i.el, %2
  %.not.us.us.i = icmp eq i32 %i.em, 0
  br i1 %.not.us.us.i, label %bb.h, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.lr.ph61.split.us.split.us.i
  %.not15.not18.us.us.i = icmp slt i32 %.056.us.us.i, %indvars106.i
  br i1 %.not15.not18.us.us.i, label %.lr.ph.us.us.preheader.i, label %._crit_edge.split.us.us.split.us.us.i

.lr.ph.us.us.preheader.i:                         ; preds = %.preheader.us.us.i
  %i.en = sext i32 %.056.us.us.i to i64
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.lr.ph.us.us.preheader.i
  %indvars.iv103.i = phi i64 [ %indvars.iv101.i, %.lr.ph.us.us.preheader.i ], [ %indvars.iv.next104.i, %Abc_TtSwapAdjacent.exit.us.us.us.us.i ] ; 4 uses
  %indvars.iv.next104.i = add nsw i64 %indvars.iv103.i, -1 ; 5 uses
  %i.eo = icmp slt i64 %indvars.iv103.i, 6
  br i1 %i.eo, label %.lr.ph64.i.us.us.us.us.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.us.us.i
  %i.ep = icmp eq i64 %indvars.iv.next104.i, 5
  br i1 %i.ep, label %.lr.ph.i.us.us.us.us.i, label %.preheader.lr.ph.i.us.us.us.us.i

.preheader.lr.ph.i.us.us.us.us.i:                 ; preds = %bb.g
  %i.eq = icmp samesign ult i64 %indvars.iv103.i, 8
  %i.er = trunc i64 %indvars.iv103.i to i32
  %i.es = add i32 %i.er, -7
  %i.et = shl nuw i32 1, %i.es
  %i.eu = select i1 %i.eq, i32 1, i32 %i.et       ; 7 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  %i.ew = shl i32 %i.eu, 2                        ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  br i1 %i.ev, label %.preheader.us.preheader.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i

.preheader.us.preheader.i.us.us.us.us.i:          ; preds = %.preheader.lr.ph.i.us.us.us.us.i
  %i.ey = shl nuw nsw i32 %i.eu, 1
  %i.ez = zext nneg i32 %i.eu to i64              ; 6 uses
  %i.fa = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fb = shl nsw i64 %i.ex, 3                    ; 4 uses
  %i.fc = add i64 %i.fb, %i.d
  %umax = call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.fc)
  %i.fd = sub i64 %umax, %i.d                     ; 2 uses
  %i.fe = icmp ne i64 %i.fd, %i.fb
  %umin = zext i1 %i.fe to i64                    ; 2 uses
  %i.ff = or disjoint i64 %i.fb, %umin
  %i.fg = sub i64 %i.fd, %i.ff
  %umax131 = call i64 @llvm.umax.i64(i64 %i.fb, i64 1)
  %i.fh = udiv i64 %i.fg, %umax131
  %i.fi = add i64 %i.fh, %umin
  %i.fj = shl i64 %i.fi, 3
  %i.fk = mul i64 %i.fj, %i.ex                    ; 2 uses
  %i.fl = shl nuw nsw i64 %i.ez, 3                ; 2 uses
  %i.fm = shl nuw nsw i64 %i.fa, 3                ; 2 uses
  %i.fn = getelementptr i8, ptr %i.c, i64 %i.fk
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fl
  %scevgep = getelementptr i8, ptr %i.fo, i64 %i.fm
  %scevgep132 = getelementptr i8, ptr %i.c, i64 %i.fm
  %i.fp = shl nuw nsw i64 %i.ez, 4
  %i.fq = getelementptr i8, ptr %i.c, i64 %i.fk
  %scevgep133 = getelementptr i8, ptr %i.fq, i64 %i.fp
  %scevgep134 = getelementptr i8, ptr %i.c, i64 %i.fl
  %min.iters.check136 = icmp ult i32 %i.eu, 4
  %bound0 = icmp ult ptr %scevgep134, %scevgep
  %bound1 = icmp ult ptr %scevgep132, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ew, 0
  %i.fr = or i1 %found.conflict, %stride.check
  %n.vec139 = and i64 %i.ez, 2147483644
  %xtraiter = and i64 %i.ez, 1
  %i.fs = icmp eq i32 %i.eu, 1
  %unroll_iter = and i64 %i.ez, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod156 = trunc i32 %i.eu to i1
  br label %.preheader.us.i.us.us.us.us.i

.preheader.us.i.us.us.us.us.i:                    ; preds = %._crit_edge.us.i.us.us.us.us.i, %.preheader.us.preheader.i.us.us.us.us.i
  %.061.us.i.us.us.us.us.i = phi ptr [ %i.ge, %._crit_edge.us.i.us.us.us.us.i ], [ %i.c, %.preheader.us.preheader.i.us.us.us.us.i ] ; 3 uses
  %invariant.gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ez ; 4 uses
  %invariant.gep80.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.fa ; 4 uses
  %brmerge = select i1 %min.iters.check136, i1 true, i1 %i.fr
  br i1 %brmerge, label %scalar.ph135.preheader, label %vector.body140

scalar.ph135.preheader:                           ; preds = %.preheader.us.i.us.us.us.us.i
  br i1 %i.fs, label %scalar.ph135.epil.preheader, label %scalar.ph135

vector.body140:                                   ; preds = %.preheader.us.i.us.us.us.us.i, %vector.body140
  %index141 = phi i64 [ %index.next146, %vector.body140 ], [ 0, %.preheader.us.i.us.us.us.us.i ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %index141 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.load142 = load <2 x i64>, ptr %i.ft, align 8, !tbaa !110, !alias.scope !505, !noalias !506
  %wide.load143 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !110, !alias.scope !505, !noalias !506
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %index141 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load144 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !110, !alias.scope !506
  %wide.load145 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !110, !alias.scope !506
  store <2 x i64> %wide.load144, ptr %i.ft, align 8, !tbaa !110, !alias.scope !505, !noalias !506
  store <2 x i64> %wide.load145, ptr %i.fu, align 8, !tbaa !110, !alias.scope !505, !noalias !506
  store <2 x i64> %wide.load142, ptr %i.fv, align 8, !tbaa !110, !alias.scope !506
  store <2 x i64> %wide.load143, ptr %i.fw, align 8, !tbaa !110, !alias.scope !506
  %index.next146 = add nuw i64 %index141, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.fx, label %._crit_edge.us.i.us.us.us.us.i, label %vector.body140, !llvm.loop !497

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv.i.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.1, %scalar.ph135 ], [ 0, %scalar.ph135.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph135 ], [ 0, %scalar.ph135.preheader ]
  %gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fy = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fz = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fz, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !110
  store i64 %i.fy, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.ga = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gb = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.gb, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !110
  store i64 %i.ga, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !110
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph135, !llvm.loop !498

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph135
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph135.epil.preheader

scalar.ph135.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph135.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph135.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gc = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gd, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !110
  store i64 %i.gc, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !110
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body140, %scalar.ph135.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ex ; 2 uses
  %i.gf = icmp ult ptr %i.ge, %i.ej
  br i1 %i.gf, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !499

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.g, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.gj, %.lr.ph.i.us.us.us.us.i ], [ %i.c, %bb.g ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.gh = load <2 x i32>, ptr %i.gg, align 4, !tbaa !19
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gi, ptr %i.gg, align 4, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.ej
  br i1 %i.gk, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !500

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.gl = trunc nsw i64 %indvars.iv.next104.i to i32
  %i.gm = shl nuw nsw i32 1, %i.gl
  %i.gn = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next104.i ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !110 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !110 ; 2 uses
  %i.gr = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !110 ; 2 uses
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert116 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat117 = shufflevector <2 x i64> %broadcast.splatinsert116, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph108
  %index119 = phi i64 [ 0, %vector.ph108 ], [ %index.next122, %vector.body118 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index119 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load120 = load <2 x i64>, ptr %i.gu, align 16, !tbaa !110 ; 3 uses
  %wide.load121 = load <2 x i64>, ptr %i.gv, align 16, !tbaa !110 ; 3 uses
  %i.gw = and <2 x i64> %wide.load120, %broadcast.splat111
  %i.gx = and <2 x i64> %wide.load121, %broadcast.splat111
  %i.gy = and <2 x i64> %wide.load120, %broadcast.splat113
  %i.gz = and <2 x i64> %wide.load121, %broadcast.splat113
  %i.ha = shl <2 x i64> %i.gy, %broadcast.splat115
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat115
  %i.hc = or <2 x i64> %i.ha, %i.gw
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = and <2 x i64> %wide.load120, %broadcast.splat117
  %i.hf = and <2 x i64> %wide.load121, %broadcast.splat117
  %i.hg = lshr <2 x i64> %i.he, %broadcast.splat115
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat115
  %i.hi = or <2 x i64> %i.hc, %i.hg
  %i.hj = or <2 x i64> %i.hd, %i.hh
  store <2 x i64> %i.hi, ptr %i.gu, align 16, !tbaa !110
  store <2 x i64> %i.hj, ptr %i.gv, align 16, !tbaa !110
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next122, %n.vec109
  br i1 %i.hk, label %middle.block123, label %vector.body118, !llvm.loop !501

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block123
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec109, %middle.block123 ]
  br label %scalar.ph106

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph106 ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph106.preheader ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !110 ; 3 uses
  %i.hn = and i64 %i.hm, %i.go
  %i.ho = and i64 %i.hm, %i.gq
  %i.hp = shl i64 %i.ho, %i.gr
  %i.hq = or i64 %i.hp, %i.hn
  %i.hr = and i64 %i.hm, %i.gt
  %i.hs = lshr i64 %i.hr, %i.gr
  %i.ht = or i64 %i.hq, %i.hs
  store i64 %i.ht, ptr %i.hl, align 8, !tbaa !110
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph106, !llvm.loop !502

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph106, %middle.block123, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next104.i, %i.en
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !503

._crit_edge.split.us.us.split.us.us.i:            ; preds = %Abc_TtSwapAdjacent.exit.us.us.us.us.i, %.preheader.us.us.i
  %i.hu = add nsw i32 %.056.us.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.split.us.us.split.us.us.i, %.lr.ph61.split.us.split.us.i
  %.1.us.us.i = phi i32 [ %i.hu, %._crit_edge.split.us.us.split.us.us.i ], [ %.056.us.us.i, %.lr.ph61.split.us.split.us.i ]
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %Abc_TtShrink.exit, label %.lr.ph61.split.us.split.us.i, !llvm.loop !504

Abc_TtShrink.exit:                                ; preds = %bb.h, %Abc_TtCopy.exit, %.lr.ph61.i
  %i.hv = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %2) ; 5 uses
  %i.hw = load i64, ptr %i.c, align 16, !tbaa !110 ; 7 uses
  %i.hx = icmp eq i32 %2, 0
  %i.hy = trunc i64 %i.hw to i1
  %i.hz = select i1 %i.hy, i64 3, i64 0
  %i.ia = icmp samesign ult i32 %i.hv, 2
  %i.ib = and i64 %i.hw, 3
  %i.ic = select i1 %i.hx, i64 %i.hz, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.ic, 5
  %.126.i = select i1 %i.ia, i64 %i.id, i64 %i.hw
  %i.ie = icmp samesign ult i32 %i.hv, 3
  %i.if = and i64 %.126.i, 15
  %i.ig = mul nuw nsw i64 %i.if, 17
  %.227.i = select i1 %i.ie, i64 %i.ig, i64 %i.hw
  %i.ih = icmp samesign ult i32 %i.hv, 4
  %i.ii = and i64 %.227.i, 255
  %i.ij = mul nuw nsw i64 %i.ii, 257
  %.328.i = select i1 %i.ih, i64 %i.ij, i64 %i.hw
  %i.ik = icmp samesign ult i32 %i.hv, 5
  %i.il = and i64 %.328.i, 65535
  %i.im = mul nuw nsw i64 %i.il, 65537
  %.429.i = select i1 %i.ik, i64 %i.im, i64 %i.hw
  %i.in = icmp samesign ult i32 %i.hv, 6
  %i.io = and i64 %.429.i, 4294967295
  %i.ip = mul nuw i64 %i.io, 4294967297
  %.5.i = select i1 %i.in, i64 %i.ip, i64 %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v6i16(<6 x i16>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
end_hunk_1
