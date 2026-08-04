inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 101
begin_hunk_0_@Abc_TgSimpleEnumeration:bb.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph232.preheader, label %vector.body237

vector.body237:                                   ; preds = %vector.memcheck229, %vector.body237
  %index238 = phi i64 [ %index.next243, %vector.body237 ], [ 0, %vector.memcheck229 ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i88, i64 %index238 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %wide.load239 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !8, !alias.scope !522, !noalias !525
  %wide.load240 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !8, !alias.scope !522, !noalias !525
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep.i.i89, i64 %index238 ; 3 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 16     ; 2 uses
  %wide.load241 = load <2 x i64>, ptr %i.kj, align 8, !tbaa !8, !alias.scope !525
  %wide.load242 = load <2 x i64>, ptr %i.kk, align 8, !tbaa !8, !alias.scope !525
  store <2 x i64> %wide.load241, ptr %i.kh, align 8, !tbaa !8, !alias.scope !522, !noalias !525
  store <2 x i64> %wide.load242, ptr %i.ki, align 8, !tbaa !8, !alias.scope !522, !noalias !525
  store <2 x i64> %wide.load239, ptr %i.kj, align 8, !tbaa !8, !alias.scope !525
  store <2 x i64> %wide.load240, ptr %i.kk, align 8, !tbaa !8, !alias.scope !525
  %index.next243 = add nuw i64 %index238, 4       ; 2 uses
  %i.kl = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.kl, label %._crit_edge.us.i.i94, label %vector.body237, !llvm.loop !527

scalar.ph232:                                     ; preds = %scalar.ph232.preheader, %scalar.ph232
  %indvars.iv.i.i90 = phi i64 [ %indvars.iv.next.i.i92.1, %scalar.ph232 ], [ 0, %scalar.ph232.preheader ] ; 4 uses
  %niter379 = phi i64 [ %niter379.next.1, %scalar.ph232 ], [ 0, %scalar.ph232.preheader ]
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i88, i64 %indvars.iv.i.i90 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !8
  %gep.i.i91 = getelementptr [8 x i8], ptr %invariant.gep.i.i89, i64 %indvars.iv.i.i90 ; 2 uses
  %i.ko = load i64, ptr %gep.i.i91, align 8, !tbaa !8
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !8
  store i64 %i.kn, ptr %gep.i.i91, align 8, !tbaa !8
  %indvars.iv.next.i.i92 = or disjoint i64 %indvars.iv.i.i90, 1 ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i88, i64 %indvars.iv.next.i.i92 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !8
  %gep.i.i91.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i89, i64 %indvars.iv.next.i.i92 ; 2 uses
  %i.kr = load i64, ptr %gep.i.i91.1, align 8, !tbaa !8
  store i64 %i.kr, ptr %i.kp, align 8, !tbaa !8
  store i64 %i.kq, ptr %gep.i.i91.1, align 8, !tbaa !8
  %indvars.iv.next.i.i92.1 = add nuw nsw i64 %indvars.iv.i.i90, 2 ; 2 uses
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %._crit_edge.us.i.i94.loopexit.unr-lcssa, label %scalar.ph232, !llvm.loop !528

._crit_edge.us.i.i94.loopexit.unr-lcssa:          ; preds = %scalar.ph232
  br i1 %lcmp.mod376.not, label %._crit_edge.us.i.i94, label %scalar.ph232.epil.preheader

scalar.ph232.epil.preheader:                      ; preds = %._crit_edge.us.i.i94.loopexit.unr-lcssa, %scalar.ph232.preheader
  %indvars.iv.i.i90.epil.init = phi i64 [ 0, %scalar.ph232.preheader ], [ %indvars.iv.next.i.i92.1, %._crit_edge.us.i.i94.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod377)
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i88, i64 %indvars.iv.i.i90.epil.init ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !8
  %gep.i.i91.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i89, i64 %indvars.iv.i.i90.epil.init ; 2 uses
  %i.ku = load i64, ptr %gep.i.i91.epil, align 8, !tbaa !8
  store i64 %i.ku, ptr %i.ks, align 8, !tbaa !8
  store i64 %i.kt, ptr %gep.i.i91.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i.i94

._crit_edge.us.i.i94:                             ; preds = %vector.body237, %scalar.ph232.epil.preheader, %._crit_edge.us.i.i94.loopexit.unr-lcssa
  %i.kv = getelementptr inbounds [8 x i8], ptr %.051.us.i.i88, i64 %i.jv ; 2 uses
  %i.kw = icmp ult ptr %i.kv, %i.cb
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kw, label %.preheader.us.i.i87, label %Abc_TtFlip.exit.i63, !llvm.loop !96

Abc_TtFlip.exit.i63:                              ; preds = %._crit_edge.us.i.i94, %vector.body221, %scalar.ph212, %.preheader.lr.ph.i.i81, %bb.s, %bb.r
  %.pre-phi.i64 = phi i64 [ %wide.trip.count24.i.i75, %.preheader.lr.ph.i.i81 ], [ %wide.trip.count24.i.i75, %vector.body221 ], [ 2147483648, %bb.r ], [ 1, %bb.s ], [ %wide.trip.count24.i.i75, %scalar.ph212 ], [ %wide.trip.count24.i.i75, %._crit_edge.us.i.i94 ] ; 8 uses
  %i.kx = trunc nuw i64 %.pre-phi.i64 to i32
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph198, label %Abc_TgPermPhase.exit99

bb.u:                                             ; preds = %.lr.ph198
  %i.kz = trunc nuw i64 %i.lb to i32
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph198, label %Abc_TgPermPhase.exit99, !llvm.loop !78

.lr.ph198:                                        ; preds = %Abc_TtFlip.exit.i63, %bb.u
  %indvars.iv.i13.i65197 = phi i64 [ %i.lb, %bb.u ], [ %.pre-phi.i64, %Abc_TtFlip.exit.i63 ]
  %i.lb = add nsw i64 %indvars.iv.i13.i65197, -1  ; 4 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !8  ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %i.lb
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !8  ; 2 uses
  %.not.i14.i67 = icmp eq i64 %i.ld, %i.lf
  br i1 %.not.i14.i67, label %bb.u, label %bb.v, !llvm.loop !78

bb.v:                                             ; preds = %.lr.ph198
  %i.lg = icmp ult i64 %i.ld, %i.lf
  br i1 %i.lg, label %Abc_TgPermPhase.exit99, label %Abc_TtCompareRev.exit.i68

Abc_TtCompareRev.exit.i68:                        ; preds = %bb.v
  br i1 %i.bz, label %.lr.ph18.i17.i70.preheader, label %Abc_TtCopy.exit21.i69

.lr.ph18.i17.i70.preheader:                       ; preds = %Abc_TtCompareRev.exit.i68
  %min.iters.check201 = icmp samesign ult i64 %.pre-phi.i64, 4
  %i.lh = add i64 %i.hm, add (i64 sub (i64 0, i64 ptrtoaddr (ptr @Abc_TgPermPhase.pCopy to i64)), i64 -1)
  %diff.check = icmp ult i64 %i.lh, 31
  %or.cond336 = select i1 %min.iters.check201, i1 true, i1 %diff.check
  br i1 %or.cond336, label %.lr.ph18.i17.i70.preheader339, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph18.i17.i70.preheader
  %n.vec204 = and i64 %.pre-phi.i64, 2147483644   ; 3 uses
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph202
  %index206 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body205 ] ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %index206 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load = load <2 x i64>, ptr %i.li, align 16, !tbaa !8
  %wide.load207 = load <2 x i64>, ptr %i.lj, align 16, !tbaa !8
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %index206 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store <2 x i64> %wide.load, ptr %i.lk, align 8, !tbaa !8
  store <2 x i64> %wide.load207, ptr %i.ll, align 8, !tbaa !8
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next208, %n.vec204
  br i1 %i.lm, label %middle.block209, label %vector.body205, !llvm.loop !529

