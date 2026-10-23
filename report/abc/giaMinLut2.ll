Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMinLut2?download=true
inline.NumInlined: 405
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Abc_TtSimpleMin_rec:bb.a
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i196.2
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !26
  %i.dd = or i64 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0.i190, i64 %indvars.iv.next.i196.2
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !26
  %indvars.iv.next.i196.3 = add nuw nsw i64 %indvars.iv.i195, 4 ; 2 uses
  %exitcond.not.i197.3 = icmp eq i64 %indvars.iv.next.i196.3, %wide.trip.count.i193
  br i1 %exitcond.not.i197.3, label %.lr.ph18.preheader.i, label %.lr.ph.i194, !llvm.loop !167

.lr.ph18.preheader.i:                             ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194, %middle.block454
  %i.df = tail call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.0.i190, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 13 uses
  %i.dg = ptrtoaddr ptr %i.df to i64              ; 2 uses
  %min.iters.check460 = icmp ult i32 %i.ak, 8
  %i.dh = sub i64 %i.dg, %.0.i368
  %diff.check462 = icmp ugt i64 %i.dh, -32
  %or.cond = select i1 %min.iters.check460, i1 true, i1 %diff.check462
  br i1 %or.cond, label %.lr.ph18.i.preheader, label %vector.ph463

vector.ph463:                                     ; preds = %.lr.ph18.preheader.i
  %n.vec464 = and i64 %wide.trip.count.i193, 2147483644 ; 3 uses
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next469, %vector.body465 ] ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index466 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load467 = load <2 x i64>, ptr %i.di, align 8, !tbaa !26
  %wide.load468 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !26
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index466 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <2 x i64> %wide.load467, ptr %i.dk, align 8, !tbaa !26
  store <2 x i64> %wide.load468, ptr %i.dl, align 8, !tbaa !26
  %index.next469 = add nuw i64 %index466, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next469, %n.vec464
  br i1 %i.dm, label %middle.block470, label %vector.body465, !llvm.loop !168

