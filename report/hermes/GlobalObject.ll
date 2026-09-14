Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/GlobalObject?download=true
inline.NumInlined: 816
inline.NumDeleted: 330
begin_hunk_0_@_ZN6hermes2vm8parseIntEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread: ; preds = %bb.ao
  %.not238 = icmp eq ptr %.sroa.0116.1, %.sroa.0.0.i48
  br i1 %.not238, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86, label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75
  %i.dr = load i16, ptr %.sroa.27.1370383, align 2, !tbaa !39
  %i.ds = icmp eq i16 %i.dr, 48
  br i1 %i.ds, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread
  %i.dt = load i8, ptr %.sroa.0116.1, align 1, !tbaa !37
  %i.du = icmp eq i8 %i.dt, 48
  br i1 %i.du, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.27.1370383, i64 2 ; 4 uses
  %.not241 = icmp eq ptr %i.dv, %.sroa.3.0.i47
  br i1 %.not241, label %.thread386, label %bb.ap

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0116.1, i64 1 ; 4 uses
  %.not239 = icmp eq ptr %i.dw, %.sroa.0.0.i48
  br i1 %.not239, label %.thread223, label %.thread213

.thread213:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !37
  %i.dy = sext i8 %i.dx to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit84

bb.ap:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82
  %i.dz = load i16, ptr %i.dv, align 2, !tbaa !39
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit84

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit84: ; preds = %.thread213, %bb.ap
  %.not.i.i73384 = phi i1 [ false, %.thread213 ], [ true, %bb.ap ] ; 2 uses
  %.135373379 = phi double [ %.135, %.thread213 ], [ %.135373380, %bb.ap ] ; 4 uses
  %.sroa.0116.5199209220 = phi ptr [ %i.dw, %.thread213 ], [ null, %bb.ap ] ; 4 uses
  %.sroa.27.5198211217 = phi ptr [ %.sroa.27.0, %.thread213 ], [ %i.dv, %bb.ap ] ; 4 uses
  %i.ea = phi i16 [ %i.dy, %.thread213 ], [ %i.dz, %bb.ap ]
  %i.eb = and i16 %i.ea, -33
  %i.ec = icmp eq i16 %i.eb, 88
  br i1 %i.ec, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit84
  br i1 %.not.i.i73384, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0116.5199209220, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader

bb.as:                                            ; preds = %bb.aq
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.27.5198211217, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader

bb.at:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit84
  br i1 %.not.i.i73384, label %.thread386, label %.thread223

.thread223:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread, %bb.at
  %.135373382 = phi double [ %.135373379, %bb.at ], [ %.135, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread ]
  %.sroa.0116.5199210228 = phi ptr [ %.sroa.0116.5199209220, %bb.at ], [ %i.dw, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread ]
  %.sroa.27.5198212227 = phi ptr [ %.sroa.27.5198211217, %bb.at ], [ %.sroa.27.0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82.thread ]
  %i.ef = getelementptr inbounds i8, ptr %.sroa.0116.5199210228, i64 -1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86

.thread386:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82, %bb.at
  %.sroa.0116.5199210393 = phi ptr [ %.sroa.0116.5199209220, %bb.at ], [ null, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82 ]
  %.sroa.27.5198212392 = phi ptr [ %.sroa.27.5198211217, %bb.at ], [ %i.dv, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82 ]
  %.135373381391 = phi double [ %.135373379, %bb.at ], [ %.135373380, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit82 ]
  %i.eg = getelementptr inbounds i8, ptr %.sroa.27.5198212392, i64 -2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72.thread, %.thread386, %.thread223, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72
  %.135372 = phi double [ %.135, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread ], [ %.135373382, %.thread223 ], [ %.135373380, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77 ], [ %.135373380, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75 ], [ %.135, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72 ], [ %.135, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread ], [ %.034188, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72.thread ], [ %.135373381391, %.thread386 ] ; 7 uses
  %.sroa.27.2 = phi ptr [ %.sroa.27.0, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread ], [ %.sroa.27.5198212227, %.thread223 ], [ %.sroa.27.1370383, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77 ], [ %.sroa.27.1370383, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75 ], [ %.sroa.27.0, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72 ], [ %.sroa.27.0, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread ], [ %i.dq, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72.thread ], [ %i.eg, %.thread386 ] ; 9 uses
  %.sroa.0116.2 = phi ptr [ %.sroa.0116.1, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77.thread ], [ %i.ef, %.thread223 ], [ null, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit77 ], [ null, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75 ], [ %.sroa.0116.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72 ], [ %.sroa.0116.1, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit75.thread ], [ null, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit72.thread ], [ %.sroa.0116.5199210393, %.thread386 ] ; 9 uses
  %i.eh = icmp sgt i32 %.2, 10
  %i.ei = add nuw nsw i32 %.2, 87
  %i.ej = add nuw nsw i32 %.2, 48
  br i1 %i.eh, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86
  %i.ek = icmp eq i32 %.2, 10
  br i1 %i.ek, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split.us, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us, %.split.us.us
  %.sroa.9.0.us.us = phi ptr [ %.sroa.9.1.us.us, %.split.us.us ], [ %.sroa.27.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us ] ; 5 uses
  %.sroa.0.0.us.us = phi ptr [ %.sroa.0.0.us.us.be, %.split.us.us ], [ %.sroa.0116.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us ] ; 5 uses
  %.not.i.i88.us.us = icmp eq ptr %.sroa.0.0.us.us, null ; 4 uses
  br i1 %.not.i.i88.us.us, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split.us
  %.not242.us.us = icmp eq ptr %.sroa.0.0.us.us, %.sroa.0.0.i48
  br i1 %.not242.us.us, label %.split231, label %.thread230.us.us