middle.block209:                                  ; preds = %vector.body205
  %cmp.n210 = icmp eq i64 %.pre-phi.i64, %n.vec204
  br i1 %cmp.n210, label %Abc_TtCopy.exit21.i69, label %.lr.ph18.i17.i70.preheader339

.lr.ph18.i17.i70.preheader339:                    ; preds = %.lr.ph18.i17.i70.preheader, %middle.block209
  %indvars.iv21.i18.i71.ph = phi i64 [ 0, %.lr.ph18.i17.i70.preheader ], [ %n.vec204, %middle.block209 ] ; 3 uses
  %xtraiter380 = and i64 %.pre-phi.i64, 3         ; 2 uses
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.lr.ph18.i17.i70.prol.loopexit, label %.lr.ph18.i17.i70.prol

.lr.ph18.i17.i70.prol:                            ; preds = %.lr.ph18.i17.i70.preheader339, %.lr.ph18.i17.i70.prol
  %indvars.iv21.i18.i71.prol = phi i64 [ %indvars.iv.next22.i19.i72.prol, %.lr.ph18.i17.i70.prol ], [ %indvars.iv21.i18.i71.ph, %.lr.ph18.i17.i70.preheader339 ] ; 3 uses
  %prol.iter382 = phi i64 [ %prol.iter382.next, %.lr.ph18.i17.i70.prol ], [ 0, %.lr.ph18.i17.i70.preheader339 ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %indvars.iv21.i18.i71.prol
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !8
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv21.i18.i71.prol
  store i64 %i.lo, ptr %i.lp, align 8, !tbaa !8
  %indvars.iv.next22.i19.i72.prol = add nuw nsw i64 %indvars.iv21.i18.i71.prol, 1 ; 2 uses
  %prol.iter382.next = add i64 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %.lr.ph18.i17.i70.prol.loopexit, label %.lr.ph18.i17.i70.prol, !llvm.loop !530

.lr.ph18.i17.i70.prol.loopexit:                   ; preds = %.lr.ph18.i17.i70.prol, %.lr.ph18.i17.i70.preheader339
  %indvars.iv21.i18.i71.unr = phi i64 [ %indvars.iv21.i18.i71.ph, %.lr.ph18.i17.i70.preheader339 ], [ %indvars.iv.next22.i19.i72.prol, %.lr.ph18.i17.i70.prol ]
  %i.lq = sub nsw i64 %indvars.iv21.i18.i71.ph, %.pre-phi.i64
  %i.lr = icmp ugt i64 %i.lq, -4
  br i1 %i.lr, label %Abc_TtCopy.exit21.i69, label %.lr.ph18.i17.i70

.lr.ph18.i17.i70:                                 ; preds = %.lr.ph18.i17.i70.prol.loopexit, %.lr.ph18.i17.i70
  %indvars.iv21.i18.i71 = phi i64 [ %indvars.iv.next22.i19.i72.3, %.lr.ph18.i17.i70 ], [ %indvars.iv21.i18.i71.unr, %.lr.ph18.i17.i70.prol.loopexit ] ; 6 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %indvars.iv21.i18.i71
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !8
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv21.i18.i71
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !8
  %indvars.iv.next22.i19.i72 = add nuw nsw i64 %indvars.iv21.i18.i71, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %indvars.iv.next22.i19.i72
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next22.i19.i72
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !8
  %indvars.iv.next22.i19.i72.1 = add nuw nsw i64 %indvars.iv21.i18.i71, 2 ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %indvars.iv.next22.i19.i72.1
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !8
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next22.i19.i72.1
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !8
  %indvars.iv.next22.i19.i72.2 = add nuw nsw i64 %indvars.iv21.i18.i71, 3 ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgPermPhase.pCopy, i64 %indvars.iv.next22.i19.i72.2
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !8
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next22.i19.i72.2
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !8
  %indvars.iv.next22.i19.i72.3 = add nuw nsw i64 %indvars.iv21.i18.i71, 4 ; 2 uses
  %exitcond25.not.i20.i73.3 = icmp eq i64 %indvars.iv.next22.i19.i72.3, %.pre-phi.i64
  br i1 %exitcond25.not.i20.i73.3, label %Abc_TtCopy.exit21.i69, label %.lr.ph18.i17.i70, !llvm.loop !531

Abc_TtCopy.exit21.i69:                            ; preds = %.lr.ph18.i17.i70.prol.loopexit, %.lr.ph18.i17.i70, %middle.block209, %Abc_TtCompareRev.exit.i68
  %i.me = shl nuw i32 1, %i.hk
  %i.mf = load i32, ptr %i.v, align 4, !tbaa !316
  %i.mg = xor i32 %i.mf, %i.me
  store i32 %i.mg, ptr %i.v, align 4, !tbaa !316
  %i.mh = or i32 %.6129, 16
  br label %Abc_TgPermPhase.exit99

Abc_TgPermPhase.exit99:                           ; preds = %bb.u, %Abc_TtFlip.exit.i63, %Abc_TtCopy.exit21.i69, %bb.v, %bb.q
  %.7 = phi i32 [ %.6129, %bb.q ], [ %i.mh, %Abc_TtCopy.exit21.i69 ], [ %.6129, %bb.v ], [ %.6129, %Abc_TtFlip.exit.i63 ], [ %.6129, %bb.u ] ; 2 uses
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %._crit_edge131, label %bb.q, !llvm.loop !532

._crit_edge131:                                   ; preds = %Abc_TgPermPhase.exit99, %._crit_edge120, %.preheader
  %.6.lcssa = phi i32 [ %.5, %.preheader ], [ %.2.lcssa, %._crit_edge120 ], [ %.7, %Abc_TgPermPhase.exit99 ]
  %.not = icmp eq i32 %.6.lcssa, 0
  %i.mi = add nuw nsw i32 %.252133, 1             ; 2 uses
  %exitcond159.not = icmp eq i32 %i.mi, 5
  %or.cond = select i1 %.not, i1 true, i1 %exitcond159.not
  br i1 %or.cond, label %bb.w, label %bb.b, !llvm.loop !533

bb.w:                                             ; preds = %._crit_edge131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtCanonicizeCA(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %5 = alloca %struct.Abc_TgMan_t_, align 8       ; 29 uses
  %6 = alloca %struct.Abc_TgMan_t_, align 8       ; 12 uses
  %i.b = icmp slt i32 %2, 7
  %i.c = add nsw i32 %2, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %.lr.ph.preheader.i, label %bb.b

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 0, ptr %1, align 8
  br label %Abc_TtClear.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef %0, i32 noundef -5, ptr noundef %1, ptr noundef %1)
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %Abc_TtClear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !252  ; 2 uses
  store ptr %1, ptr %5, align 8, !tbaa !315
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  store i32 0, ptr %i.k, align 4, !tbaa !316
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !317
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !309
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 %2, ptr %i.n, align 8, !tbaa !313
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.o, align 8, !tbaa !318
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 92
  store i8 0, ptr %i.p, align 4, !tbaa !319
  %i.q = trunc i32 %2 to i8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 93
  store i8 %i.q, ptr %i.r, align 1, !tbaa !321
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 9 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check73 = icmp ult i32 %2, 16
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %index
  store <16 x i8> %vec.ind, ptr %i.y, align 4, !tbaa !187
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %index
  store <16 x i8> %vec.ind, ptr %i.z, align 4, !tbaa !187
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %index
  store <16 x i8> %vec.ind, ptr %i.aa, align 4, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %index
  store <16 x i8> splat (i8 1), ptr %i.ab, align 4, !tbaa !187
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %index
  store <16 x i8> splat (i8 -1), ptr %i.ac, align 4, !tbaa !187
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i8> %vec.ind, splat (i8 16)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !323

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec75 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %i.ae = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 6 uses
  %vec.ind77 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next79, %vec.epilog.vector.body ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %index76
  store <4 x i8> %vec.ind77, ptr %i.af, align 4, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 %index76
  store <4 x i8> %vec.ind77, ptr %i.ag, align 4, !tbaa !187
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %index76
  store <4 x i8> %vec.ind77, ptr %i.ah, align 4, !tbaa !187
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 %index76
  store <4 x i8> splat (i8 1), ptr %i.ai, align 4, !tbaa !187
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %index76
  store <4 x i8> splat (i8 -1), ptr %i.aj, align 4, !tbaa !187
  %index.next78 = add nuw i64 %index76, 4         ; 2 uses
  %vec.ind.next79 = add <4 x i8> %vec.ind77, splat (i8 4)
  %i.ak = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !535

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %n.vec75, %wide.trip.count.i
  br i1 %cmp.n80, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 7 uses
  %i.al = trunc i64 %indvars.iv.i to i8           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !187
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i
  store i8 %i.al, ptr %i.an, align 1, !tbaa !187
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !187
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.i
  store i8 1, ptr %i.ap, align 1, !tbaa !187
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i
  store i8 -1, ptr %i.aq, align 1, !tbaa !187
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !536

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %wide.trip.count.i, %middle.block ], [ %wide.trip.count.i, %vec.epilog.middle.block ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ]
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0.lcssa.i
  store i8 -1, ptr %i.as, align 1, !tbaa !187
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 160
  store i32 2, ptr %i.at, align 8, !tbaa !326
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 184
  store ptr %i.j, ptr %i.au, align 8, !tbaa !327
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !247
  call fastcc void @Abc_TgCreateGroups(ptr noundef %5)
  %i.aw = tail call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef nonnull %0, i32 noundef -4, ptr noundef %1, ptr noundef %1)
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %Abc_TtClear.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  call fastcc void @Abc_TgPurgeSymmetry(ptr noundef %5, i32 noundef 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.az = load i32, ptr %i.m, align 4, !tbaa !309 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph30.i.preheader, label %._crit_edge31.i

.lr.ph30.i.preheader:                             ; preds = %bb.d
  %i.bb = zext nneg i32 %i.az to i64
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i.preheader, %._crit_edge.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %._crit_edge.i ], [ 0, %.lr.ph30.i.preheader ] ; 2 uses
  %.028.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph30.i.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv40.i
  %.022.in24.i = load i8, ptr %i.bc, align 1, !tbaa !187 ; 2 uses
  %i.bd = icmp sgt i8 %.022.in24.i, -1
  br i1 %i.bd, label %.lr.ph.preheader.i54, label %._crit_edge.i