middle.block470:                                  ; preds = %vector.body465
  %cmp.n471 = icmp eq i64 %n.vec464, %wide.trip.count.i193
  br i1 %cmp.n471, label %.lr.ph18.preheader.i198, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block470
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec464, %middle.block470 ] ; 3 uses
  %xtraiter516 = and i64 %wide.trip.count.i193, 3 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ] ; 3 uses
  %prol.iter518 = phi i64 [ %prol.iter518.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv21.i.prol
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !26
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i.prol
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !26
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter518.next = add i64 %prol.iter518, 1   ; 2 uses
  %prol.iter518.cmp.not = icmp eq i64 %prol.iter518.next, %xtraiter516
  br i1 %prol.iter518.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !169

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.dq = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count.i193
  %i.dr = icmp ugt i64 %i.dq, -4
  br i1 %i.dr, label %.lr.ph18.preheader.i198, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv21.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !26
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !26
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i.1
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.1
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !26
  %indvars.iv.next22.i.2 = add nuw nsw i64 %indvars.iv21.i, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i.2
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.2
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !26
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %exitcond25.not.i.3 = icmp eq i64 %indvars.iv.next22.i.3, %wide.trip.count.i193
  br i1 %exitcond25.not.i.3, label %.lr.ph18.preheader.i198, label %.lr.ph18.i, !llvm.loop !170

Abc_TtCopy.exit:                                  ; preds = %.loopexit305, %Vec_WrdFetch.exit191
  %.0.i190281.ph = phi ptr [ %.0.i190, %Vec_WrdFetch.exit191 ], [ null, %.loopexit305 ]
  %i.ee = tail call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %.0.i190281.ph, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 0 uses
  br label %Abc_TtClear.exit

.lr.ph18.preheader.i198:                          ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i, %middle.block470
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.bj ; 6 uses
  %min.iters.check476 = icmp ult i32 %i.ak, 14
  br i1 %min.iters.check476, label %.lr.ph18.i200.preheader, label %vector.memcheck477

vector.memcheck477:                               ; preds = %.lr.ph18.preheader.i198
  %i.eg = shl nuw nsw i64 %i.bj, 3
  %i.eh = add i64 %i.eg, %.0.i368
  %i.ei = sub i64 %i.dg, %i.eh
  %diff.check478 = icmp ugt i64 %i.ei, -32
  br i1 %diff.check478, label %.lr.ph18.i200.preheader, label %vector.ph479

vector.ph479:                                     ; preds = %vector.memcheck477
  %n.vec480 = and i64 %wide.trip.count.i193, 2147483644 ; 3 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph479
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next485, %vector.body481 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %index482 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load483 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !26
  %wide.load484 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index482 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x i64> %wide.load483, ptr %i.el, align 8, !tbaa !26
  store <2 x i64> %wide.load484, ptr %i.em, align 8, !tbaa !26
  %index.next485 = add nuw i64 %index482, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.en, label %middle.block486, label %vector.body481, !llvm.loop !171

middle.block486:                                  ; preds = %vector.body481
  %cmp.n487 = icmp eq i64 %n.vec480, %wide.trip.count.i193
  br i1 %cmp.n487, label %Abc_TtClear.exit, label %.lr.ph18.i200.preheader

.lr.ph18.i200.preheader:                          ; preds = %vector.memcheck477, %.lr.ph18.preheader.i198, %middle.block486
  %indvars.iv21.i201.ph = phi i64 [ 0, %vector.memcheck477 ], [ 0, %.lr.ph18.preheader.i198 ], [ %n.vec480, %middle.block486 ] ; 3 uses
  %xtraiter519 = and i64 %wide.trip.count.i193, 3 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph18.i200.prol.loopexit, label %.lr.ph18.i200.prol

.lr.ph18.i200.prol:                               ; preds = %.lr.ph18.i200.preheader, %.lr.ph18.i200.prol
  %indvars.iv21.i201.prol = phi i64 [ %indvars.iv.next22.i202.prol, %.lr.ph18.i200.prol ], [ %indvars.iv21.i201.ph, %.lr.ph18.i200.preheader ] ; 3 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %.lr.ph18.i200.prol ], [ 0, %.lr.ph18.i200.preheader ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv21.i201.prol
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv21.i201.prol
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !26
  %indvars.iv.next22.i202.prol = add nuw nsw i64 %indvars.iv21.i201.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %.lr.ph18.i200.prol.loopexit, label %.lr.ph18.i200.prol, !llvm.loop !172

.lr.ph18.i200.prol.loopexit:                      ; preds = %.lr.ph18.i200.prol, %.lr.ph18.i200.preheader
  %indvars.iv21.i201.unr = phi i64 [ %indvars.iv21.i201.ph, %.lr.ph18.i200.preheader ], [ %indvars.iv.next22.i202.prol, %.lr.ph18.i200.prol ]
  %i.er = sub nsw i64 %indvars.iv21.i201.ph, %wide.trip.count.i193
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %Abc_TtClear.exit, label %.lr.ph18.i200

.lr.ph18.i200:                                    ; preds = %.lr.ph18.i200.prol.loopexit, %.lr.ph18.i200
  %indvars.iv21.i201 = phi i64 [ %indvars.iv.next22.i202.3, %.lr.ph18.i200 ], [ %indvars.iv21.i201.unr, %.lr.ph18.i200.prol.loopexit ] ; 6 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv21.i201
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv21.i201
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !26
  %indvars.iv.next22.i202 = add nuw nsw i64 %indvars.iv21.i201, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i202
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !26
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next22.i202
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !26
  %indvars.iv.next22.i202.1 = add nuw nsw i64 %indvars.iv21.i201, 2 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i202.1
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !26
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next22.i202.1
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !26
  %indvars.iv.next22.i202.2 = add nuw nsw i64 %indvars.iv21.i201, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next22.i202.2
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next22.i202.2
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !26
  %indvars.iv.next22.i202.3 = add nuw nsw i64 %indvars.iv21.i201, 4 ; 2 uses
  %exitcond25.not.i203.3 = icmp eq i64 %indvars.iv.next22.i202.3, %wide.trip.count.i193
  br i1 %exitcond25.not.i203.3, label %Abc_TtClear.exit, label %.lr.ph18.i200, !llvm.loop !173

Abc_TtHasVar.exit:                                ; preds = %bb.h
  %.not167 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not167, label %.split, label %bb.k

bb.k:                                             ; preds = %Abc_TtHasVar.exit
  %i.ff = getelementptr i8, ptr %6, i64 8
  %.val178 = load ptr, ptr %i.ff, align 8, !tbaa !45
  %i.fg = zext nneg i32 %3 to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.val178, i64 %i.fg ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %.val = load i32, ptr %i.fi, align 4, !tbaa !29 ; 2 uses
  %.not170323 = icmp sgt i32 %.val, 1
  br i1 %.not170323, label %.critedge.lr.ph, label %.split

.critedge.lr.ph:                                  ; preds = %bb.k
  %i.fj = getelementptr i8, ptr %i.fh, i64 8
  %.val176 = load ptr, ptr %i.fj, align 8, !tbaa !31 ; 5 uses
  %i.fk = getelementptr i8, ptr %4, i64 8
  %.val179 = load ptr, ptr %i.fk, align 8, !tbaa !42 ; 3 uses
  %.val179369 = ptrtoaddr ptr %.val179 to i64
  %i.fl = and i32 %i.g, -2
  %i.fm = icmp sgt i32 %i.g, 1
  %wide.trip.count39.i = zext i32 %i.fl to i64    ; 7 uses
  br i1 %i.fm, label %.critedge.us, label %.critedge

.critedge.us:                                     ; preds = %.critedge.lr.ph, %Abc_TtEqualCare.exit212.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtEqualCare.exit212.us ], [ 0, %.critedge.lr.ph ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !17 ; 2 uses
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %.val179, i64 %i.fp ; 11 uses
  br label %.lr.ph29.i.us

.lr.ph29.i.us:                                    ; preds = %bb.l, %.critedge.us
  %indvars.iv36.i.us = phi i64 [ 0, %.critedge.us ], [ %indvars.iv.next37.i.us.1, %bb.l ] ; 5 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv36.i.us
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !26
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv36.i.us
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = xor i64 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv36.i.us
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !26
  %i.fy = and i64 %i.fv, %i.fx
  %.not20.i.us = icmp eq i64 %i.fy, 0
  br i1 %.not20.i.us, label %.lr.ph29.i.us.1, label %.lr.ph.i208.us.preheader

.lr.ph.i208.us.preheader:                         ; preds = %.lr.ph29.i.us.1, %.lr.ph29.i.us
  br label %.lr.ph.i208.us

.lr.ph29.i.us.1:                                  ; preds = %.lr.ph29.i.us
  %indvars.iv.next37.i.us = or disjoint i64 %indvars.iv36.i.us, 1 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next37.i.us
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next37.i.us
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !26
  %i.gd = xor i64 %i.gc, %i.ga
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next37.i.us
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !26
  %i.gg = and i64 %i.gd, %i.gf
  %.not20.i.us.1 = icmp eq i64 %i.gg, 0
  br i1 %.not20.i.us.1, label %bb.l, label %.lr.ph.i208.us.preheader

bb.l:                                             ; preds = %.lr.ph29.i.us.1
  %indvars.iv.next37.i.us.1 = add nuw nsw i64 %indvars.iv36.i.us, 2 ; 2 uses
  %exitcond40.not.i.us.1 = icmp eq i64 %indvars.iv.next37.i.us.1, %wide.trip.count39.i
  br i1 %exitcond40.not.i.us.1, label %.loopexit, label %.lr.ph29.i.us, !llvm.loop !174

.lr.ph.i208.us:                                   ; preds = %bb.m, %.lr.ph.i208.us.preheader
  %indvars.iv.i209.us = phi i64 [ 0, %.lr.ph.i208.us.preheader ], [ %indvars.iv.next.i210.us.1, %bb.m ] ; 5 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i209.us
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i209.us
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !26
  %i.gl = xor i64 %i.gi, %i.gk
  %i.gm = xor i64 %i.gl, -1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i209.us
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !26
  %i.gp = and i64 %i.go, %i.gm
  %.not21.i.us = icmp eq i64 %i.gp, 0
  br i1 %.not21.i.us, label %.lr.ph.i208.us.1, label %Abc_TtEqualCare.exit212.us

.lr.ph.i208.us.1:                                 ; preds = %.lr.ph.i208.us
  %indvars.iv.next.i210.us = or disjoint i64 %indvars.iv.i209.us, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i210.us
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !26
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i210.us
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !26
  %i.gu = xor i64 %i.gr, %i.gt
  %i.gv = xor i64 %i.gu, -1
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i210.us
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !26
  %i.gy = and i64 %i.gx, %i.gv
  %.not21.i.us.1 = icmp eq i64 %i.gy, 0
  br i1 %.not21.i.us.1, label %bb.m, label %Abc_TtEqualCare.exit212.us

bb.m:                                             ; preds = %.lr.ph.i208.us.1
  %indvars.iv.next.i210.us.1 = add nuw nsw i64 %indvars.iv.i209.us, 2 ; 2 uses
  %exitcond.not.i211.us.1 = icmp eq i64 %indvars.iv.next.i210.us.1, %wide.trip.count39.i
  br i1 %exitcond.not.i211.us.1, label %.lr.ph.preheader.i213, label %.lr.ph.i208.us, !llvm.loop !175

Abc_TtEqualCare.exit212.us:                       ; preds = %.lr.ph.i208.us.1, %.lr.ph.i208.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %9 = trunc i64 %indvars.iv.next to i32
  %10 = or disjoint i32 %9, 1
  %.not170.us = icmp slt i32 %10, %.val
  br i1 %.not170.us, label %.critedge.us, label %.split, !llvm.loop !176

.critedge:                                        ; preds = %.critedge.lr.ph
  %i.gz = load i32, ptr %.val176, align 4, !tbaa !17
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %.val179, i64 %i.ha
  br label %bb.n

.loopexit:                                        ; preds = %bb.l
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %.loopexit
  %.val176.pn = phi ptr [ %.val176, %.critedge ], [ %i.hc, %.loopexit ]
  %i.hd = phi ptr [ %i.hb, %.critedge ], [ %i.fq, %.loopexit ]
  %.in = getelementptr inbounds nuw i8, ptr %.val176.pn, i64 4
  %i.he = load i32, ptr %.in, align 4, !tbaa !17
  store i32 %i.he, ptr %7, align 4, !tbaa !17
  br label %Abc_TtClear.exit

.lr.ph.preheader.i213:                            ; preds = %bb.m
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.val176, i64 %indvars.iv
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !17
  %i.hi = xor i32 %i.hh, 1
  store i32 %i.hi, ptr %7, align 4, !tbaa !17
  %min.iters.check = icmp ult i32 %i.g, 10
  br i1 %min.iters.check, label %.lr.ph.i215.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i213
  %i.hj = sext i32 %i.fo to i64
  %i.hk = shl nsw i64 %i.hj, 3
  %i.hl = add i64 %i.hk, %.val179369
  %i.hm = sub i64 %i.hl, %.0.i368
  %diff.check = icmp ugt i64 %i.hm, -32
  br i1 %diff.check, label %.lr.ph.i215.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count39.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %wide.load = load <2 x i64>, ptr %i.hn, align 8, !tbaa !26
  %wide.load370 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !26
  %i.hp = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.hq = xor <2 x i64> %wide.load370, splat (i64 -1)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store <2 x i64> %i.hp, ptr %i.hr, align 8, !tbaa !26
  store <2 x i64> %i.hq, ptr %i.hs, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count39.i
  br i1 %cmp.n, label %Abc_TtClear.exit, label %.lr.ph.i215.preheader

.lr.ph.i215.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i213, %middle.block
  %indvars.iv.i216.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i213 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count39.i, 2     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i215.prol.loopexit, label %.lr.ph.i215.prol

.lr.ph.i215.prol:                                 ; preds = %.lr.ph.i215.preheader, %.lr.ph.i215.prol
  %indvars.iv.i216.prol = phi i64 [ %indvars.iv.next.i217.prol, %.lr.ph.i215.prol ], [ %indvars.iv.i216.ph, %.lr.ph.i215.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i215.prol ], [ 0, %.lr.ph.i215.preheader ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i216.prol
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !26
  %i.hw = xor i64 %i.hv, -1
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.i216.prol
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !26
  %indvars.iv.next.i217.prol = add nuw nsw i64 %indvars.iv.i216.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i215.prol.loopexit, label %.lr.ph.i215.prol, !llvm.loop !178

.lr.ph.i215.prol.loopexit:                        ; preds = %.lr.ph.i215.prol, %.lr.ph.i215.preheader
  %indvars.iv.i216.unr = phi i64 [ %indvars.iv.i216.ph, %.lr.ph.i215.preheader ], [ %indvars.iv.next.i217.prol, %.lr.ph.i215.prol ]
  %i.hy = sub nsw i64 %indvars.iv.i216.ph, %wide.trip.count39.i
  %i.hz = icmp ugt i64 %i.hy, -4
  br i1 %i.hz, label %Abc_TtClear.exit, label %.lr.ph.i215

.lr.ph.i215:                                      ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215
  %indvars.iv.i216 = phi i64 [ %indvars.iv.next.i217.3, %.lr.ph.i215 ], [ %indvars.iv.i216.unr, %.lr.ph.i215.prol.loopexit ] ; 6 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i216
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !26
  %i.ic = xor i64 %i.ib, -1
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.i216
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !26
  %indvars.iv.next.i217 = add nuw nsw i64 %indvars.iv.i216, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i217
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !26
  %i.ig = xor i64 %i.if, -1
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i217
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !26
  %indvars.iv.next.i217.1 = add nuw nsw i64 %indvars.iv.i216, 2 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i217.1
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !26
  %i.ik = xor i64 %i.ij, -1
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i217.1
  store i64 %i.ik, ptr %i.il, align 8, !tbaa !26
  %indvars.iv.next.i217.2 = add nuw nsw i64 %indvars.iv.i216, 3 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i217.2
  %i.in = load i64, ptr %i.im, align 8, !tbaa !26
  %i.io = xor i64 %i.in, -1
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i217.2
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !26
  %indvars.iv.next.i217.3 = add nuw nsw i64 %indvars.iv.i216, 4 ; 2 uses
  %exitcond.not.i218.3 = icmp eq i64 %indvars.iv.next.i217.3, %wide.trip.count39.i
  br i1 %exitcond.not.i218.3, label %Abc_TtClear.exit, label %.lr.ph.i215, !llvm.loop !179

.split:                                           ; preds = %Abc_TtEqualCare.exit212.us, %bb.k, %Abc_TtHasVar.exit
  %.sink = phi ptr [ null, %Abc_TtHasVar.exit ], [ %6, %bb.k ], [ %6, %Abc_TtEqualCare.exit212.us ] ; 2 uses
  %i.iq = call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %.sink, ptr noundef nonnull %i.b, ptr noundef %8) ; 22 uses
  %i.ir = ptrtoaddr ptr %i.iq to i64              ; 3 uses
  %i.is = sext i32 %i.ak to i64                   ; 6 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %1, i64 %i.is
  %i.iu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.is
  %i.iv = call ptr @Abc_TtSimpleMin_rec(ptr noundef %0, ptr noundef %i.it, ptr noundef %i.iu, i32 noundef %i.al, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %.sink, ptr noundef nonnull %i.c, ptr noundef %8) ; 10 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = icmp sgt i32 %i.ak, 0
  br i1 %i.ix, label %.lr.ph.preheader.i220, label %.thread297

.thread297:                                       ; preds = %.split
  %i.iy = load i32, ptr %i.b, align 4, !tbaa !17
  store i32 %i.iy, ptr %7, align 4, !tbaa !17
  br label %Abc_TtClear.exit

.lr.ph.preheader.i220:                            ; preds = %.split
  %wide.trip.count.i221 = zext nneg i32 %i.ak to i64 ; 23 uses
  br label %.lr.ph.i222

bb.o:                                             ; preds = %.lr.ph.i222
  %indvars.iv.next.i225 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i226 = icmp eq i64 %indvars.iv.next.i225, %wide.trip.count.i221
  br i1 %exitcond.not.i226, label %.lr.ph18.preheader.i227, label %.lr.ph.i222, !llvm.loop !0

.lr.ph.i222:                                      ; preds = %bb.o, %.lr.ph.preheader.i220
  %indvars.iv.i223 = phi i64 [ 0, %.lr.ph.preheader.i220 ], [ %indvars.iv.next.i225, %bb.o ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i223
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i223
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !26
  %.not.i224 = icmp eq i64 %i.ja, %i.jc
  br i1 %.not.i224, label %bb.o, label %.lr.ph18.i243.preheader

.lr.ph18.i243.preheader:                          ; preds = %.lr.ph.i222
  %min.iters.check374 = icmp ult i32 %i.ak, 8
  %i.jd = sub i64 %i.ir, %.0.i368
  %diff.check376 = icmp ugt i64 %i.jd, -32
  %or.cond489 = select i1 %min.iters.check374, i1 true, i1 %diff.check376
  br i1 %or.cond489, label %.lr.ph18.i243.preheader492, label %vector.ph377

vector.ph377:                                     ; preds = %.lr.ph18.i243.preheader
  %n.vec378 = and i64 %wide.trip.count.i221, 2147483644 ; 3 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next383, %vector.body379 ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index380 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load381 = load <2 x i64>, ptr %i.je, align 8, !tbaa !26
  %wide.load382 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !26
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index380 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <2 x i64> %wide.load381, ptr %i.jg, align 8, !tbaa !26
  store <2 x i64> %wide.load382, ptr %i.jh, align 8, !tbaa !26
  %index.next383 = add nuw i64 %index380, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next383, %n.vec378
  br i1 %i.ji, label %middle.block384, label %vector.body379, !llvm.loop !180

middle.block384:                                  ; preds = %vector.body379
  %cmp.n385 = icmp eq i64 %n.vec378, %wide.trip.count.i221
  br i1 %cmp.n385, label %.lr.ph18.preheader.i248, label %.lr.ph18.i243.preheader492

.lr.ph18.i243.preheader492:                       ; preds = %.lr.ph18.i243.preheader, %middle.block384
  %indvars.iv21.i244.ph = phi i64 [ 0, %.lr.ph18.i243.preheader ], [ %n.vec378, %middle.block384 ] ; 3 uses
  %xtraiter501 = and i64 %wide.trip.count.i221, 3 ; 2 uses
  %lcmp.mod502.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod502.not, label %.lr.ph18.i243.prol.loopexit, label %.lr.ph18.i243.prol

.lr.ph18.i243.prol:                               ; preds = %.lr.ph18.i243.preheader492, %.lr.ph18.i243.prol
  %indvars.iv21.i244.prol = phi i64 [ %indvars.iv.next22.i245.prol, %.lr.ph18.i243.prol ], [ %indvars.iv21.i244.ph, %.lr.ph18.i243.preheader492 ] ; 3 uses
  %prol.iter503 = phi i64 [ %prol.iter503.next, %.lr.ph18.i243.prol ], [ 0, %.lr.ph18.i243.preheader492 ]
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv21.i244.prol
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !26
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i244.prol
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !26
  %indvars.iv.next22.i245.prol = add nuw nsw i64 %indvars.iv21.i244.prol, 1 ; 2 uses
  %prol.iter503.next = add i64 %prol.iter503, 1   ; 2 uses
  %prol.iter503.cmp.not = icmp eq i64 %prol.iter503.next, %xtraiter501
  br i1 %prol.iter503.cmp.not, label %.lr.ph18.i243.prol.loopexit, label %.lr.ph18.i243.prol, !llvm.loop !181

.lr.ph18.i243.prol.loopexit:                      ; preds = %.lr.ph18.i243.prol, %.lr.ph18.i243.preheader492
  %indvars.iv21.i244.unr = phi i64 [ %indvars.iv21.i244.ph, %.lr.ph18.i243.preheader492 ], [ %indvars.iv.next22.i245.prol, %.lr.ph18.i243.prol ]
  %i.jm = sub nsw i64 %indvars.iv21.i244.ph, %wide.trip.count.i221
  %i.jn = icmp ugt i64 %i.jm, -4
end_hunk_0
begin_hunk_1_@Abc_TtSimpleMin_rec:bb.a
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %wide.load397 = load <2 x i64>, ptr %i.mc, align 8, !tbaa !26
  %wide.load398 = load <2 x i64>, ptr %i.md, align 8, !tbaa !26
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %index396 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <2 x i64> %wide.load397, ptr %i.me, align 8, !tbaa !26
  store <2 x i64> %wide.load398, ptr %i.mf, align 8, !tbaa !26
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.mg, label %middle.block400, label %vector.body395, !llvm.loop !189

middle.block400:                                  ; preds = %vector.body395
  %cmp.n401 = icmp eq i64 %n.vec394, %wide.trip.count.i221
  br i1 %cmp.n401, label %Abc_TtCopy.exit254, label %.lr.ph18.i250.preheader

.lr.ph18.i250.preheader:                          ; preds = %vector.memcheck391, %.lr.ph18.preheader.i248, %middle.block400
  %indvars.iv21.i251.ph = phi i64 [ 0, %vector.memcheck391 ], [ 0, %.lr.ph18.preheader.i248 ], [ %n.vec394, %middle.block400 ] ; 3 uses
  %xtraiter504 = and i64 %wide.trip.count.i221, 3 ; 2 uses
  %lcmp.mod505.not = icmp eq i64 %xtraiter504, 0
  br i1 %lcmp.mod505.not, label %.lr.ph18.i250.prol.loopexit, label %.lr.ph18.i250.prol

.lr.ph18.i250.prol:                               ; preds = %.lr.ph18.i250.preheader, %.lr.ph18.i250.prol
  %indvars.iv21.i251.prol = phi i64 [ %indvars.iv.next22.i252.prol, %.lr.ph18.i250.prol ], [ %indvars.iv21.i251.ph, %.lr.ph18.i250.preheader ] ; 3 uses
  %prol.iter506 = phi i64 [ %prol.iter506.next, %.lr.ph18.i250.prol ], [ 0, %.lr.ph18.i250.preheader ]
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv21.i251.prol
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !26
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv21.i251.prol
  store i64 %i.mi, ptr %i.mj, align 8, !tbaa !26
  %indvars.iv.next22.i252.prol = add nuw nsw i64 %indvars.iv21.i251.prol, 1 ; 2 uses
  %prol.iter506.next = add i64 %prol.iter506, 1   ; 2 uses
  %prol.iter506.cmp.not = icmp eq i64 %prol.iter506.next, %xtraiter504
  br i1 %prol.iter506.cmp.not, label %.lr.ph18.i250.prol.loopexit, label %.lr.ph18.i250.prol, !llvm.loop !190

.lr.ph18.i250.prol.loopexit:                      ; preds = %.lr.ph18.i250.prol, %.lr.ph18.i250.preheader
  %indvars.iv21.i251.unr = phi i64 [ %indvars.iv21.i251.ph, %.lr.ph18.i250.preheader ], [ %indvars.iv.next22.i252.prol, %.lr.ph18.i250.prol ]
  %i.mk = sub nsw i64 %indvars.iv21.i251.ph, %wide.trip.count.i221
  %i.ml = icmp ugt i64 %i.mk, -4
  br i1 %i.ml, label %Abc_TtCopy.exit254, label %.lr.ph18.i250

.lr.ph18.i250:                                    ; preds = %.lr.ph18.i250.prol.loopexit, %.lr.ph18.i250
  %indvars.iv21.i251 = phi i64 [ %indvars.iv.next22.i252.3, %.lr.ph18.i250 ], [ %indvars.iv21.i251.unr, %.lr.ph18.i250.prol.loopexit ] ; 6 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv21.i251
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !26
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv21.i251
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !26
  %indvars.iv.next22.i252 = add nuw nsw i64 %indvars.iv21.i251, 1 ; 2 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next22.i252
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next22.i252
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !26
  %indvars.iv.next22.i252.1 = add nuw nsw i64 %indvars.iv21.i251, 2 ; 2 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next22.i252.1
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next22.i252.1
  store i64 %i.mt, ptr %i.mu, align 8, !tbaa !26
  %indvars.iv.next22.i252.2 = add nuw nsw i64 %indvars.iv21.i251, 3 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.next22.i252.2
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !26
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next22.i252.2
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !26
  %indvars.iv.next22.i252.3 = add nuw nsw i64 %indvars.iv21.i251, 4 ; 2 uses
  %exitcond25.not.i253.3 = icmp eq i64 %indvars.iv.next22.i252.3, %wide.trip.count.i221
  br i1 %exitcond25.not.i253.3, label %Abc_TtCopy.exit254, label %.lr.ph18.i250, !llvm.loop !191

Abc_TtCopy.exit254:                               ; preds = %.lr.ph18.i250.prol.loopexit, %.lr.ph18.i250, %middle.block400
  %.not172 = icmp eq ptr %8, null
  br i1 %.not172, label %.lr.ph.preheader.i256, label %bb.p

bb.p:                                             ; preds = %Abc_TtCopy.exit254
  %i.my = zext nneg i32 %i.al to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.my
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !17
  %i.nb = add nsw i32 %i.na, 1
  br label %.lr.ph.preheader.i256

.lr.ph.preheader.i256:                            ; preds = %bb.p, %Abc_TtCopy.exit254
  %i.nc = phi i32 [ %i.nb, %bb.p ], [ %3, %Abc_TtCopy.exit254 ] ; 3 uses
  br label %.lr.ph.i258

bb.q:                                             ; preds = %.lr.ph.i258
  %indvars.iv.next.i261 = add nuw nsw i64 %indvars.iv.i259, 1 ; 2 uses
  %exitcond.not.i262 = icmp eq i64 %indvars.iv.next.i261, %wide.trip.count.i221
  br i1 %exitcond.not.i262, label %bb.r, label %.lr.ph.i258, !llvm.loop !6

.lr.ph.i258:                                      ; preds = %bb.q, %.lr.ph.preheader.i256
  %indvars.iv.i259 = phi i64 [ 0, %.lr.ph.preheader.i256 ], [ %indvars.iv.next.i261, %bb.q ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i259
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !26
  %i.nf = xor i64 %i.ne, -1
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i259
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !26
  %i.ni = and i64 %i.nh, %i.nf
  %.not17.i260 = icmp eq i64 %i.ni, 0
  br i1 %.not17.i260, label %bb.q, label %.lr.ph.i267

bb.r:                                             ; preds = %bb.q
  %i.nj = shl nsw i32 %i.nc, 1
  %i.nk = load i32, ptr %i.c, align 4, !tbaa !17
  %i.nl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.nj, i32 noundef %i.nk) #27
  %i.nm = load i32, ptr %i.b, align 4, !tbaa !17
  %i.nn = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.nl, i32 noundef %i.nm) #27
  br label %bb.u

bb.s:                                             ; preds = %.lr.ph.i267
  %indvars.iv.next.i270 = add nuw nsw i64 %indvars.iv.i268, 1 ; 2 uses
  %exitcond.not.i271 = icmp eq i64 %indvars.iv.next.i270, %wide.trip.count.i221
  br i1 %exitcond.not.i271, label %bb.t, label %.lr.ph.i267, !llvm.loop !6

.lr.ph.i267:                                      ; preds = %.lr.ph.i258, %bb.s
  %indvars.iv.i268 = phi i64 [ %indvars.iv.next.i270, %bb.s ], [ 0, %.lr.ph.i258 ] ; 3 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i268
  %i.np = load i64, ptr %i.no, align 8, !tbaa !26
  %i.nq = xor i64 %i.np, -1
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %indvars.iv.i268
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !26
  %i.nt = and i64 %i.ns, %i.nq
  %.not17.i269 = icmp eq i64 %i.nt, 0
  br i1 %.not17.i269, label %bb.s, label %Abc_TtIntersect.exit272

bb.t:                                             ; preds = %bb.s
  %i.nu = shl nsw i32 %i.nc, 1
  %i.nv = or disjoint i32 %i.nu, 1
  %i.nw = load i32, ptr %i.b, align 4, !tbaa !17
  %i.nx = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.nv, i32 noundef %i.nw) #27
  %i.ny = load i32, ptr %i.c, align 4, !tbaa !17
  %i.nz = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.nx, i32 noundef %i.ny) #27
  br label %bb.u

