Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/jpeg2000output?download=true
inline.NumInlined: 2780
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineEiiNS0_8TypeDescEPKvl:bb.a
  %niter122.ncmp.1 = icmp eq i64 %niter122.next.1, %unroll_iter121
  br i1 %niter122.ncmp.1, label %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !300

..loopexit_crit_edge.us.i.loopexit.unr-lcssa:     ; preds = %bb.l
  br i1 %lcmp.mod119.not, label %..loopexit_crit_edge.us.i, label %.epil.preheader117

.epil.preheader117:                               ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %.lr.ph.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod120)
  %.not44.us.i.epil = icmp eq i64 %indvars.iv.i.epil.init, %i.aw
  br i1 %.not44.us.i.epil, label %..loopexit_crit_edge.us.i, label %bb.m

bb.m:                                             ; preds = %.epil.preheader117
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.150.us.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !313
  %i.br = uitofp i16 %i.bq to float
  %i.bs = fmul float %i.bc, %i.br
  %i.bt = fptoui float %i.bs to i32
  %.sroa.speculated.us.i.epil = call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bu = trunc nuw i32 %.sroa.speculated.us.i.epil to i16
  store i16 %i.bu, ptr %i.bp, align 2, !tbaa !313
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %bb.m, %.epil.preheader117, %.lr.ph52.split.us.i
  %i.bv = add nuw nsw i32 %.03851.us.i, 1         ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.150.us.i, i64 %i.av
  %exitcond55.not.i = icmp eq i32 %i.bv, %i.ao
  br i1 %exitcond55.not.i, label %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit, label %.lr.ph52.split.us.i, !llvm.loop !301

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.g, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !312 ; 2 uses
  %i.bz = load i32, ptr %i.i, align 4, !tbaa !109 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %i.cc = icmp sgt i32 %i.by, 0
  br i1 %i.cc, label %.lr.ph52.i26, label %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit

.lr.ph52.i26:                                     ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.cd = sext i32 %i.cb to i64
  %i.ce = icmp sgt i32 %i.bz, 0
  %i.cf = sext i32 %i.bz to i64
  br i1 %i.ce, label %.lr.ph52.split.us.preheader.i27, label %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit

.lr.ph52.split.us.preheader.i27:                  ; preds = %.lr.ph52.i26
  %i.cg = zext i32 %i.cb to i64                   ; 3 uses
  %wide.trip.count.i28 = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i28, 1
  %i.ch = icmp eq i32 %i.bz, 1
  %unroll_iter = and i64 %wide.trip.count.i28, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod116 = trunc i32 %i.bz to i1
  br label %.lr.ph52.split.us.i29

.lr.ph52.split.us.i29:                            ; preds = %..loopexit_crit_edge.us.i39, %.lr.ph52.split.us.preheader.i27
  %.03851.us.i30 = phi i32 [ %i.df, %..loopexit_crit_edge.us.i39 ], [ 0, %.lr.ph52.split.us.preheader.i27 ]
  %.150.us.i31 = phi ptr [ %i.dg, %..loopexit_crit_edge.us.i39 ], [ %.023, %.lr.ph52.split.us.preheader.i27 ] ; 5 uses
  %i.ci = getelementptr inbounds i8, ptr %.150.us.i31, i64 %i.cd
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52  ; 2 uses
  %.not.us.i32 = icmp eq i8 %i.cj, 0
  br i1 %.not.us.i32, label %..loopexit_crit_edge.us.i39, label %.lr.ph.us.i33

.lr.ph.us.i33:                                    ; preds = %.lr.ph52.split.us.i29
  %i.ck = uitofp i8 %i.cj to float
  %i.cl = fdiv float 2.550000e+02, %i.ck
  %i.cm = call noundef float @llvm.pow.f32(float %i.cl, float 2.200000e+00) ; 3 uses
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.us.i33.new