.lr.ph.preheader.i54:                             ; preds = %.lr.ph30.i
  %i.be = sext i32 %.028.i to i64
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.preheader.i54
  %indvars.iv.i56 = phi i64 [ %i.be, %.lr.ph.preheader.i54 ], [ %indvars.iv.next.i57, %.lr.ph.i55 ] ; 2 uses
  %.022.in26.i = phi i8 [ %.022.in24.i, %.lr.ph.preheader.i54 ], [ %.022.in.i, %.lr.ph.i55 ] ; 2 uses
  %indvars.iv.next.i57 = add nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %3, i64 %indvars.iv.i56
  store i8 %.022.in26.i, ptr %i.bf, align 1, !tbaa !187
  %i.bg = zext nneg i8 %.022.in26.i to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %.022.in.i = load i8, ptr %i.bh, align 1, !tbaa !187 ; 2 uses
  %i.bi = icmp sgt i8 %.022.in.i, -1
  br i1 %i.bi, label %.lr.ph.i55, label %._crit_edge.loopexit.i58, !llvm.loop !311

._crit_edge.loopexit.i58:                         ; preds = %.lr.ph.i55
  %i.bj = trunc nsw i64 %indvars.iv.next.i57 to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i58, %.lr.ph30.i
  %.1.lcssa.i = phi i32 [ %.028.i, %.lr.ph30.i ], [ %i.bj, %._crit_edge.loopexit.i58 ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41.i, %i.bb
  br i1 %exitcond.not, label %._crit_edge31.i.loopexit, label %.lr.ph30.i, !llvm.loop !312

._crit_edge31.i.loopexit:                         ; preds = %._crit_edge.i
  %i.bk = sext i32 %.1.lcssa.i to i64
end_hunk_0
begin_hunk_1_@Abc_TtCanonicizeCA:bb.a
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph82

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 3 uses
  %i.cc = icmp ult i32 %i.by, 4
  br i1 %i.cc, label %.lr.ph18.i.i.epil.preheader, label %.lr.ph18.i.i.preheader.new

.lr.ph18.i.i.preheader.new:                       ; preds = %.lr.ph18.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i.i, 2147483644
  br label %.lr.ph18.i.i

vector.ph82:                                      ; preds = %.lr.ph18.preheader.i.i
  %n.vec84 = and i64 %wide.trip.count24.i.i, 2147483644
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph82
  %index86 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body85 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index86 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !8
  %wide.load87 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %index86 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x i64> %wide.load, ptr %i.cf, align 16, !tbaa !8
  store <2 x i64> %wide.load87, ptr %i.cg, align 16, !tbaa !8
  %index.next88 = add nuw i64 %index86, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.ch, label %Abc_TgManCopy.exit, label %vector.body85, !llvm.loop !537

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i, %.lr.ph18.i.i.preheader.new
  %indvars.iv21.i.i = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i.i ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv21.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i
  store i64 %i.cj, ptr %i.ck, align 16, !tbaa !8
  %indvars.iv.next22.i.i = or disjoint i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next22.i.i
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !8
  %indvars.iv.next22.i.i.1 = or disjoint i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next22.i.i.1
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i.1
  store i64 %i.cp, ptr %i.cq, align 16, !tbaa !8
  %indvars.iv.next22.i.i.2 = or disjoint i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next22.i.i.2
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i.2
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !8
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TgManCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i.i, !llvm.loop !538

Abc_TgManCopy.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph18.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil.preheader

.lr.ph18.i.i.epil.preheader:                      ; preds = %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.3, %Abc_TgManCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph18.i.i.epil

.lr.ph18.i.i.epil:                                ; preds = %.lr.ph18.i.i.epil, %.lr.ph18.i.i.epil.preheader
  %indvars.iv21.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.epil, %.lr.ph18.i.i.epil ], [ %indvars.iv21.i.i.epil.init, %.lr.ph18.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.i.epil ], [ 0, %.lr.ph18.i.i.epil.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv21.i.i.epil
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i.epil
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !8
  %indvars.iv.next22.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil, !llvm.loop !539

Abc_TgManCopy.exit:                               ; preds = %vector.body85, %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.epil, %bb.e
  store ptr @Abc_TtCanonicizeCA.pCopy, ptr %6, align 8, !tbaa !315
  call fastcc void @Abc_TgSimpleEnumeration(ptr noundef %5)
  %i.cx = call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef nonnull %0, i32 noundef -2, ptr noundef %1, ptr noundef %1)
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %Abc_TtClear.exit, label %bb.f