Abc_TtIntersect.exit272:                          ; preds = %.lr.ph.i267
  %i.oa = shl nsw i32 %i.nc, 1
  %i.ob = load i32, ptr %i.c, align 4, !tbaa !17
  %i.oc = load i32, ptr %i.b, align 4, !tbaa !17
  %i.od = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.oa, i32 noundef %i.ob, i32 noundef %i.oc) #27
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %Abc_TtIntersect.exit272, %bb.r
  %.sink359 = phi i32 [ %i.nz, %bb.t ], [ %i.od, %Abc_TtIntersect.exit272 ], [ %i.nn, %bb.r ] ; 2 uses
  store i32 %.sink359, ptr %7, align 4, !tbaa !17
  br i1 %.not167, label %Abc_TtClear.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.oe = getelementptr i8, ptr %6, i64 8
  %.val177 = load ptr, ptr %i.oe, align 8, !tbaa !45
  %i.of = zext nneg i32 %3 to i64
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %.val177, i64 %i.of
  %i.oh = getelementptr i8, ptr %4, i64 8
  %.val180 = load ptr, ptr %i.oh, align 8, !tbaa !42
  %i.oi = ptrtoint ptr %.0.i to i64
  %i.oj = ptrtoint ptr %.val180 to i64
  %i.ok = sub i64 %i.oi, %i.oj
  %i.ol = lshr exact i64 %i.ok, 3
  %i.om = trunc i64 %i.ol to i32
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.og, i32 noundef %i.om, i32 noundef %.sink359)
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %.lr.ph.i215.prol.loopexit, %.lr.ph.i215, %.lr.ph18.i236.prol.loopexit, %.lr.ph18.i236, %.lr.ph18.i200.prol.loopexit, %.lr.ph18.i200, %middle.block, %middle.block432, %middle.block486, %bb.d, %bb.n, %.thread297, %Abc_TtCopy.exit, %.lr.ph.preheader.i184, %.lr.ph.preheader.i, %bb.u, %bb.v, %bb.c
  %.3 = phi ptr [ %.0.i, %bb.c ], [ %i.hd, %bb.n ], [ %.0.i, %bb.u ], [ %.0.i, %.thread297 ], [ %.0.i, %.lr.ph.preheader.i184 ], [ %.0.i, %.lr.ph.preheader.i ], [ %.0.i, %bb.v ], [ %.0.i, %middle.block432 ], [ %.0.i, %bb.d ], [ %.0.i, %Abc_TtCopy.exit ], [ %.0.i, %middle.block486 ], [ %.0.i, %middle.block ], [ %.0.i, %.lr.ph18.i236.prol.loopexit ], [ %.0.i, %.lr.ph18.i200.prol.loopexit ], [ %.0.i, %.lr.ph18.i200 ], [ %.0.i, %.lr.ph18.i236 ], [ %.0.i, %.lr.ph.i215 ], [ %.0.i, %.lr.ph.i215.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret ptr %.3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @Abc_TtSimple6Min_rec(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 -2147483648, 7) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = and i64 %2, %1
  store i32 0, ptr %5, align 4, !tbaa !17
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = xor i64 %1, -1
  %i.e = and i64 %2, %i.d
  %.not102 = icmp eq i64 %i.e, 0
  br i1 %.not102, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %.not103 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %.not103, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.f = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.f, align 4, !tbaa !40  ; 2 uses
  %.not106126 = icmp sgt i32 %.val, 1
  br i1 %.not106126, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.g = getelementptr i8, ptr %4, i64 8
  %.val112 = load ptr, ptr %i.g, align 8, !tbaa !42 ; 3 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.h = trunc i64 %indvars.iv.next to i32
  %7 = or disjoint i32 %i.h, 1
  %.not106 = icmp slt i32 %7, %.val
  br i1 %.not106, label %.critedge, label %.loopexit, !llvm.loop !192

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val112, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 3 uses
  %i.k = xor i64 %i.j, %1
  %i.l = and i64 %i.k, %2
  %.not104 = icmp eq i64 %i.l, 0
  br i1 %.not104, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.val112, i64 %indvars.iv
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = load i64, ptr %9, align 8, !tbaa !26
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.g:                                             ; preds = %.critedge
  %i.o = xor i64 %i.j, -1                         ; 2 uses
  %i.p = xor i64 %1, %i.o
  %i.q = and i64 %i.p, %2
  %.not105 = icmp eq i64 %i.q, 0
  br i1 %.not105, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.val112, i64 %indvars.iv
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = load i64, ptr %11, align 8, !tbaa !26
  %i.s = trunc i64 %i.r to i32
  %i.t = xor i32 %i.s, 1
  store i32 %i.t, ptr %5, align 4, !tbaa !17
  br label %.thread

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.d
  %.091128 = add nsw i32 %3, -1                   ; 5 uses
  %i.u = icmp sgt i32 %3, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.v = shl nuw nsw i32 1, %.091128
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = lshr i64 %1, %i.w
  %i.y = zext nneg i32 %.091128 to i64            ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 2 uses
  %i.ab = xor i64 %i.x, %1
  %i.ac = and i64 %i.aa, %i.ab
  %.not114167 = icmp eq i64 %i.ac, 0
  br i1 %.not114167, label %.lr.ph170, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph170
  %.091 = add nsw i32 %.091131168, -1             ; 4 uses
  %i.ad = shl nuw nsw i32 1, %.091
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = lshr i64 %1, %i.ae
  %i.ag = zext nneg i32 %.091 to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = xor i64 %i.af, %1
  %i.ak = and i64 %i.ai, %i.aj
  %.not114 = icmp eq i64 %i.ak, 0
  br i1 %.not114, label %.lr.ph170, label %._crit_edge, !llvm.loop !193

.lr.ph170:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.al = phi i64 [ %i.ai, %.lr.ph ], [ %i.aa, %.lr.ph.preheader ]
  %i.am = phi i64 [ %i.ag, %.lr.ph ], [ %i.y, %.lr.ph.preheader ]
  %i.an = phi i64 [ %i.ae, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.094129169 = phi i64 [ %i.aw, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.091131168 = phi i32 [ %.091, %.lr.ph ], [ %.091128, %.lr.ph.preheader ] ; 3 uses
  %i.ao = and i64 %i.al, %.094129169              ; 2 uses
  %i.ap = shl i64 %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.am
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = and i64 %i.ar, %.094129169              ; 2 uses
  %i.at = lshr i64 %i.as, %i.an
  %i.au = or i64 %i.ap, %i.at
  %i.av = or i64 %i.au, %i.ao
  %i.aw = or i64 %i.av, %i.as                     ; 3 uses
  %i.ax = icmp sgt i32 %.091131168, 0
  br i1 %i.ax, label %.lr.ph, label %.._crit_edge.loopexit_crit_edge, !llvm.loop !193

.._crit_edge.loopexit_crit_edge:                  ; preds = %.lr.ph170
  br label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %.._crit_edge.loopexit_crit_edge, %.loopexit
  %.094.lcssa = phi i64 [ %2, %.loopexit ], [ %i.aw, %.._crit_edge.loopexit_crit_edge ], [ %2, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ] ; 2 uses
  %.091.in.lcssa = phi i32 [ %3, %.loopexit ], [ 0, %.._crit_edge.loopexit_crit_edge ], [ %3, %.lr.ph.preheader ], [ %.091131168, %.lr.ph ]
  %.091.lcssa = phi i32 [ %.091128, %.loopexit ], [ -1, %.._crit_edge.loopexit_crit_edge ], [ %.091128, %.lr.ph.preheader ], [ %.091, %.lr.ph ] ; 4 uses
  %i.ay = sext i32 %.091.lcssa to i64             ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !26 ; 3 uses
  %i.bb = and i64 %i.ba, %1                       ; 2 uses
  %i.bc = shl nuw nsw i32 1, %.091.lcssa
  %i.bd = zext nneg i32 %i.bc to i64              ; 4 uses
  %i.be = shl i64 %i.bb, %i.bd
  %i.bf = or i64 %i.be, %i.bb
  %i.bg = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ay
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !26 ; 3 uses
  %i.bi = and i64 %i.bh, %1                       ; 2 uses
  %i.bj = lshr i64 %i.bi, %i.bd
  %i.bk = or i64 %i.bj, %i.bi
  %i.bl = and i64 %i.ba, %.094.lcssa              ; 2 uses
  %i.bm = shl i64 %i.bl, %i.bd
  %i.bn = or i64 %i.bm, %i.bl
  %i.bo = and i64 %i.bh, %.094.lcssa              ; 2 uses
  %i.bp = lshr i64 %i.bo, %i.bd
  %i.bq = or i64 %i.bp, %i.bo
  %i.br = call fastcc i64 @Abc_TtSimple6Min_rec(ptr noundef %0, i64 noundef %i.bf, i64 noundef %i.bn, i32 noundef %.091.lcssa, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef %6) ; 5 uses
  %i.bs = call fastcc i64 @Abc_TtSimple6Min_rec(ptr noundef %0, i64 noundef %i.bk, i64 noundef %i.bq, i32 noundef %.091.lcssa, ptr noundef %4, ptr noundef nonnull %i.b, ptr noundef %6) ; 4 uses
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !17
  store i32 %i.bu, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.j:                                             ; preds = %._crit_edge
  %i.bv = and i64 %i.br, %i.ba
  %i.bw = and i64 %i.bs, %i.bh
  %i.bx = or i64 %i.bw, %i.bv                     ; 3 uses
  %.not108 = icmp eq ptr %6, null
  br i1 %.not108, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ay
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ca = add nsw i32 %i.bz, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cb = phi i32 [ %i.ca, %bb.k ], [ %.091.in.lcssa, %bb.j ] ; 2 uses
  %i.cc = xor i64 %i.bs, -1
  %i.cd = and i64 %i.br, %i.cc
  %.not109 = icmp eq i64 %i.cd, 0
  br i1 %.not109, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = shl nsw i32 %i.cb, 1
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !17
  %i.cg = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cf) #27
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ci = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cg, i32 noundef %i.ch) #27
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.cj = xor i64 %i.br, -1
  %i.ck = and i64 %i.bs, %i.cj
  %.not110 = icmp eq i64 %i.ck, 0
  %i.cl = shl nsw i32 %i.cb, 1                    ; 2 uses
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  br i1 %.not110, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = or disjoint i32 %i.cl, 1
  %i.co = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cn, i32 noundef %i.cm) #27
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !17
  %i.cq = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.co, i32 noundef %i.cp) #27
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !17
  %i.cs = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.cl, i32 noundef %i.cr, i32 noundef %i.cm) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %.sink = phi i32 [ %i.cq, %bb.o ], [ %i.cs, %bb.p ], [ %i.ci, %bb.m ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !17
  br i1 %.not103, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = sext i32 %.sink to i64
  tail call fastcc void @Vec_WrdPushTwo(ptr noundef %4, i64 noundef %i.bx, i64 noundef %i.ct)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.f, %bb.h, %bb.q, %bb.r, %bb.i, %bb.c
  %.1 = phi i64 [ %i.br, %bb.i ], [ %i.o, %bb.h ], [ %i.bx, %bb.q ], [ -1, %bb.c ], [ %i.bx, %bb.r ], [ %i.j, %bb.f ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

declare i32 @Gia_ManHashOr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushTwo(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !30
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
end_hunk_1
begin_hunk_2_@Abc_TtGiaMin_rec:bb.a

._crit_edge.us.i275:                              ; preds = %bb.m
  %i.bb = getelementptr inbounds [8 x i8], ptr %.03343.us.i267, i64 %i.ap ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %i.ax
  br i1 %i.bc, label %.preheader.us.i266, label %.thread400, !llvm.loop !5

.thread400:                                       ; preds = %._crit_edge.us.i275, %Abc_TtIsConst1.exit242
  %i.bd = tail call ptr @Abc_TtGiaMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ak, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) ; 13 uses
  %i.be = ptrtoaddr ptr %i.bd to i64              ; 2 uses
  %i.bf = icmp sgt i32 %i.aj, 0
  br i1 %i.bf, label %.lr.ph18.preheader.i, label %Abc_TtClear.exit

.lr.ph18.preheader.i:                             ; preds = %.thread400
  %wide.trip.count24.i = zext nneg i32 %i.aj to i64 ; 12 uses
  %min.iters.check596 = icmp ult i32 %i.aj, 8
  %i.bg = sub i64 %i.be, %.0.i526
  %diff.check598 = icmp ugt i64 %i.bg, -32
  %or.cond625 = select i1 %min.iters.check596, i1 true, i1 %diff.check598
  br i1 %or.cond625, label %.lr.ph18.i.preheader, label %vector.ph599

vector.ph599:                                     ; preds = %.lr.ph18.preheader.i
  %n.vec600 = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body601

vector.body601:                                   ; preds = %vector.body601, %vector.ph599
  %index602 = phi i64 [ 0, %vector.ph599 ], [ %index.next605, %vector.body601 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index602 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load603 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !26
  %wide.load604 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !26
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index602 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x i64> %wide.load603, ptr %i.bj, align 8, !tbaa !26
  store <2 x i64> %wide.load604, ptr %i.bk, align 8, !tbaa !26
  %index.next605 = add nuw i64 %index602, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next605, %n.vec600
  br i1 %i.bl, label %middle.block606, label %vector.body601, !llvm.loop !202

middle.block606:                                  ; preds = %vector.body601
  %cmp.n607 = icmp eq i64 %n.vec600, %wide.trip.count24.i
  br i1 %cmp.n607, label %.lr.ph18.preheader.i285, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.lr.ph18.preheader.i, %middle.block606
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %n.vec600, %middle.block606 ] ; 3 uses
  %xtraiter656 = and i64 %wide.trip.count24.i, 3  ; 2 uses
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod657.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ] ; 3 uses
  %prol.iter658 = phi i64 [ %prol.iter658.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i.prol
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i.prol
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !26
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter658.next = add i64 %prol.iter658, 1   ; 2 uses
  %prol.iter658.cmp.not = icmp eq i64 %prol.iter658.next, %xtraiter656
  br i1 %prol.iter658.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !203

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader
  %indvars.iv21.i.unr = phi i64 [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader ], [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ]
  %i.bp = sub nsw i64 %indvars.iv21.i.ph, %wide.trip.count24.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.lr.ph18.preheader.i285, label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i.3, %.lr.ph18.i ], [ %indvars.iv21.i.unr, %.lr.ph18.i.prol.loopexit ] ; 6 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv21.i
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !26
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !26
  %indvars.iv.next22.i.1 = add nuw nsw i64 %indvars.iv21.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i.1
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.1
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !26
  %indvars.iv.next22.i.2 = add nuw nsw i64 %indvars.iv21.i, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i.2
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next22.i.2
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !26
  %indvars.iv.next22.i.3 = add nuw nsw i64 %indvars.iv21.i, 4 ; 2 uses
  %exitcond25.not.i.3 = icmp eq i64 %indvars.iv.next22.i.3, %wide.trip.count24.i
  br i1 %exitcond25.not.i.3, label %.lr.ph18.preheader.i285, label %.lr.ph18.i, !llvm.loop !204

.lr.ph18.preheader.i285:                          ; preds = %.lr.ph18.i.prol.loopexit, %.lr.ph18.i, %middle.block606
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %wide.trip.count24.i ; 6 uses
  %min.iters.check612 = icmp ult i32 %i.aj, 14
  br i1 %min.iters.check612, label %.lr.ph18.i287.preheader, label %vector.memcheck613

vector.memcheck613:                               ; preds = %.lr.ph18.preheader.i285
  %i.ce = shl nuw nsw i64 %wide.trip.count24.i, 3
  %i.cf = add i64 %i.ce, %.0.i526
  %i.cg = sub i64 %i.be, %i.cf
  %diff.check614 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check614, label %.lr.ph18.i287.preheader, label %vector.ph615

vector.ph615:                                     ; preds = %vector.memcheck613
  %n.vec616 = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph615
  %index618 = phi i64 [ 0, %vector.ph615 ], [ %index.next621, %vector.body617 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index618 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load619 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !26
  %wide.load620 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index618 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x i64> %wide.load619, ptr %i.cj, align 8, !tbaa !26
  store <2 x i64> %wide.load620, ptr %i.ck, align 8, !tbaa !26
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.cl, label %middle.block622, label %vector.body617, !llvm.loop !205

middle.block622:                                  ; preds = %vector.body617
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count24.i
  br i1 %cmp.n623, label %Abc_TtClear.exit, label %.lr.ph18.i287.preheader

.lr.ph18.i287.preheader:                          ; preds = %vector.memcheck613, %.lr.ph18.preheader.i285, %middle.block622
  %indvars.iv21.i288.ph = phi i64 [ 0, %vector.memcheck613 ], [ 0, %.lr.ph18.preheader.i285 ], [ %n.vec616, %middle.block622 ] ; 3 uses
  %xtraiter659 = and i64 %wide.trip.count24.i, 3  ; 2 uses
  %lcmp.mod660.not = icmp eq i64 %xtraiter659, 0
  br i1 %lcmp.mod660.not, label %.lr.ph18.i287.prol.loopexit, label %.lr.ph18.i287.prol

.lr.ph18.i287.prol:                               ; preds = %.lr.ph18.i287.preheader, %.lr.ph18.i287.prol
  %indvars.iv21.i288.prol = phi i64 [ %indvars.iv.next22.i289.prol, %.lr.ph18.i287.prol ], [ %indvars.iv21.i288.ph, %.lr.ph18.i287.preheader ] ; 3 uses
  %prol.iter661 = phi i64 [ %prol.iter661.next, %.lr.ph18.i287.prol ], [ 0, %.lr.ph18.i287.preheader ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i288.prol
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv21.i288.prol
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !26
  %indvars.iv.next22.i289.prol = add nuw nsw i64 %indvars.iv21.i288.prol, 1 ; 2 uses
  %prol.iter661.next = add i64 %prol.iter661, 1   ; 2 uses
  %prol.iter661.cmp.not = icmp eq i64 %prol.iter661.next, %xtraiter659
  br i1 %prol.iter661.cmp.not, label %.lr.ph18.i287.prol.loopexit, label %.lr.ph18.i287.prol, !llvm.loop !206

.lr.ph18.i287.prol.loopexit:                      ; preds = %.lr.ph18.i287.prol, %.lr.ph18.i287.preheader
  %indvars.iv21.i288.unr = phi i64 [ %indvars.iv21.i288.ph, %.lr.ph18.i287.preheader ], [ %indvars.iv.next22.i289.prol, %.lr.ph18.i287.prol ]
  %i.cp = sub nsw i64 %indvars.iv21.i288.ph, %wide.trip.count24.i
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %Abc_TtClear.exit, label %.lr.ph18.i287

.lr.ph18.i287:                                    ; preds = %.lr.ph18.i287.prol.loopexit, %.lr.ph18.i287
  %indvars.iv21.i288 = phi i64 [ %indvars.iv.next22.i289.3, %.lr.ph18.i287 ], [ %indvars.iv21.i288.unr, %.lr.ph18.i287.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv21.i288
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv21.i288
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !26
  %indvars.iv.next22.i289 = add nuw nsw i64 %indvars.iv21.i288, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i289
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next22.i289
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !26
  %indvars.iv.next22.i289.1 = add nuw nsw i64 %indvars.iv21.i288, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i289.1
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next22.i289.1
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !26
  %indvars.iv.next22.i289.2 = add nuw nsw i64 %indvars.iv21.i288, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next22.i289.2
  %i.db = load i64, ptr %i.da, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next22.i289.2
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !26
  %indvars.iv.next22.i289.3 = add nuw nsw i64 %indvars.iv21.i288, 4 ; 2 uses
  %exitcond25.not.i290.3 = icmp eq i64 %indvars.iv.next22.i289.3, %wide.trip.count24.i
  br i1 %exitcond25.not.i290.3, label %Abc_TtClear.exit, label %.lr.ph18.i287, !llvm.loop !207

Abc_TtHasVar.exit:                                ; preds = %bb.l, %bb.n
  %.not190 = icmp eq ptr %6, null                 ; 2 uses
  br i1 %.not190, label %.split, label %bb.o

bb.o:                                             ; preds = %Abc_TtHasVar.exit
  %i.dd = getelementptr i8, ptr %6, i64 8
  %.val204 = load ptr, ptr %i.dd, align 8, !tbaa !45
  %i.de = zext nneg i32 %3 to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.val204, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val = load i32, ptr %i.dg, align 4, !tbaa !29 ; 2 uses
  %.not195461 = icmp sgt i32 %.val, 1
  br i1 %.not195461, label %.critedge.lr.ph, label %.split

.critedge.lr.ph:                                  ; preds = %bb.o
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  %.val202 = load ptr, ptr %i.dh, align 8, !tbaa !31 ; 5 uses
  %i.di = getelementptr i8, ptr %4, i64 8
  %.val205 = load ptr, ptr %i.di, align 8, !tbaa !42 ; 3 uses
  %.val205527 = ptrtoaddr ptr %.val205 to i64
  %i.dj = and i32 %i.f, -2
  %i.dk = icmp sgt i32 %i.f, 1
  %wide.trip.count.i293 = zext i32 %i.dj to i64   ; 9 uses
  br i1 %i.dk, label %.critedge.us, label %.critedge

.critedge.us:                                     ; preds = %.critedge.lr.ph, %Abc_TtIntersect.exit308.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtIntersect.exit308.us ], [ 0, %.critedge.lr.ph ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val202, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !17 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %.val205, i64 %i.dn ; 13 uses
  br label %.lr.ph.i294.us

.lr.ph.i294.us:                                   ; preds = %bb.p, %.critedge.us
  %indvars.iv.i295.us = phi i64 [ 0, %.critedge.us ], [ %indvars.iv.next.i296.us.1, %bb.p ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i295.us
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !26
  %i.dr = xor i64 %i.dq, -1
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i295.us
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !26
  %i.du = and i64 %i.dt, %i.dr
  %.not17.i.us = icmp eq i64 %i.du, 0
  br i1 %.not17.i.us, label %.lr.ph.i294.us.1, label %.lr.ph25.i303.us.preheader

.lr.ph.i294.us.1:                                 ; preds = %.lr.ph.i294.us
  %indvars.iv.next.i296.us = or disjoint i64 %indvars.iv.i295.us, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i296.us
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dx = xor i64 %i.dw, -1
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i296.us
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = and i64 %i.dz, %i.dx
  %.not17.i.us.1 = icmp eq i64 %i.ea, 0
  br i1 %.not17.i.us.1, label %bb.p, label %.lr.ph25.i303.us.preheader

bb.p:                                             ; preds = %.lr.ph.i294.us.1
  %indvars.iv.next.i296.us.1 = add nuw nsw i64 %indvars.iv.i295.us, 2 ; 2 uses
  %exitcond.not.i297.us.1 = icmp eq i64 %indvars.iv.next.i296.us.1, %wide.trip.count.i293
  br i1 %exitcond.not.i297.us.1, label %.lr.ph25.i.us, label %.lr.ph.i294.us, !llvm.loop !6

.lr.ph25.i.us:                                    ; preds = %bb.p, %bb.q
  %indvars.iv32.i.us = phi i64 [ %indvars.iv.next33.i.us, %bb.q ], [ 0, %bb.p ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv32.i.us
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !26
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv32.i.us
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.ef = and i64 %i.ee, %i.ec
  %.not16.i.us = icmp eq i64 %i.ef, 0
  br i1 %.not16.i.us, label %bb.q, label %.lr.ph25.i303.us.preheader

.lr.ph25.i303.us.preheader:                       ; preds = %.lr.ph.i294.us, %.lr.ph.i294.us.1, %.lr.ph25.i.us
  br label %.lr.ph25.i303.us

bb.q:                                             ; preds = %.lr.ph25.i.us
  %indvars.iv.next33.i.us = add nuw nsw i64 %indvars.iv32.i.us, 1 ; 2 uses
  %exitcond36.not.i.us = icmp eq i64 %indvars.iv.next33.i.us, %wide.trip.count.i293
  br i1 %exitcond36.not.i.us, label %.thread406.loopexit, label %.lr.ph25.i.us, !llvm.loop !7

.lr.ph25.i303.us:                                 ; preds = %.lr.ph25.i303.us.preheader, %bb.r
  %indvars.iv32.i304.us = phi i64 [ %indvars.iv.next33.i306.us, %bb.r ], [ 0, %.lr.ph25.i303.us.preheader ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv32.i304.us
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32.i304.us
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !26
  %i.ek = and i64 %i.ej, %i.eh
  %.not16.i305.us = icmp eq i64 %i.ek, 0
  br i1 %.not16.i305.us, label %bb.r, label %Abc_TtIntersect.exit308.us

bb.r:                                             ; preds = %.lr.ph25.i303.us
  %indvars.iv.next33.i306.us = add nuw nsw i64 %indvars.iv32.i304.us, 1 ; 2 uses
  %exitcond36.not.i307.us = icmp eq i64 %indvars.iv.next33.i306.us, %wide.trip.count.i293
  br i1 %exitcond36.not.i307.us, label %.lr.ph.i312.us, label %.lr.ph25.i303.us, !llvm.loop !7

.lr.ph.i312.us:                                   ; preds = %bb.r, %bb.s
  %indvars.iv.i313.us = phi i64 [ %indvars.iv.next.i315.us.1, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i313.us
  %i.em = load i64, ptr %i.el, align 8, !tbaa !26
  %i.en = xor i64 %i.em, -1
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i313.us
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !26
  %i.eq = and i64 %i.ep, %i.en
  %.not17.i314.us = icmp eq i64 %i.eq, 0
  br i1 %.not17.i314.us, label %.lr.ph.i312.us.1, label %Abc_TtIntersect.exit308.us

.lr.ph.i312.us.1:                                 ; preds = %.lr.ph.i312.us
  %indvars.iv.next.i315.us = or disjoint i64 %indvars.iv.i313.us, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i315.us
  %i.es = load i64, ptr %i.er, align 8, !tbaa !26
  %i.et = xor i64 %i.es, -1
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i315.us
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ew = and i64 %i.ev, %i.et
  %.not17.i314.us.1 = icmp eq i64 %i.ew, 0
  br i1 %.not17.i314.us.1, label %bb.s, label %Abc_TtIntersect.exit308.us

bb.s:                                             ; preds = %.lr.ph.i312.us.1
  %indvars.iv.next.i315.us.1 = add nuw nsw i64 %indvars.iv.i313.us, 2 ; 2 uses
  %exitcond.not.i316.us.1 = icmp eq i64 %indvars.iv.next.i315.us.1, %wide.trip.count.i293
  br i1 %exitcond.not.i316.us.1, label %.lr.ph.preheader.i318, label %.lr.ph.i312.us, !llvm.loop !6

Abc_TtIntersect.exit308.us:                       ; preds = %.lr.ph25.i303.us, %.lr.ph.i312.us, %.lr.ph.i312.us.1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ex = trunc i64 %indvars.iv.next to i32
  %9 = or disjoint i32 %i.ex, 1
  %.not195.us = icmp slt i32 %9, %.val
  br i1 %.not195.us, label %.critedge.us, label %.split, !llvm.loop !208

.critedge:                                        ; preds = %.critedge.lr.ph
  %i.ey = load i32, ptr %.val202, align 4, !tbaa !17
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %.val205, i64 %i.ez
  br label %.thread406

.thread406.loopexit:                              ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val202, i64 %indvars.iv
  br label %.thread406

.thread406:                                       ; preds = %.critedge, %.thread406.loopexit
  %.val202.pn = phi ptr [ %.val202, %.critedge ], [ %i.fb, %.thread406.loopexit ]
  %i.fc = phi ptr [ %i.fa, %.critedge ], [ %i.do, %.thread406.loopexit ]
  %.in = getelementptr inbounds nuw i8, ptr %.val202.pn, i64 4
  %i.fd = load i32, ptr %.in, align 4, !tbaa !17
  store i32 %i.fd, ptr %7, align 4, !tbaa !17
  br label %Abc_TtClear.exit

.lr.ph.preheader.i318:                            ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val202, i64 %indvars.iv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !17
  %i.fh = xor i32 %i.fg, 1
  store i32 %i.fh, ptr %7, align 4, !tbaa !17
  %min.iters.check = icmp ult i32 %i.f, 10
  br i1 %min.iters.check, label %.lr.ph.i320.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i318
  %i.fi = sext i32 %i.dm to i64
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = add i64 %i.fj, %.val205527
  %i.fl = sub i64 %i.fk, %.0.i526
  %diff.check = icmp ugt i64 %i.fl, -32
  br i1 %diff.check, label %.lr.ph.i320.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i293, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <2 x i64>, ptr %i.fm, align 8, !tbaa !26
  %wide.load528 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !26
  %i.fo = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.fp = xor <2 x i64> %wide.load528, splat (i64 -1)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <2 x i64> %i.fo, ptr %i.fq, align 8, !tbaa !26
  store <2 x i64> %i.fp, ptr %i.fr, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i293
  br i1 %cmp.n, label %Abc_TtClear.exit, label %.lr.ph.i320.preheader

.lr.ph.i320.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i318, %middle.block
  %indvars.iv.i321.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i318 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i293, 2    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i320.prol.loopexit, label %.lr.ph.i320.prol

.lr.ph.i320.prol:                                 ; preds = %.lr.ph.i320.preheader, %.lr.ph.i320.prol
  %indvars.iv.i321.prol = phi i64 [ %indvars.iv.next.i322.prol, %.lr.ph.i320.prol ], [ %indvars.iv.i321.ph, %.lr.ph.i320.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i320.prol ], [ 0, %.lr.ph.i320.preheader ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i321.prol
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = xor i64 %i.fu, -1
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.i321.prol
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !26
  %indvars.iv.next.i322.prol = add nuw nsw i64 %indvars.iv.i321.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i320.prol.loopexit, label %.lr.ph.i320.prol, !llvm.loop !210

.lr.ph.i320.prol.loopexit:                        ; preds = %.lr.ph.i320.prol, %.lr.ph.i320.preheader
  %indvars.iv.i321.unr = phi i64 [ %indvars.iv.i321.ph, %.lr.ph.i320.preheader ], [ %indvars.iv.next.i322.prol, %.lr.ph.i320.prol ]
  %i.fx = sub nsw i64 %indvars.iv.i321.ph, %wide.trip.count.i293
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %Abc_TtClear.exit, label %.lr.ph.i320

.lr.ph.i320:                                      ; preds = %.lr.ph.i320.prol.loopexit, %.lr.ph.i320
  %indvars.iv.i321 = phi i64 [ %indvars.iv.next.i322.3, %.lr.ph.i320 ], [ %indvars.iv.i321.unr, %.lr.ph.i320.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i321
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26
  %i.gb = xor i64 %i.ga, -1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.i321
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !26
  %indvars.iv.next.i322 = add nuw nsw i64 %indvars.iv.i321, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i322
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !26
  %i.gf = xor i64 %i.ge, -1
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i322
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !26
  %indvars.iv.next.i322.1 = add nuw nsw i64 %indvars.iv.i321, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i322.1
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26
  %i.gj = xor i64 %i.gi, -1
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i322.1
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !26
  %indvars.iv.next.i322.2 = add nuw nsw i64 %indvars.iv.i321, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i322.2
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !26
  %i.gn = xor i64 %i.gm, -1
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.i322.2
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !26
  %indvars.iv.next.i322.3 = add nuw nsw i64 %indvars.iv.i321, 4 ; 2 uses
  %exitcond.not.i323.3 = icmp eq i64 %indvars.iv.next.i322.3, %wide.trip.count.i293
  br i1 %exitcond.not.i323.3, label %Abc_TtClear.exit, label %.lr.ph.i320, !llvm.loop !211

.split:                                           ; preds = %Abc_TtIntersect.exit308.us, %bb.o, %Abc_TtHasVar.exit
  %.sink = phi ptr [ null, %Abc_TtHasVar.exit ], [ %6, %bb.o ], [ %6, %Abc_TtIntersect.exit308.us ] ; 2 uses
  %i.gp = call ptr @Abc_TtGiaMin_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ak, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %.sink, ptr noundef nonnull %i.a, ptr noundef %8) ; 12 uses
  %i.gq = ptrtoaddr ptr %i.gp to i64
  %i.gr = sext i32 %i.aj to i64                   ; 6 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gr
  %i.gu = call ptr @Abc_TtGiaMin_rec(ptr noundef %0, ptr noundef %i.gs, ptr noundef %i.gt, i32 noundef %i.ak, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %.sink, ptr noundef nonnull %i.b, ptr noundef %8) ; 12 uses
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %i.gw = icmp eq ptr %i.gp, null                 ; 4 uses
  %i.gx = icmp eq ptr %i.gu, null                 ; 2 uses
  %or.cond = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %or.cond, label %Abc_TtClear.exit, label %bb.t

bb.t:                                             ; preds = %.split
  %or.cond4 = select i1 %i.gw, i1 true, i1 %i.gx
  br i1 %or.cond4, label %Abc_TtEqual.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gy = icmp sgt i32 %i.aj, 0
  br i1 %i.gy, label %.lr.ph.preheader.i325, label %Abc_TtEqual.exit.thread.thread

Abc_TtEqual.exit.thread.thread:                   ; preds = %bb.u
  %i.gz = load i32, ptr %i.a, align 4
  store i32 %i.gz, ptr %7, align 4, !tbaa !17
  br label %Abc_TtClear.exit

.lr.ph.preheader.i325:                            ; preds = %bb.u
  %wide.trip.count.i326 = zext nneg i32 %i.aj to i64 ; 13 uses
  br label %.lr.ph.i327

bb.v:                                             ; preds = %.lr.ph.i327
  %indvars.iv.next.i330 = add nuw nsw i64 %indvars.iv.i328, 1 ; 2 uses
  %exitcond.not.i331 = icmp eq i64 %indvars.iv.next.i330, %wide.trip.count.i326
  br i1 %exitcond.not.i331, label %Abc_TtEqual.exit.thread, label %.lr.ph.i327, !llvm.loop !0

.lr.ph.i327:                                      ; preds = %bb.v, %.lr.ph.preheader.i325
  %indvars.iv.i328 = phi i64 [ 0, %.lr.ph.preheader.i325 ], [ %indvars.iv.next.i330, %bb.v ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i328
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !26
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i328
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !26
  %.not.i329 = icmp eq i64 %i.hb, %i.hd
  br i1 %.not.i329, label %bb.v, label %.lr.ph18.i348.preheader

.lr.ph18.i348.preheader:                          ; preds = %.lr.ph.i327
  %min.iters.check532 = icmp ult i32 %i.aj, 8
  %i.he = sub i64 %i.gq, %.0.i526
  %diff.check534 = icmp ugt i64 %i.he, -32
  %or.cond626 = select i1 %min.iters.check532, i1 true, i1 %diff.check534
  br i1 %or.cond626, label %.lr.ph18.i348.preheader629, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph18.i348.preheader
  %n.vec536 = and i64 %wide.trip.count.i326, 2147483644 ; 3 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph535
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next541, %vector.body537 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index538 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load539 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !26
  %wide.load540 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index538 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <2 x i64> %wide.load539, ptr %i.hh, align 8, !tbaa !26
  store <2 x i64> %wide.load540, ptr %i.hi, align 8, !tbaa !26
  %index.next541 = add nuw i64 %index538, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next541, %n.vec536
  br i1 %i.hj, label %middle.block542, label %vector.body537, !llvm.loop !212

middle.block542:                                  ; preds = %vector.body537
  %cmp.n543 = icmp eq i64 %n.vec536, %wide.trip.count.i326
  br i1 %cmp.n543, label %.lr.ph18.preheader.i353, label %.lr.ph18.i348.preheader629

.lr.ph18.i348.preheader629:                       ; preds = %.lr.ph18.i348.preheader, %middle.block542
  %indvars.iv21.i349.ph = phi i64 [ 0, %.lr.ph18.i348.preheader ], [ %n.vec536, %middle.block542 ] ; 3 uses
  %xtraiter644 = and i64 %wide.trip.count.i326, 3 ; 2 uses
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod645.not, label %.lr.ph18.i348.prol.loopexit, label %.lr.ph18.i348.prol

.lr.ph18.i348.prol:                               ; preds = %.lr.ph18.i348.preheader629, %.lr.ph18.i348.prol
  %indvars.iv21.i349.prol = phi i64 [ %indvars.iv.next22.i350.prol, %.lr.ph18.i348.prol ], [ %indvars.iv21.i349.ph, %.lr.ph18.i348.preheader629 ] ; 3 uses
  %prol.iter646 = phi i64 [ %prol.iter646.next, %.lr.ph18.i348.prol ], [ 0, %.lr.ph18.i348.preheader629 ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv21.i349.prol
end_hunk_2
begin_hunk_3_@Abc_TtGiaMin_rec:bb.a
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !26
  %indvars.iv.next22.i357.1 = add nuw nsw i64 %indvars.iv21.i356, 2 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next22.i357.1
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !26
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next22.i357.1
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !26
  %indvars.iv.next22.i357.2 = add nuw nsw i64 %indvars.iv21.i356, 3 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next22.i357.2
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !26
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next22.i357.2
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !26
  %indvars.iv.next22.i357.3 = add nuw nsw i64 %indvars.iv21.i356, 4 ; 2 uses
  %exitcond25.not.i358.3 = icmp eq i64 %indvars.iv.next22.i357.3, %wide.trip.count.i326
  br i1 %exitcond25.not.i358.3, label %Abc_TtCopy.exit359, label %.lr.ph18.i355, !llvm.loop !223

Abc_TtCopy.exit359:                               ; preds = %.lr.ph18.i355.prol.loopexit, %.lr.ph18.i355, %middle.block558
  %.not197 = icmp eq ptr %8, null
  br i1 %.not197, label %.lr.ph.preheader.i361, label %bb.w

bb.w:                                             ; preds = %Abc_TtCopy.exit359
  %i.le = zext nneg i32 %i.ak to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !17
  %i.lh = add nsw i32 %i.lg, 1
  br label %.lr.ph.preheader.i361

.lr.ph.preheader.i361:                            ; preds = %bb.w, %Abc_TtCopy.exit359
  %i.li = phi i32 [ %i.lh, %bb.w ], [ %3, %Abc_TtCopy.exit359 ] ; 3 uses
  br label %.lr.ph.i363

bb.x:                                             ; preds = %.lr.ph.i363
  %indvars.iv.next.i366 = add nuw nsw i64 %indvars.iv.i364, 1 ; 2 uses
  %exitcond.not.i367 = icmp eq i64 %indvars.iv.next.i366, %wide.trip.count.i326
  br i1 %exitcond.not.i367, label %bb.y, label %.lr.ph.i363, !llvm.loop !6

.lr.ph.i363:                                      ; preds = %bb.x, %.lr.ph.preheader.i361
  %indvars.iv.i364 = phi i64 [ 0, %.lr.ph.preheader.i361 ], [ %indvars.iv.next.i366, %bb.x ] ; 3 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i364
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !26
  %i.ll = xor i64 %i.lk, -1
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i364
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !26
  %i.lo = and i64 %i.ln, %i.ll
  %.not17.i365 = icmp eq i64 %i.lo, 0
  br i1 %.not17.i365, label %bb.x, label %.lr.ph.i372

bb.y:                                             ; preds = %bb.x
  %i.lp = shl nsw i32 %i.li, 1
  %i.lq = load i32, ptr %i.b, align 4, !tbaa !17
  %i.lr = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.lp, i32 noundef %i.lq) #27
  %i.ls = load i32, ptr %i.a, align 4, !tbaa !17
  %i.lt = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.lr, i32 noundef %i.ls) #27
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i372
  %indvars.iv.next.i375 = add nuw nsw i64 %indvars.iv.i373, 1 ; 2 uses
  %exitcond.not.i376 = icmp eq i64 %indvars.iv.next.i375, %wide.trip.count.i326
  br i1 %exitcond.not.i376, label %bb.aa, label %.lr.ph.i372, !llvm.loop !6

.lr.ph.i372:                                      ; preds = %.lr.ph.i363, %bb.z
  %indvars.iv.i373 = phi i64 [ %indvars.iv.next.i375, %bb.z ], [ 0, %.lr.ph.i363 ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i373
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !26
  %i.lw = xor i64 %i.lv, -1
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i373
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !26
  %i.lz = and i64 %i.ly, %i.lw
  %.not17.i374 = icmp eq i64 %i.lz, 0
  br i1 %.not17.i374, label %bb.z, label %Abc_TtIntersect.exit377

bb.aa:                                            ; preds = %bb.z
  %i.ma = shl nsw i32 %i.li, 1
  %i.mb = or disjoint i32 %i.ma, 1
  %i.mc = load i32, ptr %i.a, align 4, !tbaa !17
  %i.md = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.mb, i32 noundef %i.mc) #27
  %i.me = load i32, ptr %i.b, align 4, !tbaa !17
  %i.mf = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.md, i32 noundef %i.me) #27
  br label %bb.ab

Abc_TtIntersect.exit377:                          ; preds = %.lr.ph.i372
  %i.mg = shl nsw i32 %i.li, 1
  %i.mh = load i32, ptr %i.b, align 4, !tbaa !17
  %i.mi = load i32, ptr %i.a, align 4, !tbaa !17
  %i.mj = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.mg, i32 noundef %i.mh, i32 noundef %i.mi) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %Abc_TtIntersect.exit377, %bb.y
  %.sink511 = phi i32 [ %i.mf, %bb.aa ], [ %i.mj, %Abc_TtIntersect.exit377 ], [ %i.lt, %bb.y ] ; 2 uses
  store i32 %.sink511, ptr %7, align 4, !tbaa !17
  br i1 %.not190, label %Abc_TtClear.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mk = getelementptr i8, ptr %6, i64 8
  %.val203 = load ptr, ptr %i.mk, align 8, !tbaa !45
  %i.ml = zext nneg i32 %3 to i64
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %.val203, i64 %i.ml
  %i.mn = getelementptr i8, ptr %4, i64 8
  %.val206 = load ptr, ptr %i.mn, align 8, !tbaa !42
  %i.mo = ptrtoint ptr %.0.i to i64
  %i.mp = ptrtoint ptr %.val206 to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = lshr exact i64 %i.mq, 3
  %i.ms = trunc i64 %i.mr to i32
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.mm, i32 noundef %i.ms, i32 noundef %.sink511)
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %bb.f, %.lr.ph.i320.prol.loopexit, %.lr.ph.i320, %.lr.ph18.i341.prol.loopexit, %.lr.ph18.i341, %.lr.ph18.i287.prol.loopexit, %.lr.ph18.i287, %middle.block, %middle.block590, %middle.block622, %Abc_TtEqual.exit.thread, %Abc_TtEqual.exit.thread.thread, %.thread406, %.thread400, %bb.d, %.lr.ph.preheader.i252, %.lr.ph.preheader.i233, %bb.ab, %bb.ac, %.split, %bb.c
  %.3 = phi ptr [ %.0.i, %bb.c ], [ %.0.i, %.lr.ph.preheader.i252 ], [ %.0.i, %bb.ab ], [ %.0.i, %.lr.ph.preheader.i233 ], [ %.0.i, %middle.block ], [ %.0.i, %Abc_TtEqual.exit.thread ], [ null, %.split ], [ %.0.i, %.thread400 ], [ %.0.i, %bb.ac ], [ %i.fc, %.thread406 ], [ %.0.i, %middle.block590 ], [ null, %bb.d ], [ %.0.i, %middle.block622 ], [ %.0.i, %Abc_TtEqual.exit.thread.thread ], [ %.0.i, %.lr.ph18.i341.prol.loopexit ], [ %.0.i, %.lr.ph.i320.prol.loopexit ], [ %.0.i, %.lr.ph18.i287.prol.loopexit ], [ %.0.i, %.lr.ph18.i287 ], [ %.0.i, %.lr.ph18.i341 ], [ %.0.i, %.lr.ph.i320 ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %.3
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @Abc_TtGia6Min_rec(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 -2147483648, 7) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr noundef %6) unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %5, align 4, !tbaa !17
  %i.c = icmp ne i64 %2, 0
  %i.d = or i64 %2, %1
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  %.not111 = icmp eq i64 %2, -1
  %or.cond = and i1 %.not, %.not111
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i64 %1, -1
  %or.cond3 = or i1 %i.e, %i.c
  br i1 %or.cond3, label %.preheader131.preheader, label %bb.d

.preheader131.preheader:                          ; preds = %bb.c
  %smin = tail call i32 @llvm.smin.i32(i32 %3, i32 0) ; 3 uses
  %i.f = add i32 %smin, -1                        ; 2 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader131.preheader
  %i.h = zext nneg i32 %3 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %5, align 4, !tbaa !17
  br label %.thread

.preheader131:                                    ; preds = %bb.f
  %i.i = trunc nuw i64 %indvars.iv.next182 to i32 ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %._crit_edge, !llvm.loop !224

bb.e:                                             ; preds = %.lr.ph, %.preheader131
  %i.k = phi i32 [ %3, %.lr.ph ], [ %i.i, %.preheader131 ] ; 2 uses
  %indvars.iv.next182.in = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next182, %.preheader131 ]
  %indvars.iv.next182 = add nsw i64 %indvars.iv.next182.in, -1 ; 4 uses
  %indvars183 = trunc i64 %indvars.iv.next182 to i32 ; 3 uses
  %i.l = shl nuw i32 1, %indvars183
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %1, %i.m
  %i.o = and i64 %indvars.iv.next182, 4294967295
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = xor i64 %i.n, %1
  %i.s = and i64 %i.q, %i.r
  %.not129 = icmp eq i64 %i.s, 0
  br i1 %.not129, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.t = lshr i64 %2, %i.m
  %i.u = xor i64 %i.t, %2
  %i.v = and i64 %i.q, %i.u
  %.not130 = icmp eq i64 %i.v, 0
  br i1 %.not130, label %.preheader131, label %._crit_edge185, !llvm.loop !224

._crit_edge185:                                   ; preds = %bb.f
  br label %._crit_edge, !llvm.loop !224

._crit_edge:                                      ; preds = %.preheader131, %bb.e, %._crit_edge185, %.preheader131.preheader
  %.0102.in.lcssa = phi i32 [ %smin, %.preheader131.preheader ], [ %i.k, %._crit_edge185 ], [ %smin, %.preheader131 ], [ %i.k, %bb.e ]
  %.0102.lcssa = phi i32 [ %i.f, %.preheader131.preheader ], [ %indvars183, %._crit_edge185 ], [ %i.f, %.preheader131 ], [ %indvars183, %bb.e ] ; 4 uses
  %.not114 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %.not114, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.w = getelementptr i8, ptr %4, i64 4
  %.val = load i32, ptr %i.w, align 4, !tbaa !40  ; 2 uses
  %.not119144 = icmp sgt i32 %.val, 1
  br i1 %.not119144, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.x = getelementptr i8, ptr %4, i64 8
  %.val127 = load ptr, ptr %i.x, align 8, !tbaa !42 ; 3 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 2 ; 2 uses
  %i.y = trunc i64 %indvars.iv.next156 to i32
  %7 = or disjoint i32 %i.y, 1
  %.not119 = icmp slt i32 %7, %.val
  br i1 %.not119, label %.critedge, label %.loopexit, !llvm.loop !225

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.g
  %indvars.iv155 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next156, %bb.g ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv155
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26  ; 4 uses
  %i.ab = xor i64 %i.aa, -1                       ; 3 uses
  %i.ac = and i64 %1, %i.ab
  %i.ad = and i64 %i.aa, %2
  %i.ae = or i64 %i.ac, %i.ad
  %or.cond123 = icmp eq i64 %i.ae, 0
  br i1 %or.cond123, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv155
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = load i64, ptr %9, align 8, !tbaa !26
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.i:                                             ; preds = %.critedge
  %i.ah = and i64 %i.aa, %1
  %i.ai = and i64 %2, %i.ab
  %i.aj = or i64 %i.ah, %i.ai
  %or.cond124 = icmp eq i64 %i.aj, 0
  br i1 %or.cond124, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv155
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %11, align 8, !tbaa !26
  %i.al = trunc i64 %i.ak to i32
  %i.am = xor i32 %i.al, 1
  store i32 %i.am, ptr %5, align 4, !tbaa !17
  br label %.thread

.loopexit:                                        ; preds = %bb.g, %.preheader, %._crit_edge
  %i.an = sext i32 %.0102.lcssa to i64            ; 3 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26 ; 3 uses
  %i.aq = and i64 %i.ap, %1                       ; 2 uses
  %i.ar = shl nuw i32 1, %.0102.lcssa
  %i.as = zext nneg i32 %i.ar to i64              ; 4 uses
  %i.at = shl i64 %i.aq, %i.as
  %i.au = or i64 %i.at, %i.aq
  %i.av = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.an
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !26 ; 3 uses
  %i.ax = and i64 %i.aw, %1                       ; 2 uses
  %i.ay = lshr i64 %i.ax, %i.as
  %i.az = or i64 %i.ay, %i.ax
  %i.ba = and i64 %i.ap, %2                       ; 2 uses
  %i.bb = shl i64 %i.ba, %i.as
  %i.bc = or i64 %i.bb, %i.ba
  %i.bd = and i64 %i.aw, %2                       ; 2 uses
  %i.be = lshr i64 %i.bd, %i.as
  %i.bf = or i64 %i.be, %i.bd
  %i.bg = call fastcc i64 @Abc_TtGia6Min_rec(ptr noundef %0, i64 noundef %i.au, i64 noundef %i.bc, i32 noundef %.0102.lcssa, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef %6) ; 6 uses
  %i.bh = call fastcc i64 @Abc_TtGia6Min_rec(ptr noundef %0, i64 noundef %i.az, i64 noundef %i.bf, i32 noundef %.0102.lcssa, ptr noundef %4, ptr noundef nonnull %i.b, ptr noundef %6) ; 6 uses
  %i.bi = icmp eq i64 %i.bg, 1311768467139281697  ; 2 uses
  %i.bj = icmp eq i64 %i.bh, 1311768467139281697  ; 2 uses
  %or.cond5 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond5, label %.thread, label %bb.k

bb.k:                                             ; preds = %.loopexit
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !17
  store i32 %i.bk, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %i.bg, %i.bh
  %or.cond125 = select i1 %i.bj, i1 true, i1 %i.bl
  br i1 %or.cond125, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !17
  store i32 %i.bm, ptr %5, align 4, !tbaa !17
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bn = and i64 %i.bg, %i.ap
  %i.bo = and i64 %i.bh, %i.aw
  %i.bp = or i64 %i.bo, %i.bn                     ; 3 uses
  %.not120 = icmp eq ptr %6, null
  br i1 %.not120, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds [4 x i8], ptr %6, i64 %i.an
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !17
  %i.bs = add nsw i32 %i.br, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bt = phi i32 [ %i.bs, %bb.p ], [ %.0102.in.lcssa, %bb.o ] ; 2 uses
  %i.bu = xor i64 %i.bh, -1
  %i.bv = and i64 %i.bg, %i.bu
  %.not121 = icmp eq i64 %i.bv, 0
  br i1 %.not121, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = shl nsw i32 %i.bt, 1
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !17
  %i.by = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bw, i32 noundef %i.bx) #27
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ca = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.by, i32 noundef %i.bz) #27
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cb = xor i64 %i.bg, -1
  %i.cc = and i64 %i.bh, %i.cb
  %.not122 = icmp eq i64 %i.cc, 0
  %i.cd = shl nsw i32 %i.bt, 1                    ; 2 uses
  %i.ce = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  br i1 %.not122, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = or disjoint i32 %i.cd, 1
  %i.cg = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cf, i32 noundef %i.ce) #27
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ci = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cg, i32 noundef %i.ch) #27
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ck = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.cd, i32 noundef %i.cj, i32 noundef %i.ce) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r
  %.sink = phi i32 [ %i.ci, %bb.t ], [ %i.ck, %bb.u ], [ %i.ca, %bb.r ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !17
  br i1 %.not114, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = sext i32 %.sink to i64
  tail call fastcc void @Vec_WrdPushTwo(ptr noundef %4, i64 noundef %i.bp, i64 noundef %i.cl)
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.h, %bb.j, %bb.v, %bb.w, %.loopexit, %bb.a, %bb.n, %bb.l, %bb.d
  %.1 = phi i64 [ 1311768467139281697, %bb.a ], [ %i.bh, %bb.l ], [ %i.bg, %bb.n ], [ 1311768467139281697, %.loopexit ], [ %i.bp, %bb.v ], [ -1, %bb.d ], [ %i.ab, %bb.j ], [ %i.bp, %bb.w ], [ %i.aa, %bb.h ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define ptr @Abc_TtGiaMinArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !40
  %i.d = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !40
  store i32 100, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !42
  %i.j = add nsw i32 %1, 1                        ; 2 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %or.cond.i.i = icmp ult i32 %1, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.j ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !47
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %spec.store.select.i.i to i64
  %i.m = tail call noalias ptr @calloc(i64 noundef %i.l, i64 noundef 16) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %i.n, ptr %i.p, align 8, !tbaa !45
  store i32 %i.j, ptr %i.o, align 4, !tbaa !46
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call dereferenceable_or_null(8388608) ptr @realloc(ptr noundef nonnull %i.d, i64 noundef 8388608) #26
  br label %Vec_WrdGrow.exit

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #25
  br label %Vec_WrdGrow.exit

Vec_WrdGrow.exit:                                 ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  store ptr %i.s, ptr %i.e, align 8, !tbaa !42
  store i32 1048576, ptr %i.b, align 8, !tbaa !41
  %i.t = tail call ptr @Gia_ManStart(i32 noundef 1000) #27 ; 8 uses
  %i.u = tail call noalias noundef dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.u, ptr noundef nonnull align 1 dereferenceable(6) @.str.13, i64 6, i1 false) #27
  store ptr %i.u, ptr %i.t, align 8, !tbaa !64
  %i.v = icmp sgt i32 %1, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdGrow.exit, %.lr.ph
  %.0101 = phi i32 [ %i.w, %.lr.ph ], [ 0, %Vec_WrdGrow.exit ]
  tail call fastcc void @Gia_ManAppendCi(ptr noundef nonnull %i.t)
  %i.w = add nuw nsw i32 %.0101, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

._crit_edge:                                      ; preds = %.lr.ph, %Vec_WrdGrow.exit
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.t) #27
  %i.x = sdiv i32 %2, 2
  %i.y = icmp sgt i32 %2, 1
  br i1 %i.y, label %.lr.ph104, label %._crit_edge105

.lr.ph104:                                        ; preds = %._crit_edge
  %i.z = tail call i32 @llvm.smax.i32(i32 %1, i32 6)
  %i.aa = add nsw i32 %i.z, -6                    ; 2 uses
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %.lr.ph104, %Abc_TtCopy.exit
  %.060102 = phi i32 [ 0, %.lr.ph104 ], [ %i.al, %Abc_TtCopy.exit ] ; 2 uses
  %i.ab = shl nuw nsw i32 %.060102, 1             ; 2 uses
  %i.ac = shl i32 %i.ab, %i.aa
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ad
  %i.af = or disjoint i32 %i.ab, 1
  %i.ag = shl i32 %i.af, %i.aa
  %i.ah = sext i32 %i.ag to i64
end_hunk_3
