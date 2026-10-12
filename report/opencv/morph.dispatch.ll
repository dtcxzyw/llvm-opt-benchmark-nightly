Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/morph.dispatch?download=true
inline.NumInlined: 2480
inline.NumDeleted: 1141
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpItEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !101
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !100
  br label %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 16 uses
  %i.s = mul i32 %6, %5                           ; 8 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 3 uses
  %i.z = add nsw i64 %wide.trip.count99, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter169 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod167.not = icmp eq i64 %i.ab, 0
  %lcmp.mod168 = trunc i64 %i.i to i1
  %xtraiter172 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter176 = and i64 %i.y, -4
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader165, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter170 = phi i64 [ %niter170.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter170.next.1 = add i64 %niter170, 2         ; 2 uses
  %niter170.ncmp.1 = icmp eq i64 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !569

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod167.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader165

.epil.preheader165:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader165
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv105
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader171, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter177 = phi i64 [ %niter177.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv105
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.umin.i16(i16 %i.bq, i16 %.059.us.us.us.us)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv105
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.umin.i16(i16 %i.bv, i16 %.sroa.speculated.i.us.us.us.us)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv105
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.umin.i16(i16 %i.ca, i16 %.sroa.speculated.i.us.us.us.us.1)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv105
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.umin.i16(i16 %i.cf, i16 %.sroa.speculated.i.us.us.us.us.2) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !570

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod173.not, label %._crit_edge.us.us.us.us, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader171
  %indvars.iv101.epil = phi i64 [ %indvars.iv.next102.epil, %bb.c ], [ %indvars.iv101.epil.init, %.epil.preheader171 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader171 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader171 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv105
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.umin.i16(i16 %i.cj, i16 %.059.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter172
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !571

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv105
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !572

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !573

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cp = mul nsw i32 %10, %6
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cr = shl nsw i64 %i.cq, 1
  %min.iters.check131 = icmp ult i32 %i.s, 4
  %min.iters.check133 = icmp ult i32 %i.s, 16
  %i.cs = and i64 %wide.trip.count94, 12
  %n.vec135 = and i64 %wide.trip.count94, 2147483632 ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count94
  %min.epilog.iters.check147 = icmp eq i64 %i.cs, 0
  %n.vec149 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec149, %wide.trip.count94
  %xtraiter162 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %iter.check144

iter.check144:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar128 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next129, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.ec, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ea, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.eb, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 2 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cq ; 8 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = mul i64 %indvar128, %i.w
  %i.cy = add i64 %i.cx, %i.a
  %i.cz = add i64 %i.cr, %i.cw
  %i.da = sub i64 %i.cz, %i.cy
  %diff.check130 = icmp ugt i64 %i.da, -32
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index137 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load138 = load <8 x i16>, ptr %i.db, align 2, !tbaa !81
  %wide.load139 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !81
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index137 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %wide.load138, ptr %i.dd, align 2, !tbaa !81
  store <8 x i16> %wide.load139, ptr %i.de, align 2, !tbaa !81
  %index.next140 = add nuw i64 %index137, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.df, label %middle.block141, label %vector.body136, !llvm.loop !574

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !82

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index151
  %wide.load152 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index151
  store <4 x i16> %wide.load152, ptr %i.dh, align 2, !tbaa !81
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.di, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !575

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv91.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91.prol
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !81
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !576

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ]
  %i.dm = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !81
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !81
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.1
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !81
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !81
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145, !llvm.loop !577

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.ea = add nsw i32 %.04666.us.us73, -1
  %i.eb = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.ed = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %i.ed, label %iter.check144, label %._crit_edge.loopexit115, !llvm.loop !573

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.eg, -1
  %min.iters.check120 = icmp ult i32 %i.s, 16
  %i.eh = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  %n.vec122 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count86
  %xtraiter160 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fi, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fj, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <8 x i16>, ptr %i.ej, align 2, !tbaa !81
  %wide.load121 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !81
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <8 x i16> %wide.load, ptr %i.el, align 2, !tbaa !81
  store <8 x i16> %wide.load121, ptr %i.em, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !578

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.ep, align 2, !tbaa !81
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !579

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIsEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !104
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 16 uses
  %i.s = mul i32 %6, %5                           ; 8 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 3 uses
  %i.z = add nsw i64 %wide.trip.count99, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter169 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod167.not = icmp eq i64 %i.ab, 0
  %lcmp.mod168 = trunc i64 %i.i to i1
  %xtraiter172 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter176 = and i64 %i.y, -4
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader165, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter170 = phi i64 [ %niter170.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter170.next.1 = add i64 %niter170, 2         ; 2 uses
  %niter170.ncmp.1 = icmp eq i64 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !584

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod167.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader165

.epil.preheader165:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader165
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv105
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader171, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter177 = phi i64 [ %niter177.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv105
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.smin.i16(i16 %i.bq, i16 %.059.us.us.us.us)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv105
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.smin.i16(i16 %i.bv, i16 %.sroa.speculated.i.us.us.us.us)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv105
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.smin.i16(i16 %i.ca, i16 %.sroa.speculated.i.us.us.us.us.1)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv105
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.smin.i16(i16 %i.cf, i16 %.sroa.speculated.i.us.us.us.us.2) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !585

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod173.not, label %._crit_edge.us.us.us.us, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader171
  %indvars.iv101.epil = phi i64 [ %indvars.iv.next102.epil, %bb.c ], [ %indvars.iv101.epil.init, %.epil.preheader171 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader171 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader171 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv105
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.smin.i16(i16 %i.cj, i16 %.059.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter172
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !586

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv105
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !587

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !588

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cp = mul nsw i32 %10, %6
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cr = shl nsw i64 %i.cq, 1
  %min.iters.check131 = icmp ult i32 %i.s, 4
  %min.iters.check133 = icmp ult i32 %i.s, 16
  %i.cs = and i64 %wide.trip.count94, 12
  %n.vec135 = and i64 %wide.trip.count94, 2147483632 ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count94
  %min.epilog.iters.check147 = icmp eq i64 %i.cs, 0
  %n.vec149 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec149, %wide.trip.count94
  %xtraiter162 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %iter.check144

iter.check144:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar128 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next129, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.ec, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ea, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.eb, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 2 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cq ; 8 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = mul i64 %indvar128, %i.w
  %i.cy = add i64 %i.cx, %i.a
  %i.cz = add i64 %i.cr, %i.cw
  %i.da = sub i64 %i.cz, %i.cy
  %diff.check130 = icmp ugt i64 %i.da, -32
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index137 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load138 = load <8 x i16>, ptr %i.db, align 2, !tbaa !81
  %wide.load139 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !81
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index137 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %wide.load138, ptr %i.dd, align 2, !tbaa !81
  store <8 x i16> %wide.load139, ptr %i.de, align 2, !tbaa !81
  %index.next140 = add nuw i64 %index137, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.df, label %middle.block141, label %vector.body136, !llvm.loop !589

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !82

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index151
  %wide.load152 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index151
  store <4 x i16> %wide.load152, ptr %i.dh, align 2, !tbaa !81
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.di, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !590

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv91.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91.prol
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !81
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !591

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ]
  %i.dm = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !81
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !81
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.1
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !81
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !81
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145, !llvm.loop !592

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.ea = add nsw i32 %.04666.us.us73, -1
  %i.eb = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.ed = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %i.ed, label %iter.check144, label %._crit_edge.loopexit115, !llvm.loop !588

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.eg, -1
  %min.iters.check120 = icmp ult i32 %i.s, 16
  %i.eh = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  %n.vec122 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count86
  %xtraiter160 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fi, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fj, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <8 x i16>, ptr %i.ej, align 2, !tbaa !81
  %wide.load121 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !81
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <8 x i16> %wide.load, ptr %i.el, align 2, !tbaa !81
  store <8 x i16> %wide.load121, ptr %i.em, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.ep, align 2, !tbaa !81
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !594

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_1
begin_hunk_2_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIfEENS1_10MorphNoVecEED0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIfEENS1_10MorphNoVecEEclEPPKhPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %8 = alloca %"class.cv::AutoBuffer.350", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIfEENS1_10MorphNoVecEEclEPPKhPhiiiiE25__cv_trace_location_fn665)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr i64 %i.h, 3                         ; 6 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !108
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !107
  br label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter150 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod148.not = icmp eq i64 %i.aa, 0
  %lcmp.mod149 = trunc i64 %i.i to i1
  %xtraiter153 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count99, 2
  %unroll_iter157 = and i64 %i.y, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader146, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.al, ptr %i.am, align 8, !tbaa !89
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !89
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !599

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod148.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader146

.epil.preheader146:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !89
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader146
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !89
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !84 ; 2 uses
  br i1 %i.ab, label %.epil.preheader152, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi float [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv106
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84 ; 2 uses
  %i.bq = fcmp olt float %i.bp, %.059.us.us.us.us
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, float %i.bp, float %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv106
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84 ; 2 uses
  %i.bw = fcmp olt float %i.bv, %.sroa.speculated.i.us.us.us.us
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, float %i.bv, float %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !600

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod154.not, label %._crit_edge.us.us.us.us, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi float [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv106
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.059.us.us.us.us.epil.init
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, float %i.ca, float %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader152
  %.sroa.speculated.i.us.us.us.us.lcssa = phi float [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader152 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us.us, i64 %indvars.iv106
  store float %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 4, !tbaa !84
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !601

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !602

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ch = mul nsw i32 %10, %6
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cj = shl nsw i64 %i.ci, 2
  %min.iters.check127 = icmp ult i32 %i.s, 8
  %n.vec129 = and i64 %wide.trip.count94, 2147483640 ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %wide.trip.count94
  %xtraiter143 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %.preheader56.us.us71

.preheader56.us.us71:                             ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar123 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next124, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.dq, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.do, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dp, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ci ; 7 uses
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader56.us.us71
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = mul i64 %indvar123, %i.w
  %i.cp = add i64 %i.co, %i.a
  %i.cq = add i64 %i.cj, %i.cn
  %i.cr = sub i64 %i.cq, %i.cp
  %diff.check125 = icmp ugt i64 %i.cr, -32
  br i1 %diff.check125, label %scalar.ph126.preheader, label %vector.body130

vector.body130:                                   ; preds = %vector.memcheck122, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.memcheck122 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index131 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load132 = load <4 x float>, ptr %i.cs, align 4, !tbaa !84
  %wide.load133 = load <4 x float>, ptr %i.ct, align 4, !tbaa !84
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %index131 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x float> %wide.load132, ptr %i.cu, align 4, !tbaa !84
  store <4 x float> %wide.load133, ptr %i.cv, align 4, !tbaa !84
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.cw, label %middle.block135, label %vector.body130, !llvm.loop !603

middle.block135:                                  ; preds = %vector.body130
  br i1 %cmp.n136, label %._crit_edge63.split.us70.us, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %vector.memcheck122, %.preheader56.us.us71, %middle.block135
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader56.us.us71 ], [ %n.vec129, %middle.block135 ] ; 3 uses
  br i1 %lcmp.mod144.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol

scalar.ph126.prol:                                ; preds = %scalar.ph126.preheader, %scalar.ph126.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph126.prol ], [ %indvars.iv91.ph, %scalar.ph126.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %scalar.ph126.prol ], [ 0, %scalar.ph126.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv91.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !84
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store float %i.cy, ptr %i.cz, align 4, !tbaa !84
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol, !llvm.loop !604

scalar.ph126.prol.loopexit:                       ; preds = %scalar.ph126.prol, %scalar.ph126.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph126.preheader ], [ %indvars.iv.next92.prol, %scalar.ph126.prol ]
  %i.da = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge63.split.us70.us, label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph126 ], [ %indvars.iv91.unr, %scalar.ph126.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv91
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !84
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store float %i.dd, ptr %i.de, align 4, !tbaa !84
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92
  %i.dg = load float, ptr %i.df, align 4, !tbaa !84
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store float %i.dg, ptr %i.dh, align 4, !tbaa !84
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92.1
  %i.dj = load float, ptr %i.di, align 4, !tbaa !84
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store float %i.dj, ptr %i.dk, align 4, !tbaa !84
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92.2
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !84
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store float %i.dm, ptr %i.dn, align 4, !tbaa !84
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph126, !llvm.loop !605

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126, %middle.block135
  %i.do = add nsw i32 %.04666.us.us73, -1
  %i.dp = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.dq = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dr = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next124 = add i64 %indvar123, 1
  br i1 %i.dr, label %.preheader56.us.us71, label %._crit_edge.loopexit116, !llvm.loop !602

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !89  ; 7 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.du = sub i64 %i.a, %i.dt
  %min.iters.check = icmp ult i32 %i.s, 8
  %invariant.op = add i64 %i.du, -1
  %n.vec = and i64 %wide.trip.count86, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter141 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.es, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.et, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dv = mul i64 %indvar, %i.w
  %.reass = add i64 %i.dv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <4 x float>, ptr %i.dw, align 4, !tbaa !84
  %wide.load121 = load <4 x float>, ptr %i.dx, align 4, !tbaa !84
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <4 x float> %wide.load, ptr %i.dy, align 4, !tbaa !84
  store <4 x float> %wide.load121, ptr %i.dz, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !606

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod142.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv83.prol
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !84
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store float %i.ec, ptr %i.ed, align 4, !tbaa !84
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter141
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !607

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv83
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !84
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83
  store float %i.eh, ptr %i.ei, align 4, !tbaa !84
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !84
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store float %i.ek, ptr %i.el, align 4, !tbaa !84
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84.1
  %i.en = load float, ptr %i.em, align 4, !tbaa !84
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store float %i.en, ptr %i.eo, align 4, !tbaa !84
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !84
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store float %i.eq, ptr %i.er, align 4, !tbaa !84
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !608

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = add nsw i32 %.04666.us, -1
  %i.et = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.eu = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eu, label %.preheader56.us, label %._crit_edge, !llvm.loop !602

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

end_hunk_2
begin_hunk_3_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIdEENS1_10MorphNoVecEED0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIdEENS1_10MorphNoVecEEclEPPKhPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %8 = alloca %"class.cv::AutoBuffer.359", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MinOpIdEENS1_10MorphNoVecEEclEPPKhPhiiiiE25__cv_trace_location_fn665)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr i64 %i.h, 3                         ; 6 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !112
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !111
  br label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter150 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod148.not = icmp eq i64 %i.aa, 0
  %lcmp.mod149 = trunc i64 %i.i to i1
  %xtraiter153 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count99, 2
  %unroll_iter157 = and i64 %i.y, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader146, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.al, ptr %i.am, align 8, !tbaa !91
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !91
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !611

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod148.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader146

.epil.preheader146:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !91
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader146
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !91
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  br i1 %i.ab, label %.epil.preheader152, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi double [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv106
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %i.bq = fcmp olt double %i.bp, %.059.us.us.us.us
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, double %i.bp, double %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv106
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.bw = fcmp olt double %i.bv, %.sroa.speculated.i.us.us.us.us
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, double %i.bv, double %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !612

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod154.not, label %._crit_edge.us.us.us.us, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi double [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv106
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.cb = fcmp olt double %i.ca, %.059.us.us.us.us.epil.init
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, double %i.ca, double %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader152
  %.sroa.speculated.i.us.us.us.us.lcssa = phi double [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader152 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us.us, i64 %indvars.iv106
  store double %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 8, !tbaa !65
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !613

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !614

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ch = mul nsw i32 %10, %6
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cj = shl nsw i64 %i.ci, 3
  %min.iters.check127 = icmp ult i32 %i.s, 4
  %n.vec129 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %wide.trip.count94
  %xtraiter143 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %.preheader56.us.us71

.preheader56.us.us71:                             ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar123 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next124, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.dq, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.do, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dp, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.ci ; 7 uses
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader56.us.us71
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = mul i64 %indvar123, %i.w
  %i.cp = add i64 %i.co, %i.a
  %i.cq = add i64 %i.cj, %i.cn
  %i.cr = sub i64 %i.cq, %i.cp
  %diff.check125 = icmp ugt i64 %i.cr, -32
  br i1 %diff.check125, label %scalar.ph126.preheader, label %vector.body130

vector.body130:                                   ; preds = %vector.memcheck122, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.memcheck122 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index131 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load132 = load <2 x double>, ptr %i.cs, align 8, !tbaa !65
  %wide.load133 = load <2 x double>, ptr %i.ct, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %index131 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <2 x double> %wide.load132, ptr %i.cu, align 8, !tbaa !65
  store <2 x double> %wide.load133, ptr %i.cv, align 8, !tbaa !65
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.cw, label %middle.block135, label %vector.body130, !llvm.loop !615

middle.block135:                                  ; preds = %vector.body130
  br i1 %cmp.n136, label %._crit_edge63.split.us70.us, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %vector.memcheck122, %.preheader56.us.us71, %middle.block135
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader56.us.us71 ], [ %n.vec129, %middle.block135 ] ; 3 uses
  br i1 %lcmp.mod144.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol

scalar.ph126.prol:                                ; preds = %scalar.ph126.preheader, %scalar.ph126.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph126.prol ], [ %indvars.iv91.ph, %scalar.ph126.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %scalar.ph126.prol ], [ 0, %scalar.ph126.preheader ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv91.prol
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !65
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store double %i.cy, ptr %i.cz, align 8, !tbaa !65
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol, !llvm.loop !616

scalar.ph126.prol.loopexit:                       ; preds = %scalar.ph126.prol, %scalar.ph126.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph126.preheader ], [ %indvars.iv.next92.prol, %scalar.ph126.prol ]
  %i.da = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge63.split.us70.us, label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph126 ], [ %indvars.iv91.unr, %scalar.ph126.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv91
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store double %i.dd, ptr %i.de, align 8, !tbaa !65
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92
  %i.dg = load double, ptr %i.df, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store double %i.dg, ptr %i.dh, align 8, !tbaa !65
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92.1
  %i.dj = load double, ptr %i.di, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store double %i.dj, ptr %i.dk, align 8, !tbaa !65
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92.2
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store double %i.dm, ptr %i.dn, align 8, !tbaa !65
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph126, !llvm.loop !617

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126, %middle.block135
  %i.do = add nsw i32 %.04666.us.us73, -1
  %i.dp = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.dq = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dr = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next124 = add i64 %indvar123, 1
  br i1 %i.dr, label %.preheader56.us.us71, label %._crit_edge.loopexit116, !llvm.loop !614

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !91  ; 7 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.du = sub i64 %i.a, %i.dt
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.du, -1
  %n.vec = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter141 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.es, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.et, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dv = mul i64 %indvar, %i.w
  %.reass = add i64 %i.dv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !65
  %wide.load121 = load <2 x double>, ptr %i.dx, align 8, !tbaa !65
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %wide.load, ptr %i.dy, align 8, !tbaa !65
  store <2 x double> %wide.load121, ptr %i.dz, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !618

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod142.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv83.prol
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !65
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store double %i.ec, ptr %i.ed, align 8, !tbaa !65
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter141
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !619

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv83
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83
  store double %i.eh, ptr %i.ei, align 8, !tbaa !65
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !65
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store double %i.ek, ptr %i.el, align 8, !tbaa !65
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84.1
  %i.en = load double, ptr %i.em, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store double %i.en, ptr %i.eo, align 8, !tbaa !65
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store double %i.eq, ptr %i.er, align 8, !tbaa !65
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !620

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = add nsw i32 %.04666.us, -1
  %i.et = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.eu = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eu, label %.preheader56.us, label %._crit_edge, !llvm.loop !614

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

end_hunk_3
begin_hunk_4_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpItEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !101
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !100
  br label %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 16 uses
  %i.s = mul i32 %6, %5                           ; 8 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKtLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 3 uses
  %i.z = add nsw i64 %wide.trip.count99, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter169 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod167.not = icmp eq i64 %i.ab, 0
  %lcmp.mod168 = trunc i64 %i.i to i1
  %xtraiter172 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter176 = and i64 %i.y, -4
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader165, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter170 = phi i64 [ %niter170.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter170.next.1 = add i64 %niter170, 2         ; 2 uses
  %niter170.ncmp.1 = icmp eq i64 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !638

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod167.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader165

.epil.preheader165:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader165
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv105
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader171, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter177 = phi i64 [ %niter177.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv105
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.umax.i16(i16 %.059.us.us.us.us, i16 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv105
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us, i16 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv105
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us.1, i16 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv105
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.umax.i16(i16 %.sroa.speculated.i.us.us.us.us.2, i16 %i.cf) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !639

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod173.not, label %._crit_edge.us.us.us.us, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader171
  %indvars.iv101.epil = phi i64 [ %indvars.iv.next102.epil, %bb.c ], [ %indvars.iv101.epil.init, %.epil.preheader171 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader171 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader171 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv105
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.umax.i16(i16 %.059.us.us.us.us.epil, i16 %i.cj) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter172
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !640

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv105
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !641

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !642

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cp = mul nsw i32 %10, %6
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cr = shl nsw i64 %i.cq, 1
  %min.iters.check131 = icmp ult i32 %i.s, 4
  %min.iters.check133 = icmp ult i32 %i.s, 16
  %i.cs = and i64 %wide.trip.count94, 12
  %n.vec135 = and i64 %wide.trip.count94, 2147483632 ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count94
  %min.epilog.iters.check147 = icmp eq i64 %i.cs, 0
  %n.vec149 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec149, %wide.trip.count94
  %xtraiter162 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %iter.check144

iter.check144:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar128 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next129, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.ec, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ea, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.eb, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 2 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cq ; 8 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = mul i64 %indvar128, %i.w
  %i.cy = add i64 %i.cx, %i.a
  %i.cz = add i64 %i.cr, %i.cw
  %i.da = sub i64 %i.cz, %i.cy
  %diff.check130 = icmp ugt i64 %i.da, -32
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index137 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load138 = load <8 x i16>, ptr %i.db, align 2, !tbaa !81
  %wide.load139 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !81
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index137 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %wide.load138, ptr %i.dd, align 2, !tbaa !81
  store <8 x i16> %wide.load139, ptr %i.de, align 2, !tbaa !81
  %index.next140 = add nuw i64 %index137, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.df, label %middle.block141, label %vector.body136, !llvm.loop !643

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !82

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index151
  %wide.load152 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index151
  store <4 x i16> %wide.load152, ptr %i.dh, align 2, !tbaa !81
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.di, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !644

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv91.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91.prol
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !81
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !645

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ]
  %i.dm = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !81
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !81
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.1
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !81
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !81
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145, !llvm.loop !646

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.ea = add nsw i32 %.04666.us.us73, -1
  %i.eb = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.ed = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %i.ed, label %iter.check144, label %._crit_edge.loopexit115, !llvm.loop !642

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.eg, -1
  %min.iters.check120 = icmp ult i32 %i.s, 16
  %i.eh = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  %n.vec122 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count86
  %xtraiter160 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fi, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fj, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <8 x i16>, ptr %i.ej, align 2, !tbaa !81
  %wide.load121 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !81
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <8 x i16> %wide.load, ptr %i.el, align 2, !tbaa !81
  store <8 x i16> %wide.load121, ptr %i.em, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.ep, align 2, !tbaa !81
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !648

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_4
begin_hunk_5_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIsEENS1_10MorphNoVecEEclEPPKhPhiiii:bb.a
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !104
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !103
  br label %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 16 uses
  %i.s = mul i32 %6, %5                           ; 8 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKsLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 3 uses
  %i.z = add nsw i64 %wide.trip.count99, -2
  %i.aa = icmp eq i64 %i.y, 0
  %unroll_iter169 = and i64 %i.i, 2147483646
  %i.ab = and i64 %i.h, 8
  %lcmp.mod167.not = icmp eq i64 %i.ab, 0
  %lcmp.mod168 = trunc i64 %i.i to i1
  %xtraiter172 = and i64 %i.y, 3                  ; 3 uses
  %i.ac = icmp ult i64 %i.z, 3
  %unroll_iter176 = and i64 %i.y, -4
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %lcmp.mod175 = icmp ne i64 %xtraiter172, 0
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cn, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cl, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.cm, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.aa, label %.epil.preheader165, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter170 = phi i64 [ %niter170.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !85
  %i.aj = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.ak = mul nsw i32 %i.aj, %6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.am, ptr %i.an, align 8, !tbaa !87
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !74
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !73
  %i.av = mul nsw i32 %i.au, %6
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !87
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter170.next.1 = add i64 %niter170, 2         ; 2 uses
  %niter170.ncmp.1 = icmp eq i64 %niter170.next.1, %unroll_iter169
  br i1 %niter170.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !653

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod167.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader165

.epil.preheader165:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod168)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !85
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bg = mul nsw i32 %i.bf, %6
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !87
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader165
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !87
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 8 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv105
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !81 ; 2 uses
  br i1 %i.ac, label %.epil.preheader171, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 5 uses
  %.059.us.us.us.us = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %.lr.ph60.us.us.us.us.new ], [ %i.bm, %.lr.ph60.us.us.us.us ]
  %niter177 = phi i64 [ %niter177.next.3, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv105
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us = call noundef i16 @llvm.smax.i16(i16 %.059.us.us.us.us, i16 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv105
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.1 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us, i16 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv105
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.2 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us.1, i16 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !87
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv105
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.3 = call noundef i16 @llvm.smax.i16(i16 %.sroa.speculated.i.us.us.us.us.2, i16 %i.cf) ; 3 uses
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %niter177.next.3 = add nuw i64 %niter177, 4     ; 2 uses
  %niter177.ncmp.3 = icmp eq i64 %niter177.next.3, %unroll_iter176
  br i1 %niter177.ncmp.3, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !654

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod173.not, label %._crit_edge.us.us.us.us, label %.epil.preheader171

.epil.preheader171:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi i16 [ %i.bm, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod175)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader171
  %indvars.iv101.epil = phi i64 [ %indvars.iv.next102.epil, %bb.c ], [ %indvars.iv101.epil.init, %.epil.preheader171 ] ; 2 uses
  %.059.us.us.us.us.epil = phi i16 [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ], [ %.059.us.us.us.us.epil.init, %.epil.preheader171 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader171 ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv105
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !81
  %.sroa.speculated.i.us.us.us.us.epil = call noundef i16 @llvm.smax.i16(i16 %.059.us.us.us.us.epil, i16 %i.cj) ; 2 uses
  %indvars.iv.next102.epil = add nuw nsw i64 %indvars.iv101.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter172
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.us.us, label %bb.c, !llvm.loop !655

._crit_edge.us.us.us.us:                          ; preds = %bb.c, %._crit_edge.us.us.us.us.unr-lcssa
  %.sroa.speculated.i.us.us.us.us.lcssa = phi i16 [ %.sroa.speculated.i.us.us.us.us.3, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %bb.c ]
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us.us, i64 %indvars.iv105
  store i16 %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.ck, align 2, !tbaa !81
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !656

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cl = add nsw i32 %.04666.us.us.us, -1
  %i.cm = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.co = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.co, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !657

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.cp = mul nsw i32 %10, %6
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.cr = shl nsw i64 %i.cq, 1
  %min.iters.check131 = icmp ult i32 %i.s, 4
  %min.iters.check133 = icmp ult i32 %i.s, 16
  %i.cs = and i64 %wide.trip.count94, 12
  %n.vec135 = and i64 %wide.trip.count94, 2147483632 ; 4 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %wide.trip.count94
  %min.epilog.iters.check147 = icmp eq i64 %i.cs, 0
  %n.vec149 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec149, %wide.trip.count94
  %xtraiter162 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %iter.check144

iter.check144:                                    ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar128 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next129, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.ec, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.ea, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.eb, %._crit_edge63.split.us70.us ] ; 8 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 2 uses
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cq ; 8 uses
  br i1 %min.iters.check131, label %vec.epilog.scalar.ph145.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %iter.check144
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = mul i64 %indvar128, %i.w
  %i.cy = add i64 %i.cx, %i.a
  %i.cz = add i64 %i.cr, %i.cw
  %i.da = sub i64 %i.cz, %i.cy
  %diff.check130 = icmp ugt i64 %i.da, -32
  br i1 %diff.check130, label %vec.epilog.scalar.ph145.preheader, label %vector.main.loop.iter.check132

vector.main.loop.iter.check132:                   ; preds = %vector.memcheck127
  br i1 %min.iters.check133, label %vec.epilog.ph148, label %vector.body136

vector.body136:                                   ; preds = %vector.main.loop.iter.check132, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %vector.main.loop.iter.check132 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index137 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load138 = load <8 x i16>, ptr %i.db, align 2, !tbaa !81
  %wide.load139 = load <8 x i16>, ptr %i.dc, align 2, !tbaa !81
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index137 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <8 x i16> %wide.load138, ptr %i.dd, align 2, !tbaa !81
  store <8 x i16> %wide.load139, ptr %i.de, align 2, !tbaa !81
  %index.next140 = add nuw i64 %index137, 16      ; 2 uses
  %i.df = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.df, label %middle.block141, label %vector.body136, !llvm.loop !658

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge63.split.us70.us, label %vec.epilog.iter.check146

vec.epilog.iter.check146:                         ; preds = %middle.block141
  br i1 %min.epilog.iters.check147, label %vec.epilog.scalar.ph145.preheader, label %vec.epilog.ph148, !prof !82

vec.epilog.ph148:                                 ; preds = %vector.main.loop.iter.check132, %vec.epilog.iter.check146
  %vec.epilog.resume.val143 = phi i64 [ %n.vec135, %vec.epilog.iter.check146 ], [ 0, %vector.main.loop.iter.check132 ]
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph148
  %index151 = phi i64 [ %vec.epilog.resume.val143, %vec.epilog.ph148 ], [ %index.next153, %vec.epilog.vector.body150 ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %index151
  %wide.load152 = load <4 x i16>, ptr %i.dg, align 2, !tbaa !81
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %index151
  store <4 x i16> %wide.load152, ptr %i.dh, align 2, !tbaa !81
  %index.next153 = add nuw i64 %index151, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.di, label %vec.epilog.middle.block154, label %vec.epilog.vector.body150, !llvm.loop !659

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n155, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145.preheader

vec.epilog.scalar.ph145.preheader:                ; preds = %iter.check144, %vector.memcheck127, %vec.epilog.iter.check146, %vec.epilog.middle.block154
  %indvars.iv91.ph = phi i64 [ 0, %iter.check144 ], [ 0, %vector.memcheck127 ], [ %n.vec135, %vec.epilog.iter.check146 ], [ %n.vec149, %vec.epilog.middle.block154 ] ; 3 uses
  br i1 %lcmp.mod163.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol

vec.epilog.scalar.ph145.prol:                     ; preds = %vec.epilog.scalar.ph145.preheader, %vec.epilog.scalar.ph145.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ], [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %vec.epilog.scalar.ph145.prol ], [ 0, %vec.epilog.scalar.ph145.preheader ]
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91.prol
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !81
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !81
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %vec.epilog.scalar.ph145.prol.loopexit, label %vec.epilog.scalar.ph145.prol, !llvm.loop !660

vec.epilog.scalar.ph145.prol.loopexit:            ; preds = %vec.epilog.scalar.ph145.prol, %vec.epilog.scalar.ph145.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %vec.epilog.scalar.ph145.preheader ], [ %indvars.iv.next92.prol, %vec.epilog.scalar.ph145.prol ]
  %i.dm = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145

vec.epilog.scalar.ph145:                          ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %vec.epilog.scalar.ph145 ], [ %indvars.iv91.unr, %vec.epilog.scalar.ph145.prol.loopexit ] ; 6 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv91
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !81
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !81
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !81
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !81
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.1
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !81
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !81
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %indvars.iv.next92.2
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !81
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !81
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %vec.epilog.scalar.ph145, !llvm.loop !661

._crit_edge63.split.us70.us:                      ; preds = %vec.epilog.scalar.ph145.prol.loopexit, %vec.epilog.scalar.ph145, %vec.epilog.middle.block154, %middle.block141
  %i.ea = add nsw i32 %.04666.us.us73, -1
  %i.eb = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.ec = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.ed = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next129 = add i64 %indvar128, 1
  br i1 %i.ed, label %iter.check144, label %._crit_edge.loopexit115, !llvm.loop !657

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ee = load ptr, ptr %i.r, align 8, !tbaa !87  ; 8 uses
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 8 uses
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.eg, -1
  %min.iters.check120 = icmp ult i32 %i.s, 16
  %i.eh = and i64 %wide.trip.count86, 12
  %n.vec = and i64 %wide.trip.count86, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  %n.vec122 = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %wide.trip.count86
  %xtraiter160 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.fi, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.fj, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = mul i64 %indvar, %i.w
  %.reass = add i64 %i.ei, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load = load <8 x i16>, ptr %i.ej, align 2, !tbaa !81
  %wide.load121 = load <8 x i16>, ptr %i.ek, align 2, !tbaa !81
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <8 x i16> %wide.load, ptr %i.el, align 2, !tbaa !81
  store <8 x i16> %wide.load121, ptr %i.em, align 2, !tbaa !81
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !82

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %index123
  %wide.load124 = load <4 x i16>, ptr %i.eo, align 2, !tbaa !81
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.04764.us, i64 %index123
  store <4 x i16> %wide.load124, ptr %i.ep, align 2, !tbaa !81
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !663

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge63.split.us70, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_5
begin_hunk_6_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIfEENS1_10MorphNoVecEED0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIfEENS1_10MorphNoVecEEclEPPKhPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %8 = alloca %"class.cv::AutoBuffer.350", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIfEENS1_10MorphNoVecEEclEPPKhPhiiiiE25__cv_trace_location_fn665)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr i64 %i.h, 3                         ; 6 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !108
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !107
  br label %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKfLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter150 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod148.not = icmp eq i64 %i.aa, 0
  %lcmp.mod149 = trunc i64 %i.i to i1
  %xtraiter153 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count99, 2
  %unroll_iter157 = and i64 %i.y, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader146, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.al, ptr %i.am, align 8, !tbaa !89
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !89
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !668

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod148.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader146

.epil.preheader146:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !89
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader146
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !89
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !84 ; 2 uses
  br i1 %i.ab, label %.epil.preheader152, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi float [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !89
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv106
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84 ; 2 uses
  %i.bq = fcmp olt float %.059.us.us.us.us, %i.bp
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, float %i.bp, float %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !89
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv106
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !84 ; 2 uses
  %i.bw = fcmp olt float %.sroa.speculated.i.us.us.us.us, %i.bv
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, float %i.bv, float %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !669

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod154.not, label %._crit_edge.us.us.us.us, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi float [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv106
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !84 ; 2 uses
  %i.cb = fcmp olt float %.059.us.us.us.us.epil.init, %i.ca
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, float %i.ca, float %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader152
  %.sroa.speculated.i.us.us.us.us.lcssa = phi float [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader152 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us.us, i64 %indvars.iv106
  store float %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 4, !tbaa !84
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !670

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !671

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ch = mul nsw i32 %10, %6
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cj = shl nsw i64 %i.ci, 2
  %min.iters.check127 = icmp ult i32 %i.s, 8
  %n.vec129 = and i64 %wide.trip.count94, 2147483640 ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %wide.trip.count94
  %xtraiter143 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %.preheader56.us.us71

.preheader56.us.us71:                             ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar123 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next124, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.dq, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.do, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dp, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ci ; 7 uses
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader56.us.us71
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = mul i64 %indvar123, %i.w
  %i.cp = add i64 %i.co, %i.a
  %i.cq = add i64 %i.cj, %i.cn
  %i.cr = sub i64 %i.cq, %i.cp
  %diff.check125 = icmp ugt i64 %i.cr, -32
  br i1 %diff.check125, label %scalar.ph126.preheader, label %vector.body130

vector.body130:                                   ; preds = %vector.memcheck122, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.memcheck122 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index131 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load132 = load <4 x float>, ptr %i.cs, align 4, !tbaa !84
  %wide.load133 = load <4 x float>, ptr %i.ct, align 4, !tbaa !84
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %index131 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x float> %wide.load132, ptr %i.cu, align 4, !tbaa !84
  store <4 x float> %wide.load133, ptr %i.cv, align 4, !tbaa !84
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.cw, label %middle.block135, label %vector.body130, !llvm.loop !672

middle.block135:                                  ; preds = %vector.body130
  br i1 %cmp.n136, label %._crit_edge63.split.us70.us, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %vector.memcheck122, %.preheader56.us.us71, %middle.block135
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader56.us.us71 ], [ %n.vec129, %middle.block135 ] ; 3 uses
  br i1 %lcmp.mod144.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol

scalar.ph126.prol:                                ; preds = %scalar.ph126.preheader, %scalar.ph126.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph126.prol ], [ %indvars.iv91.ph, %scalar.ph126.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %scalar.ph126.prol ], [ 0, %scalar.ph126.preheader ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv91.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !84
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store float %i.cy, ptr %i.cz, align 4, !tbaa !84
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol, !llvm.loop !673

scalar.ph126.prol.loopexit:                       ; preds = %scalar.ph126.prol, %scalar.ph126.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph126.preheader ], [ %indvars.iv.next92.prol, %scalar.ph126.prol ]
  %i.da = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge63.split.us70.us, label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph126 ], [ %indvars.iv91.unr, %scalar.ph126.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv91
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !84
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store float %i.dd, ptr %i.de, align 4, !tbaa !84
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92
  %i.dg = load float, ptr %i.df, align 4, !tbaa !84
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store float %i.dg, ptr %i.dh, align 4, !tbaa !84
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92.1
  %i.dj = load float, ptr %i.di, align 4, !tbaa !84
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store float %i.dj, ptr %i.dk, align 4, !tbaa !84
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next92.2
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !84
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store float %i.dm, ptr %i.dn, align 4, !tbaa !84
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph126, !llvm.loop !674

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126, %middle.block135
  %i.do = add nsw i32 %.04666.us.us73, -1
  %i.dp = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.dq = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dr = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next124 = add i64 %indvar123, 1
  br i1 %i.dr, label %.preheader56.us.us71, label %._crit_edge.loopexit116, !llvm.loop !671

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !89  ; 7 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.du = sub i64 %i.a, %i.dt
  %min.iters.check = icmp ult i32 %i.s, 8
  %invariant.op = add i64 %i.du, -1
  %n.vec = and i64 %wide.trip.count86, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter141 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.es, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.et, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dv = mul i64 %indvar, %i.w
  %.reass = add i64 %i.dv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <4 x float>, ptr %i.dw, align 4, !tbaa !84
  %wide.load121 = load <4 x float>, ptr %i.dx, align 4, !tbaa !84
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <4 x float> %wide.load, ptr %i.dy, align 4, !tbaa !84
  store <4 x float> %wide.load121, ptr %i.dz, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod142.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv83.prol
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !84
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store float %i.ec, ptr %i.ed, align 4, !tbaa !84
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter141
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !676

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv83
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !84
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv83
  store float %i.eh, ptr %i.ei, align 4, !tbaa !84
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !84
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store float %i.ek, ptr %i.el, align 4, !tbaa !84
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84.1
  %i.en = load float, ptr %i.em, align 4, !tbaa !84
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store float %i.en, ptr %i.eo, align 4, !tbaa !84
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next84.2
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !84
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store float %i.eq, ptr %i.er, align 4, !tbaa !84
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !677

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = add nsw i32 %.04666.us, -1
  %i.et = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.eu = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eu, label %.preheader56.us, label %._crit_edge, !llvm.loop !671

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

end_hunk_6
begin_hunk_7_@_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIdEENS1_10MorphNoVecEED0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIdEENS1_10MorphNoVecEEclEPPKhPhiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 8 uses
  %8 = alloca %"class.cv::AutoBuffer.359", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baseline12_GLOBAL__N_111MorphFilterINS1_5MaxOpIdEENS1_10MorphNoVecEEclEPPKhPhiiiiE25__cv_trace_location_fn665)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = lshr i64 %i.h, 3                         ; 6 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %sext = shl i64 %i.h, 29                        ; 2 uses
  %i.k = ashr exact i64 %sext, 32                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i64 %i.k, 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !112
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.k, 2305843009213693951
  %i.o = ashr exact i64 %sext, 29
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #27
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.q, ptr %8, align 8, !tbaa !111
  br label %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit

_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit:           ; preds = %.noexc, %bb.a
  %i.r = phi ptr [ %i.q, %.noexc ], [ %i.l, %bb.a ] ; 14 uses
  %i.s = mul i32 %6, %5                           ; 6 uses
  %i.t = icmp sgt i32 %4, 0
  br i1 %i.t, label %.preheader56.lr.ph, label %._crit_edge

.preheader56.lr.ph:                               ; preds = %_ZN2cv10AutoBufferIPKdLm136EEC2Em.exit
  %i.u = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.v = icmp sgt i32 %i.s, 0
  %i.w = sext i32 %3 to i64                       ; 5 uses
  br i1 %i.v, label %.preheader56.lr.ph.split.us, label %.preheader56.lr.ph.split

.preheader56.lr.ph.split.us:                      ; preds = %.preheader56.lr.ph
  %i.x = icmp sgt i32 %i.j, 1
  br i1 %i.x, label %.preheader56.us.us.us.preheader, label %.preheader56.lr.ph.split.us.split

.preheader56.us.us.us.preheader:                  ; preds = %.preheader56.lr.ph.split.us
  %wide.trip.count99 = and i64 %i.i, 2147483647   ; 2 uses
  %wide.trip.count109 = zext nneg i32 %i.s to i64
  %i.y = add nsw i64 %wide.trip.count99, -1       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  %unroll_iter150 = and i64 %i.i, 2147483646
  %i.aa = and i64 %i.h, 8
  %lcmp.mod148.not = icmp eq i64 %i.aa, 0
  %lcmp.mod149 = trunc i64 %i.i to i1
  %xtraiter153 = and i64 %i.y, 1
  %i.ab = icmp eq i64 %wide.trip.count99, 2
  %unroll_iter157 = and i64 %i.y, -2
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod156 = trunc i64 %i.y to i1
  br label %.preheader56.us.us.us

.preheader56.us.us.us:                            ; preds = %.preheader56.us.us.us.preheader, %._crit_edge63.split.us.us.us.us
  %.04567.us.us.us = phi ptr [ %i.cf, %._crit_edge63.split.us.us.us.us ], [ %1, %.preheader56.us.us.us.preheader ] ; 4 uses
  %.04666.us.us.us = phi i32 [ %i.cd, %._crit_edge63.split.us.us.us.us ], [ %4, %.preheader56.us.us.us.preheader ] ; 2 uses
  %.04764.us.us.us = phi ptr [ %i.ce, %._crit_edge63.split.us.us.us.us ], [ %2, %.preheader56.us.us.us.preheader ] ; 2 uses
  br i1 %i.z, label %.epil.preheader146, label %.preheader56.us.us.us.new

.preheader56.us.us.us.new:                        ; preds = %.preheader56.us.us.us, %.preheader56.us.us.us.new
  %indvars.iv96 = phi i64 [ %indvars.iv.next97.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %.preheader56.us.us.us.new ], [ 0, %.preheader56.us.us.us ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85
  %i.ai = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.aj = mul nsw i32 %i.ai, %6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96
  store ptr %i.al, ptr %i.am, align 8, !tbaa !91
  %indvars.iv.next97 = or disjoint i64 %indvars.iv96, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next97 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !85
  %i.at = load i32, ptr %i.an, align 4, !tbaa !73
  %i.au = mul nsw i32 %i.at, %6
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next97
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !91
  %indvars.iv.next97.1 = add nuw nsw i64 %indvars.iv96, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.preheader56.us.us.us.new, !llvm.loop !680

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.preheader56.us.us.us.new
  br i1 %lcmp.mod148.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader146

.epil.preheader146:                               ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.preheader56.us.us.us
  %indvars.iv96.epil.init = phi i64 [ 0, %.preheader56.us.us.us ], [ %indvars.iv.next97.1, %..preheader_crit_edge.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv96.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.04567.us.us.us, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !85
  %i.be = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.bf = mul nsw i32 %i.be, %6
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv96.epil.init
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !91
  br label %..preheader_crit_edge.us.us.us

..preheader_crit_edge.us.us.us:                   ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.epil.preheader146
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !91
  br label %.lr.ph60.us.us.us.us

.lr.ph60.us.us.us.us:                             ; preds = %._crit_edge.us.us.us.us, %..preheader_crit_edge.us.us.us
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %._crit_edge.us.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !65 ; 2 uses
  br i1 %i.ab, label %.epil.preheader152, label %.lr.ph60.us.us.us.us.new

.lr.ph60.us.us.us.us.new:                         ; preds = %.lr.ph60.us.us.us.us, %.lr.ph60.us.us.us.us.new
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %.lr.ph60.us.us.us.us.new ], [ 1, %.lr.ph60.us.us.us.us ] ; 3 uses
  %.059.us.us.us.us = phi double [ %.sroa.speculated.i.us.us.us.us.1, %.lr.ph60.us.us.us.us.new ], [ %i.bl, %.lr.ph60.us.us.us.us ] ; 2 uses
  %niter158 = phi i64 [ %niter158.next.1, %.lr.ph60.us.us.us.us.new ], [ 0, %.lr.ph60.us.us.us.us ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv106
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  %i.bq = fcmp olt double %.059.us.us.us.us, %i.bp
  %.sroa.speculated.i.us.us.us.us = select i1 %i.bq, double %i.bp, double %.059.us.us.us.us ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv106
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !65 ; 2 uses
  %i.bw = fcmp olt double %.sroa.speculated.i.us.us.us.us, %i.bv
  %.sroa.speculated.i.us.us.us.us.1 = select i1 %i.bw, double %i.bv, double %.sroa.speculated.i.us.us.us.us ; 3 uses
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %niter158.next.1 = add nuw i64 %niter158, 2     ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge.us.us.us.us.unr-lcssa, label %.lr.ph60.us.us.us.us.new, !llvm.loop !681

._crit_edge.us.us.us.us.unr-lcssa:                ; preds = %.lr.ph60.us.us.us.us.new
  br i1 %lcmp.mod154.not, label %._crit_edge.us.us.us.us, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.lr.ph60.us.us.us.us
  %indvars.iv101.epil.init = phi i64 [ 1, %.lr.ph60.us.us.us.us ], [ %indvars.iv.next102.1, %._crit_edge.us.us.us.us.unr-lcssa ]
  %.059.us.us.us.us.epil.init = phi double [ %i.bl, %.lr.ph60.us.us.us.us ], [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv101.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !91
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv106
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !65 ; 2 uses
  %i.cb = fcmp olt double %.059.us.us.us.us.epil.init, %i.ca
  %.sroa.speculated.i.us.us.us.us.epil = select i1 %i.cb, double %i.ca, double %.059.us.us.us.us.epil.init
  br label %._crit_edge.us.us.us.us

._crit_edge.us.us.us.us:                          ; preds = %._crit_edge.us.us.us.us.unr-lcssa, %.epil.preheader152
  %.sroa.speculated.i.us.us.us.us.lcssa = phi double [ %.sroa.speculated.i.us.us.us.us.1, %._crit_edge.us.us.us.us.unr-lcssa ], [ %.sroa.speculated.i.us.us.us.us.epil, %.epil.preheader152 ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us.us, i64 %indvars.iv106
  store double %.sroa.speculated.i.us.us.us.us.lcssa, ptr %i.cc, align 8, !tbaa !65
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge63.split.us.us.us.us, label %.lr.ph60.us.us.us.us, !llvm.loop !682

._crit_edge63.split.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us
  %i.cd = add nsw i32 %.04666.us.us.us, -1
  %i.ce = getelementptr inbounds i8, ptr %.04764.us.us.us, i64 %i.w
  %i.cf = getelementptr inbounds nuw i8, ptr %.04567.us.us.us, i64 8
  %i.cg = icmp sgt i32 %.04666.us.us.us, 1
  br i1 %i.cg, label %.preheader56.us.us.us, label %._crit_edge, !llvm.loop !683

.preheader56.lr.ph.split.us.split:                ; preds = %.preheader56.lr.ph.split.us
  br i1 %i.u, label %.preheader56.us.us71.preheader, label %.preheader56.lr.ph.split.us.split.split

.preheader56.us.us71.preheader:                   ; preds = %.preheader56.lr.ph.split.us.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !74
  %9 = sext i32 %.pre to i64
  %10 = load i32, ptr %i.c, align 4, !tbaa !73
  %i.ch = mul nsw i32 %10, %6
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count94 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.cj = shl nsw i64 %i.ci, 3
  %min.iters.check127 = icmp ult i32 %i.s, 4
  %n.vec129 = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  %cmp.n136 = icmp eq i64 %n.vec129, %wide.trip.count94
  %xtraiter143 = and i64 %wide.trip.count94, 3    ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %.preheader56.us.us71

.preheader56.us.us71:                             ; preds = %.preheader56.us.us71.preheader, %._crit_edge63.split.us70.us
  %indvar123 = phi i64 [ 0, %.preheader56.us.us71.preheader ], [ %indvar.next124, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04567.us.us72 = phi ptr [ %1, %.preheader56.us.us71.preheader ], [ %i.dq, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04666.us.us73 = phi i32 [ %4, %.preheader56.us.us71.preheader ], [ %i.do, %._crit_edge63.split.us70.us ] ; 2 uses
  %.04764.us.us74 = phi ptr [ %2, %.preheader56.us.us71.preheader ], [ %i.dp, %._crit_edge63.split.us70.us ] ; 7 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %.04567.us.us72, i64 %9
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.ci ; 7 uses
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.preheader56.us.us71
  %i.cn = ptrtoaddr ptr %i.cl to i64
  %i.co = mul i64 %indvar123, %i.w
  %i.cp = add i64 %i.co, %i.a
  %i.cq = add i64 %i.cj, %i.cn
  %i.cr = sub i64 %i.cq, %i.cp
  %diff.check125 = icmp ugt i64 %i.cr, -32
  br i1 %diff.check125, label %scalar.ph126.preheader, label %vector.body130

vector.body130:                                   ; preds = %vector.memcheck122, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.memcheck122 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index131 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load132 = load <2 x double>, ptr %i.cs, align 8, !tbaa !65
  %wide.load133 = load <2 x double>, ptr %i.ct, align 8, !tbaa !65
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %index131 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <2 x double> %wide.load132, ptr %i.cu, align 8, !tbaa !65
  store <2 x double> %wide.load133, ptr %i.cv, align 8, !tbaa !65
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.cw, label %middle.block135, label %vector.body130, !llvm.loop !684

middle.block135:                                  ; preds = %vector.body130
  br i1 %cmp.n136, label %._crit_edge63.split.us70.us, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %vector.memcheck122, %.preheader56.us.us71, %middle.block135
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.preheader56.us.us71 ], [ %n.vec129, %middle.block135 ] ; 3 uses
  br i1 %lcmp.mod144.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol

scalar.ph126.prol:                                ; preds = %scalar.ph126.preheader, %scalar.ph126.prol
  %indvars.iv91.prol = phi i64 [ %indvars.iv.next92.prol, %scalar.ph126.prol ], [ %indvars.iv91.ph, %scalar.ph126.preheader ] ; 3 uses
  %prol.iter145 = phi i64 [ %prol.iter145.next, %scalar.ph126.prol ], [ 0, %scalar.ph126.preheader ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv91.prol
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !65
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv91.prol
  store double %i.cy, ptr %i.cz, align 8, !tbaa !65
  %indvars.iv.next92.prol = add nuw nsw i64 %indvars.iv91.prol, 1 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol, !llvm.loop !685

scalar.ph126.prol.loopexit:                       ; preds = %scalar.ph126.prol, %scalar.ph126.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph126.preheader ], [ %indvars.iv.next92.prol, %scalar.ph126.prol ]
  %i.da = sub nsw i64 %indvars.iv91.ph, %wide.trip.count94
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge63.split.us70.us, label %scalar.ph126

scalar.ph126:                                     ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126
  %indvars.iv91 = phi i64 [ %indvars.iv.next92.3, %scalar.ph126 ], [ %indvars.iv91.unr, %scalar.ph126.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv91
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv91
  store double %i.dd, ptr %i.de, align 8, !tbaa !65
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92
  %i.dg = load double, ptr %i.df, align 8, !tbaa !65
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92
  store double %i.dg, ptr %i.dh, align 8, !tbaa !65
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92.1
  %i.dj = load double, ptr %i.di, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.1
  store double %i.dj, ptr %i.dk, align 8, !tbaa !65
  %indvars.iv.next92.2 = add nuw nsw i64 %indvars.iv91, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv.next92.2
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !65
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.04764.us.us74, i64 %indvars.iv.next92.2
  store double %i.dm, ptr %i.dn, align 8, !tbaa !65
  %indvars.iv.next92.3 = add nuw nsw i64 %indvars.iv91, 4 ; 2 uses
  %exitcond95.not.3 = icmp eq i64 %indvars.iv.next92.3, %wide.trip.count94
  br i1 %exitcond95.not.3, label %._crit_edge63.split.us70.us, label %scalar.ph126, !llvm.loop !686

._crit_edge63.split.us70.us:                      ; preds = %scalar.ph126.prol.loopexit, %scalar.ph126, %middle.block135
  %i.do = add nsw i32 %.04666.us.us73, -1
  %i.dp = getelementptr inbounds i8, ptr %.04764.us.us74, i64 %i.w
  %i.dq = getelementptr inbounds nuw i8, ptr %.04567.us.us72, i64 8
  %i.dr = icmp sgt i32 %.04666.us.us73, 1
  %indvar.next124 = add i64 %indvar123, 1
  br i1 %i.dr, label %.preheader56.us.us71, label %._crit_edge.loopexit116, !llvm.loop !683

.preheader56.lr.ph.split.us.split.split:          ; preds = %.preheader56.lr.ph.split.us.split
  %i.ds = load ptr, ptr %i.r, align 8, !tbaa !91  ; 7 uses
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %wide.trip.count86 = zext nneg i32 %i.s to i64  ; 5 uses
  %i.du = sub i64 %i.a, %i.dt
  %min.iters.check = icmp ult i32 %i.s, 4
  %invariant.op = add i64 %i.du, -1
  %n.vec = and i64 %wide.trip.count86, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count86
  %xtraiter141 = and i64 %wide.trip.count86, 3    ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br label %.preheader56.us

.preheader56.us:                                  ; preds = %._crit_edge63.split.us70, %.preheader56.lr.ph.split.us.split.split
  %indvar = phi i64 [ %indvar.next, %._crit_edge63.split.us70 ], [ 0, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04666.us = phi i32 [ %i.es, %._crit_edge63.split.us70 ], [ %4, %.preheader56.lr.ph.split.us.split.split ] ; 2 uses
  %.04764.us = phi ptr [ %i.et, %._crit_edge63.split.us70 ], [ %2, %.preheader56.lr.ph.split.us.split.split ] ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader56.us
  %i.dv = mul i64 %indvar, %i.w
  %.reass = add i64 %i.dv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load = load <2 x double>, ptr %i.dw, align 8, !tbaa !65
  %wide.load121 = load <2 x double>, ptr %i.dx, align 8, !tbaa !65
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %index ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x double> %wide.load, ptr %i.dy, align 8, !tbaa !65
  store <2 x double> %wide.load121, ptr %i.dz, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !687

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge63.split.us70, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader56.us, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader56.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod142.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv83.prol = phi i64 [ %indvars.iv.next84.prol, %scalar.ph.prol ], [ %indvars.iv83.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv83.prol
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !65
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83.prol
  store double %i.ec, ptr %i.ed, align 8, !tbaa !65
  %indvars.iv.next84.prol = add nuw nsw i64 %indvars.iv83.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter141
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !688

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %i.ee = sub nsw i64 %indvars.iv83.ph, %wide.trip.count86
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge63.split.us70, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.3, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv83
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv83
  store double %i.eh, ptr %i.ei, align 8, !tbaa !65
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !65
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84
  store double %i.ek, ptr %i.el, align 8, !tbaa !65
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84.1
  %i.en = load double, ptr %i.em, align 8, !tbaa !65
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.1
  store double %i.en, ptr %i.eo, align 8, !tbaa !65
  %indvars.iv.next84.2 = add nuw nsw i64 %indvars.iv83, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next84.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.04764.us, i64 %indvars.iv.next84.2
  store double %i.eq, ptr %i.er, align 8, !tbaa !65
  %indvars.iv.next84.3 = add nuw nsw i64 %indvars.iv83, 4 ; 2 uses
  %exitcond87.not.3 = icmp eq i64 %indvars.iv.next84.3, %wide.trip.count86
  br i1 %exitcond87.not.3, label %._crit_edge63.split.us70, label %scalar.ph, !llvm.loop !689

._crit_edge63.split.us70:                         ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.es = add nsw i32 %.04666.us, -1
  %i.et = getelementptr inbounds i8, ptr %.04764.us, i64 %i.w
  %i.eu = icmp sgt i32 %.04666.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.eu, label %.preheader56.us, label %._crit_edge, !llvm.loop !683

.preheader56.lr.ph.split:                         ; preds = %.preheader56.lr.ph
  br i1 %i.u, label %.preheader56.preheader, label %._crit_edge

end_hunk_7