.thread230.us.us:                                 ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us
  %i.el = load i8, ptr %.sroa.0.0.us.us, align 1, !tbaa !37
  %i.em = sext i8 %i.el to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split.us
  %.not243.us.us = icmp eq ptr %.sroa.9.0.us.us, %.sroa.3.0.i47
  br i1 %.not243.us.us, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %bb.au

bb.au:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us
  %i.en = load i16, ptr %.sroa.9.0.us.us, align 2, !tbaa !39
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us: ; preds = %bb.au, %.thread230.us.us
  %i.eo = phi i16 [ %i.em, %.thread230.us.us ], [ %i.en, %bb.au ]
  %i.ep = add i16 %i.eo, -48
  %or.cond.i.us.us = icmp ult i16 %i.ep, 10
  br i1 %or.cond.i.us.us, label %.split.us.us, label %.critedge7

.split.us.us:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.us, i64 1
  %.sroa.9.1.idx.us.us = select i1 %.not.i.i88.us.us, i64 2, i64 0
  %.sroa.9.1.us.us = getelementptr inbounds nuw i8, ptr %.sroa.9.0.us.us, i64 %.sroa.9.1.idx.us.us
  %.sroa.0.0.us.us.be = select i1 %.not.i.i88.us.us, ptr null, ptr %i.eq
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split.us, !llvm.loop !48

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us
  %.sroa.9.0.us = phi ptr [ %.sroa.9.1.us, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us ], [ %.sroa.27.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us ] ; 5 uses
  %.sroa.0.0.us = phi ptr [ %.sroa.0.0.us.be, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us ], [ %.sroa.0116.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us ] ; 5 uses
  %.not.i.i88.us = icmp eq ptr %.sroa.0.0.us, null ; 4 uses
  br i1 %.not.i.i88.us, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split
  %.not242.us = icmp eq ptr %.sroa.0.0.us, %.sroa.0.0.i48
  br i1 %.not242.us, label %.split231, label %.thread230.us

.thread230.us:                                    ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us
  %i.er = load i8, ptr %.sroa.0.0.us, align 1, !tbaa !37
  %i.es = sext i8 %i.er to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split
  %.not243.us = icmp eq ptr %.sroa.9.0.us, %.sroa.3.0.i47
  br i1 %.not243.us, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %bb.av

bb.av:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us
  %i.et = load i16, ptr %.sroa.9.0.us, align 2, !tbaa !39
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us: ; preds = %bb.av, %.thread230.us
  %i.eu = phi i16 [ %i.es, %.thread230.us ], [ %i.et, %bb.av ] ; 2 uses
  %i.ev = add i16 %i.eu, -48
  %or.cond.i.us = icmp ult i16 %i.ev, 10
  %i.ew = zext nneg i16 %i.eu to i32
  %i.ex = icmp sgt i32 %i.ej, %i.ew
  %or.cond318 = select i1 %or.cond.i.us, i1 %i.ex, i1 false
  br i1 %or.cond318, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us, label %.critedge7