bb.f:                                             ; preds = %Abc_TgManCopy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull readonly align 8 dereferenceable(192) %6, i64 192, i1 false), !tbaa.struct !360
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !313 ; 2 uses
  %i.db = icmp slt i32 %i.da, 7
  %i.dc = add nsw i32 %i.da, -6
  %i.dd = shl nuw i32 1, %i.dc
  %i.de = select i1 %i.db, i32 1, i32 %i.dd       ; 4 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph18.preheader.i.i59, label %Abc_TgManCopy.exit65

.lr.ph18.preheader.i.i59:                         ; preds = %bb.f
  %wide.trip.count24.i.i60 = zext nneg i32 %i.de to i64 ; 3 uses
  %min.iters.check95 = icmp ult i32 %i.de, 8
  %i.dg = add i64 %i.a, xor (i64 ptrtoaddr (ptr @Abc_TtCanonicizeCA.pCopy to i64), i64 -1)
  %diff.check93 = icmp ult i64 %i.dg, 31
  %or.cond107 = or i1 %min.iters.check95, %diff.check93
  br i1 %or.cond107, label %.lr.ph18.i.i61.preheader, label %vector.ph96

.lr.ph18.i.i61.preheader:                         ; preds = %.lr.ph18.preheader.i.i59
  %xtraiter111 = and i64 %wide.trip.count24.i.i60, 3 ; 3 uses
  %i.dh = icmp ult i32 %i.de, 4
  br i1 %i.dh, label %.lr.ph18.i.i61.epil.preheader, label %.lr.ph18.i.i61.preheader.new

