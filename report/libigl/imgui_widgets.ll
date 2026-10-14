Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN19ImGuiInputTextState12OnKeyPressedEi:bb.a
bb.k:                                             ; preds = %.backedge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 3690 ; 3 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !286 ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = sext i16 %i.al to i64
  %i.ao = getelementptr [16 x i8], ptr %i.aj, i64 %i.an ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -16
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ap, align 4, !tbaa !188 ; 5 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr i8, ptr %i.ao, i64 -12
  %.sroa.8.0.copyload.i.i = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !188 ; 5 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr i8, ptr %i.ao, i64 -8
  %.sroa.13.0.copyload.i.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !tbaa !188 ; 12 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr i8, ptr %i.ao, i64 -4
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !188
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3692 ; 4 uses
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !287 ; 2 uses
  %i.as = sext i16 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.aj, i64 %i.as ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -16
  %i.av = getelementptr i8, ptr %i.at, i64 -4
  store i32 -1, ptr %i.av, align 8, !tbaa !289
  %i.aw = getelementptr i8, ptr %i.at, i64 -12    ; 2 uses
  store i32 %.sroa.13.0.copyload.i.i, ptr %i.aw, align 8, !tbaa !290
  %i.ax = getelementptr i8, ptr %i.at, i64 -8
  store i32 %.sroa.8.0.copyload.i.i, ptr %i.ax, align 4, !tbaa !291
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.au, align 4, !tbaa !292
  %.not.i392.i = icmp eq i32 %.sroa.13.0.copyload.i.i, 0
  br i1 %.not.i392.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !293 ; 2 uses
  %i.ba = add nsw i32 %i.az, %.sroa.13.0.copyload.i.i ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 998
  br i1 %i.bb, label %bb.n, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3700 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !294 ; 3 uses
  %.not5461.i.i = icmp sgt i32 %i.ba, %i.bd
  br i1 %.not5461.i.i, label %.lr.ph.i399.i, label %._crit_edge.i.i

.lr.ph.i399.i:                                    ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1692
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aw, align 8, !tbaa !290
  br label %.loopexit.i.i

bb.o:                                             ; preds = %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i, %.lr.ph.i399.i
  %i.bh = phi i32 [ %i.bd, %.lr.ph.i399.i ], [ %i.da, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ] ; 2 uses
  %i.bi = phi i32 [ %i.az, %.lr.ph.i399.i ], [ %i.db, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ]
  %i.bj = phi i16 [ %i.ar, %.lr.ph.i399.i ], [ %i.dc, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ] ; 4 uses
  %i.bk = icmp eq i16 %i.bj, 99
  br i1 %i.bk, label %_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp slt i16 %i.bj, 99
  br i1 %i.bl, label %bb.q, label %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.bm = load i32, ptr %i.be, align 8, !tbaa !289
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %.loopexit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !290 ; 5 uses
  %i.bp = add nsw i32 %i.bo, %i.bh                ; 3 uses
  store i32 %i.bp, ptr %i.bc, align 4, !tbaa !294
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.bq ; 2 uses
  %i.bs = sext i32 %i.bo to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.bt
  %i.bv = sub nsw i32 999, %i.bp
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.br, ptr nonnull align 2 %i.bu, i64 %i.bx, i1 false)
  %i.by = load i16, ptr %i.aq, align 4, !tbaa !287 ; 7 uses
  %i.bz = icmp slt i16 %i.by, 98
  br i1 %i.bz, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.r
  %i.ca = sext i16 %i.by to i64                   ; 3 uses
  %i.cb = and i16 %i.by, 1
  %lcmp.mod421.not = icmp eq i16 %i.cb, 0
  br i1 %lcmp.mod421.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !289 ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.s, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa

bb.s:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.cg = add nsw i32 %i.ce, %i.bo
  store i32 %i.cg, ptr %i.cd, align 8, !tbaa !289
  br label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.s, %.lr.ph.i.i.i.prol
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.ca, 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.unr = phi i64 [ %i.ca, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.ch = icmp eq i16 %i.by, 97
  br i1 %i.ch, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.v
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.v ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !289 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %bb.t, label %.lr.ph.i.i.i.1

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = add nsw i32 %i.ck, %i.bo
  store i32 %i.cm, ptr %i.cj, align 8, !tbaa !289
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.t, %.lr.ph.i.i.i
  %i.cn = getelementptr [16 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  %i.co = getelementptr i8, ptr %i.cn, i64 28     ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !289 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, -1
  br i1 %i.cq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.1
  %i.cr = add nsw i32 %i.cp, %i.bo
  store i32 %i.cr, ptr %i.co, align 8, !tbaa !289
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 98
  br i1 %exitcond.not.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !503

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.v, %bb.r, %bb.q
  %i.cs = phi i16 [ %i.bj, %bb.q ], [ %i.by, %bb.r ], [ %i.by, %bb.v ], [ %i.by, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ct = sext i16 %i.cs to i64                   ; 2 uses
  %i.cu = shl nsw i64 %i.ct, 4
  %i.cv = sub nsw i64 1568, %i.cu
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ct ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cx, ptr nonnull align 4 %i.cw, i64 %i.cv, i1 false)
  %i.cy = load i16, ptr %i.aq, align 4, !tbaa !287
  %i.cz = add i16 %i.cy, 1                        ; 2 uses
  store i16 %i.cz, ptr %i.aq, align 4, !tbaa !287
  %.pre.i.i = load i32, ptr %i.ay, align 8, !tbaa !293
  %.pre67.i.i = load i32, ptr %i.bc, align 4, !tbaa !294
  br label %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i

_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.p
  %i.da = phi i32 [ %i.bh, %bb.p ], [ %.pre67.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.db = phi i32 [ %i.bi, %bb.p ], [ %.pre.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.dc = phi i16 [ %i.bj, %bb.p ], [ %i.cz, %.loopexit.i.i.i ] ; 2 uses
  %i.dd = add nsw i32 %i.db, %.sroa.13.0.copyload.i.i
  %.not54.i.i = icmp sgt i32 %i.dd, %i.da
  br i1 %.not54.i.i, label %bb.o, label %._crit_edge.loopexit.i.i, !llvm.loop !504

._crit_edge.loopexit.i.i:                         ; preds = %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i
  %.pre68.i.i = sext i16 %i.dc to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %.pre68.i.i, %._crit_edge.loopexit.i.i ], [ %i.as, %.preheader.i.i ]
  %.lcssa57.i.i = phi i32 [ %i.da, %._crit_edge.loopexit.i.i ], [ %i.bd, %.preheader.i.i ] ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %i.aj, i64 %.pre-phi.i.i
  %i.df = sub nsw i32 %.lcssa57.i.i, %.sroa.13.0.copyload.i.i ; 3 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 -4
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !289
  store i32 %i.df, ptr %i.bc, align 4, !tbaa !294
  %i.dh = icmp sgt i32 %.sroa.13.0.copyload.i.i, 0
  br i1 %i.dh, label %iter.check364, label %.loopexit.i.i

iter.check364:                                    ; preds = %._crit_edge.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i393.i = load ptr, ptr %i.di, align 8, !tbaa !246 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.dk = sext i32 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.dl = sext i32 %i.df to i64
  %wide.trip.count.i.i = zext nneg i32 %.sroa.13.0.copyload.i.i to i64 ; 8 uses
  %invariant.gep.i394.i = getelementptr [2 x i8], ptr %.val.i393.i, i64 %i.dk ; 7 uses
  %invariant.gep80.i.i = getelementptr [2 x i8], ptr %i.dj, i64 %i.dl ; 7 uses
  %min.iters.check351 = icmp ult i32 %.sroa.13.0.copyload.i.i, 4
  br i1 %min.iters.check351, label %vec.epilog.scalar.ph365.preheader, label %vector.memcheck348

vector.memcheck348:                               ; preds = %iter.check364
  %.val.i393.i349 = ptrtoaddr ptr %.val.i393.i to i64
  %i.dm = sext i32 %.lcssa57.i.i to i64
  %i.dn = shl nsw i64 %i.dm, 1
  %i.do = shl nsw i64 %i.dk, 1
  %i.dp = shl nuw i32 %.sroa.13.0.copyload.i.i, 1
  %i.dq = zext i32 %i.dp to i64
  %4 = add i64 %i.dn, %i.a
  %5 = add i64 %i.do, %.val.i393.i349
  %i.dr = add i64 %5, %i.dq
  %i.ds = sub i64 %4, %i.dr
  %i.dt = add i64 %i.ds, 1691
  %diff.check350 = icmp ult i64 %i.dt, 31
  br i1 %diff.check350, label %vec.epilog.scalar.ph365.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck348
  %min.iters.check353 = icmp ult i32 %.sroa.13.0.copyload.i.i, 16
  br i1 %min.iters.check353, label %vec.epilog.ph368, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.du = and i64 %wide.trip.count.i.i, 12
  %n.vec355 = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next360, %vector.body356 ] ; 3 uses
  %i.dv = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %index357 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load358 = load <8 x i16>, ptr %i.dv, align 2, !tbaa !220
  %wide.load359 = load <8 x i16>, ptr %i.dw, align 2, !tbaa !220
  %i.dx = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %index357 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  store <8 x i16> %wide.load358, ptr %i.dx, align 2, !tbaa !220
  store <8 x i16> %wide.load359, ptr %i.dy, align 2, !tbaa !220
  %index.next360 = add nuw i64 %index357, 16      ; 2 uses
  %i.dz = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.dz, label %middle.block361, label %vector.body356, !llvm.loop !505

middle.block361:                                  ; preds = %vector.body356
  %cmp.n362 = icmp eq i64 %n.vec355, %wide.trip.count.i.i
  br i1 %cmp.n362, label %.loopexit.i.i, label %vec.epilog.iter.check366

vec.epilog.iter.check366:                         ; preds = %middle.block361
  %min.epilog.iters.check367 = icmp eq i64 %i.du, 0
  br i1 %min.epilog.iters.check367, label %vec.epilog.scalar.ph365.preheader, label %vec.epilog.ph368, !prof !268

vec.epilog.ph368:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check366
  %vec.epilog.resume.val363 = phi i64 [ %n.vec355, %vec.epilog.iter.check366 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec369 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body370

vec.epilog.vector.body370:                        ; preds = %vec.epilog.vector.body370, %vec.epilog.ph368
  %index371 = phi i64 [ %vec.epilog.resume.val363, %vec.epilog.ph368 ], [ %index.next373, %vec.epilog.vector.body370 ] ; 3 uses
  %i.ea = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %index371
  %wide.load372 = load <4 x i16>, ptr %i.ea, align 2, !tbaa !220
  %i.eb = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %index371
  store <4 x i16> %wide.load372, ptr %i.eb, align 2, !tbaa !220
  %index.next373 = add nuw i64 %index371, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next373, %n.vec369
  br i1 %i.ec, label %vec.epilog.middle.block374, label %vec.epilog.vector.body370, !llvm.loop !506

vec.epilog.middle.block374:                       ; preds = %vec.epilog.vector.body370
  %cmp.n375 = icmp eq i64 %n.vec369, %wide.trip.count.i.i
  br i1 %cmp.n375, label %.loopexit.i.i, label %vec.epilog.scalar.ph365.preheader

vec.epilog.scalar.ph365.preheader:                ; preds = %iter.check364, %vector.memcheck348, %vec.epilog.iter.check366, %vec.epilog.middle.block374
  %indvars.iv.i395.i.ph = phi i64 [ 0, %iter.check364 ], [ 0, %vector.memcheck348 ], [ %n.vec355, %vec.epilog.iter.check366 ], [ %n.vec369, %vec.epilog.middle.block374 ] ; 3 uses
  %xtraiter423 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod424.not = icmp eq i64 %xtraiter423, 0
  br i1 %lcmp.mod424.not, label %vec.epilog.scalar.ph365.prol.loopexit, label %vec.epilog.scalar.ph365.prol

vec.epilog.scalar.ph365.prol:                     ; preds = %vec.epilog.scalar.ph365.preheader, %vec.epilog.scalar.ph365.prol
  %indvars.iv.i395.i.prol = phi i64 [ %indvars.iv.next.i397.i.prol, %vec.epilog.scalar.ph365.prol ], [ %indvars.iv.i395.i.ph, %vec.epilog.scalar.ph365.preheader ] ; 3 uses
  %prol.iter425 = phi i64 [ %prol.iter425.next, %vec.epilog.scalar.ph365.prol ], [ 0, %vec.epilog.scalar.ph365.preheader ]
  %gep.i396.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.i395.i.prol
  %i.ed = load i16, ptr %gep.i396.i.prol, align 2, !tbaa !220
  %gep81.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %indvars.iv.i395.i.prol
  store i16 %i.ed, ptr %gep81.i.i.prol, align 2, !tbaa !220
  %indvars.iv.next.i397.i.prol = add nuw nsw i64 %indvars.iv.i395.i.prol, 1 ; 2 uses
  %prol.iter425.next = add i64 %prol.iter425, 1   ; 2 uses
  %prol.iter425.cmp.not = icmp eq i64 %prol.iter425.next, %xtraiter423
  br i1 %prol.iter425.cmp.not, label %vec.epilog.scalar.ph365.prol.loopexit, label %vec.epilog.scalar.ph365.prol, !llvm.loop !507

vec.epilog.scalar.ph365.prol.loopexit:            ; preds = %vec.epilog.scalar.ph365.prol, %vec.epilog.scalar.ph365.preheader
  %indvars.iv.i395.i.unr = phi i64 [ %indvars.iv.i395.i.ph, %vec.epilog.scalar.ph365.preheader ], [ %indvars.iv.next.i397.i.prol, %vec.epilog.scalar.ph365.prol ]
  %i.ee = sub nsw i64 %indvars.iv.i395.i.ph, %wide.trip.count.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %.loopexit.i.i, label %vec.epilog.scalar.ph365

vec.epilog.scalar.ph365:                          ; preds = %vec.epilog.scalar.ph365.prol.loopexit, %vec.epilog.scalar.ph365
  %indvars.iv.i395.i = phi i64 [ %indvars.iv.next.i397.i.3, %vec.epilog.scalar.ph365 ], [ %indvars.iv.i395.i.unr, %vec.epilog.scalar.ph365.prol.loopexit ] ; 6 uses
  %gep.i396.i = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.i395.i
  %i.eg = load i16, ptr %gep.i396.i, align 2, !tbaa !220
  %gep81.i.i = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %indvars.iv.i395.i
  store i16 %i.eg, ptr %gep81.i.i, align 2, !tbaa !220
  %indvars.iv.next.i397.i = add nuw nsw i64 %indvars.iv.i395.i, 1 ; 2 uses
  %gep.i396.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.next.i397.i
  %i.eh = load i16, ptr %gep.i396.i.1, align 2, !tbaa !220
  %gep81.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %indvars.iv.next.i397.i
  store i16 %i.eh, ptr %gep81.i.i.1, align 2, !tbaa !220
  %indvars.iv.next.i397.i.1 = add nuw nsw i64 %indvars.iv.i395.i, 2 ; 2 uses
  %gep.i396.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.next.i397.i.1
  %i.ei = load i16, ptr %gep.i396.i.2, align 2, !tbaa !220
  %gep81.i.i.2 = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %indvars.iv.next.i397.i.1
  store i16 %i.ei, ptr %gep81.i.i.2, align 2, !tbaa !220
  %indvars.iv.next.i397.i.2 = add nuw nsw i64 %indvars.iv.i395.i, 3 ; 2 uses
  %gep.i396.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i394.i, i64 %indvars.iv.next.i397.i.2
  %i.ej = load i16, ptr %gep.i396.i.3, align 2, !tbaa !220
  %gep81.i.i.3 = getelementptr [2 x i8], ptr %invariant.gep80.i.i, i64 %indvars.iv.next.i397.i.2
  store i16 %i.ej, ptr %gep81.i.i.3, align 2, !tbaa !220
  %indvars.iv.next.i397.i.3 = add nuw nsw i64 %indvars.iv.i395.i, 4 ; 2 uses
  %exitcond.not.i398.i.3 = icmp eq i64 %indvars.iv.next.i397.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i398.i.3, label %.loopexit.i.i, label %vec.epilog.scalar.ph365, !llvm.loop !508

.loopexit.i.i:                                    ; preds = %vec.epilog.scalar.ph365.prol.loopexit, %vec.epilog.scalar.ph365, %middle.block361, %vec.epilog.middle.block374, %._crit_edge.i.i, %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !248
  %i.em = sext i32 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.en = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.em ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 1, ptr %i.eo, align 2, !tbaa !262
  %i.ep = sext i32 %.sroa.13.0.copyload.i.i to i64 ; 2 uses
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.ep
  %i.er = tail call noundef i32 @_Z27ImTextCountUtf8BytesFromStrPKtS0_(ptr noundef %i.en, ptr noundef nonnull %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !250
  %i.eu = sub nsw i32 %i.et, %i.er
  store i32 %i.eu, ptr %i.es, align 8, !tbaa !250
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !249
  %i.ex = sub nsw i32 %i.ew, %.sroa.13.0.copyload.i.i
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !249
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !248
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.em
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ez, i64 %i.ep ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !220 ; 2 uses
  %.not23.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not23.i.i.i, label %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i.i, label %.lr.ph.i56.i.i

.lr.ph.i56.i.i:                                   ; preds = %.loopexit.i.i, %.lr.ph.i56.i.i
  %i.fc = phi i16 [ %i.ff, %.lr.ph.i56.i.i ], [ %i.fb, %.loopexit.i.i ]
  %.01725.i.i.i = phi ptr [ %i.fd, %.lr.ph.i56.i.i ], [ %i.fa, %.loopexit.i.i ]
  %.01824.i.i.i = phi ptr [ %i.fe, %.lr.ph.i56.i.i ], [ %i.en, %.loopexit.i.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.01725.i.i.i, i64 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01824.i.i.i, i64 2 ; 2 uses
  store i16 %i.fc, ptr %.01824.i.i.i, align 2, !tbaa !220
  %i.ff = load i16, ptr %i.fd, align 2, !tbaa !220 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ff, 0
  br i1 %.not.i.i.i, label %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i.i, label %.lr.ph.i56.i.i

_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i.i: ; preds = %.lr.ph.i56.i.i, %.loopexit.i.i
  %.018.lcssa.i.i.i = phi ptr [ %i.en, %.loopexit.i.i ], [ %i.fe, %.lr.ph.i56.i.i ]
  store i16 0, ptr %.018.lcssa.i.i.i, align 2, !tbaa !220
  br label %bb.w

bb.w:                                             ; preds = %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i.i, %bb.l
  %.not55.i.i = icmp eq i32 %.sroa.8.0.copyload.i.i, 0
  br i1 %.not55.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.fh = sext i32 %.sroa.21.0.copyload.i.i to i64
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = tail call fastcc noundef zeroext i1 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKti(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.copyload.i.i, ptr noundef nonnull %i.fi, i32 noundef %.sroa.8.0.copyload.i.i) ; 0 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !293
  %i.fm = sub nsw i32 %i.fl, %.sroa.8.0.copyload.i.i
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !293
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fn = add nsw i32 %.sroa.8.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  store i32 %i.fn, ptr %i.c, align 4, !tbaa !253
  %i.fo = load <2 x i16>, ptr %i.ak, align 2, !tbaa !220
  %i.fp = add <2 x i16> %i.fo, splat (i16 -1)
  store <2 x i16> %i.fp, ptr %i.ak, align 2, !tbaa !220
  br label %_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i: ; preds = %bb.o, %bb.y, %bb.k
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.fq, align 2, !tbaa !254
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.z:                                             ; preds = %.backedge.i
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 3692
  %i.fs = load i16, ptr %i.fr, align 4, !tbaa !287 ; 2 uses
  %i.ft = icmp eq i16 %i.fs, 99
  br i1 %i.ft, label %_ZN5ImStbL13stb_text_redoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 3690 ; 3 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !286
  %i.fx = sext i16 %i.fw to i64
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %i.fx ; 4 uses
  %i.fz = sext i16 %i.fs to i64
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %i.fz ; 4 uses
  %.sroa.0.0.copyload.i400.i = load i32, ptr %i.ga, align 4, !tbaa !188 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !188 ; 5 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i, align 4, !tbaa !188 ; 9 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %.sroa.15.0.copyload.i.i = load i32, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !tbaa !188
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  store i32 %.sroa.7.0.copyload.i.i, ptr %i.gb, align 4, !tbaa !291
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  store i32 %.sroa.12.0.copyload.i.i, ptr %i.gc, align 8, !tbaa !290
  store i32 %.sroa.0.0.copyload.i400.i, ptr %i.fy, align 4, !tbaa !292
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12 ; 2 uses
  store i32 -1, ptr %i.gd, align 8, !tbaa !289
  %.not.i401.i = icmp eq i32 %.sroa.12.0.copyload.i.i, 0
  br i1 %.not.i401.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3696 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !293 ; 3 uses
  %i.gg = add nsw i32 %i.gf, %.sroa.12.0.copyload.i.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !294
  %i.gj = icmp sgt i32 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.gc, align 8, !tbaa !290
  store i32 0, ptr %i.gb, align 4, !tbaa !291
  br label %.loopexit.i402.i

bb.ad:                                            ; preds = %bb.ab
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !289
  store i32 %i.gg, ptr %i.ge, align 8, !tbaa !293
  %i.gk = icmp sgt i32 %.sroa.12.0.copyload.i.i, 0
  br i1 %i.gk, label %iter.check, label %.loopexit.i402.i

iter.check:                                       ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i411.i = load ptr, ptr %i.gl, align 8, !tbaa !246 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.gn = sext i32 %.sroa.0.0.copyload.i400.i to i64 ; 2 uses
  %i.go = sext i32 %i.gf to i64                   ; 2 uses
  %wide.trip.count.i412.i = zext nneg i32 %.sroa.12.0.copyload.i.i to i64 ; 8 uses
  %invariant.gep.i413.i = getelementptr [2 x i8], ptr %.val.i411.i, i64 %i.gn ; 7 uses
  %invariant.gep50.i.i = getelementptr [2 x i8], ptr %i.gm, i64 %i.go ; 7 uses
  %min.iters.check = icmp ult i32 %.sroa.12.0.copyload.i.i, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.val.i411.i340 = ptrtoaddr ptr %.val.i411.i to i64
  %i.gp = shl nsw i64 %i.go, 1
  %6 = shl nsw i64 %i.gn, 1
  %7 = add i64 %i.gp, %i.a
  %i.gq = add i64 %6, %.val.i411.i340
  %i.gr = sub i64 %7, %i.gq
  %i.gs = add i64 %i.gr, 1691
  %diff.check = icmp ult i64 %i.gs, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check341 = icmp ult i32 %.sroa.12.0.copyload.i.i, 16
  br i1 %min.iters.check341, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gt = and i64 %wide.trip.count.i412.i, 12
  %n.vec = and i64 %wide.trip.count.i412.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gu = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %index ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load = load <8 x i16>, ptr %i.gu, align 2, !tbaa !220
  %wide.load342 = load <8 x i16>, ptr %i.gv, align 2, !tbaa !220
  %i.gw = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %index ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 16
  store <8 x i16> %wide.load, ptr %i.gw, align 2, !tbaa !220
  store <8 x i16> %wide.load342, ptr %i.gx, align 2, !tbaa !220
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !509

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i412.i
  br i1 %cmp.n, label %.loopexit.i402.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gt, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !268

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec343 = and i64 %wide.trip.count.i412.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index344 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next346, %vec.epilog.vector.body ] ; 3 uses
  %i.gz = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %index344
  %wide.load345 = load <4 x i16>, ptr %i.gz, align 2, !tbaa !220
  %i.ha = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %index344
  store <4 x i16> %wide.load345, ptr %i.ha, align 2, !tbaa !220
  %index.next346 = add nuw i64 %index344, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next346, %n.vec343
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !510

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n347 = icmp eq i64 %n.vec343, %wide.trip.count.i412.i
  br i1 %cmp.n347, label %.loopexit.i402.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i414.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec343, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i412.i, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i414.i.prol = phi i64 [ %indvars.iv.next.i416.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i414.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i415.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %indvars.iv.i414.i.prol
  %i.hc = load i16, ptr %gep.i415.i.prol, align 2, !tbaa !220
  %gep51.i.i.prol = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %indvars.iv.i414.i.prol
  store i16 %i.hc, ptr %gep51.i.i.prol, align 2, !tbaa !220
  %indvars.iv.next.i416.i.prol = add nuw nsw i64 %indvars.iv.i414.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !511

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i414.i.unr = phi i64 [ %indvars.iv.i414.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i416.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv.i414.i.ph, %wide.trip.count.i412.i
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %.loopexit.i402.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i414.i = phi i64 [ %indvars.iv.next.i416.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i414.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i415.i = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %indvars.iv.i414.i
  %i.hf = load i16, ptr %gep.i415.i, align 2, !tbaa !220
  %gep51.i.i = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %indvars.iv.i414.i
  store i16 %i.hf, ptr %gep51.i.i, align 2, !tbaa !220
  %indvars.iv.next.i416.i = add nuw nsw i64 %indvars.iv.i414.i, 1 ; 2 uses
  %gep.i415.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %indvars.iv.next.i416.i
  %i.hg = load i16, ptr %gep.i415.i.1, align 2, !tbaa !220
  %gep51.i.i.1 = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %indvars.iv.next.i416.i
  store i16 %i.hg, ptr %gep51.i.i.1, align 2, !tbaa !220
  %indvars.iv.next.i416.i.1 = add nuw nsw i64 %indvars.iv.i414.i, 2 ; 2 uses
  %gep.i415.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %indvars.iv.next.i416.i.1
  %i.hh = load i16, ptr %gep.i415.i.2, align 2, !tbaa !220
  %gep51.i.i.2 = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %indvars.iv.next.i416.i.1
  store i16 %i.hh, ptr %gep51.i.i.2, align 2, !tbaa !220
  %indvars.iv.next.i416.i.2 = add nuw nsw i64 %indvars.iv.i414.i, 3 ; 2 uses
  %gep.i415.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i413.i, i64 %indvars.iv.next.i416.i.2
  %i.hi = load i16, ptr %gep.i415.i.3, align 2, !tbaa !220
  %gep51.i.i.3 = getelementptr [2 x i8], ptr %invariant.gep50.i.i, i64 %indvars.iv.next.i416.i.2
  store i16 %i.hi, ptr %gep51.i.i.3, align 2, !tbaa !220
  %indvars.iv.next.i416.i.3 = add nuw nsw i64 %indvars.iv.i414.i, 4 ; 2 uses
  %exitcond.not.i417.i.3 = icmp eq i64 %indvars.iv.next.i416.i.3, %wide.trip.count.i412.i
  br i1 %exitcond.not.i417.i.3, label %.loopexit.i402.i, label %vec.epilog.scalar.ph, !llvm.loop !512

.loopexit.i402.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.ad, %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !248
  %i.hl = sext i32 %.sroa.0.0.copyload.i400.i to i64 ; 2 uses
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.hl ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 3710
  store i8 1, ptr %i.hn, align 2, !tbaa !262
  %i.ho = sext i32 %.sroa.12.0.copyload.i.i to i64 ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = tail call noundef i32 @_Z27ImTextCountUtf8BytesFromStrPKtS0_(ptr noundef %i.hm, ptr noundef nonnull %i.hp)
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !250
  %i.ht = sub nsw i32 %i.hs, %i.hq
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !250
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !249
  %i.hw = sub nsw i32 %i.hv, %.sroa.12.0.copyload.i.i
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !249
  %i.hx = load ptr, ptr %i.hj, align 8, !tbaa !248
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.hx, i64 %i.hl
  %i.hz = getelementptr inbounds [2 x i8], ptr %i.hy, i64 %i.ho ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !220 ; 2 uses
  %.not23.i.i403.i = icmp eq i16 %i.ia, 0
  br i1 %.not23.i.i403.i, label %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i408.i, label %.lr.ph.i.i404.i

.lr.ph.i.i404.i:                                  ; preds = %.loopexit.i402.i, %.lr.ph.i.i404.i
  %i.ib = phi i16 [ %i.ie, %.lr.ph.i.i404.i ], [ %i.ia, %.loopexit.i402.i ]
  %.01725.i.i405.i = phi ptr [ %i.ic, %.lr.ph.i.i404.i ], [ %i.hz, %.loopexit.i402.i ]
  %.01824.i.i406.i = phi ptr [ %i.id, %.lr.ph.i.i404.i ], [ %i.hm, %.loopexit.i402.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01725.i.i405.i, i64 2 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.01824.i.i406.i, i64 2 ; 2 uses
  store i16 %i.ib, ptr %.01824.i.i406.i, align 2, !tbaa !220
  %i.ie = load i16, ptr %i.ic, align 2, !tbaa !220 ; 2 uses
  %.not.i.i407.i = icmp eq i16 %i.ie, 0
  br i1 %.not.i.i407.i, label %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i408.i, label %.lr.ph.i.i404.i

_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i408.i: ; preds = %.lr.ph.i.i404.i, %.loopexit.i402.i
  %.018.lcssa.i.i409.i = phi ptr [ %i.hm, %.loopexit.i402.i ], [ %i.id, %.lr.ph.i.i404.i ]
  store i16 0, ptr %.018.lcssa.i.i409.i, align 2, !tbaa !220
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5ImStbL24STB_TEXTEDIT_DELETECHARSEP19ImGuiInputTextStateii.exit.i408.i, %bb.aa
  %.not44.i.i = icmp eq i32 %.sroa.7.0.copyload.i.i, 0
  br i1 %.not44.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 1692
  %i.ig = sext i32 %.sroa.15.0.copyload.i.i to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.ig
  %i.ii = tail call fastcc noundef zeroext i1 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKti(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.copyload.i400.i, ptr noundef nonnull %i.ih, i32 noundef %.sroa.7.0.copyload.i.i) ; 0 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 3700 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !294
  %i.il = add nsw i32 %i.ik, %.sroa.7.0.copyload.i.i
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !294
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.im = add nsw i32 %.sroa.7.0.copyload.i.i, %.sroa.0.0.copyload.i400.i
  store i32 %i.im, ptr %i.c, align 4, !tbaa !253
  %i.in = load <2 x i16>, ptr %i.fv, align 2, !tbaa !220
  %i.io = add <2 x i16> %i.in, splat (i16 1)
  store <2 x i16> %i.io, ptr %i.fv, align 2, !tbaa !220
  br label %_ZN5ImStbL13stb_text_redoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL13stb_text_redoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i: ; preds = %bb.ag, %bb.z
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 0, ptr %i.ip, align 2, !tbaa !254
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.ah:                                            ; preds = %.backedge.i
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !251 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !252 ; 4 uses
  %.not353.i = icmp eq i32 %i.ir, %i.it
  br i1 %.not353.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iu = icmp slt i32 %i.it, %i.ir
  br i1 %i.iu, label %bb.aj, label %_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit.i

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.it, ptr %i.iq, align 8, !tbaa !251
  br label %_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit.i: ; preds = %bb.aj, %bb.ai
  %i.iv = phi i32 [ %i.ir, %bb.ai ], [ %i.it, %bb.aj ] ; 2 uses
  store i32 %i.iv, ptr %i.c, align 4, !tbaa !253
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !252
  br label %bb.am

bb.ak:                                            ; preds = %bb.ah
  %i.iw = load i32, ptr %i.c, align 4, !tbaa !253 ; 2 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
end_hunk_0