_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 1
  %.sroa.9.1.idx.us = select i1 %.not.i.i88.us, i64 2, i64 0
  %.sroa.9.1.us = getelementptr inbounds nuw i8, ptr %.sroa.9.0.us, i64 %.sroa.9.1.idx.us
  %.sroa.0.0.us.be = select i1 %.not.i.i88.us, ptr null, ptr %i.ey
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.us.split, !llvm.loop !48

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86, %bb.ar, %bb.as
  %.135372402424 = phi double [ %.135373379, %bb.ar ], [ %.135373379, %bb.as ], [ %.135372, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86 ] ; 3 uses
  %.sroa.27.2404423 = phi ptr [ %.sroa.27.5198211217, %bb.ar ], [ %i.ee, %bb.as ], [ %.sroa.27.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86 ] ; 4 uses
  %.sroa.0116.2410422 = phi ptr [ %i.ed, %bb.ar ], [ %.sroa.0116.5199209220, %bb.as ], [ %.sroa.0116.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86 ] ; 4 uses
  %.3.fr414421 = phi i32 [ 16, %bb.ar ], [ 16, %bb.as ], [ %.2, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86 ] ; 3 uses
  %i.ez = phi i32 [ 103, %bb.ar ], [ 103, %bb.as ], [ %i.ei, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86 ]
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us

_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader
  %.sroa.9.0.us278 = phi ptr [ %.sroa.27.2404423, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader ], [ %.sroa.9.1.us292, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290 ] ; 5 uses
  %.sroa.0.0.us279 = phi ptr [ %.sroa.0116.2410422, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us.preheader ], [ %.sroa.0.0.us279.be, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290 ] ; 5 uses
  %.not.i.i88.us280 = icmp eq ptr %.sroa.0.0.us279, null ; 4 uses
  br i1 %.not.i.i88.us280, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284, label %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us
  %.not242.us282 = icmp eq ptr %.sroa.0.0.us279, %.sroa.0.0.i48
  br i1 %.not242.us282, label %.split231, label %.thread230.us283

.thread230.us283:                                 ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281
  %i.fa = load i8, ptr %.sroa.0.0.us279, align 1, !tbaa !37
  %i.fb = sext i8 %i.fa to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us286

_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284: ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us
  %.not243.us285 = icmp eq ptr %.sroa.9.0.us278, %.sroa.3.0.i47
  br i1 %.not243.us285, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284
  %i.fc = load i16, ptr %.sroa.9.0.us278, align 2, !tbaa !39
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us286

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us286: ; preds = %bb.aw, %.thread230.us283
  %i.fd = phi i16 [ %i.fb, %.thread230.us283 ], [ %i.fc, %bb.aw ] ; 2 uses
  %i.fe = add i16 %i.fd, -48
  %or.cond.i.us287 = icmp ult i16 %i.fe, 10
  br i1 %or.cond.i.us287, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290, label %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288

_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288:  ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us286
  %i.ff = or i16 %i.fd, 32                        ; 2 uses
  %i.fg = icmp ugt i16 %i.ff, 96
  %i.fh = zext i16 %i.ff to i32
  %3 = icmp sgt i32 %i.ez, %i.fh
  %i.fi = select i1 %i.fg, i1 %3, i1 false
  br i1 %i.fi, label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290, label %.critedge7

_ZN6hermes2vm10StringView14const_iteratorppEv.exit94.us290: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us286, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us279, i64 1
  %.sroa.9.1.idx.us291 = select i1 %.not.i.i88.us280, i64 2, i64 0
  %.sroa.9.1.us292 = getelementptr inbounds nuw i8, ptr %.sroa.9.0.us278, i64 %.sroa.9.1.idx.us291
  %.sroa.0.0.us279.be = select i1 %.not.i.i88.us280, ptr null, ptr %i.fj
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit86.split.split.us, !llvm.loop !48