.lr.ph18.i.i61.preheader.new:                     ; preds = %.lr.ph18.i.i61.preheader
  %unroll_iter115 = and i64 %wide.trip.count24.i.i60, 2147483644
  br label %.lr.ph18.i.i61

vector.ph96:                                      ; preds = %.lr.ph18.preheader.i.i59
  %n.vec98 = and i64 %wide.trip.count24.i.i60, 2147483644
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body99 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %index100 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load101 = load <2 x i64>, ptr %i.di, align 16, !tbaa !8
  %wide.load102 = load <2 x i64>, ptr %i.dj, align 16, !tbaa !8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index100 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <2 x i64> %wide.load101, ptr %i.dk, align 8, !tbaa !8
  store <2 x i64> %wide.load102, ptr %i.dl, align 8, !tbaa !8
  %index.next103 = add nuw i64 %index100, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next103, %n.vec98
  br i1 %i.dm, label %Abc_TgManCopy.exit65, label %vector.body99, !llvm.loop !540

.lr.ph18.i.i61:                                   ; preds = %.lr.ph18.i.i61, %.lr.ph18.i.i61.preheader.new
  %indvars.iv21.i.i62 = phi i64 [ 0, %.lr.ph18.i.i61.preheader.new ], [ %indvars.iv.next22.i.i63.3, %.lr.ph18.i.i61 ] ; 6 uses
  %niter116 = phi i64 [ 0, %.lr.ph18.i.i61.preheader.new ], [ %niter116.next.3, %.lr.ph18.i.i61 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i62
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i.i62
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !8
  %indvars.iv.next22.i.i63 = or disjoint i64 %indvars.iv21.i.i62, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i63
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i63
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !8
  %indvars.iv.next22.i.i63.1 = or disjoint i64 %indvars.iv21.i.i62, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i63.1
  %i.du = load i64, ptr %i.dt, align 16, !tbaa !8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i63.1
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !8
  %indvars.iv.next22.i.i63.2 = or disjoint i64 %indvars.iv21.i.i62, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i63.2
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i63.2
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !8
  %indvars.iv.next22.i.i63.3 = add nuw nsw i64 %indvars.iv21.i.i62, 4 ; 2 uses
  %niter116.next.3 = add i64 %niter116, 4         ; 2 uses
  %niter116.ncmp.3 = icmp eq i64 %niter116.next.3, %unroll_iter115
  br i1 %niter116.ncmp.3, label %Abc_TgManCopy.exit65.loopexit.unr-lcssa, label %.lr.ph18.i.i61, !llvm.loop !541

Abc_TgManCopy.exit65.loopexit.unr-lcssa:          ; preds = %.lr.ph18.i.i61
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %Abc_TgManCopy.exit65, label %.lr.ph18.i.i61.epil.preheader

.lr.ph18.i.i61.epil.preheader:                    ; preds = %Abc_TgManCopy.exit65.loopexit.unr-lcssa, %.lr.ph18.i.i61.preheader
  %indvars.iv21.i.i62.epil.init = phi i64 [ 0, %.lr.ph18.i.i61.preheader ], [ %indvars.iv.next22.i.i63.3, %Abc_TgManCopy.exit65.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i64 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph18.i.i61.epil

.lr.ph18.i.i61.epil:                              ; preds = %.lr.ph18.i.i61.epil, %.lr.ph18.i.i61.epil.preheader
  %indvars.iv21.i.i62.epil = phi i64 [ %indvars.iv.next22.i.i63.epil, %.lr.ph18.i.i61.epil ], [ %indvars.iv21.i.i62.epil.init, %.lr.ph18.i.i61.epil.preheader ] ; 3 uses
  %epil.iter112 = phi i64 [ %epil.iter112.next, %.lr.ph18.i.i61.epil ], [ 0, %.lr.ph18.i.i61.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i62.epil
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i.i62.epil
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !8
  %indvars.iv.next22.i.i63.epil = add nuw nsw i64 %indvars.iv21.i.i62.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %Abc_TgManCopy.exit65, label %.lr.ph18.i.i61.epil, !llvm.loop !542

Abc_TgManCopy.exit65:                             ; preds = %vector.body99, %Abc_TgManCopy.exit65.loopexit.unr-lcssa, %.lr.ph18.i.i61.epil, %bb.f
  store ptr %1, ptr %5, align 8, !tbaa !315
  %i.ec = icmp sgt i32 %i.e, 0
  br i1 %i.ec, label %.lr.ph.preheader.i67, label %Abc_TtFill.exit

.lr.ph.preheader.i67:                             ; preds = %Abc_TgManCopy.exit65
  %i.ed = zext nneg i32 %i.e to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 -1, i64 %i.ee, i1 false), !tbaa !8
  br label %Abc_TtFill.exit

Abc_TtFill.exit:                                  ; preds = %Abc_TgManCopy.exit65, %.lr.ph.preheader.i67
  %i.ef = call fastcc { i64, i32 } @Abc_TgRecordPhase(ptr noundef %6, i32 noundef 0) ; 2 uses
  %.not51 = icmp eq i32 %4, 0
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %Abc_TtFill.exit
  %.fca.1.extract5 = extractvalue { i64, i32 } %i.ef, 1
  %.fca.0.extract4 = extractvalue { i64, i32 } %i.ef, 0
  %i.eg = call fastcc double @Abc_SccEnumCost(ptr noundef %6, i64 %.fca.0.extract4, i32 %.fca.1.extract5)
  %.val = load i32, ptr %i.cz, align 8, !tbaa !313
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.val52 = load i32, ptr %7, align 4, !tbaa !309
  %8 = sitofp i32 %.val to double
  %9 = sitofp i32 %.val52 to double
  %10 = fmul nnan double %9, 1.043000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %8, double f0x3FEFE76C8B439581, double %10)
  %i.ei = fadd double %i.eh, -1.590000e+01
  %i.ej = fcmp ogt double %i.eg, %i.ei
  br i1 %i.ej, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @Abc_TgResetGroup(ptr noundef %6)
  %i.ek = call fastcc { i64, i32 } @Abc_TgRecordPhase(ptr noundef %6, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %Abc_TtFill.exit
  %.048 = phi i32 [ 268435456, %bb.h ], [ 0, %bb.g ], [ 0, %Abc_TtFill.exit ]
  call fastcc void @Abc_TgFullEnumeration(ptr noundef %6, ptr noundef %5)
  %i.el = call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1, ptr noundef %1) ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.en = sext i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 4 %i.em, i64 %i.en, i1 false)
  %i.eo = load i32, ptr %i.k, align 4, !tbaa !316
  %i.ep = or i32 %i.eo, %.048
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %.lr.ph.preheader.i, %Abc_TgManCopy.exit, %Abc_TgExpendSymmetry.exit, %.loopexit, %bb.b, %bb.i
  %.0 = phi i32 [ 536870912, %Abc_TgManCopy.exit ], [ %i.ep, %bb.i ], [ 536870912, %bb.b ], [ 536870912, %.loopexit ], [ 536870912, %Abc_TgExpendSymmetry.exit ], [ 0, %.lr.ph.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc { i64, i32 } @Abc_TgRecordPhase(ptr nofree noundef nonnull captures(address) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [18 x i32], align 16              ; 7 uses
  %i.b = alloca [18 x i32], align 16              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !327  ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.f = load i8, ptr %i.e, align 1, !tbaa !321   ; 4 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp eq i32 %1, 0                        ; 3 uses
  %i.i = xor i32 %1, 1                            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !309
  %reass.sub = sub i32 %i.k, %i.i
  %i.l = add i32 %reass.sub, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !317
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  call fastcc void @Abc_TgCalcScc(ptr noundef %0, ptr noundef %i.o, i32 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !318  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph37.preheader.i, label %Abc_TgPermCostScc.exit

.lr.ph37.preheader.i:                             ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.q to i64
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %._crit_edge.i, %.lr.ph37.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph37.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge.i ] ; 2 uses
  %.02034.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %i.be, %._crit_edge.i ] ; 3 uses
  %.02233.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %.123.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 93
  %i.u = load i8, ptr %i.t, align 1, !tbaa !321   ; 3 uses
  %i.v = sext i8 %i.u to i32                      ; 2 uses
  %.12325.i = add i32 %.02233.i, 1                ; 2 uses
  %i.w = icmp sgt i8 %i.u, 1
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph37.i
  %i.x = sext i32 %.12325.i to i64                ; 2 uses
  %.phi.trans.insert.i = sext i32 %.02233.i to i64
  %.phi.trans.insert46.i = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.phi.trans.insert.i
  %.pre.i = load i32, ptr %.phi.trans.insert46.i, align 4, !tbaa !16 ; 2 uses
  %i.y = add nsw i32 %i.v, -1                     ; 3 uses
  %xtraiter = and i32 %i.y, 1
  %i.z = icmp eq i8 %i.u, 2
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.y, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i.new
  %i.aa = phi i32 [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.al, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %.029.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.g ] ; 2 uses
  %.12128.i = phi i32 [ %.02034.i, %.lr.ph.preheader.i.new ], [ %.2.i.1, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.g ]
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nsw i32 %.029.i, 1
  br label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = sext i32 %.029.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.ai = add nsw i32 %i.ah, %.12128.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %bb.c
  %.2.i = phi i32 [ %.12128.i, %bb.c ], [ %i.ai, %bb.d ] ; 2 uses
  %.1.i = phi i32 [ %i.ae, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %i.aj = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16 ; 3 uses
  %i.am = icmp eq i32 %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.an = sext i32 %.1.i to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = add nsw i32 %i.ap, %.2.i
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.ar = add nsw i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i.1 = phi i32 [ %.2.i, %bb.f ], [ %i.aq, %bb.e ] ; 3 uses
  %.1.i.1 = phi i32 [ %i.ar, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !543

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.al, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.x, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.029.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.12128.i.epil.init = phi i32 [ %.02034.i, %.lr.ph.preheader.i ], [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod459 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod459)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = icmp eq i32 %i.at, %.epil.init
  br i1 %i.au, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.av = sext i32 %.029.i.epil.init to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = add nsw i32 %i.ax, %.12128.i.epil.init
  br label %._crit_edge.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.az = add nsw i32 %.029.i.epil.init, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.h, %bb.i, %._crit_edge.loopexit.i.unr-lcssa
  %.2.i.lcssa = phi i32 [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.12128.i.epil.init, %bb.i ], [ %i.ay, %bb.h ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.az, %bb.i ], [ 1, %bb.h ]
  %i.ba = add i32 %.02233.i, %i.v
  %i.bb = sext i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph37.i
  %.121.lcssa.i = phi i32 [ %.02034.i, %.lr.ph37.i ], [ %.2.i.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 1, %.lr.ph37.i ], [ %i.bb, %._crit_edge.loopexit.i ]
  %.123.lcssa.i = phi i32 [ %.12325.i, %.lr.ph37.i ], [ %i.ba, %._crit_edge.loopexit.i ]
  %i.bc = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.be = add nsw i32 %i.bd, %.121.lcssa.i        ; 2 uses
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count.i
  br i1 %exitcond45.not.i, label %Abc_TgPermCostScc.exit, label %.lr.ph37.i, !llvm.loop !544

bb.j:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bg = icmp sgt i8 %i.f, 0
  br i1 %i.bg, label %.lr.ph27.i, label %Abc_TgReorderFGrps.exit

.lr.ph27.i:                                       ; preds = %bb.j
  %wide.trip.count.i50 = zext nneg i8 %i.f to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph27.i
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i53, %.critedge.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.i51
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !187 ; 2 uses
  %.not28.i = icmp eq i64 %indvars.iv.i51, 0
  br i1 %.not28.i, label %.critedge.i, label %.lr.ph.i52
end_hunk_1
