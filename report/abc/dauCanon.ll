inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 101
begin_hunk_0_@Abc_TtCanonicizeCA:bb.a
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil.preheader

.lr.ph18.i.i.epil.preheader:                      ; preds = %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.3, %Abc_TgManCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph18.i.i.epil

.lr.ph18.i.i.epil:                                ; preds = %.lr.ph18.i.i.epil, %.lr.ph18.i.i.epil.preheader
  %indvars.iv21.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.epil, %.lr.ph18.i.i.epil ], [ %indvars.iv21.i.i.epil.init, %.lr.ph18.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.i.epil ], [ 0, %.lr.ph18.i.i.epil.preheader ]
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv21.i.i.epil
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i.epil
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !8
  %indvars.iv.next22.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil, !llvm.loop !539

Abc_TgManCopy.exit:                               ; preds = %vector.body82, %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.epil, %bb.e
  store ptr @Abc_TtCanonicizeCA.pCopy, ptr %6, align 8, !tbaa !315
  call fastcc void @Abc_TgSimpleEnumeration(ptr noundef %5)
  %i.cy = call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef nonnull %0, i32 noundef -2, ptr noundef %1, ptr noundef %1)
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %Abc_TtClear.exit, label %bb.f

bb.f:                                             ; preds = %Abc_TgManCopy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull readonly align 8 dereferenceable(192) %6, i64 192, i1 false), !tbaa.struct !360
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !313 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 7
  %i.dd = add nsw i32 %i.db, -6
  %i.de = shl nuw i32 1, %i.dd
  %i.df = select i1 %i.dc, i32 1, i32 %i.de       ; 4 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph18.preheader.i.i58, label %Abc_TgManCopy.exit64

.lr.ph18.preheader.i.i58:                         ; preds = %bb.f
  %wide.trip.count24.i.i59 = zext nneg i32 %i.df to i64 ; 3 uses
  %min.iters.check92 = icmp ult i32 %i.df, 8
  %i.dh = add i64 %i.a, xor (i64 ptrtoaddr (ptr @Abc_TtCanonicizeCA.pCopy to i64), i64 -1)
  %diff.check90 = icmp ult i64 %i.dh, 31
  %or.cond103 = or i1 %min.iters.check92, %diff.check90
  br i1 %or.cond103, label %.lr.ph18.i.i60.preheader, label %vector.ph93

.lr.ph18.i.i60.preheader:                         ; preds = %.lr.ph18.preheader.i.i58
  %xtraiter107 = and i64 %wide.trip.count24.i.i59, 3 ; 3 uses
  %i.di = icmp ult i32 %i.df, 4
  br i1 %i.di, label %.lr.ph18.i.i60.epil.preheader, label %.lr.ph18.i.i60.preheader.new

.lr.ph18.i.i60.preheader.new:                     ; preds = %.lr.ph18.i.i60.preheader
  %unroll_iter111 = and i64 %wide.trip.count24.i.i59, 2147483644
  br label %.lr.ph18.i.i60

vector.ph93:                                      ; preds = %.lr.ph18.preheader.i.i58
  %n.vec94 = and i64 %wide.trip.count24.i.i59, 2147483644
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next99, %vector.body95 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %index96 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load97 = load <2 x i64>, ptr %i.dj, align 16, !tbaa !8
  %wide.load98 = load <2 x i64>, ptr %i.dk, align 16, !tbaa !8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x i64> %wide.load97, ptr %i.dl, align 8, !tbaa !8
  store <2 x i64> %wide.load98, ptr %i.dm, align 8, !tbaa !8
  %index.next99 = add nuw i64 %index96, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.dn, label %Abc_TgManCopy.exit64, label %vector.body95, !llvm.loop !540

.lr.ph18.i.i60:                                   ; preds = %.lr.ph18.i.i60, %.lr.ph18.i.i60.preheader.new
  %indvars.iv21.i.i61 = phi i64 [ 0, %.lr.ph18.i.i60.preheader.new ], [ %indvars.iv.next22.i.i62.3, %.lr.ph18.i.i60 ] ; 6 uses
  %niter112 = phi i64 [ 0, %.lr.ph18.i.i60.preheader.new ], [ %niter112.next.3, %.lr.ph18.i.i60 ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i61
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i.i61
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !8
  %indvars.iv.next22.i.i62 = or disjoint i64 %indvars.iv21.i.i61, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i62
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i62
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !8
  %indvars.iv.next22.i.i62.1 = or disjoint i64 %indvars.iv21.i.i61, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i62.1
  %i.dv = load i64, ptr %i.du, align 16, !tbaa !8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i62.1
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !8
  %indvars.iv.next22.i.i62.2 = or disjoint i64 %indvars.iv21.i.i61, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv.next22.i.i62.2
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next22.i.i62.2
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !8
  %indvars.iv.next22.i.i62.3 = add nuw nsw i64 %indvars.iv21.i.i61, 4 ; 2 uses
  %niter112.next.3 = add i64 %niter112, 4         ; 2 uses
  %niter112.ncmp.3 = icmp eq i64 %niter112.next.3, %unroll_iter111
  br i1 %niter112.ncmp.3, label %Abc_TgManCopy.exit64.loopexit.unr-lcssa, label %.lr.ph18.i.i60, !llvm.loop !541

Abc_TgManCopy.exit64.loopexit.unr-lcssa:          ; preds = %.lr.ph18.i.i60
  %lcmp.mod109.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %Abc_TgManCopy.exit64, label %.lr.ph18.i.i60.epil.preheader

.lr.ph18.i.i60.epil.preheader:                    ; preds = %Abc_TgManCopy.exit64.loopexit.unr-lcssa, %.lr.ph18.i.i60.preheader
  %indvars.iv21.i.i61.epil.init = phi i64 [ 0, %.lr.ph18.i.i60.preheader ], [ %indvars.iv.next22.i.i62.3, %Abc_TgManCopy.exit64.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph18.i.i60.epil

.lr.ph18.i.i60.epil:                              ; preds = %.lr.ph18.i.i60.epil, %.lr.ph18.i.i60.epil.preheader
  %indvars.iv21.i.i61.epil = phi i64 [ %indvars.iv.next22.i.i62.epil, %.lr.ph18.i.i60.epil ], [ %indvars.iv21.i.i61.epil.init, %.lr.ph18.i.i60.epil.preheader ] ; 3 uses
  %epil.iter108 = phi i64 [ %epil.iter108.next, %.lr.ph18.i.i60.epil ], [ 0, %.lr.ph18.i.i60.epil.preheader ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCanonicizeCA.pCopy, i64 %indvars.iv21.i.i61.epil
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv21.i.i61.epil
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !8
  %indvars.iv.next22.i.i62.epil = add nuw nsw i64 %indvars.iv21.i.i61.epil, 1
  %epil.iter108.next = add i64 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i64 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %Abc_TgManCopy.exit64, label %.lr.ph18.i.i60.epil, !llvm.loop !542

Abc_TgManCopy.exit64:                             ; preds = %vector.body95, %Abc_TgManCopy.exit64.loopexit.unr-lcssa, %.lr.ph18.i.i60.epil, %bb.f
  store ptr %1, ptr %5, align 8, !tbaa !315
  %i.ed = icmp sgt i32 %i.e, 0
  br i1 %i.ed, label %.lr.ph.preheader.i66, label %Abc_TtFill.exit

.lr.ph.preheader.i66:                             ; preds = %Abc_TgManCopy.exit64
  %i.ee = zext nneg i32 %i.e to i64
  %i.ef = shl nuw nsw i64 %i.ee, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %1, i8 -1, i64 %i.ef, i1 false), !tbaa !8
  br label %Abc_TtFill.exit

Abc_TtFill.exit:                                  ; preds = %Abc_TgManCopy.exit64, %.lr.ph.preheader.i66
  %i.eg = call fastcc { i64, i32 } @Abc_TgRecordPhase(ptr noundef %6, i32 noundef 0) ; 2 uses
  %.not51 = icmp eq i32 %4, 0
  br i1 %.not51, label %bb.i, label %bb.g

bb.g:                                             ; preds = %Abc_TtFill.exit
  %.fca.1.extract5 = extractvalue { i64, i32 } %i.eg, 1
  %.fca.0.extract4 = extractvalue { i64, i32 } %i.eg, 0
  %i.eh = call fastcc double @Abc_SccEnumCost(ptr noundef %6, i64 %.fca.0.extract4, i32 %.fca.1.extract5)
  %i.ei = load <2 x i32>, ptr %i.da, align 8, !tbaa !16
  %i.ej = sitofp <2 x i32> %i.ei to <2 x double>  ; 2 uses
  %i.ek = extractelement <2 x double> %i.ej, i64 1
  %i.el = fmul nnan double %i.ek, 1.043000e+00
  %i.em = extractelement <2 x double> %i.ej, i64 0
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double f0x3FEFE76C8B439581, double %i.el)
  %i.eo = fadd double %i.en, -1.590000e+01
  %i.ep = fcmp ogt double %i.eh, %i.eo
  br i1 %i.ep, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @Abc_TgResetGroup(ptr noundef %6)
  %i.eq = call fastcc { i64, i32 } @Abc_TgRecordPhase(ptr noundef %6, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %Abc_TtFill.exit
  %.048 = phi i32 [ 268435456, %bb.h ], [ 0, %bb.g ], [ 0, %Abc_TtFill.exit ]
  call fastcc void @Abc_TgFullEnumeration(ptr noundef %6, ptr noundef %5)
  %i.er = call i32 @Abc_TtHieRetrieveOrInsert(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1, ptr noundef %1) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.et = sext i32 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 4 %i.es, i64 %i.et, i1 false)
  %i.eu = load i32, ptr %i.k, align 4, !tbaa !316
  %i.ev = or i32 %i.eu, %.048
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %.lr.ph.preheader.i, %Abc_TgManCopy.exit, %Abc_TgExpendSymmetry.exit, %.loopexit, %bb.b, %bb.i
  %.0 = phi i32 [ 536870912, %Abc_TgManCopy.exit ], [ %i.ev, %bb.i ], [ 536870912, %bb.b ], [ 536870912, %.loopexit ], [ 536870912, %Abc_TgExpendSymmetry.exit ], [ 0, %.lr.ph.preheader.i ]
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
  %.01935.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %i.bd, %._crit_edge.i ] ; 3 uses
  %.02134.i = phi i32 [ 0, %.lr.ph37.preheader.i ], [ %.122.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 93
  %i.u = load i8, ptr %i.t, align 1, !tbaa !321   ; 3 uses
  %i.v = sext i8 %i.u to i32                      ; 2 uses
  %.12225.i = add i32 %.02134.i, 1                ; 2 uses
  %i.w = icmp sgt i8 %i.u, 1
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph37.i
  %i.x = sext i32 %.12225.i to i64                ; 2 uses
  %.phi.trans.insert.i = sext i32 %.02134.i to i64
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
  %2 = phi i32 [ %.pre.i, %.lr.ph.preheader.i.new ], [ %i.ak, %bb.g ]
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.g ] ; 3 uses
  %.029.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %.1.i.1, %bb.g ] ; 2 uses
  %.12028.i = phi i32 [ %.01935.i, %.lr.ph.preheader.i.new ], [ %.2.i.1, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.g ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, %2
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = add nsw i32 %.029.i, 1
  br label %.lr.ph.i.1

bb.d:                                             ; preds = %.lr.ph.i
  %i.ae = sext i32 %.029.i to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16
  %i.ah = add nsw i32 %i.ag, %.12028.i
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.d, %bb.c
  %.2.i = phi i32 [ %.12028.i, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.c ], [ 1, %bb.d ]  ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !16 ; 3 uses
  %i.al = icmp eq i32 %i.ak, %i.ab
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.am = sext i32 %.1.i to i64
  %i.an = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !16
  %i.ap = add nsw i32 %i.ao, %.2.i
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.1
  %i.aq = add nsw i32 %.1.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.i.1 = phi i32 [ %.2.i, %bb.f ], [ %i.ap, %bb.e ] ; 3 uses
  %.1.i.1 = phi i32 [ %i.aq, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !543

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.preheader.i
  %.epil.init = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.ak, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.x, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %.029.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.12028.i.epil.init = phi i32 [ %.01935.i, %.lr.ph.preheader.i ], [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod455 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod455)
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !16
  %i.at = icmp eq i32 %i.as, %.epil.init
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.au = sext i32 %.029.i.epil.init to i64
  %i.av = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = add nsw i32 %i.aw, %.12028.i.epil.init
  br label %._crit_edge.loopexit.i

bb.i:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.ay = add nsw i32 %.029.i.epil.init, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.h, %bb.i, %._crit_edge.loopexit.i.unr-lcssa
  %.2.i.lcssa = phi i32 [ %.2.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %.12028.i.epil.init, %bb.i ], [ %i.ax, %bb.h ]
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ay, %bb.i ], [ 1, %bb.h ]
  %i.az = add i32 %.02134.i, %i.v
  %i.ba = sext i32 %.1.i.lcssa to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph37.i
  %.120.lcssa.i = phi i32 [ %.01935.i, %.lr.ph37.i ], [ %.2.i.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 1, %.lr.ph37.i ], [ %i.ba, %._crit_edge.loopexit.i ]
  %.122.lcssa.i = phi i32 [ %.12225.i, %.lr.ph37.i ], [ %i.az, %._crit_edge.loopexit.i ]
  %i.bb = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = add nsw i32 %i.bc, %.120.lcssa.i        ; 2 uses
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count.i
  br i1 %exitcond45.not.i, label %Abc_TgPermCostScc.exit, label %.lr.ph37.i, !llvm.loop !544

bb.j:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.bf = icmp sgt i8 %i.f, 0
  br i1 %i.bf, label %.lr.ph27.i, label %Abc_TgReorderFGrps.exit

.lr.ph27.i:                                       ; preds = %bb.j
  %wide.trip.count.i50 = zext nneg i8 %i.f to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph27.i
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i54, %.critedge.i ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i51
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !187 ; 2 uses
  %.not28.i = icmp eq i64 %indvars.iv.i51, 0
  br i1 %.not28.i, label %.critedge.i, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %bb.k
  %i.bk = trunc nuw nsw i64 %indvars.iv.i51 to i32
  %i.bl = sext i8 %i.bj to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %i.bl
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i52
  %.023.i = phi i32 [ %i.bk, %.lr.ph.i52 ], [ %i.bw, %bb.m ] ; 4 uses
  %i.bn = zext nneg i32 %.023.i to i64
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !187 ; 2 uses
  %i.br = sext i8 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bh, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !187
  %i.bu = load i8, ptr %i.bm, align 1, !tbaa !187
  %i.bv = icmp sgt i8 %i.bt, %i.bu
  br i1 %i.bv, label %bb.m, label %.critedge.loopexit.i

bb.m:                                             ; preds = %bb.l
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !187
  %i.bw = add nsw i32 %.023.i, -1
  %i.bx = icmp sgt i32 %.023.i, 1
  br i1 %i.bx, label %bb.l, label %.critedge.loopexit.i, !llvm.loop !333

.critedge.loopexit.i:                             ; preds = %bb.m, %bb.l
  %.0.lcssa.ph.i = phi i32 [ %.023.i, %bb.l ], [ 0, %bb.m ]
  %i.by = sext i32 %.0.lcssa.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.k
  %.0.lcssa.i53 = phi i64 [ 0, %bb.k ], [ %i.by, %.critedge.loopexit.i ]
  %i.bz = getelementptr inbounds i8, ptr %i.be, i64 %.0.lcssa.i53
  store i8 %i.bj, ptr %i.bz, align 1, !tbaa !187
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i50
  br i1 %exitcond.not.i55, label %Abc_TgReorderFGrps.exit, label %bb.k, !llvm.loop !334

Abc_TgReorderFGrps.exit:                          ; preds = %.critedge.i, %bb.j
  %i.ca = load ptr, ptr %0, align 8, !tbaa !315   ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !313 ; 8 uses
  %i.cd = icmp slt i32 %i.cc, 7
  %i.ce = add nsw i32 %i.cc, -6
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = select i1 %i.cd, i32 1, i32 %i.cf       ; 2 uses
  %i.ch = icmp slt i32 %i.cc, 6
  br i1 %i.ch, label %bb.n, label %Abc_TtNormalizeSmallTruth.exit.i

bb.n:                                             ; preds = %Abc_TgReorderFGrps.exit
  %i.ci = shl nuw nsw i32 1, %i.cc
  %i.cj = load i64, ptr %i.ca, align 8, !tbaa !8
  %i.ck = zext nneg i32 %i.ci to i64              ; 6 uses
  %notmask.i.i = shl nsw i64 -1, %i.ck
  %i.cl = xor i64 %notmask.i.i, -1
  %i.cm = and i64 %i.cj, %i.cl                    ; 5 uses
  store i64 %i.cm, ptr %i.ca, align 8, !tbaa !8
  %i.cn = icmp ult i32 %i.cc, 6
  br i1 %i.cn, label %.lr.ph.i.i.preheader, label %Abc_TtNormalizeSmallTruth.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %i.co = shl nuw nsw i64 %i.ck, 1
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.co, i64 64) ; 2 uses
  %i.cq = zext nneg i32 %i.cc to i64
  %i.cr = shl nsw i64 -2, %i.cq                   ; 2 uses
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = icmp ne i64 %i.cp, %i.cs
  %i.cu = zext i1 %i.ct to i64                    ; 2 uses
  %i.cv = sub nuw nsw i64 %i.cp, %i.cu
  %i.cw = add nsw i64 %i.cv, %i.cr
  %i.cx = zext nneg i32 %i.cc to i64
  %i.cy = lshr i64 %i.cw, %i.cx
  %i.cz = add i64 %i.cy, %i.cu
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader447, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.da, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = zext nneg i32 %i.cc to i64
  %i.dc = shl i64 %n.vec, %i.db
  %i.dd = add i64 %i.dc, %i.ck
  %i.de = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cm, i64 0
  %i.df = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert333 = insertelement <2 x i64> poison, i64 %i.cm, i64 0
  %broadcast.splat334 = shufflevector <2 x i64> %broadcast.splatinsert333, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction = shl nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nuw nsw <2 x i64> %i.df, %i.df
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.de, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi335 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %step.add = add nuw nsw <2 x i64> %vec.ind, %i.df
  %i.dg = shl <2 x i64> %broadcast.splat334, %vec.ind
  %i.dh = shl <2 x i64> %broadcast.splat334, %step.add
  %i.di = or <2 x i64> %vec.phi, %i.dg            ; 2 uses
  %i.dj = or <2 x i64> %vec.phi335, %i.dh         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nuw nsw <2 x i64> %vec.ind, %invariant.op
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.dj, %i.di
  %i.dl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge.i.i, label %.lr.ph.i.i.preheader447