.critedge7:                                       ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288
  %.3.fr413 = phi i32 [ %.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.3.fr414421, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.sroa.0116.2409 = phi ptr [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.sroa.0116.2410422, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.sroa.27.2403 = phi ptr [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.sroa.27.2404423, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.135372401 = phi double [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.135372402424, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.us-phi269 = phi ptr [ %.sroa.9.0.us.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.sroa.9.0.us278, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.sroa.9.0.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.us-phi270 = phi ptr [ %.sroa.0.0.us.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.sroa.0.0.us279, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.sroa.0.0.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ] ; 2 uses
  %.us-phi271 = phi i1 [ %.not.i.i88.us.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us.us ], [ %.not.i.i88.us280, %_ZN6hermes2vmL16isValidRadixCharEDsi.exit.us288 ], [ %.not.i.i88.us, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit92.us ]
  br i1 %.us-phi271, label %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, label %.split231

.split231:                                        ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281, %.critedge7
  %.3.fr412 = phi i32 [ %.3.fr413, %.critedge7 ], [ %.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.3.fr414421, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ]
  %.sroa.0116.2408 = phi ptr [ %.sroa.0116.2409, %.critedge7 ], [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.sroa.0116.2410422, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ] ; 2 uses
  %.sroa.27.2406 = phi ptr [ %.sroa.27.2403, %.critedge7 ], [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.sroa.27.2404423, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ]
  %.135372400 = phi double [ %.135372401, %.critedge7 ], [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.135372402424, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ]
  %.sroa.9.0252 = phi ptr [ %.us-phi269, %.critedge7 ], [ %.sroa.9.0.us.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.sroa.9.0.us278, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.sroa.9.0.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ]
  %.sroa.0.0249 = phi ptr [ %.us-phi270, %.critedge7 ], [ %.sroa.0.0.i48, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us.us ], [ %.sroa.0.0.i48, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us281 ], [ %.sroa.0.0.i48, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.thread.us ] ; 2 uses
  %i.fk = icmp eq ptr %.sroa.0.0249, %.sroa.0116.2408
  br i1 %i.fk, label %.critedge39, label %bb.ax

_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit: ; preds = %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284, %.critedge7
  %.us-phi270439 = phi ptr [ %.us-phi270, %.critedge7 ], [ null, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ null, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ null, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ]
  %.us-phi269438 = phi ptr [ %.us-phi269, %.critedge7 ], [ %.sroa.3.0.i47, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ %.sroa.3.0.i47, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ %.sroa.3.0.i47, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ] ; 2 uses
  %.135372401437 = phi double [ %.135372401, %.critedge7 ], [ %.135372402424, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ %.135372, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ]
  %.sroa.27.2403436 = phi ptr [ %.sroa.27.2403, %.critedge7 ], [ %.sroa.27.2404423, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ %.sroa.27.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ] ; 2 uses
  %.sroa.0116.2409435 = phi ptr [ %.sroa.0116.2409, %.critedge7 ], [ %.sroa.0116.2410422, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ %.sroa.0116.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ]
  %.3.fr413434 = phi i32 [ %.3.fr413, %.critedge7 ], [ %.3.fr414421, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us284 ], [ %.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us.us ], [ %.2, %_ZNK6hermes2vm10StringView14const_iteratorneERKS2_.exit90.us ]
  %i.fl = icmp eq ptr %.us-phi269438, %.sroa.27.2403436
  br i1 %i.fl, label %.critedge39, label %bb.ax

bb.ax:                                            ; preds = %.split231, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit
  %.3.fr411 = phi i32 [ %.3.fr412, %.split231 ], [ %.3.fr413434, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  %.sroa.0116.2407 = phi ptr [ %.sroa.0116.2408, %.split231 ], [ %.sroa.0116.2409435, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ] ; 2 uses
  %.sroa.27.2405 = phi ptr [ %.sroa.27.2406, %.split231 ], [ %.sroa.27.2403436, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  %.135372399 = phi double [ %.135372400, %.split231 ], [ %.135372401437, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  %.sroa.9.0251 = phi ptr [ %.sroa.9.0252, %.split231 ], [ %.us-phi269438, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  %.sroa.0.0248 = phi ptr [ %.sroa.0.0249, %.split231 ], [ %.us-phi270439, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  %.not.i.i88245 = phi i1 [ false, %.split231 ], [ true, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ]
  br i1 %i.ah, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fm = and i32 %.sroa.9155.8.extract.trunc, 1073741824
  %.not.i.i.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !28
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr               ; 5 uses
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 150994943
  br i1 %i.fq, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !32
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %.mask.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.fp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i, label %bb.be [
    i32 134217728, label %bb.bc
    i32 67108864, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.be:                                            ; preds = %bb.bb
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.fv, align 8, !tbaa !28
  %i.fw = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i, 281474976710655
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !32
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %.0.i.sink.i.i.i = phi ptr [ %i.af, %bb.ay ], [ %i.fs, %bb.ba ], [ %i.ft, %bb.bc ], [ %i.fu, %bb.bd ], [ %i.fz, %bb.be ]
  %i.ga = and i64 %i.ag, 1073741823
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i, i64 %i.ga
  %i.gc = ptrtoint ptr %i.gb to i64
  br label %_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit

bb.bf:                                            ; preds = %bb.ax
  %.not.i1.i.i = icmp samesign ult i32 %.sroa.9155.8.extract.trunc, 1073741824
  br i1 %.not.i1.i.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i64, ptr %i.af, align 8, !tbaa !28
  %i.gd = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i, 281474976710655
  %i.ge = inttoptr i64 %i.gd to ptr               ; 5 uses
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gg = icmp ugt i32 %i.gf, 150994943
  br i1 %i.gg, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !36
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

bb.bi:                                            ; preds = %bb.bg
  %.mask.i.i.i.i.i.i.i.i.i3.i.i = and i32 %i.gf, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i, label %bb.bl [
    i32 117440512, label %bb.bj
    i32 50331648, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

bb.bl:                                            ; preds = %bb.bi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i.i = load i64, ptr %i.gl, align 8, !tbaa !28
  %i.gm = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i.i, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !36
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bf
  %.0.i.sink.i4.i.i = phi ptr [ %i.af, %bb.bf ], [ %i.gi, %bb.bh ], [ %i.gj, %bb.bj ], [ %i.gk, %bb.bk ], [ %i.gp, %bb.bl ]
  %i.gq = and i64 %i.ag, 1073741823
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.i, i64 %i.gq
  %i.gs = ptrtoint ptr %i.gr to i64
  br label %_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit

_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i
  %.sroa.3.0.i.i = phi i64 [ 0, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i ], [ %i.gs, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i ]
  %.sroa.0.0.i.i = phi i64 [ %i.gc, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i ], [ 0, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i ]
  %.not.i.i97 = icmp eq ptr %.sroa.0116.2407, null
  %i.gt = ptrtoint ptr %.sroa.0116.2407 to i64    ; 2 uses
  %i.gu = sub i64 %i.gt, %.sroa.0.0.i.i
  %i.gv = ptrtoint ptr %.sroa.27.2405 to i64      ; 2 uses
  %i.gw = sub i64 %i.gv, %.sroa.3.0.i.i
  %i.gx = lshr exact i64 %i.gw, 1
  %.0.i.i98 = select i1 %.not.i.i97, i64 %i.gx, i64 %i.gu
  %i.gy = ptrtoint ptr %.sroa.0.0248 to i64
  %i.gz = sub i64 %i.gy, %i.gt
  %i.ha = ptrtoint ptr %.sroa.9.0251 to i64
  %i.hb = sub i64 %i.ha, %i.gv
  %i.hc = lshr exact i64 %i.hb, 1
  %.0.i2.i = select i1 %.not.i.i88245, i64 %i.hc, i64 %i.gz
  %i.hd = add i64 %.0.i.i98, %i.ag
  %i.he = and i64 %i.hd, 1073741823
  %i.hf = and i64 %i.ag, 3221225472
  %.sroa.2.8.insert.ext.i.i = or disjoint i64 %i.hf, %i.he
  %.sroa.2.12.insert.ext.i.i = shl i64 %.0.i2.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.8.insert.ext.i.i, %.sroa.2.12.insert.ext.i.i
  %i.hg = tail call noundef double @_ZN6hermes2vm17parseIntWithRadixENS0_10StringViewEi(ptr %i.af, i64 %.sroa.2.12.insert.insert.i.i, i32 noundef %.3.fr411) #12
  %i.hh = fmul double %.135372399, %i.hg          ; 2 uses
  %i.hi = fcmp uno double %i.hh, 0.000000e+00
  %i.hj = bitcast double %i.hh to i64
  %spec.select.i = select i1 %i.hi, i64 9221120237041090560, i64 %i.hj, !prof !13
  br label %.critedge39

.critedge39:                                      ; preds = %bb.e, %bb.g, %_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit, %.split231, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit, %bb.a
  %.sroa.0169.2 = phi i32 [ 1, %_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit ], [ 0, %bb.a ], [ 1, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ], [ 1, %.split231 ], [ 0, %bb.e ], [ 1, %bb.g ]
  %.sroa.6.2 = phi i64 [ %spec.select.i, %_ZNK6hermes2vm10StringView5sliceENS1_14const_iteratorES2_.exit ], [ undef, %bb.a ], [ 9221120237041090560, %_ZNK6hermes2vm10StringView14const_iteratoreqERKS2_.exit ], [ 9221120237041090560, %.split231 ], [ 9221120237041090560, %bb.e ], [ 9221120237041090560, %bb.g ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0169.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef double @_ZN6hermes2vm17parseIntWithRadixENS0_10StringViewEi(ptr, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10parseFloatEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.150", align 8 ; 14 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
end_hunk_0