.lr.ph.us.i33.new:                                ; preds = %.lr.ph.us.i33, %bb.q
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i37.1, %bb.q ], [ 0, %.lr.ph.us.i33 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.q ], [ 0, %.lr.ph.us.i33 ]
  %.not44.us.i35 = icmp eq i64 %indvars.iv.i34, %i.cg
  br i1 %.not44.us.i35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.us.i33.new
  %i.cn = getelementptr inbounds nuw i8, ptr %.150.us.i31, i64 %indvars.iv.i34 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !52
  %i.cp = uitofp i8 %i.co to float
  %i.cq = fmul float %i.cm, %i.cp
  %i.cr = fptoui float %i.cq to i32
  %.sroa.speculated.us.i36 = call i32 @llvm.umin.i32(i32 %i.cr, i32 255)
  %i.cs = trunc nuw i32 %.sroa.speculated.us.i36 to i8
  store i8 %i.cs, ptr %i.cn, align 1, !tbaa !52
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.us.i33.new
  %indvars.iv.next.i37 = or disjoint i64 %indvars.iv.i34, 1 ; 2 uses
  %.not44.us.i35.1 = icmp eq i64 %indvars.iv.next.i37, %i.cg
  br i1 %.not44.us.i35.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.150.us.i31, i64 %indvars.iv.next.i37 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52
  %i.cv = uitofp i8 %i.cu to float
  %i.cw = fmul float %i.cm, %i.cv
  %i.cx = fptoui float %i.cw to i32
  %.sroa.speculated.us.i36.1 = call i32 @llvm.umin.i32(i32 %i.cx, i32 255)
  %i.cy = trunc nuw i32 %.sroa.speculated.us.i36.1 to i8
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !52
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i34, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.i39.loopexit.unr-lcssa, label %.lr.ph.us.i33.new, !llvm.loop !302

..loopexit_crit_edge.us.i39.loopexit.unr-lcssa:   ; preds = %bb.q
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.i39, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.i39.loopexit.unr-lcssa, %.lr.ph.us.i33
  %indvars.iv.i34.epil.init = phi i64 [ 0, %.lr.ph.us.i33 ], [ %indvars.iv.next.i37.1, %..loopexit_crit_edge.us.i39.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod116)
  %.not44.us.i35.epil = icmp eq i64 %indvars.iv.i34.epil.init, %i.cg
  br i1 %.not44.us.i35.epil, label %..loopexit_crit_edge.us.i39, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.cz = getelementptr inbounds nuw i8, ptr %.150.us.i31, i64 %indvars.iv.i34.epil.init ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !52
  %i.db = uitofp i8 %i.da to float
  %i.dc = fmul float %i.cm, %i.db
  %i.dd = fptoui float %i.dc to i32
  %.sroa.speculated.us.i36.epil = call i32 @llvm.umin.i32(i32 %i.dd, i32 255)
  %i.de = trunc nuw i32 %.sroa.speculated.us.i36.epil to i8
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !52
  br label %..loopexit_crit_edge.us.i39

..loopexit_crit_edge.us.i39:                      ; preds = %..loopexit_crit_edge.us.i39.loopexit.unr-lcssa, %bb.r, %.epil.preheader, %.lr.ph52.split.us.i29
  %i.df = add nuw nsw i32 %.03851.us.i30, 1       ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.150.us.i31, i64 %i.cf
  %exitcond55.not.i40 = icmp eq i32 %i.df, %i.by
  br i1 %exitcond55.not.i40, label %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit, label %.lr.ph52.split.us.i29, !llvm.loop !303

_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit: ; preds = %..loopexit_crit_edge.us.i39, %..loopexit_crit_edge.us.i, %.lr.ph52.i26, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %.lr.ph52.i, %bb.h, %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !99
  %i.dj = icmp eq i8 %i.di, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = icmp eq i8 %i.dl, 1
  %or.cond.i41 = select i1 %i.dj, i1 %i.dm, i1 false
  br i1 %or.cond.i41, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43: ; preds = %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !100
  %.not.i42 = icmp eq i32 %i.do, 0
  br i1 %.not.i42, label %bb.s, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43.thread

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43
  %i.dp = load i32, ptr %i.b, align 4, !tbaa !117
  %i.dq = sub nsw i32 %i.d, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !312 ; 3 uses
  %i.dt = mul nsw i32 %i.dq, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp sgt i32 %i.ds, 0
  br i1 %i.dv, label %.preheader.lr.ph.i, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit

.preheader.lr.ph.i:                               ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 18936
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load i32, ptr %i.i, align 4, !tbaa !109 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.preheader.i, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge.i
  %i.eb = phi i32 [ %i.eh, %._crit_edge.i ], [ %i.ds, %.preheader.lr.ph.i ]
  %i.ec = phi i32 [ %i.ei, %._crit_edge.i ], [ %i.dz, %.preheader.lr.ph.i ] ; 2 uses
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.01824.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ee = load ptr, ptr %i.dy, align 8, !tbaa !317
  %i.ef = sext i32 %.01824.i to i64
  br label %bb.t

._crit_edge.loopexit.i:                           ; preds = %bb.v
  %i.eg = trunc nsw i64 %indvars.iv.next29.i to i32
  %.pre.i = load i32, ptr %i.dr, align 4, !tbaa !312
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.eh = phi i32 [ %i.eb, %.preheader.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ei = phi i32 [ %i.ec, %.preheader.i ], [ %i.fj, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.01824.i, %.preheader.i ], [ %i.eg, %._crit_edge.loopexit.i ]
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.ej = sext i32 %i.eh to i64
  %i.ek = icmp slt i64 %indvars.iv.next34.i, %i.ej
  br i1 %i.ek, label %.preheader.i, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit, !llvm.loop !304

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ %i.ef, %.lr.ph.i ], [ %indvars.iv.next29.i, %bb.v ] ; 2 uses
  %indvars.iv.i44 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i46, %bb.v ] ; 2 uses
  %indvars.iv.next29.i = add nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.023, i64 %indvars.iv28.i
  %i.em = load i8, ptr %i.el, align 1, !tbaa !52
  %i.en = zext i8 %i.em to i32                    ; 11 uses
  %i.eo = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %indvars.iv.i44 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !320 ; 3 uses
  %.not.i45 = icmp eq i32 %i.eq, 8
  br i1 %.not.i45, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.015.i.i = add i32 %i.eq, -8                   ; 4 uses
  %i.er = icmp sgt i32 %.015.i.i, 0
  br i1 %i.er, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.u
  %i.es = add i32 %i.eq, -9                       ; 2 uses
  %i.et = lshr i32 %i.es, 3
  %i.eu = add nuw nsw i32 %i.et, 1                ; 2 uses
  %xtraiter130 = and i32 %i.eu, 7                 ; 3 uses
  %i.ev = icmp ult i32 %i.es, 56
  br i1 %i.ev, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter136 = and i32 %i.eu, 1073741816
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.017.i.i = phi i32 [ %.015.i.i, %.lr.ph.i.i.preheader.new ], [ %.0.i.i.7, %.lr.ph.i.i ] ; 9 uses
  %.01316.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ez, %.lr.ph.i.i ]
  %niter137 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter137.next.7, %.lr.ph.i.i ]
  %7 = shl i32 %i.en, %.017.i.i
  %8 = or i32 %7, %.01316.i.i
  %.0.i.i = add nsw i32 %.017.i.i, -8
  %9 = shl i32 %i.en, %.0.i.i
  %10 = or i32 %9, %8
  %.0.i.i.1 = add nsw i32 %.017.i.i, -16
  %11 = shl i32 %i.en, %.0.i.i.1
  %12 = or i32 %11, %10
  %.0.i.i.2 = add nsw i32 %.017.i.i, -24
  %13 = shl i32 %i.en, %.0.i.i.2
  %14 = or i32 %13, %12
  %.0.i.i.3 = add nsw i32 %.017.i.i, -32
  %15 = shl i32 %i.en, %.0.i.i.3
  %16 = or i32 %15, %14
  %.0.i.i.4 = add nsw i32 %.017.i.i, -40
  %17 = shl i32 %i.en, %.0.i.i.4
  %18 = or i32 %17, %16
  %.0.i.i.5 = add nsw i32 %.017.i.i, -48
  %i.ew = shl i32 %i.en, %.0.i.i.5
  %i.ex = or i32 %i.ew, %18
  %.0.i.i.6 = add nsw i32 %.017.i.i, -56
  %i.ey = shl i32 %i.en, %.0.i.i.6
  %i.ez = or i32 %i.ey, %i.ex                     ; 3 uses
  %.0.i.i.7 = add nsw i32 %.017.i.i, -64          ; 3 uses
  %niter137.next.7 = add i32 %niter137, 8         ; 2 uses
  %niter137.ncmp.7.not = icmp eq i32 %niter137.next.7, %unroll_iter136
  br i1 %niter137.ncmp.7.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !305

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod132.not = icmp eq i32 %xtraiter130, 0
  br i1 %lcmp.mod132.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.017.i.i.epil.init = phi i32 [ %.015.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.7, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa ]
  %.01316.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.ez, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i32 %xtraiter130, 0
  call void @llvm.assume(i1 %lcmp.mod135)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.017.i.i.epil = phi i32 [ %.0.i.i.epil, %.lr.ph.i.i.epil ], [ %.017.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.01316.i.i.epil = phi i32 [ %i.fb, %.lr.ph.i.i.epil ], [ %.01316.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter131 = phi i32 [ %epil.iter131.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.fa = shl i32 %i.en, %.017.i.i.epil
  %i.fb = or i32 %i.fa, %.01316.i.i.epil          ; 2 uses
  %.0.i.i.epil = add nsw i32 %.017.i.i.epil, -8   ; 2 uses
  %epil.iter131.next = add i32 %epil.iter131, 1   ; 2 uses
  %epil.iter131.cmp.not = icmp eq i32 %epil.iter131.next, %xtraiter130
  br i1 %epil.iter131.cmp.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !306

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.u
  %.013.lcssa.i.i = phi i32 [ 0, %bb.u ], [ %i.ez, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa ], [ %i.fb, %.lr.ph.i.i.epil ]
  %.0.lcssa.i.i = phi i32 [ %.015.i.i, %bb.u ], [ %.0.i.i.7, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i.loopexit.unr-lcssa ], [ %.0.i.i.epil, %.lr.ph.i.i.epil ]
  %i.fc = sub nsw i32 0, %.0.lcssa.i.i
  %i.fd = lshr i32 %i.en, %i.fc
  %i.fe = or i32 %i.fd, %.013.lcssa.i.i
  br label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i, %bb.t
  %.0.i = phi i32 [ %i.fe, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i ], [ %i.en, %bb.t ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !321
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %i.du
  %i.fi = getelementptr [4 x i8], ptr %i.fh, i64 %indvars.iv33.i
  store i32 %.0.i, ptr %i.fi, align 4, !tbaa !42
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.fj = load i32, ptr %i.i, align 4, !tbaa !109 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next.i46, %i.fk
  br i1 %i.fl, label %bb.t, label %._crit_edge.loopexit.i, !llvm.loop !307

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43.thread: ; preds = %_ZN11OpenImageIO4v3_1L16deassociateAlphaItEEvPT_iiif.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43
  %i.fm = load i32, ptr %i.b, align 4, !tbaa !117
  %i.fn = sub nsw i32 %i.d, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !312 ; 3 uses
  %i.fq = mul nsw i32 %i.fn, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp sgt i32 %i.fp, 0
  br i1 %i.fs, label %.preheader.lr.ph.i47, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit

.preheader.lr.ph.i47:                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43.thread
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 18936
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load i32, ptr %i.i, align 4, !tbaa !109 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.preheader.i48, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit

.preheader.i48:                                   ; preds = %.preheader.lr.ph.i47, %._crit_edge.i51
  %i.fy = phi i32 [ %i.ge, %._crit_edge.i51 ], [ %i.fp, %.preheader.lr.ph.i47 ]
  %i.fz = phi i32 [ %i.gf, %._crit_edge.i51 ], [ %i.fw, %.preheader.lr.ph.i47 ] ; 2 uses
  %indvars.iv33.i49 = phi i64 [ %indvars.iv.next34.i53, %._crit_edge.i51 ], [ 0, %.preheader.lr.ph.i47 ] ; 2 uses
  %.01824.i50 = phi i32 [ %.1.lcssa.i52, %._crit_edge.i51 ], [ 0, %.preheader.lr.ph.i47 ] ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph.i54, label %._crit_edge.i51

.lr.ph.i54:                                       ; preds = %.preheader.i48
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !317
  %i.gc = sext i32 %.01824.i50 to i64
  br label %bb.w

._crit_edge.loopexit.i65:                         ; preds = %bb.y
  %i.gd = trunc nsw i64 %indvars.iv.next29.i57 to i32
  %.pre.i66 = load i32, ptr %i.fo, align 4, !tbaa !312
  br label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %._crit_edge.loopexit.i65, %.preheader.i48
  %i.ge = phi i32 [ %i.fy, %.preheader.i48 ], [ %.pre.i66, %._crit_edge.loopexit.i65 ] ; 2 uses
  %i.gf = phi i32 [ %i.fz, %.preheader.i48 ], [ %i.hg, %._crit_edge.loopexit.i65 ]
  %.1.lcssa.i52 = phi i32 [ %.01824.i50, %.preheader.i48 ], [ %i.gd, %._crit_edge.loopexit.i65 ]
  %indvars.iv.next34.i53 = add nuw nsw i64 %indvars.iv33.i49, 1 ; 2 uses
  %i.gg = sext i32 %i.ge to i64
  %i.gh = icmp slt i64 %indvars.iv.next34.i53, %i.gg
  br i1 %i.gh, label %.preheader.i48, label %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit, !llvm.loop !308

bb.w:                                             ; preds = %bb.y, %.lr.ph.i54
  %indvars.iv28.i55 = phi i64 [ %i.gc, %.lr.ph.i54 ], [ %indvars.iv.next29.i57, %bb.y ] ; 2 uses
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.i54 ], [ %indvars.iv.next.i64, %bb.y ] ; 2 uses
  %indvars.iv.next29.i57 = add nsw i64 %indvars.iv28.i55, 1 ; 2 uses
  %i.gi = getelementptr inbounds [2 x i8], ptr %.023, i64 %indvars.iv28.i55
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !313
  %i.gk = zext i16 %i.gj to i32                   ; 11 uses
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %i.gb, i64 %indvars.iv.i56 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !320 ; 3 uses
  %.not.i58 = icmp eq i32 %i.gn, 16
  br i1 %.not.i58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.015.i.i59 = add i32 %i.gn, -16                ; 4 uses
  %i.go = icmp sgt i32 %.015.i.i59, 0
  br i1 %i.go, label %.lr.ph.i.i67.preheader, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60

.lr.ph.i.i67.preheader:                           ; preds = %bb.x
  %i.gp = add i32 %i.gn, -17                      ; 2 uses
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = add nuw nsw i32 %i.gq, 1                ; 2 uses
  %xtraiter123 = and i32 %i.gr, 7                 ; 3 uses
  %i.gs = icmp ult i32 %i.gp, 112
  br i1 %i.gs, label %.lr.ph.i.i67.epil.preheader, label %.lr.ph.i.i67.preheader.new

.lr.ph.i.i67.preheader.new:                       ; preds = %.lr.ph.i.i67.preheader
  %unroll_iter128 = and i32 %i.gr, 536870904
  br label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67, %.lr.ph.i.i67.preheader.new
  %.017.i.i68 = phi i32 [ %.015.i.i59, %.lr.ph.i.i67.preheader.new ], [ %.0.i.i70.7, %.lr.ph.i.i67 ] ; 9 uses
  %.01316.i.i69 = phi i32 [ 0, %.lr.ph.i.i67.preheader.new ], [ %i.gw, %.lr.ph.i.i67 ]
  %niter129 = phi i32 [ 0, %.lr.ph.i.i67.preheader.new ], [ %niter129.next.7, %.lr.ph.i.i67 ]
  %19 = shl i32 %i.gk, %.017.i.i68
  %20 = or i32 %19, %.01316.i.i69
  %.0.i.i70 = add nsw i32 %.017.i.i68, -16
  %21 = shl i32 %i.gk, %.0.i.i70
  %22 = or i32 %21, %20
  %.0.i.i70.1 = add nsw i32 %.017.i.i68, -32
  %23 = shl i32 %i.gk, %.0.i.i70.1
  %24 = or i32 %23, %22
  %.0.i.i70.2 = add nsw i32 %.017.i.i68, -48
  %25 = shl i32 %i.gk, %.0.i.i70.2
  %26 = or i32 %25, %24
  %.0.i.i70.3 = add nsw i32 %.017.i.i68, -64
  %27 = shl i32 %i.gk, %.0.i.i70.3
  %28 = or i32 %27, %26
  %.0.i.i70.4 = add nsw i32 %.017.i.i68, -80
  %29 = shl i32 %i.gk, %.0.i.i70.4
  %30 = or i32 %29, %28
  %.0.i.i70.5 = add nsw i32 %.017.i.i68, -96
  %i.gt = shl i32 %i.gk, %.0.i.i70.5
  %i.gu = or i32 %i.gt, %30
  %.0.i.i70.6 = add nsw i32 %.017.i.i68, -112
  %i.gv = shl i32 %i.gk, %.0.i.i70.6
  %i.gw = or i32 %i.gv, %i.gu                     ; 3 uses
  %.0.i.i70.7 = add nsw i32 %.017.i.i68, -128     ; 3 uses
  %niter129.next.7 = add i32 %niter129, 8         ; 2 uses
  %niter129.ncmp.7.not = icmp eq i32 %niter129.next.7, %unroll_iter128
  br i1 %niter129.ncmp.7.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa, label %.lr.ph.i.i67, !llvm.loop !305

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i67
  %lcmp.mod124.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60, label %.lr.ph.i.i67.epil.preheader

.lr.ph.i.i67.epil.preheader:                      ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa, %.lr.ph.i.i67.preheader
  %.017.i.i68.epil.init = phi i32 [ %.015.i.i59, %.lr.ph.i.i67.preheader ], [ %.0.i.i70.7, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa ]
  %.01316.i.i69.epil.init = phi i32 [ 0, %.lr.ph.i.i67.preheader ], [ %i.gw, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i32 %xtraiter123, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i67.epil

.lr.ph.i.i67.epil:                                ; preds = %.lr.ph.i.i67.epil, %.lr.ph.i.i67.epil.preheader
  %.017.i.i68.epil = phi i32 [ %.0.i.i70.epil, %.lr.ph.i.i67.epil ], [ %.017.i.i68.epil.init, %.lr.ph.i.i67.epil.preheader ] ; 2 uses
  %.01316.i.i69.epil = phi i32 [ %i.gy, %.lr.ph.i.i67.epil ], [ %.01316.i.i69.epil.init, %.lr.ph.i.i67.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.i67.epil ], [ 0, %.lr.ph.i.i67.epil.preheader ]
  %i.gx = shl i32 %i.gk, %.017.i.i68.epil
  %i.gy = or i32 %i.gx, %.01316.i.i69.epil        ; 2 uses
  %.0.i.i70.epil = add nsw i32 %.017.i.i68.epil, -16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter123
  br i1 %epil.iter.cmp.not, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60, label %.lr.ph.i.i67.epil, !llvm.loop !309

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa, %.lr.ph.i.i67.epil, %bb.x
  %.013.lcssa.i.i61 = phi i32 [ 0, %bb.x ], [ %i.gw, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa ], [ %i.gy, %.lr.ph.i.i67.epil ]
  %.0.lcssa.i.i62 = phi i32 [ %.015.i.i59, %bb.x ], [ %.0.i.i70.7, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60.loopexit.unr-lcssa ], [ %.0.i.i70.epil, %.lr.ph.i.i67.epil ]
  %i.gz = sub nsw i32 0, %.0.lcssa.i.i62
  %i.ha = lshr i32 %i.gk, %i.gz
  %i.hb = or i32 %i.ha, %.013.lcssa.i.i61
  br label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60, %bb.w
  %.0.i63 = phi i32 [ %i.hb, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.i60 ], [ %i.gk, %bb.w ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !321
  %i.he = getelementptr [4 x i8], ptr %i.hd, i64 %i.fr
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv33.i49
  store i32 %.0.i63, ptr %i.hf, align 4, !tbaa !42
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.hg = load i32, ptr %i.i, align 4, !tbaa !109 ; 2 uses
  %i.hh = sext i32 %i.hg to i64
  %i.hi = icmp slt i64 %indvars.iv.next.i64, %i.hh
  br i1 %i.hi, label %bb.w, label %._crit_edge.loopexit.i65, !llvm.loop !310

_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit: ; preds = %._crit_edge.i51, %._crit_edge.i, %.preheader.lr.ph.i47, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit43.thread, %.preheader.lr.ph.i, %bb.s
  %i.hj = load i32, ptr %i.e, align 8, !tbaa !118
  %i.hk = add nsw i32 %i.hj, -1
  %i.hl = icmp eq i32 %i.d, %i.hk
  br i1 %i.hl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit
  %i.hm = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114Jpeg2000Output10save_imageEv(ptr noundef nonnull align 8 dereferenceable(19016) %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_114Jpeg2000Output14write_scanlineIhEEviiPKv.exit, %bb.z, %bb.b
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.90", align 16 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !324
  %i.b = load ptr, ptr %2, align 8, !tbaa !98, !noalias !324
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51, !noalias !324
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %3, align 16, !noalias !324
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !324
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 13, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !324
  %i.f = load ptr, ptr %5, align 8, !tbaa !98
  store ptr %i.f, ptr %4, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  store i64 %i.i, ptr %i.g, align 8, !tbaa !103
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !52
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !98     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !52
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.o
}

declare noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114Jpeg2000Output10save_imageEv(ptr noundef nonnull align 8 dereferenceable(19016) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = tail call noundef ptr @_ZN11OpenImageIO4v3_114Jpeg2000Output17create_compressorEv(ptr noundef nonnull align 8 dereferenceable(19016) %0) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18944 ; 8 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !119
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @opj_set_error_handler(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output23openjpeg_error_callbackEPKcPv, ptr noundef nonnull %0) ; 0 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.f = tail call i32 @opj_set_warning_handler(ptr noundef %i.e, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output23openjpeg_dummy_callbackEPKcPv, ptr noundef null) ; 0 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.h = tail call i32 @opj_set_info_handler(ptr noundef %i.g, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output23openjpeg_dummy_callbackEPKcPv, ptr noundef null) ; 0 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18936 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = tail call i32 @opj_setup_encoder(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef %i.l) ; 0 uses
  %i.n = tail call noundef i32 @_ZNK11OpenImageIO4v3_111ImageOutput7threadsEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 2 uses
  %.not7 = icmp eq i32 %i.n, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr @.str.11, ptr %1, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.o, align 8, !tbaa !103
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112getattributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPv(ptr noundef nonnull dead_on_return %1, i64 263, ptr noundef nonnull %i.a)
  %i.q = load i32, ptr %i.a, align 4
  %i.r = select i1 %i.p, i32 %i.q, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.n, %bb.b ], [ %i.r, %bb.c ]
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.t = call i32 @opj_codec_set_threads(ptr noundef %i.s, i32 noundef %.0) ; 0 uses
  %i.u = call ptr @opj_stream_default_create(i32 noundef 0) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18952 ; 7 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !120
  %.not8 = icmp eq ptr %i.u, null
  br i1 %.not8, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @opj_stream_set_user_data(ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output10StreamFreeEPv)
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !120
  call void @opj_stream_set_seek_function(ptr noundef %i.w, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output10StreamSeekElPv)
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !120
  call void @opj_stream_set_skip_function(ptr noundef %i.x, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output10StreamSkipElPv)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !120
  call void @opj_stream_set_write_function(ptr noundef %i.y, ptr noundef nonnull @_ZN11OpenImageIO4v3_114Jpeg2000Output11StreamWriteEPvmS2_)
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.ac = call i32 @opj_start_compress(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab)
  %.not9 = icmp eq i32 %i.ac, 0
  br i1 %.not9, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.af = call i32 @opj_encode(ptr noundef %i.ad, ptr noundef %i.ae)
  %.not10 = icmp eq i32 %i.af, 0
  br i1 %.not10, label %.sink.split, label %bb.g
end_hunk_0