.lr.ph.i.i.preheader447:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.ck, %.lr.ph.i.i.preheader ], [ %i.dd, %middle.block ]
  %.ph448 = phi i64 [ %i.cm, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader447, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader447 ] ; 2 uses
  %i.dm = phi i64 [ %i.do, %.lr.ph.i.i ], [ %.ph448, %.lr.ph.i.i.preheader447 ]
  %i.dn = shl i64 %i.cm, %indvars.iv.i.i
  %i.do = or i64 %i.dm, %i.dn                     ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, %i.ck ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i.i, 64
  br i1 %i.dp, label %.lr.ph.i.i, label %..loopexit_crit_edge.i.i, !llvm.loop !546

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa331 = phi i64 [ %i.dl, %middle.block ], [ %i.do, %.lr.ph.i.i ]
  store i64 %.lcssa331, ptr %i.ca, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i

Abc_TtNormalizeSmallTruth.exit.i:                 ; preds = %..loopexit_crit_edge.i.i, %bb.n, %Abc_TgReorderFGrps.exit
  %i.dq = icmp sgt i32 %i.cg, 0
  br i1 %i.dq, label %.lr.ph.preheader.i58, label %Abc_TtScc.exit

.lr.ph.preheader.i58:                             ; preds = %Abc_TtNormalizeSmallTruth.exit.i
  %wide.trip.count.i59 = zext nneg i32 %i.cg to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %Abc_TtScc6.exit.i, %.lr.ph.preheader.i58
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.preheader.i58 ], [ %indvars.iv.next.i62, %Abc_TtScc6.exit.i ] ; 3 uses
  %.014.i = phi i32 [ 0, %.lr.ph.preheader.i58 ], [ %i.ed, %Abc_TtScc6.exit.i ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i61
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !8  ; 2 uses
  %i.dt = trunc nuw nsw i64 %indvars.iv.i61 to i32
  %i.du = and i32 %i.dt, 65535
  %i.dv = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.du)
  %.not.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i, label %Abc_TtScc6.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i60, %bb.p
  %indvars.iv.i11.i = phi i64 [ %indvars.iv.next.i12.i, %bb.p ], [ 0, %.lr.ph.i60 ] ; 3 uses
  %.01116.i.i = phi i32 [ %.1.i.i, %bb.p ], [ 0, %.lr.ph.i60 ] ; 2 uses
  %i.dw = shl nuw i64 1, %indvars.iv.i11.i
  %i.dx = and i64 %i.dw, %i.ds
  %.not14.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not14.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i
  %i.dy = trunc nuw nsw i64 %indvars.iv.i11.i to i32
  %i.dz = tail call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.dy)
  %i.ea = add nuw nsw i32 %i.dz, %i.dv
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = add nsw i32 %i.eb, %.01116.i.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.i
  %.1.i.i = phi i32 [ %i.ec, %bb.o ], [ %.01116.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i12.i = add nuw nsw i64 %indvars.iv.i11.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i12.i, 64
  br i1 %exitcond.not.i.i, label %Abc_TtScc6.exit.i, label %.preheader.i.i, !llvm.loop !22

Abc_TtScc6.exit.i:                                ; preds = %bb.p, %.lr.ph.i60
  %.0.i.i = phi i32 [ 0, %.lr.ph.i60 ], [ %.1.i.i, %bb.p ]
  %i.ed = add nsw i32 %.0.i.i, %.014.i            ; 2 uses
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i59
  br i1 %exitcond.not.i63, label %Abc_TtScc.exit, label %.lr.ph.i60, !llvm.loop !23

Abc_TtScc.exit:                                   ; preds = %Abc_TtScc6.exit.i, %Abc_TtNormalizeSmallTruth.exit.i
  %.0.lcssa.i57 = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i ], [ %i.ed, %Abc_TtScc6.exit.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %.0.lcssa.i57, ptr %i.ee, align 4, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  call fastcc void @Abc_TgCalcScc(ptr noundef %0, ptr noundef %i.ef, i32 noundef 1)
  br i1 %i.h, label %Abc_TgPermCostScc.exit92, label %bb.q

bb.q:                                             ; preds = %Abc_TtScc.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !318 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph37.preheader.i65, label %Abc_TgPermCostScc.exit92

.lr.ph37.preheader.i65:                           ; preds = %bb.q
  %wide.trip.count.i66 = zext nneg i32 %i.eh to i64
  br label %.lr.ph37.i67

.lr.ph37.i67:                                     ; preds = %._crit_edge.i72, %.lr.ph37.preheader.i65
  %indvars.iv42.i68 = phi i64 [ 0, %.lr.ph37.preheader.i65 ], [ %indvars.iv.next43.i76, %._crit_edge.i72 ] ; 2 uses
  %.01935.i69 = phi i32 [ 0, %.lr.ph37.preheader.i65 ], [ %i.fu, %._crit_edge.i72 ] ; 3 uses
  %.02134.i70 = phi i32 [ 0, %.lr.ph37.preheader.i65 ], [ %.122.lcssa.i75, %._crit_edge.i72 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i68
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 93
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !321 ; 3 uses
  %i.em = sext i8 %i.el to i32                    ; 2 uses
  %.12225.i71 = add i32 %.02134.i70, 1            ; 2 uses
  %i.en = icmp sgt i8 %i.el, 1
  br i1 %i.en, label %.lr.ph.preheader.i78, label %._crit_edge.i72

.lr.ph.preheader.i78:                             ; preds = %.lr.ph37.i67
  %i.eo = sext i32 %.12225.i71 to i64             ; 2 uses
  %.phi.trans.insert.i79 = sext i32 %.02134.i70 to i64
  %.phi.trans.insert46.i80 = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.phi.trans.insert.i79
  %.pre.i81 = load i32, ptr %.phi.trans.insert46.i80, align 4, !tbaa !16 ; 2 uses
  %i.ep = add nsw i32 %i.em, -1                   ; 3 uses
  %xtraiter456 = and i32 %i.ep, 1
  %i.eq = icmp eq i8 %i.el, 2
  br i1 %i.eq, label %.lr.ph.i82.epil.preheader, label %.lr.ph.preheader.i78.new

.lr.ph.preheader.i78.new:                         ; preds = %.lr.ph.preheader.i78
  %unroll_iter463.a = and i32 %i.ep, -2
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %bb.v, %.lr.ph.preheader.i78.new
  %3 = phi i32 [ %.pre.i81, %.lr.ph.preheader.i78.new ], [ %i.fb, %bb.v ]
  %indvars.iv.i83 = phi i64 [ %i.eo, %.lr.ph.preheader.i78.new ], [ %indvars.iv.next.i89.1, %bb.v ] ; 3 uses
  %.029.i84 = phi i32 [ 1, %.lr.ph.preheader.i78.new ], [ %.1.i88.1, %bb.v ] ; 2 uses
  %.12028.i85 = phi i32 [ %.01935.i69, %.lr.ph.preheader.i78.new ], [ %.2.i87.1, %bb.v ] ; 2 uses
  %niter464.a = phi i32 [ 0, %.lr.ph.preheader.i78.new ], [ %niter464.next.1.a, %bb.v ]
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i83
  %i.es = load i32, ptr %i.er, align 4, !tbaa !16 ; 2 uses
  %i.et = icmp eq i32 %i.es, %3
  br i1 %i.et, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i82
  %i.eu = add nsw i32 %.029.i84, 1
  br label %.lr.ph.i82.1

bb.s:                                             ; preds = %.lr.ph.i82
  %i.ev = sext i32 %.029.i84 to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !16
  %i.ey = add nsw i32 %i.ex, %.12028.i85
  br label %.lr.ph.i82.1

.lr.ph.i82.1:                                     ; preds = %bb.s, %bb.r
  %.2.i87 = phi i32 [ %.12028.i85, %bb.r ], [ %i.ey, %bb.s ] ; 2 uses
  %.1.i88 = phi i32 [ %i.eu, %bb.r ], [ 1, %bb.s ] ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv.i83
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !16 ; 3 uses
  %i.fc = icmp eq i32 %i.fb, %i.es
  br i1 %i.fc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i82.1
  %i.fd = sext i32 %.1.i88 to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !16
  %i.fg = add nsw i32 %i.ff, %.2.i87
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i82.1
  %i.fh = add nsw i32 %.1.i88, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2.i87.1 = phi i32 [ %.2.i87, %bb.u ], [ %i.fg, %bb.t ] ; 3 uses
  %.1.i88.1 = phi i32 [ %i.fh, %bb.u ], [ 1, %bb.t ] ; 3 uses
  %indvars.iv.next.i89.1 = add nsw i64 %indvars.iv.i83, 2 ; 2 uses
  %niter464.next.1.a = add i32 %niter464.a, 2     ; 2 uses
  %niter464.ncmp.1.a = icmp eq i32 %niter464.next.1.a, %unroll_iter463.a
  br i1 %niter464.ncmp.1.a, label %._crit_edge.loopexit.i91.unr-lcssa, label %.lr.ph.i82, !llvm.loop !543

._crit_edge.loopexit.i91.unr-lcssa:               ; preds = %bb.v
  %lcmp.mod459.not = icmp eq i32 %xtraiter456, 0
  br i1 %lcmp.mod459.not, label %._crit_edge.loopexit.i91, label %.lr.ph.i82.epil.preheader

.lr.ph.i82.epil.preheader:                        ; preds = %._crit_edge.loopexit.i91.unr-lcssa, %.lr.ph.preheader.i78
  %.epil.init458 = phi i32 [ %.pre.i81, %.lr.ph.preheader.i78 ], [ %i.fb, %._crit_edge.loopexit.i91.unr-lcssa ]
  %indvars.iv.i83.epil.init = phi i64 [ %i.eo, %.lr.ph.preheader.i78 ], [ %indvars.iv.next.i89.1, %._crit_edge.loopexit.i91.unr-lcssa ]
  %.029.i84.epil.init = phi i32 [ 1, %.lr.ph.preheader.i78 ], [ %.1.i88.1, %._crit_edge.loopexit.i91.unr-lcssa ] ; 2 uses
  %.12028.i85.epil.init = phi i32 [ %.01935.i69, %.lr.ph.preheader.i78 ], [ %.2.i87.1, %._crit_edge.loopexit.i91.unr-lcssa ] ; 2 uses
  %lcmp.mod462.a = trunc i32 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod462.a)
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i83.epil.init
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !16
  %i.fk = icmp eq i32 %i.fj, %.epil.init458
  br i1 %i.fk, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i82.epil.preheader
  %i.fl = sext i32 %.029.i84.epil.init to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !16
  %i.fo = add nsw i32 %i.fn, %.12028.i85.epil.init
  br label %._crit_edge.loopexit.i91

bb.x:                                             ; preds = %.lr.ph.i82.epil.preheader
  %i.fp = add nsw i32 %.029.i84.epil.init, 1
  br label %._crit_edge.loopexit.i91

._crit_edge.loopexit.i91:                         ; preds = %bb.w, %bb.x, %._crit_edge.loopexit.i91.unr-lcssa
  %.2.i87.lcssa = phi i32 [ %.2.i87.1, %._crit_edge.loopexit.i91.unr-lcssa ], [ %.12028.i85.epil.init, %bb.x ], [ %i.fo, %bb.w ]
  %.1.i88.lcssa = phi i32 [ %.1.i88.1, %._crit_edge.loopexit.i91.unr-lcssa ], [ %i.fp, %bb.x ], [ 1, %bb.w ]
  %i.fq = add i32 %.02134.i70, %i.em
  %i.fr = sext i32 %.1.i88.lcssa to i64
  br label %._crit_edge.i72

._crit_edge.i72:                                  ; preds = %._crit_edge.loopexit.i91, %.lr.ph37.i67
  %.120.lcssa.i73 = phi i32 [ %.01935.i69, %.lr.ph37.i67 ], [ %.2.i87.lcssa, %._crit_edge.loopexit.i91 ]
  %.0.lcssa.i74 = phi i64 [ 1, %.lr.ph37.i67 ], [ %i.fr, %._crit_edge.loopexit.i91 ]
  %.122.lcssa.i75 = phi i32 [ %.12225.i71, %.lr.ph37.i67 ], [ %i.fq, %._crit_edge.loopexit.i91 ]
  %i.fs = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i74
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !16
  %i.fu = add nsw i32 %i.ft, %.120.lcssa.i73      ; 2 uses
  %indvars.iv.next43.i76 = add nuw nsw i64 %indvars.iv42.i68, 1 ; 2 uses
  %exitcond45.not.i77 = icmp eq i64 %indvars.iv.next43.i76, %wide.trip.count.i66
  br i1 %exitcond45.not.i77, label %Abc_TgPermCostScc.exit92, label %.lr.ph37.i67, !llvm.loop !544

Abc_TgPermCostScc.exit92:                         ; preds = %._crit_edge.i72, %bb.q, %Abc_TtScc.exit
  %i.fv = phi i32 [ 0, %Abc_TtScc.exit ], [ 0, %bb.q ], [ %i.fu, %._crit_edge.i72 ]
  store i32 %i.fv, ptr %i.b, align 16, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 8 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !247 ; 7 uses
  %i.fy = load i32, ptr %i.d, align 8, !tbaa !243
  %i.fz = icmp eq i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.y, label %Vec_IntPush.exit

bb.y:                                             ; preds = %Abc_TgPermCostScc.exit92
  %i.ga = icmp slt i32 %i.fx, 16
  br i1 %i.ga, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !246 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.gc, null
  br i1 %.not9.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gc, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ge = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.ab, %bb.aa
  %i.gf = phi ptr [ %i.gd, %bb.aa ], [ %i.ge, %bb.ab ]
  store ptr %i.gf, ptr %i.gb, align 8, !tbaa !246
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ac:                                            ; preds = %bb.y
  %i.gg = icmp samesign ult i32 %i.fx, 1073741823
  %i.gh = shl nuw nsw i32 %i.fx, 1
  %spec.select.i = select i1 %i.gg, i32 %i.gh, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.fx, %spec.select.i
  br i1 %.not.i9.i, label %bb.ad, label %Vec_IntPush.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !246 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.gj, null
  %i.gk = zext nneg i32 %spec.select.i to i64
  %i.gl = shl nuw nsw i64 %i.gk, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = tail call ptr @realloc(ptr noundef nonnull %i.gj, i64 noundef %i.gl) #24
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.gn = tail call noalias ptr @malloc(i64 noundef %i.gl) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.go = phi ptr [ %i.gm, %bb.ae ], [ %i.gn, %bb.af ]
  store ptr %i.go, ptr %i.gi, align 8, !tbaa !246
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.ag, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.ag ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.d, align 8, !tbaa !243
  %.pre = load i32, ptr %i.fw, align 4, !tbaa !247
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Abc_TgPermCostScc.exit92, %bb.ac, %Vec_IntGrow.exit11.sink.split.i
  %i.gp = phi i32 [ %i.fx, %Abc_TgPermCostScc.exit92 ], [ %i.fx, %bb.ac ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !246
  %i.gs = add nsw i32 %i.gp, 1
  store i32 %i.gs, ptr %i.fw, align 4, !tbaa !247
  %i.gt = sext i32 %i.gp to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gt
  store i32 0, ptr %i.gu, align 4, !tbaa !16
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hc = zext nneg i32 %i.i to i64               ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hc ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hc ; 3 uses
  %i.hf = icmp sgt i32 %i.l, 0
  %wide.trip.count.i154 = zext nneg i32 %i.l to i64 ; 3 uses
  %i.hg = shl nuw nsw i64 %wide.trip.count.i154, 2
  br label %Abc_TgCompareCoef.exit168

Abc_TgCompareCoef.exit168:                        ; preds = %Abc_TgCompareCoef.exit168.backedge, %Vec_IntPush.exit
  %.0 = phi i32 [ 0, %Vec_IntPush.exit ], [ %i.hh, %Abc_TgCompareCoef.exit168.backedge ]
  %i.hh = add i32 %.0, 1                          ; 4 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %Abc_TgCompareCoef.exit168
  %.0.i = phi i32 [ 0, %Abc_TgCompareCoef.exit168 ], [ %i.hk, %bb.ah ] ; 4 uses
  %i.hi = shl nuw i32 1, %.0.i
  %i.hj = and i32 %i.hi, %i.hh
  %.not.i93 = icmp eq i32 %i.hj, 0
  %i.hk = add nuw nsw i32 %.0.i, 1
  br i1 %.not.i93, label %bb.ah, label %grayFlip.exit

grayFlip.exit:                                    ; preds = %bb.ah
  %i.hl = icmp slt i32 %.0.i, %i.g
  br i1 %i.hl, label %bb.ai, label %bb.bn

bb.ai:                                            ; preds = %grayFlip.exit
  %i.hm = zext nneg i32 %.0.i to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !187 ; 2 uses
  %i.hp = icmp sgt i8 %i.ho, -1
  br i1 %i.hp, label %.lr.ph.i95, label %Abc_TgFlipSymGroupByVar.exit

.lr.ph.i95:                                       ; preds = %bb.ai, %bb.ao
  %.07.i.in = phi i8 [ %i.kv, %bb.ao ], [ %i.ho, %bb.ai ]
  %.07.i = zext nneg i8 %.07.i.in to i64          ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.07.i
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !187
  %.not.i96 = icmp eq i8 %i.hr, 0
  br i1 %.not.i96, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i95
  %i.hs = load i32, ptr %i.cb, align 8, !tbaa !313 ; 2 uses
  %i.ht = add nsw i32 %i.hs, -6                   ; 4 uses
  %i.hu = shl nuw i32 1, %i.ht                    ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.07.i
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !187 ; 4 uses
  %i.hx = sext i8 %i.hw to i32                    ; 4 uses
  %i.hy = load ptr, ptr %0, align 8, !tbaa !315   ; 9 uses
  %i.hz = icmp slt i32 %i.hs, 7
  br i1 %i.hz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !8  ; 2 uses
  %i.ib = shl nuw i32 1, %i.hx
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = shl i64 %i.ia, %i.ic
  %i.ie = sext i8 %i.hw to i64
  %i.if = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !8  ; 2 uses
  %i.ih = and i64 %i.id, %i.ig
  %i.ii = and i64 %i.ig, %i.ia
  %i.ij = lshr i64 %i.ii, %i.ic
  %i.ik = or i64 %i.ij, %i.ih
  store i64 %i.ik, ptr %i.hy, align 8, !tbaa !8
  br label %Abc_TgFlipVar.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.il = icmp slt i8 %i.hw, 6
  br i1 %i.il, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.not7.i.i = icmp eq i32 %i.ht, 31
  br i1 %.not7.i.i, label %Abc_TgFlipVar.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am
  %i.im = shl nuw nsw i32 1, %i.hx
  %i.in = zext nneg i32 %i.im to i64              ; 3 uses
  %i.io = sext i8 %i.hw to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !8  ; 3 uses
  %wide.trip.count59.i.i.i = zext nneg i32 %i.hu to i64 ; 2 uses
  %min.iters.check359 = icmp ult i32 %i.ht, 2
  br i1 %min.iters.check359, label %scalar.ph358, label %vector.ph360

vector.ph360:                                     ; preds = %.lr.ph.i.i.i
  %n.vec361 = and i64 %wide.trip.count59.i.i.i, 2147483644
  %broadcast.splatinsert362 = insertelement <2 x i64> poison, i64 %i.in, i64 0
  %broadcast.splat363 = shufflevector <2 x i64> %broadcast.splatinsert362, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.iq, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body366, %vector.ph360
  %index367 = phi i64 [ 0, %vector.ph360 ], [ %index.next369, %vector.body366 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %index367 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ir, align 8, !tbaa !8 ; 2 uses
  %wide.load368 = load <2 x i64>, ptr %i.is, align 8, !tbaa !8 ; 2 uses
  %i.it = shl <2 x i64> %wide.load, %broadcast.splat363
  %i.iu = shl <2 x i64> %wide.load368, %broadcast.splat363
  %i.iv = and <2 x i64> %i.it, %broadcast.splat365
  %i.iw = and <2 x i64> %i.iu, %broadcast.splat365
  %i.ix = and <2 x i64> %wide.load, %broadcast.splat365
  %i.iy = and <2 x i64> %wide.load368, %broadcast.splat365
  %i.iz = lshr <2 x i64> %i.ix, %broadcast.splat363
  %i.ja = lshr <2 x i64> %i.iy, %broadcast.splat363
  %i.jb = or <2 x i64> %i.iz, %i.iv
  %i.jc = or <2 x i64> %i.ja, %i.iw
  store <2 x i64> %i.jb, ptr %i.ir, align 8, !tbaa !8
  store <2 x i64> %i.jc, ptr %i.is, align 8, !tbaa !8
  %index.next369 = add nuw i64 %index367, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next369, %n.vec361
  br i1 %i.jd, label %Abc_TgFlipVar.exit.i, label %vector.body366, !llvm.loop !547

scalar.ph358:                                     ; preds = %.lr.ph.i.i.i, %scalar.ph358
  %indvars.iv56.i.i.i = phi i64 [ %indvars.iv.next57.i.i.i, %scalar.ph358 ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !8  ; 2 uses
  %i.jg = shl i64 %i.jf, %i.in
  %i.jh = and i64 %i.jg, %i.iq
  %i.ji = and i64 %i.jf, %i.iq
  %i.jj = lshr i64 %i.ji, %i.in
  %i.jk = or i64 %i.jj, %i.jh
  store i64 %i.jk, ptr %i.je, align 8, !tbaa !8
  %indvars.iv.next57.i.i.i = add nuw nsw i64 %indvars.iv56.i.i.i, 1 ; 2 uses
  %exitcond60.not.i.i.i = icmp eq i64 %indvars.iv.next57.i.i.i, %wide.trip.count59.i.i.i
  br i1 %exitcond60.not.i.i.i, label %Abc_TgFlipVar.exit.i, label %scalar.ph358, !llvm.loop !548

bb.an:                                            ; preds = %bb.al
  %i.jl = sext i32 %i.hu to i64
  %.idx.i.i.i = shl nsw i64 %i.jl, 3
  %i.jm = getelementptr inbounds i8, ptr %i.hy, i64 %.idx.i.i.i
  %i.jn = add nsw i32 %i.hx, -6                   ; 3 uses
  %i.jo = shl nuw i32 1, %i.jn                    ; 4 uses
  %.not.i.i97 = icmp eq i32 %i.ht, 31
  br i1 %.not.i.i97, label %Abc_TgFlipVar.exit.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.an
  %.not.i.i.i = icmp eq i32 %i.jn, 31
  %i.jp = shl i32 2, %i.jn
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  br i1 %.not.i.i.i, label %Abc_TgFlipVar.exit.i, label %.preheader.us.preheader.i.i.i

.preheader.us.preheader.i.i.i:                    ; preds = %.preheader.lr.ph.i.i.i
  %i.jr = sext i32 %i.jo to i64                   ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.jo, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 4 uses
  %i.js = shl nuw nsw i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %i.jt = shl nsw i64 %i.jq, 3
  %i.ju = shl nsw i64 %i.jr, 3                    ; 2 uses
  %min.iters.check376 = icmp slt i32 %i.jo, 4
  %i.jv = getelementptr i8, ptr %i.hy, i64 %i.ju
  %i.jw = getelementptr i8, ptr %i.jv, i64 %i.js
  %i.jx = getelementptr i8, ptr %i.hy, i64 %i.ju
  %i.jy = getelementptr i8, ptr %i.hy, i64 %i.js
  %n.vec378 = and i64 %wide.trip.count.i.i.i, 2147483644
  %xtraiter465.a = and i64 %wide.trip.count.i.i.i, 1
  %i.jz = icmp slt i32 %i.jo, 2
  %unroll_iter468 = and i64 %wide.trip.count.i.i.i, 2147483646
  %lcmp.mod466.not.a = icmp eq i64 %xtraiter465.a, 0
  %lcmp.mod467 = trunc i32 %smax.i.i.i to i1
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.us.i.i.i, %.preheader.us.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i.i.i ], [ 0, %.preheader.us.preheader.i.i.i ] ; 2 uses
  %.051.us.i.i.i = phi ptr [ %i.kp, %._crit_edge.us.i.i.i ], [ %i.hy, %.preheader.us.preheader.i.i.i ] ; 7 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %.051.us.i.i.i, i64 %i.jr ; 4 uses
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck

scalar.ph375.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i.i.i
  br i1 %i.jz, label %scalar.ph375.epil.preheader, label %scalar.ph375

vector.memcheck:                                  ; preds = %.preheader.us.i.i.i
  %i.ka = mul i64 %i.jt, %indvar                  ; 3 uses
  %scevgep374 = getelementptr i8, ptr %i.jw, i64 %i.ka
  %scevgep373 = getelementptr i8, ptr %i.jx, i64 %i.ka
  %scevgep = getelementptr i8, ptr %i.jy, i64 %i.ka
  %bound0 = icmp ult ptr %.051.us.i.i.i, %scevgep374
  %bound1 = icmp ult ptr %scevgep373, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph375.preheader, label %vector.body379

vector.body379:                                   ; preds = %vector.memcheck, %vector.body379
  %index380 = phi i64 [ %index.next385, %vector.body379 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i, i64 %index380 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %wide.load381.a = load <2 x i64>, ptr %i.kb, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  %wide.load382 = load <2 x i64>, ptr %i.kc, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  %i.kd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index380 ; 3 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 16     ; 2 uses
  %wide.load383 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !8, !alias.scope !552
  %wide.load384 = load <2 x i64>, ptr %i.ke, align 8, !tbaa !8, !alias.scope !552
  store <2 x i64> %wide.load383, ptr %i.kb, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  store <2 x i64> %wide.load384, ptr %i.kc, align 8, !tbaa !8, !alias.scope !549, !noalias !552
  store <2 x i64> %wide.load381.a, ptr %i.kd, align 8, !tbaa !8, !alias.scope !552
  store <2 x i64> %wide.load382, ptr %i.ke, align 8, !tbaa !8, !alias.scope !552
  %index.next385 = add nuw i64 %index380, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next385, %n.vec378
  br i1 %i.kf, label %._crit_edge.us.i.i.i, label %vector.body379, !llvm.loop !554
end_hunk_0
begin_hunk_1_@Abc_TgRecordPhase:bb.a
  br label %._crit_edge.us.i.i.i

._crit_edge.us.i.i.i:                             ; preds = %vector.body379, %scalar.ph375.epil.preheader, %._crit_edge.us.i.i.i.loopexit.unr-lcssa
  %i.kp = getelementptr inbounds [8 x i8], ptr %.051.us.i.i.i, i64 %i.jq ; 2 uses
  %i.kq = icmp ult ptr %i.kp, %i.jm
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kq, label %.preheader.us.i.i.i, label %Abc_TgFlipVar.exit.i, !llvm.loop !96

Abc_TgFlipVar.exit.i:                             ; preds = %._crit_edge.us.i.i.i, %vector.body366, %scalar.ph358, %.preheader.lr.ph.i.i.i, %bb.an, %bb.am, %bb.ak
  %i.kr = shl nuw i32 1, %i.hx
  %i.ks = load i32, ptr %i.gx, align 4, !tbaa !316
  %i.kt = xor i32 %i.ks, %i.kr
  store i32 %i.kt, ptr %i.gx, align 4, !tbaa !316
  br label %bb.ao

bb.ao:                                            ; preds = %Abc_TgFlipVar.exit.i, %.lr.ph.i95
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.07.i
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !187 ; 2 uses
  %i.kw = icmp sgt i8 %i.kv, -1
  br i1 %i.kw, label %.lr.ph.i95, label %Abc_TgFlipSymGroupByVar.exit, !llvm.loop !346

Abc_TgFlipSymGroupByVar.exit:                     ; preds = %bb.ao, %bb.ai
  %i.kx = load ptr, ptr %0, align 8, !tbaa !315   ; 4 uses
  %i.ky = load i32, ptr %i.cb, align 8, !tbaa !313 ; 8 uses
  %i.kz = icmp slt i32 %i.ky, 7
  %i.la = add nsw i32 %i.ky, -6
  %i.lb = shl nuw i32 1, %i.la
  %i.lc = select i1 %i.kz, i32 1, i32 %i.lb       ; 2 uses
  %i.ld = icmp slt i32 %i.ky, 6
  br i1 %i.ld, label %bb.ap, label %Abc_TtNormalizeSmallTruth.exit.i98

bb.ap:                                            ; preds = %Abc_TgFlipSymGroupByVar.exit
  %i.le = shl nuw nsw i32 1, %i.ky
  %i.lf = load i64, ptr %i.kx, align 8, !tbaa !8
  %i.lg = zext nneg i32 %i.le to i64              ; 6 uses
  %notmask.i.i118 = shl nsw i64 -1, %i.lg
  %i.lh = xor i64 %notmask.i.i118, -1
  %i.li = and i64 %i.lf, %i.lh                    ; 5 uses
  store i64 %i.li, ptr %i.kx, align 8, !tbaa !8
  %i.lj = icmp ult i32 %i.ky, 6
  br i1 %i.lj, label %.lr.ph.i.i119.preheader, label %Abc_TtNormalizeSmallTruth.exit.i98

.lr.ph.i.i119.preheader:                          ; preds = %bb.ap
  %i.lk = shl nuw nsw i64 %i.lg, 1
  %i.ll = tail call i64 @llvm.umax.i64(i64 %i.lk, i64 64) ; 2 uses
  %i.lm = zext nneg i32 %i.ky to i64
  %i.ln = shl nsw i64 -2, %i.lm                   ; 2 uses
  %i.lo = sub nsw i64 0, %i.ln
  %i.lp = icmp ne i64 %i.ll, %i.lo
  %i.lq = zext i1 %i.lp to i64                    ; 2 uses
  %i.lr = sub nuw nsw i64 %i.ll, %i.lq
  %i.ls = add nsw i64 %i.lr, %i.ln
  %i.lt = zext nneg i32 %i.ky to i64
  %i.lu = lshr i64 %i.ls, %i.lt
  %i.lv = add i64 %i.lu, %i.lq
  %i.lw = add i64 %i.lv, 1                        ; 3 uses
  %min.iters.check337 = icmp ult i64 %i.lw, 4
  br i1 %min.iters.check337, label %.lr.ph.i.i119.preheader435, label %vector.ph338

vector.ph338:                                     ; preds = %.lr.ph.i.i119.preheader
  %n.vec339 = and i64 %i.lw, -4                   ; 3 uses
  %broadcast.splatinsert340 = insertelement <2 x i64> poison, i64 %i.lg, i64 0
  %broadcast.splat341 = shufflevector <2 x i64> %broadcast.splatinsert340, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lx = zext nneg i32 %i.ky to i64
  %i.ly = shl i64 %n.vec339, %i.lx
  %i.lz = add i64 %i.ly, %i.lg
  %i.ma = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.li, i64 0
  %i.mb = shl nuw nsw <2 x i64> %broadcast.splat341, splat (i64 1) ; 3 uses
  %broadcast.splatinsert342 = insertelement <2 x i64> poison, i64 %i.li, i64 0
  %broadcast.splat343 = shufflevector <2 x i64> %broadcast.splatinsert342, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %induction344 = shl nuw nsw <2 x i64> %broadcast.splat341, <i64 0, i64 1>
  %invariant.op513 = add nuw nsw <2 x i64> %i.mb, %i.mb
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph338
  %index346 = phi i64 [ 0, %vector.ph338 ], [ %index.next351, %vector.body345 ]
  %vec.ind347 = phi <2 x i64> [ %induction344, %vector.ph338 ], [ %vec.ind.next352.reass, %vector.body345 ] ; 3 uses
  %vec.phi348 = phi <2 x i64> [ %i.ma, %vector.ph338 ], [ %i.me, %vector.body345 ]
  %vec.phi349 = phi <2 x i64> [ zeroinitializer, %vector.ph338 ], [ %i.mf, %vector.body345 ]
  %step.add350 = add nuw nsw <2 x i64> %vec.ind347, %i.mb
  %i.mc = shl <2 x i64> %broadcast.splat343, %vec.ind347
  %i.md = shl <2 x i64> %broadcast.splat343, %step.add350
  %i.me = or <2 x i64> %vec.phi348, %i.mc         ; 2 uses
  %i.mf = or <2 x i64> %vec.phi349, %i.md         ; 2 uses
  %index.next351 = add nuw i64 %index346, 4       ; 2 uses
  %vec.ind.next352.reass = add nuw nsw <2 x i64> %vec.ind347, %invariant.op513
  %i.mg = icmp eq i64 %index.next351, %n.vec339
  br i1 %i.mg, label %middle.block353, label %vector.body345, !llvm.loop !556

middle.block353:                                  ; preds = %vector.body345
  %bin.rdx354 = or <2 x i64> %i.mf, %i.me
  %i.mh = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx354) ; 2 uses
  %cmp.n355 = icmp eq i64 %i.lw, %n.vec339
  br i1 %cmp.n355, label %..loopexit_crit_edge.i.i122, label %.lr.ph.i.i119.preheader435

.lr.ph.i.i119.preheader435:                       ; preds = %.lr.ph.i.i119.preheader, %middle.block353
  %indvars.iv.i.i120.ph = phi i64 [ %i.lg, %.lr.ph.i.i119.preheader ], [ %i.lz, %middle.block353 ]
  %.ph = phi i64 [ %i.li, %.lr.ph.i.i119.preheader ], [ %i.mh, %middle.block353 ]
  br label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %.lr.ph.i.i119.preheader435, %.lr.ph.i.i119
  %indvars.iv.i.i120 = phi i64 [ %indvars.iv.next.i.i121, %.lr.ph.i.i119 ], [ %indvars.iv.i.i120.ph, %.lr.ph.i.i119.preheader435 ] ; 2 uses
  %i.mi = phi i64 [ %i.mk, %.lr.ph.i.i119 ], [ %.ph, %.lr.ph.i.i119.preheader435 ]
  %i.mj = shl i64 %i.li, %indvars.iv.i.i120
  %i.mk = or i64 %i.mi, %i.mj                     ; 2 uses
  %indvars.iv.next.i.i121 = add nuw nsw i64 %indvars.iv.i.i120, %i.lg ; 2 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next.i.i121, 64
  br i1 %i.ml, label %.lr.ph.i.i119, label %..loopexit_crit_edge.i.i122, !llvm.loop !557

..loopexit_crit_edge.i.i122:                      ; preds = %.lr.ph.i.i119, %middle.block353
  %.lcssa322 = phi i64 [ %i.mh, %middle.block353 ], [ %i.mk, %.lr.ph.i.i119 ]
  store i64 %.lcssa322, ptr %i.kx, align 8, !tbaa !8
  br label %Abc_TtNormalizeSmallTruth.exit.i98

Abc_TtNormalizeSmallTruth.exit.i98:               ; preds = %..loopexit_crit_edge.i.i122, %bb.ap, %Abc_TgFlipSymGroupByVar.exit
  %i.mm = icmp sgt i32 %i.lc, 0
  br i1 %i.mm, label %.lr.ph.preheader.i101, label %Abc_TtScc.exit123

.lr.ph.preheader.i101:                            ; preds = %Abc_TtNormalizeSmallTruth.exit.i98
  %wide.trip.count.i102 = zext nneg i32 %i.lc to i64
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %Abc_TtScc6.exit.i114, %.lr.ph.preheader.i101
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.preheader.i101 ], [ %indvars.iv.next.i116, %Abc_TtScc6.exit.i114 ] ; 3 uses
  %.014.i105 = phi i32 [ 0, %.lr.ph.preheader.i101 ], [ %i.mz, %Abc_TtScc6.exit.i114 ]
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv.i104
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !8  ; 2 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv.i104 to i32
  %i.mq = and i32 %i.mp, 65535
  %i.mr = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.mq)
  %.not.i.i106 = icmp eq i64 %i.mo, 0
  br i1 %.not.i.i106, label %Abc_TtScc6.exit.i114, label %.preheader.i.i107

.preheader.i.i107:                                ; preds = %.lr.ph.i103, %bb.ar
  %indvars.iv.i11.i108 = phi i64 [ %indvars.iv.next.i12.i112, %bb.ar ], [ 0, %.lr.ph.i103 ] ; 3 uses
  %.01116.i.i109 = phi i32 [ %.1.i.i111, %bb.ar ], [ 0, %.lr.ph.i103 ] ; 2 uses
  %i.ms = shl nuw i64 1, %indvars.iv.i11.i108
  %i.mt = and i64 %i.ms, %i.mo
  %.not14.i.i110 = icmp eq i64 %i.mt, 0
  br i1 %.not14.i.i110, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i.i107
  %i.mu = trunc nuw nsw i64 %indvars.iv.i11.i108 to i32
  %i.mv = tail call range(i32 0, 7) i32 @llvm.ctpop.i32(i32 %i.mu)
  %i.mw = add nuw nsw i32 %i.mv, %i.mr
  %i.mx = shl nuw nsw i32 1, %i.mw
  %i.my = add nsw i32 %i.mx, %.01116.i.i109
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.i.i107
  %.1.i.i111 = phi i32 [ %i.my, %bb.aq ], [ %.01116.i.i109, %.preheader.i.i107 ] ; 2 uses
  %indvars.iv.next.i12.i112 = add nuw nsw i64 %indvars.iv.i11.i108, 1 ; 2 uses
  %exitcond.not.i.i113 = icmp eq i64 %indvars.iv.next.i12.i112, 64
  br i1 %exitcond.not.i.i113, label %Abc_TtScc6.exit.i114, label %.preheader.i.i107, !llvm.loop !22

Abc_TtScc6.exit.i114:                             ; preds = %bb.ar, %.lr.ph.i103
  %.0.i.i115 = phi i32 [ 0, %.lr.ph.i103 ], [ %.1.i.i111, %bb.ar ]
  %i.mz = add nsw i32 %.0.i.i115, %.014.i105      ; 2 uses
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i104, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i102
  br i1 %exitcond.not.i117, label %Abc_TtScc.exit123, label %.lr.ph.i103, !llvm.loop !23

Abc_TtScc.exit123:                                ; preds = %Abc_TtScc6.exit.i114, %Abc_TtNormalizeSmallTruth.exit.i98
  %.0.lcssa.i100 = phi i32 [ 0, %Abc_TtNormalizeSmallTruth.exit.i98 ], [ %i.mz, %Abc_TtScc6.exit.i114 ] ; 2 uses
  store i32 %.0.lcssa.i100, ptr %i.gz, align 4, !tbaa !16
  %i.na = load i32, ptr %i.ee, align 4
  %i.nb = icmp sgt i32 %.0.lcssa.i100, %i.na
  %or.cond = select i1 %i.h, i1 %i.nb, i1 false
  br i1 %or.cond, label %Abc_TgCompareCoef.exit168.backedge, label %bb.as

Abc_TgCompareCoef.exit168.backedge:               ; preds = %.lr.ph.i163, %Abc_TtScc.exit123, %Vec_IntPush.exit176
  br label %Abc_TgCompareCoef.exit168, !llvm.loop !558

bb.as:                                            ; preds = %Abc_TtScc.exit123
  call fastcc void @Abc_TgCalcScc(ptr noundef %0, ptr noundef %i.ha, i32 noundef 1)
  br i1 %i.h, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nc = load i32, ptr %i.hb, align 8, !tbaa !318 ; 2 uses
  %i.nd = icmp sgt i32 %i.nc, 0
  br i1 %i.nd, label %.lr.ph37.preheader.i125, label %Abc_TgPermCostScc.exit152

.lr.ph37.preheader.i125:                          ; preds = %bb.at
  %wide.trip.count.i126 = zext nneg i32 %i.nc to i64
  br label %.lr.ph37.i127

.lr.ph37.i127:                                    ; preds = %._crit_edge.i132, %.lr.ph37.preheader.i125
  %indvars.iv42.i128 = phi i64 [ 0, %.lr.ph37.preheader.i125 ], [ %indvars.iv.next43.i136, %._crit_edge.i132 ] ; 2 uses
  %.01935.i129 = phi i32 [ 0, %.lr.ph37.preheader.i125 ], [ %i.op, %._crit_edge.i132 ] ; 3 uses
  %.02134.i130 = phi i32 [ 0, %.lr.ph37.preheader.i125 ], [ %.122.lcssa.i135, %._crit_edge.i132 ] ; 3 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i128
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 93
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !321 ; 3 uses
  %i.nh = sext i8 %i.ng to i32                    ; 2 uses
  %.12225.i131 = add i32 %.02134.i130, 1          ; 2 uses
  %i.ni = icmp sgt i8 %i.ng, 1
  br i1 %i.ni, label %.lr.ph.preheader.i138, label %._crit_edge.i132

.lr.ph.preheader.i138:                            ; preds = %.lr.ph37.i127
  %i.nj = sext i32 %.12225.i131 to i64            ; 2 uses
  %.phi.trans.insert.i139 = sext i32 %.02134.i130 to i64
  %.phi.trans.insert46.i140 = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %.phi.trans.insert.i139
  %.pre.i141 = load i32, ptr %.phi.trans.insert46.i140, align 4, !tbaa !16 ; 2 uses
  %i.nk = add nsw i32 %i.nh, -1                   ; 3 uses
  %xtraiter470 = and i32 %i.nk, 1
  %i.nl = icmp eq i8 %i.ng, 2
  br i1 %i.nl, label %.lr.ph.i142.epil.preheader, label %.lr.ph.preheader.i138.new

.lr.ph.preheader.i138.new:                        ; preds = %.lr.ph.preheader.i138
  %unroll_iter477 = and i32 %i.nk, -2
  br label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.ay, %.lr.ph.preheader.i138.new
  %4 = phi i32 [ %.pre.i141, %.lr.ph.preheader.i138.new ], [ %i.nw, %bb.ay ]
  %indvars.iv.i143 = phi i64 [ %i.nj, %.lr.ph.preheader.i138.new ], [ %indvars.iv.next.i149.1, %bb.ay ] ; 3 uses
  %.029.i144 = phi i32 [ 1, %.lr.ph.preheader.i138.new ], [ %.1.i148.1, %bb.ay ] ; 2 uses
  %.12028.i145 = phi i32 [ %.01935.i129, %.lr.ph.preheader.i138.new ], [ %.2.i147.1, %bb.ay ] ; 2 uses
  %niter478 = phi i32 [ 0, %.lr.ph.preheader.i138.new ], [ %niter478.next.1, %bb.ay ]
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %indvars.iv.i143
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !16 ; 2 uses
  %i.no = icmp eq i32 %i.nn, %4
  br i1 %i.no, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i142
  %i.np = add nsw i32 %.029.i144, 1
  br label %.lr.ph.i142.1

bb.av:                                            ; preds = %.lr.ph.i142
  %i.nq = sext i32 %.029.i144 to i64
  %i.nr = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.nq
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !16
  %i.nt = add nsw i32 %i.ns, %.12028.i145
  br label %.lr.ph.i142.1

.lr.ph.i142.1:                                    ; preds = %bb.av, %bb.au
  %.2.i147 = phi i32 [ %.12028.i145, %bb.au ], [ %i.nt, %bb.av ] ; 2 uses
  %.1.i148 = phi i32 [ %i.np, %bb.au ], [ 1, %bb.av ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.ha, i64 %indvars.iv.i143
  %i.nv = getelementptr i8, ptr %i.nu, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !16 ; 3 uses
  %i.nx = icmp eq i32 %i.nw, %i.nn
  br i1 %i.nx, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i142.1
  %i.ny = sext i32 %.1.i148 to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !16
  %i.ob = add nsw i32 %i.oa, %.2.i147
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i142.1
  %i.oc = add nsw i32 %.1.i148, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2.i147.1 = phi i32 [ %.2.i147, %bb.ax ], [ %i.ob, %bb.aw ] ; 3 uses
  %.1.i148.1 = phi i32 [ %i.oc, %bb.ax ], [ 1, %bb.aw ] ; 3 uses
  %indvars.iv.next.i149.1 = add nsw i64 %indvars.iv.i143, 2 ; 2 uses
  %niter478.next.1 = add i32 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i32 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %._crit_edge.loopexit.i151.unr-lcssa, label %.lr.ph.i142, !llvm.loop !543

._crit_edge.loopexit.i151.unr-lcssa:              ; preds = %bb.ay
  %lcmp.mod473.not.a = icmp eq i32 %xtraiter470, 0
  br i1 %lcmp.mod473.not.a, label %._crit_edge.loopexit.i151, label %.lr.ph.i142.epil.preheader

.lr.ph.i142.epil.preheader:                       ; preds = %._crit_edge.loopexit.i151.unr-lcssa, %.lr.ph.preheader.i138
  %.epil.init472 = phi i32 [ %.pre.i141, %.lr.ph.preheader.i138 ], [ %i.nw, %._crit_edge.loopexit.i151.unr-lcssa ]
  %indvars.iv.i143.epil.init = phi i64 [ %i.nj, %.lr.ph.preheader.i138 ], [ %indvars.iv.next.i149.1, %._crit_edge.loopexit.i151.unr-lcssa ]
  %.029.i144.epil.init = phi i32 [ 1, %.lr.ph.preheader.i138 ], [ %.1.i148.1, %._crit_edge.loopexit.i151.unr-lcssa ] ; 2 uses
  %.12028.i145.epil.init = phi i32 [ %.01935.i129, %.lr.ph.preheader.i138 ], [ %.2.i147.1, %._crit_edge.loopexit.i151.unr-lcssa ] ; 2 uses
  %lcmp.mod476 = trunc i32 %i.nk to i1
  tail call void @llvm.assume(i1 %lcmp.mod476)
  %i.od = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %indvars.iv.i143.epil.init
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !16
  %i.of = icmp eq i32 %i.oe, %.epil.init472
  br i1 %i.of, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i142.epil.preheader
  %i.og = sext i32 %.029.i144.epil.init to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !16
  %i.oj = add nsw i32 %i.oi, %.12028.i145.epil.init
  br label %._crit_edge.loopexit.i151

bb.ba:                                            ; preds = %.lr.ph.i142.epil.preheader
  %i.ok = add nsw i32 %.029.i144.epil.init, 1
  br label %._crit_edge.loopexit.i151

._crit_edge.loopexit.i151:                        ; preds = %bb.az, %bb.ba, %._crit_edge.loopexit.i151.unr-lcssa
  %.2.i147.lcssa = phi i32 [ %.2.i147.1, %._crit_edge.loopexit.i151.unr-lcssa ], [ %.12028.i145.epil.init, %bb.ba ], [ %i.oj, %bb.az ]
  %.1.i148.lcssa = phi i32 [ %.1.i148.1, %._crit_edge.loopexit.i151.unr-lcssa ], [ %i.ok, %bb.ba ], [ 1, %bb.az ]
  %i.ol = add i32 %.02134.i130, %i.nh
  %i.om = sext i32 %.1.i148.lcssa to i64
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.loopexit.i151, %.lr.ph37.i127
  %.120.lcssa.i133 = phi i32 [ %.01935.i129, %.lr.ph37.i127 ], [ %.2.i147.lcssa, %._crit_edge.loopexit.i151 ]
  %.0.lcssa.i134 = phi i64 [ 1, %.lr.ph37.i127 ], [ %i.om, %._crit_edge.loopexit.i151 ]
  %.122.lcssa.i135 = phi i32 [ %.12225.i131, %.lr.ph37.i127 ], [ %i.ol, %._crit_edge.loopexit.i151 ]
  %i.on = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i134
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !16
  %i.op = add nsw i32 %i.oo, %.120.lcssa.i133     ; 2 uses
  %indvars.iv.next43.i136 = add nuw nsw i64 %indvars.iv42.i128, 1 ; 2 uses
  %exitcond45.not.i137 = icmp eq i64 %indvars.iv.next43.i136, %wide.trip.count.i126
  br i1 %exitcond45.not.i137, label %Abc_TgPermCostScc.exit152, label %.lr.ph37.i127, !llvm.loop !544

Abc_TgPermCostScc.exit152:                        ; preds = %._crit_edge.i132, %bb.at
  %.019.lcssa.i124 = phi i32 [ 0, %bb.at ], [ %i.op, %._crit_edge.i132 ]
  store i32 %.019.lcssa.i124, ptr %i.a, align 16, !tbaa !16
  br label %bb.bb

bb.bb:                                            ; preds = %Abc_TgPermCostScc.exit152, %bb.as
  br i1 %i.hf, label %.lr.ph.i155, label %Abc_TgCompareCoef.exit168.thread

bb.bc:                                            ; preds = %.lr.ph.i155
  %indvars.iv.next.i158 = add nuw nsw i64 %indvars.iv.i156, 1 ; 2 uses
  %exitcond.not.i159 = icmp eq i64 %indvars.iv.next.i158, %wide.trip.count.i154
  br i1 %exitcond.not.i159, label %.lr.ph.i163.preheader, label %.lr.ph.i155, !llvm.loop !559

.lr.ph.i155:                                      ; preds = %bb.bb, %bb.bc
  %indvars.iv.i156 = phi i64 [ %indvars.iv.next.i158, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i156
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !16 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i156
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !16 ; 2 uses
  %.not.i157 = icmp eq i32 %i.or, %i.ot
  br i1 %.not.i157, label %bb.bc, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i155
  %i.ou = icmp slt i32 %i.or, %i.ot
  br i1 %i.ou, label %Abc_TgCompareCoef.exit, label %.lr.ph.i163.preheader

Abc_TgCompareCoef.exit:                           ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.he, ptr nonnull align 4 %i.hd, i64 %i.hg, i1 false)
  store i32 0, ptr %i.fw, align 4, !tbaa !247
  br label %.lr.ph.i163.preheader

.lr.ph.i163.preheader:                            ; preds = %bb.bc, %Abc_TgCompareCoef.exit, %bb.bd
  br label %.lr.ph.i163

bb.be:                                            ; preds = %.lr.ph.i163
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.i166, %wide.trip.count.i154
  br i1 %exitcond.not.i167, label %Abc_TgCompareCoef.exit168.thread, label %.lr.ph.i163, !llvm.loop !559

.lr.ph.i163:                                      ; preds = %.lr.ph.i163.preheader, %bb.be
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i166, %bb.be ], [ 0, %.lr.ph.i163.preheader ] ; 3 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i164
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !16
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i164
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !16
  %.not.i165 = icmp eq i32 %i.ow, %i.oy
  br i1 %.not.i165, label %bb.be, label %Abc_TgCompareCoef.exit168.backedge, !llvm.loop !558

Abc_TgCompareCoef.exit168.thread:                 ; preds = %bb.be, %bb.bb
  %i.oz = lshr i32 %i.hh, 1
  %i.pa = xor i32 %i.oz, %i.hh
  %i.pb = load i32, ptr %i.fw, align 4, !tbaa !247 ; 7 uses
  %i.pc = load i32, ptr %i.d, align 8, !tbaa !243
  %i.pd = icmp eq i32 %i.pb, %i.pc
  br i1 %i.pd, label %bb.bf, label %Abc_TgCompareCoef.exit168.thread.Vec_IntPush.exit176_crit_edge

Abc_TgCompareCoef.exit168.thread.Vec_IntPush.exit176_crit_edge: ; preds = %Abc_TgCompareCoef.exit168.thread
  %.pre267 = load ptr, ptr %i.gq, align 8, !tbaa !246
  br label %Vec_IntPush.exit176

bb.bf:                                            ; preds = %Abc_TgCompareCoef.exit168.thread
  %i.pe = icmp slt i32 %i.pb, 16
  br i1 %i.pe, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.pf = load ptr, ptr %i.gq, align 8, !tbaa !246 ; 2 uses
  %.not9.i.i174 = icmp eq ptr %i.pf, null
  br i1 %.not9.i.i174, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pf, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i172

bb.bi:                                            ; preds = %bb.bg
  %i.ph = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i172

bb.bj:                                            ; preds = %bb.bf
  %i.pi = icmp samesign ult i32 %i.pb, 1073741823
  %i.pj = shl nuw nsw i32 %i.pb, 1
  %spec.select.i169 = select i1 %i.pi, i32 %i.pj, i32 2147483647 ; 4 uses
  %.not.i9.i170 = icmp samesign ult i32 %i.pb, %spec.select.i169
  %.pre268 = load ptr, ptr %i.gq, align 8, !tbaa !246 ; 3 uses
  br i1 %.not.i9.i170, label %bb.bk, label %Vec_IntPush.exit176

bb.bk:                                            ; preds = %bb.bj
  %.not9.i10.i171 = icmp eq ptr %.pre268, null
  %i.pk = zext nneg i32 %spec.select.i169 to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2                ; 2 uses
  br i1 %.not9.i10.i171, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pm = tail call ptr @realloc(ptr noundef nonnull %.pre268, i64 noundef %i.pl) #24
  br label %Vec_IntGrow.exit11.sink.split.i172

bb.bm:                                            ; preds = %bb.bk
  %i.pn = tail call noalias ptr @malloc(i64 noundef %i.pl) #23
  br label %Vec_IntGrow.exit11.sink.split.i172

Vec_IntGrow.exit11.sink.split.i172:               ; preds = %bb.bl, %bb.bm, %bb.bh, %bb.bi
  %storemerge = phi ptr [ %i.ph, %bb.bi ], [ %i.pg, %bb.bh ], [ %i.pm, %bb.bl ], [ %i.pn, %bb.bm ] ; 2 uses
  %spec.select.sink.i173 = phi i32 [ 16, %bb.bi ], [ 16, %bb.bh ], [ %spec.select.i169, %bb.bl ], [ %spec.select.i169, %bb.bm ]
  store ptr %storemerge, ptr %i.gq, align 8, !tbaa !246
  store i32 %spec.select.sink.i173, ptr %i.d, align 8, !tbaa !243
  %.pre269 = load i32, ptr %i.fw, align 4, !tbaa !247
  br label %Vec_IntPush.exit176

Vec_IntPush.exit176:                              ; preds = %Abc_TgCompareCoef.exit168.thread.Vec_IntPush.exit176_crit_edge, %bb.bj, %Vec_IntGrow.exit11.sink.split.i172
  %i.po = phi i32 [ %i.pb, %Abc_TgCompareCoef.exit168.thread.Vec_IntPush.exit176_crit_edge ], [ %i.pb, %bb.bj ], [ %.pre269, %Vec_IntGrow.exit11.sink.split.i172 ] ; 2 uses
  %i.pp = phi ptr [ %.pre267, %Abc_TgCompareCoef.exit168.thread.Vec_IntPush.exit176_crit_edge ], [ %.pre268, %bb.bj ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i172 ]
  %i.pq = add nsw i32 %i.po, 1
  store i32 %i.pq, ptr %i.fw, align 4, !tbaa !247
  %i.pr = sext i32 %i.po to i64
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.pp, i64 %i.pr
  store i32 %i.pa, ptr %i.ps, align 4, !tbaa !16
  br label %Abc_TgCompareCoef.exit168.backedge

bb.bn:                                            ; preds = %grayFlip.exit
  %i.pt = sext i8 %i.f to i64
  %i.pu = getelementptr i8, ptr %0, i64 %i.pt
  %i.pv = getelementptr i8, ptr %i.pu, i64 163
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !187 ; 2 uses
  %i.px = icmp sgt i8 %i.pw, -1
  br i1 %i.px, label %.lr.ph.i178, label %Abc_TgFlipSymGroupByVar.exit203

.lr.ph.i178:                                      ; preds = %bb.bn, %bb.bt
  %.07.i179.in = phi i8 [ %i.td, %bb.bt ], [ %i.pw, %bb.bn ]
  %.07.i179 = zext nneg i8 %.07.i179.in to i64    ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.07.i179
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !187
  %.not.i180 = icmp eq i8 %i.pz, 0
  br i1 %.not.i180, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i178
  %i.qa = load i32, ptr %i.cb, align 8, !tbaa !313 ; 2 uses
  %i.qb = add nsw i32 %i.qa, -6                   ; 4 uses
  %i.qc = shl nuw i32 1, %i.qb                    ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.07.i179
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !187 ; 4 uses
  %i.qf = sext i8 %i.qe to i32                    ; 4 uses
  %i.qg = load ptr, ptr %0, align 8, !tbaa !315   ; 9 uses
  %i.qh = icmp slt i32 %i.qa, 7
  br i1 %i.qh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qi = load i64, ptr %i.qg, align 8, !tbaa !8  ; 2 uses
  %i.qj = shl nuw i32 1, %i.qf
  %i.qk = zext i32 %i.qj to i64                   ; 2 uses
  %i.ql = shl i64 %i.qi, %i.qk
  %i.qm = sext i8 %i.qe to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.qm
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !8  ; 2 uses
  %i.qp = and i64 %i.ql, %i.qo
  %i.qq = and i64 %i.qo, %i.qi
  %i.qr = lshr i64 %i.qq, %i.qk
  %i.qs = or i64 %i.qr, %i.qp
  store i64 %i.qs, ptr %i.qg, align 8, !tbaa !8
  br label %Abc_TgFlipVar.exit.i196

bb.bq:                                            ; preds = %bb.bo
  %i.qt = icmp slt i8 %i.qe, 6
  br i1 %i.qt, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.not7.i.i197 = icmp eq i32 %i.qb, 31
  br i1 %.not7.i.i197, label %Abc_TgFlipVar.exit.i196, label %.lr.ph.i.i.i198

.lr.ph.i.i.i198:                                  ; preds = %bb.br
  %i.qu = shl nuw nsw i32 1, %i.qf
end_hunk_1
begin_hunk_2_@Abc_TgRecordPhase:bb.a
  %i.rb = shl <2 x i64> %wide.load399, %broadcast.splat394
  %i.rc = shl <2 x i64> %wide.load400, %broadcast.splat394
  %i.rd = and <2 x i64> %i.rb, %broadcast.splat396
  %i.re = and <2 x i64> %i.rc, %broadcast.splat396
  %i.rf = and <2 x i64> %wide.load399, %broadcast.splat396
  %i.rg = and <2 x i64> %wide.load400, %broadcast.splat396
  %i.rh = lshr <2 x i64> %i.rf, %broadcast.splat394
  %i.ri = lshr <2 x i64> %i.rg, %broadcast.splat394
  %i.rj = or <2 x i64> %i.rh, %i.rd
  %i.rk = or <2 x i64> %i.ri, %i.re
  store <2 x i64> %i.rj, ptr %i.qz, align 8, !tbaa !8
  store <2 x i64> %i.rk, ptr %i.ra, align 8, !tbaa !8
  %index.next401 = add nuw i64 %index398, 4       ; 2 uses
  %i.rl = icmp eq i64 %index.next401, %n.vec392
  br i1 %i.rl, label %Abc_TgFlipVar.exit.i196, label %vector.body397, !llvm.loop !560

scalar.ph389:                                     ; preds = %.lr.ph.i.i.i198, %scalar.ph389
  %indvars.iv56.i.i.i200 = phi i64 [ %indvars.iv.next57.i.i.i201, %scalar.ph389 ], [ 0, %.lr.ph.i.i.i198 ] ; 2 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %indvars.iv56.i.i.i200 ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !8  ; 2 uses
  %i.ro = shl i64 %i.rn, %i.qv
  %i.rp = and i64 %i.ro, %i.qy
  %i.rq = and i64 %i.rn, %i.qy
  %i.rr = lshr i64 %i.rq, %i.qv
  %i.rs = or i64 %i.rr, %i.rp
  store i64 %i.rs, ptr %i.rm, align 8, !tbaa !8
  %indvars.iv.next57.i.i.i201 = add nuw nsw i64 %indvars.iv56.i.i.i200, 1 ; 2 uses
  %exitcond60.not.i.i.i202 = icmp eq i64 %indvars.iv.next57.i.i.i201, %wide.trip.count59.i.i.i199
  br i1 %exitcond60.not.i.i.i202, label %Abc_TgFlipVar.exit.i196, label %scalar.ph389, !llvm.loop !561

bb.bs:                                            ; preds = %bb.bq
  %i.rt = sext i32 %i.qc to i64
  %.idx.i.i.i181 = shl nsw i64 %i.rt, 3
  %i.ru = getelementptr inbounds i8, ptr %i.qg, i64 %.idx.i.i.i181
  %i.rv = add nsw i32 %i.qf, -6                   ; 3 uses
  %i.rw = shl nuw i32 1, %i.rv                    ; 4 uses
  %.not.i.i182 = icmp eq i32 %i.qb, 31
  br i1 %.not.i.i182, label %Abc_TgFlipVar.exit.i196, label %.preheader.lr.ph.i.i.i183

.preheader.lr.ph.i.i.i183:                        ; preds = %bb.bs
  %.not.i.i.i184 = icmp eq i32 %i.rv, 31
  %i.rx = shl i32 2, %i.rv
  %i.ry = sext i32 %i.rx to i64                   ; 2 uses
  br i1 %.not.i.i.i184, label %Abc_TgFlipVar.exit.i196, label %.preheader.us.preheader.i.i.i185

.preheader.us.preheader.i.i.i185:                 ; preds = %.preheader.lr.ph.i.i.i183
  %i.rz = sext i32 %i.rw to i64                   ; 2 uses
  %smax.i.i.i186 = tail call i32 @llvm.smax.i32(i32 %i.rw, i32 1) ; 2 uses
  %wide.trip.count.i.i.i187 = zext nneg i32 %smax.i.i.i186 to i64 ; 4 uses
  %i.sa = shl nuw nsw i64 %wide.trip.count.i.i.i187, 3 ; 2 uses
  %i.sb = shl nsw i64 %i.ry, 3
  %i.sc = shl nsw i64 %i.rz, 3                    ; 2 uses
  %min.iters.check415 = icmp slt i32 %i.rw, 4
  %i.sd = getelementptr i8, ptr %i.qg, i64 %i.sc
  %i.se = getelementptr i8, ptr %i.sd, i64 %i.sa
  %i.sf = getelementptr i8, ptr %i.qg, i64 %i.sc
  %i.sg = getelementptr i8, ptr %i.qg, i64 %i.sa
  %n.vec417 = and i64 %wide.trip.count.i.i.i187, 2147483644
  %xtraiter479 = and i64 %wide.trip.count.i.i.i187, 1
  %i.sh = icmp slt i32 %i.rw, 2
  %unroll_iter482.a = and i64 %wide.trip.count.i.i.i187, 2147483646
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  %lcmp.mod481.a = trunc i32 %smax.i.i.i186 to i1
  br label %.preheader.us.i.i.i188

.preheader.us.i.i.i188:                           ; preds = %._crit_edge.us.i.i.i195, %.preheader.us.preheader.i.i.i185
  %indvar406 = phi i64 [ %indvar.next407, %._crit_edge.us.i.i.i195 ], [ 0, %.preheader.us.preheader.i.i.i185 ] ; 2 uses
  %.051.us.i.i.i189 = phi ptr [ %i.sx, %._crit_edge.us.i.i.i195 ], [ %i.qg, %.preheader.us.preheader.i.i.i185 ] ; 7 uses
  %invariant.gep.i.i.i190 = getelementptr [8 x i8], ptr %.051.us.i.i.i189, i64 %i.rz ; 4 uses
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.memcheck405

scalar.ph414.preheader:                           ; preds = %vector.memcheck405, %.preheader.us.i.i.i188
  br i1 %i.sh, label %scalar.ph414.epil.preheader, label %scalar.ph414

vector.memcheck405:                               ; preds = %.preheader.us.i.i.i188
  %i.si = mul i64 %i.sb, %indvar406               ; 3 uses
  %scevgep410 = getelementptr i8, ptr %i.se, i64 %i.si
  %scevgep409 = getelementptr i8, ptr %i.sf, i64 %i.si
  %scevgep408 = getelementptr i8, ptr %i.sg, i64 %i.si
  %bound0411 = icmp ult ptr %.051.us.i.i.i189, %scevgep410
  %bound1412 = icmp ult ptr %scevgep409, %scevgep408
  %found.conflict413 = and i1 %bound0411, %bound1412
  br i1 %found.conflict413, label %scalar.ph414.preheader, label %vector.body418

vector.body418:                                   ; preds = %vector.memcheck405, %vector.body418
  %index419 = phi i64 [ %index.next424, %vector.body418 ], [ 0, %vector.memcheck405 ] ; 3 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i189, i64 %index419 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %wide.load420.a = load <2 x i64>, ptr %i.sj, align 8, !tbaa !8, !alias.scope !562, !noalias !565
  %wide.load421 = load <2 x i64>, ptr %i.sk, align 8, !tbaa !8, !alias.scope !562, !noalias !565
  %i.sl = getelementptr [8 x i8], ptr %invariant.gep.i.i.i190, i64 %index419 ; 3 uses
  %i.sm = getelementptr i8, ptr %i.sl, i64 16     ; 2 uses
  %wide.load422 = load <2 x i64>, ptr %i.sl, align 8, !tbaa !8, !alias.scope !565
  %wide.load423 = load <2 x i64>, ptr %i.sm, align 8, !tbaa !8, !alias.scope !565
  store <2 x i64> %wide.load422, ptr %i.sj, align 8, !tbaa !8, !alias.scope !562, !noalias !565
  store <2 x i64> %wide.load423, ptr %i.sk, align 8, !tbaa !8, !alias.scope !562, !noalias !565
  store <2 x i64> %wide.load420.a, ptr %i.sl, align 8, !tbaa !8, !alias.scope !565
  store <2 x i64> %wide.load421, ptr %i.sm, align 8, !tbaa !8, !alias.scope !565
  %index.next424 = add nuw i64 %index419, 4       ; 2 uses
  %i.sn = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.sn, label %._crit_edge.us.i.i.i195, label %vector.body418, !llvm.loop !567

scalar.ph414:                                     ; preds = %scalar.ph414.preheader, %scalar.ph414
  %indvars.iv.i.i.i191 = phi i64 [ %indvars.iv.next.i.i.i193.1, %scalar.ph414 ], [ 0, %scalar.ph414.preheader ] ; 4 uses
  %niter483.a = phi i64 [ %niter483.next.1.a, %scalar.ph414 ], [ 0, %scalar.ph414.preheader ]
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i189, i64 %indvars.iv.i.i.i191 ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !8
  %gep.i.i.i192 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i190, i64 %indvars.iv.i.i.i191 ; 2 uses
  %i.sq = load i64, ptr %gep.i.i.i192, align 8, !tbaa !8
  store i64 %i.sq, ptr %i.so, align 8, !tbaa !8
  store i64 %i.sp, ptr %gep.i.i.i192, align 8, !tbaa !8
  %indvars.iv.next.i.i.i193 = or disjoint i64 %indvars.iv.i.i.i191, 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i189, i64 %indvars.iv.next.i.i.i193 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !8
  %gep.i.i.i192.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i190, i64 %indvars.iv.next.i.i.i193 ; 2 uses
  %i.st = load i64, ptr %gep.i.i.i192.1, align 8, !tbaa !8
  store i64 %i.st, ptr %i.sr, align 8, !tbaa !8
  store i64 %i.ss, ptr %gep.i.i.i192.1, align 8, !tbaa !8
  %indvars.iv.next.i.i.i193.1 = add nuw nsw i64 %indvars.iv.i.i.i191, 2 ; 2 uses
  %niter483.next.1.a = add i64 %niter483.a, 2     ; 2 uses
  %niter483.ncmp.1.a = icmp eq i64 %niter483.next.1.a, %unroll_iter482.a
  br i1 %niter483.ncmp.1.a, label %._crit_edge.us.i.i.i195.loopexit.unr-lcssa, label %scalar.ph414, !llvm.loop !568

._crit_edge.us.i.i.i195.loopexit.unr-lcssa:       ; preds = %scalar.ph414
  br i1 %lcmp.mod480.not, label %._crit_edge.us.i.i.i195, label %scalar.ph414.epil.preheader

scalar.ph414.epil.preheader:                      ; preds = %._crit_edge.us.i.i.i195.loopexit.unr-lcssa, %scalar.ph414.preheader
  %indvars.iv.i.i.i191.epil.init = phi i64 [ 0, %scalar.ph414.preheader ], [ %indvars.iv.next.i.i.i193.1, %._crit_edge.us.i.i.i195.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod481.a)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i.i.i189, i64 %indvars.iv.i.i.i191.epil.init ; 2 uses
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !8
  %gep.i.i.i192.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i190, i64 %indvars.iv.i.i.i191.epil.init ; 2 uses
  %i.sw = load i64, ptr %gep.i.i.i192.epil, align 8, !tbaa !8
  store i64 %i.sw, ptr %i.su, align 8, !tbaa !8
  store i64 %i.sv, ptr %gep.i.i.i192.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i.i.i195

._crit_edge.us.i.i.i195:                          ; preds = %vector.body418, %scalar.ph414.epil.preheader, %._crit_edge.us.i.i.i195.loopexit.unr-lcssa
  %i.sx = getelementptr inbounds [8 x i8], ptr %.051.us.i.i.i189, i64 %i.ry ; 2 uses
  %i.sy = icmp ult ptr %i.sx, %i.ru
  %indvar.next407 = add i64 %indvar406, 1
  br i1 %i.sy, label %.preheader.us.i.i.i188, label %Abc_TgFlipVar.exit.i196, !llvm.loop !96

Abc_TgFlipVar.exit.i196:                          ; preds = %._crit_edge.us.i.i.i195, %vector.body397, %scalar.ph389, %.preheader.lr.ph.i.i.i183, %bb.bs, %bb.br, %bb.bp
  %i.sz = shl nuw i32 1, %i.qf
  %i.ta = load i32, ptr %i.gx, align 4, !tbaa !316
  %i.tb = xor i32 %i.ta, %i.sz
  store i32 %i.tb, ptr %i.gx, align 4, !tbaa !316
  br label %bb.bt

bb.bt:                                            ; preds = %Abc_TgFlipVar.exit.i196, %.lr.ph.i178
  %i.tc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.07.i179
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !187 ; 2 uses
  %i.te = icmp sgt i8 %i.td, -1
  br i1 %i.te, label %.lr.ph.i178, label %Abc_TgFlipSymGroupByVar.exit203, !llvm.loop !346

Abc_TgFlipSymGroupByVar.exit203:                  ; preds = %bb.bt, %bb.bn
  %.val = load i32, ptr %i.fw, align 4, !tbaa !247 ; 2 uses
  %.03.off5.i = add i32 %.val, 1
  %.not6.i = icmp ult i32 %.03.off5.i, 3
  br i1 %.not6.i, label %ilog2.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %Abc_TgFlipSymGroupByVar.exit203, %.lr.ph.i204
  %.08.i = phi i32 [ %i.tg, %.lr.ph.i204 ], [ 0, %Abc_TgFlipSymGroupByVar.exit203 ]
  %.037.i = phi i32 [ %i.tf, %.lr.ph.i204 ], [ %.val, %Abc_TgFlipSymGroupByVar.exit203 ]
  %i.tf = sdiv i32 %.037.i, 2                     ; 2 uses
  %i.tg = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %.03.off.i = add nsw i32 %i.tf, 1
  %.not.i205 = icmp ult i32 %.03.off.i, 3
  br i1 %.not.i205, label %ilog2.exit.loopexit, label %.lr.ph.i204, !llvm.loop !359

ilog2.exit.loopexit:                              ; preds = %.lr.ph.i204
  %i.th = zext nneg i32 %i.tg to i64
  %i.ti = shl nuw nsw i64 %i.th, 32
  br label %ilog2.exit

ilog2.exit:                                       ; preds = %ilog2.exit.loopexit, %Abc_TgFlipSymGroupByVar.exit203
  %.0.lcssa.i207 = phi i64 [ 0, %Abc_TgFlipSymGroupByVar.exit203 ], [ %i.ti, %ilog2.exit.loopexit ]
  %i.tj = load i32, ptr %i.hb, align 8, !tbaa !318 ; 2 uses
  %i.tk = icmp sgt i32 %i.tj, 0
  br i1 %i.tk, label %.lr.ph37.preheader.i209, label %Abc_TgPermCostScc.exit236

.lr.ph37.preheader.i209:                          ; preds = %ilog2.exit
  %wide.trip.count.i210 = zext nneg i32 %i.tj to i64
  br label %.lr.ph37.i211

.lr.ph37.i211:                                    ; preds = %._crit_edge.i216, %.lr.ph37.preheader.i209
  %indvars.iv42.i212 = phi i64 [ 0, %.lr.ph37.preheader.i209 ], [ %indvars.iv.next43.i220, %._crit_edge.i216 ] ; 2 uses
  %.01935.i213 = phi i32 [ 0, %.lr.ph37.preheader.i209 ], [ %i.uw, %._crit_edge.i216 ] ; 3 uses
  %.02134.i214 = phi i32 [ 0, %.lr.ph37.preheader.i209 ], [ %.122.lcssa.i219, %._crit_edge.i216 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i212
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 93
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !321 ; 3 uses
  %i.to = sext i8 %i.tn to i32                    ; 2 uses
  %.12225.i215 = add i32 %.02134.i214, 1          ; 2 uses
  %i.tp = icmp sgt i8 %i.tn, 1
  br i1 %i.tp, label %.lr.ph.preheader.i222, label %._crit_edge.i216

.lr.ph.preheader.i222:                            ; preds = %.lr.ph37.i211
  %i.tq = sext i32 %.12225.i215 to i64            ; 2 uses
  %.phi.trans.insert.i223 = sext i32 %.02134.i214 to i64
  %.phi.trans.insert46.i224 = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %.phi.trans.insert.i223
  %.pre.i225 = load i32, ptr %.phi.trans.insert46.i224, align 4, !tbaa !16 ; 2 uses
  %i.tr = add nsw i32 %i.to, -1                   ; 3 uses
  %xtraiter484 = and i32 %i.tr, 1
  %i.ts = icmp eq i8 %i.tn, 2
  br i1 %i.ts, label %.lr.ph.i226.epil.preheader, label %.lr.ph.preheader.i222.new

.lr.ph.preheader.i222.new:                        ; preds = %.lr.ph.preheader.i222
  %unroll_iter491 = and i32 %i.tr, -2
  br label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %bb.by, %.lr.ph.preheader.i222.new
  %5 = phi i32 [ %.pre.i225, %.lr.ph.preheader.i222.new ], [ %i.ud, %bb.by ]
  %indvars.iv.i227 = phi i64 [ %i.tq, %.lr.ph.preheader.i222.new ], [ %indvars.iv.next.i233.1, %bb.by ] ; 3 uses
  %.029.i228 = phi i32 [ 1, %.lr.ph.preheader.i222.new ], [ %.1.i232.1, %bb.by ] ; 2 uses
  %.12028.i229 = phi i32 [ %.01935.i213, %.lr.ph.preheader.i222.new ], [ %.2.i231.1, %bb.by ] ; 2 uses
  %niter492 = phi i32 [ 0, %.lr.ph.preheader.i222.new ], [ %niter492.next.1, %bb.by ]
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i227
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !16 ; 2 uses
  %i.tv = icmp eq i32 %i.tu, %5
  br i1 %i.tv, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i226
  %i.tw = add nsw i32 %.029.i228, 1
  br label %.lr.ph.i226.1

bb.bv:                                            ; preds = %.lr.ph.i226
  %i.tx = sext i32 %.029.i228 to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !16
  %i.ua = add nsw i32 %i.tz, %.12028.i229
  br label %.lr.ph.i226.1

.lr.ph.i226.1:                                    ; preds = %bb.bv, %bb.bu
  %.2.i231 = phi i32 [ %.12028.i229, %bb.bu ], [ %i.ua, %bb.bv ] ; 2 uses
  %.1.i232 = phi i32 [ %i.tw, %bb.bu ], [ 1, %bb.bv ] ; 2 uses
  %i.ub = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv.i227
  %i.uc = getelementptr i8, ptr %i.ub, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !16 ; 3 uses
  %i.ue = icmp eq i32 %i.ud, %i.tu
  br i1 %i.ue, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i226.1
  %i.uf = sext i32 %.1.i232 to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !16
  %i.ui = add nsw i32 %i.uh, %.2.i231
  br label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i226.1
  %i.uj = add nsw i32 %.1.i232, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.2.i231.1 = phi i32 [ %.2.i231, %bb.bx ], [ %i.ui, %bb.bw ] ; 3 uses
  %.1.i232.1 = phi i32 [ %i.uj, %bb.bx ], [ 1, %bb.bw ] ; 3 uses
  %indvars.iv.next.i233.1 = add nsw i64 %indvars.iv.i227, 2 ; 2 uses
  %niter492.next.1 = add i32 %niter492, 2         ; 2 uses
  %niter492.ncmp.1 = icmp eq i32 %niter492.next.1, %unroll_iter491
  br i1 %niter492.ncmp.1, label %._crit_edge.loopexit.i235.unr-lcssa, label %.lr.ph.i226, !llvm.loop !543

._crit_edge.loopexit.i235.unr-lcssa:              ; preds = %bb.by
  %lcmp.mod487.not = icmp eq i32 %xtraiter484, 0
  br i1 %lcmp.mod487.not, label %._crit_edge.loopexit.i235, label %.lr.ph.i226.epil.preheader

.lr.ph.i226.epil.preheader:                       ; preds = %._crit_edge.loopexit.i235.unr-lcssa, %.lr.ph.preheader.i222
  %.epil.init486 = phi i32 [ %.pre.i225, %.lr.ph.preheader.i222 ], [ %i.ud, %._crit_edge.loopexit.i235.unr-lcssa ]
  %indvars.iv.i227.epil.init = phi i64 [ %i.tq, %.lr.ph.preheader.i222 ], [ %indvars.iv.next.i233.1, %._crit_edge.loopexit.i235.unr-lcssa ]
  %.029.i228.epil.init = phi i32 [ 1, %.lr.ph.preheader.i222 ], [ %.1.i232.1, %._crit_edge.loopexit.i235.unr-lcssa ] ; 2 uses
  %.12028.i229.epil.init = phi i32 [ %.01935.i213, %.lr.ph.preheader.i222 ], [ %.2.i231.1, %._crit_edge.loopexit.i235.unr-lcssa ] ; 2 uses
  %lcmp.mod490 = trunc i32 %i.tr to i1
  tail call void @llvm.assume(i1 %lcmp.mod490)
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i227.epil.init
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !16
  %i.um = icmp eq i32 %i.ul, %.epil.init486
  br i1 %i.um, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph.i226.epil.preheader
  %i.un = sext i32 %.029.i228.epil.init to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !16
  %i.uq = add nsw i32 %i.up, %.12028.i229.epil.init
  br label %._crit_edge.loopexit.i235

bb.ca:                                            ; preds = %.lr.ph.i226.epil.preheader
  %i.ur = add nsw i32 %.029.i228.epil.init, 1
  br label %._crit_edge.loopexit.i235

._crit_edge.loopexit.i235:                        ; preds = %bb.bz, %bb.ca, %._crit_edge.loopexit.i235.unr-lcssa
  %.2.i231.lcssa = phi i32 [ %.2.i231.1, %._crit_edge.loopexit.i235.unr-lcssa ], [ %.12028.i229.epil.init, %bb.ca ], [ %i.uq, %bb.bz ]
  %.1.i232.lcssa = phi i32 [ %.1.i232.1, %._crit_edge.loopexit.i235.unr-lcssa ], [ %i.ur, %bb.ca ], [ 1, %bb.bz ]
  %i.us = add i32 %.02134.i214, %i.to
  %i.ut = sext i32 %.1.i232.lcssa to i64
  br label %._crit_edge.i216

._crit_edge.i216:                                 ; preds = %._crit_edge.loopexit.i235, %.lr.ph37.i211
  %.120.lcssa.i217 = phi i32 [ %.01935.i213, %.lr.ph37.i211 ], [ %.2.i231.lcssa, %._crit_edge.loopexit.i235 ]
  %.0.lcssa.i218 = phi i64 [ 1, %.lr.ph37.i211 ], [ %i.ut, %._crit_edge.loopexit.i235 ]
  %.122.lcssa.i219 = phi i32 [ %.12225.i215, %.lr.ph37.i211 ], [ %i.us, %._crit_edge.loopexit.i235 ]
  %i.uu = getelementptr inbounds [4 x i8], ptr @log2fn, i64 %.0.lcssa.i218
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !16
  %i.uw = add nsw i32 %i.uv, %.120.lcssa.i217     ; 2 uses
  %indvars.iv.next43.i220 = add nuw nsw i64 %indvars.iv42.i212, 1 ; 2 uses
  %exitcond45.not.i221 = icmp eq i64 %indvars.iv.next43.i220, %wide.trip.count.i210
  br i1 %exitcond45.not.i221, label %Abc_TgPermCostScc.exit236, label %.lr.ph37.i211, !llvm.loop !544

Abc_TgPermCostScc.exit236:                        ; preds = %._crit_edge.i216, %ilog2.exit
  %.019.lcssa.i208 = phi i32 [ 0, %ilog2.exit ], [ %i.uw, %._crit_edge.i216 ]
  %i.ux = zext i32 %i.g to i64
  %i.uy = or disjoint i64 %.0.lcssa.i207, %i.ux
  br label %Abc_TgPermCostScc.exit

Abc_TgPermCostScc.exit:                           ; preds = %._crit_edge.i, %bb.b, %Abc_TgPermCostScc.exit236
  %.sroa.5.0 = phi i32 [ %.019.lcssa.i208, %Abc_TgPermCostScc.exit236 ], [ 0, %bb.b ], [ %i.bd, %._crit_edge.i ]
  %.sroa.044.0.insert.insert = phi i64 [ %i.uy, %Abc_TgPermCostScc.exit236 ], [ 0, %bb.b ], [ 0, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.044.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.5.0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc double @Abc_SccEnumCost(ptr nofree noundef nonnull readonly captures(none) %0, i64 %1, i32 %2) unnamed_addr #15 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %1, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !326
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !313
  %i.e = sitofp i32 %i.d to double
  %i.f = sitofp i32 %.sroa.1.0.extract.trunc to double
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double 1.090000e+00, double %i.e)
  %i.h = sitofp i32 %2 to double
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 1.144000e-02, double %i.g)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !313
  %i.l = sitofp i32 %i.k to double
  %i.m = sitofp i32 %.sroa.1.0.extract.trunc to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double f0x3FEB5C28F5C28F5C, double %i.l)
  %i.o = sitofp i32 %2 to double
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double f0x3F8052934ACAFF6D, double %i.n)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !313
  %i.s = sitofp i32 %i.r to double
  %i.t = sitofp i32 %.sroa.1.0.extract.trunc to double
  %i.u = fmul nnan double %i.t, 8.850000e-01
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double f0x3FEE147AE147AE14, double %i.u)
  %i.w = sitofp i32 %2 to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double 8.550000e-03, double %i.v)
  %i.y = fadd double %i.x, -2.059000e+01
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi double [ %i.y, %bb.d ], [ %i.i, %bb.b ], [ %i.p, %bb.c ], [ 0.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Abc_TgResetGroup(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !309  ; 4 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !187   ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.028 = phi i32 [ %i.h, %.lr.ph ], [ %i.n, %bb.c ] ; 4 uses
  %i.i = zext nneg i32 %.028 to i64
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !187   ; 2 uses
  %i.m = icmp sgt i8 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  store i8 %i.l, ptr %i.j, align 1, !tbaa !187
  %i.n = add nsw i32 %.028, -1
  %i.o = icmp sgt i32 %.028, 1
  br i1 %i.o, label %bb.b, label %.critedge, !llvm.loop !569

.critedge:                                        ; preds = %bb.c, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.028, %bb.b ]
  %i.p = sext i32 %.0.lcssa to i64
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  store i8 %i.g, ptr %i.q, align 1, !tbaa !187
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !570

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load i32, ptr %i.c, align 4, !tbaa !309
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph30.i, label %._crit_edge31.i

.lr.ph30.i:                                       ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.u = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph30.i
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph30.i ], [ %indvars.iv.next41.i, %._crit_edge.i ] ; 2 uses
  %.02227.i = phi i32 [ 0, %.lr.ph30.i ], [ %.123.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv40.i
  %.0.in24.i = load i8, ptr %i.v, align 1, !tbaa !187 ; 2 uses
  %i.w = icmp sgt i8 %.0.in24.i, -1
  br i1 %i.w, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.x = sext i32 %.02227.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.x, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.0.in26.i = phi i8 [ %.0.in24.i, %.lr.ph.preheader.i ], [ %.0.in.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.0.in26.i, ptr %i.y, align 1, !tbaa !187
  %i.z = zext nneg i8 %.0.in26.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.z
  %.0.in.i = load i8, ptr %i.aa, align 1, !tbaa !187 ; 2 uses
  %i.ab = icmp sgt i8 %.0.in.i, -1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !311

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ac = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.123.lcssa.i = phi i32 [ %.02227.i, %bb.d ], [ %i.ac, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next41.i, %i.u
  br i1 %exitcond31.not, label %._crit_edge31.i.loopexit, label %bb.d, !llvm.loop !312

._crit_edge31.i.loopexit:                         ; preds = %._crit_edge.i
  %i.ad = sext i32 %.123.lcssa.i to i64
  br label %._crit_edge31.i

._crit_edge31.i:                                  ; preds = %._crit_edge31.i.loopexit, %._crit_edge
  %.022.lcssa.i = phi i64 [ 0, %._crit_edge ], [ %i.ad, %._crit_edge31.i.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !313
end_hunk_2
