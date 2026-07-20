inline.NumInlined: 474
inline.NumDeleted: 237
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6duckdb16VectorOperations14WriteToStorageERNS_6VectorEmPh:bb.a
  %i.n = zext i32 %i.m to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.g, %bb.f
  %i.o = phi i64 [ %i.n, %bb.g ], [ %.016.i, %bb.f ] ; 3 uses
  br i1 %.not.i14.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.o, 63
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.p
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = shl nuw i64 1, %i.q
  %i.u = and i64 %i.s, %i.t
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.o
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.sink.i = phi i8 [ %i.w, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ -128, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.016.i
  store i8 %.sink.i, ptr %i.x, align 1, !tbaa !40
  %i.y = add nuw i64 %.016.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %1
  br i1 %exitcond.not.i, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %bb.f, !llvm.loop !41

bb.i:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIsEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc47 unwind label %bb.d

.noexc47:                                         ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 19 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 9 uses
  %.not.i.i39 = icmp eq ptr %i.ad, null           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i40 = icmp eq ptr %i.af, null
  br i1 %.not.i14.i40, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.noexc47
  br i1 %.not.i.i39, label %iter.check567, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader: ; preds = %.split.us.i
  %i.ag = add i64 %1, -1
  %xtraiter781 = and i64 %1, 3                    ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 3
  br i1 %i.ah, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %unroll_iter785 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i

iter.check567:                                    ; preds = %.split.us.i
  %min.iters.check553 = icmp ult i64 %1, 4
  %i.ai = sub i64 %i.ab, %i.a
  %diff.check551 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check553, i1 true, i1 %diff.check551
  br i1 %or.cond, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check567
  %min.iters.check555 = icmp ult i64 %1, 16
  br i1 %min.iters.check555, label %vec.epilog.ph571, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %n.mod.vf557 = and i64 %1, 12
  %n.vec558 = and i64 %1, -16                     ; 4 uses
  br label %vector.body559

vector.body559:                                   ; preds = %vector.body559, %vector.ph556
  %index560 = phi i64 [ 0, %vector.ph556 ], [ %index.next563, %vector.body559 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index560 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load561 = load <8 x i16>, ptr %i.aj, align 2, !tbaa !43
  %wide.load562 = load <8 x i16>, ptr %i.ak, align 2, !tbaa !43
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index560 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <8 x i16> %wide.load561, ptr %i.al, align 2, !tbaa !43
  store <8 x i16> %wide.load562, ptr %i.am, align 2, !tbaa !43
  %index.next563 = add nuw i64 %index560, 16      ; 2 uses
  %i.an = icmp eq i64 %index.next563, %n.vec558
  br i1 %i.an, label %middle.block564, label %vector.body559, !llvm.loop !45

middle.block564:                                  ; preds = %vector.body559
  %cmp.n565 = icmp eq i64 %1, %n.vec558
  br i1 %cmp.n565, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %vec.epilog.iter.check569

vec.epilog.iter.check569:                         ; preds = %middle.block564
  %min.epilog.iters.check570 = icmp eq i64 %n.mod.vf557, 0
  br i1 %min.epilog.iters.check570, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader, label %vec.epilog.ph571, !prof !48

vec.epilog.ph571:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check569
  %vec.epilog.resume.val566 = phi i64 [ %n.vec558, %vec.epilog.iter.check569 ], [ 0, %vector.main.loop.iter.check554 ]
  %n.vec573 = and i64 %1, -4                      ; 3 uses
  br label %vec.epilog.vector.body574

vec.epilog.vector.body574:                        ; preds = %vec.epilog.vector.body574, %vec.epilog.ph571
  %index575 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph571 ], [ %index.next577, %vec.epilog.vector.body574 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index575
  %wide.load576 = load <4 x i16>, ptr %i.ao, align 2, !tbaa !43
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index575
  store <4 x i16> %wide.load576, ptr %i.ap, align 2, !tbaa !43
  %index.next577 = add nuw i64 %index575, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next577, %n.vec573
  br i1 %i.aq, label %vec.epilog.middle.block578, label %vec.epilog.vector.body574, !llvm.loop !49

vec.epilog.middle.block578:                       ; preds = %vec.epilog.vector.body574
  %cmp.n579 = icmp eq i64 %1, %n.vec573
  br i1 %cmp.n579, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader: ; preds = %iter.check567, %vec.epilog.iter.check569, %vec.epilog.middle.block578
  %.016.us.us.i.ph = phi i64 [ 0, %iter.check567 ], [ %n.vec558, %vec.epilog.iter.check569 ], [ %n.vec573, %vec.epilog.middle.block578 ] ; 3 uses
  %xtraiter787 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  br i1 %lcmp.mod788.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol
  %.016.us.us.i.prol = phi i64 [ %i.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol ], [ %.016.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader ] ; 3 uses
  %prol.iter789 = phi i64 [ %prol.iter789.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader ]
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.016.us.us.i.prol
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !43
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.us.i.prol
  store i16 %i.as, ptr %i.at, align 2, !tbaa !43
  %i.au = add nuw i64 %.016.us.us.i.prol, 1       ; 2 uses
  %prol.iter789.next = add i64 %prol.iter789, 1   ; 2 uses
  %prol.iter789.cmp.not = icmp eq i64 %prol.iter789.next, %xtraiter787
  br i1 %prol.iter789.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol, !llvm.loop !50

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader
  %.016.us.us.i.unr = phi i64 [ %.016.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.preheader ], [ %i.au, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol ]
  %i.av = sub i64 %.016.us.us.i.ph, %1
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i
  %.016.us.us.i = phi i64 [ %i.bm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i ], [ %.016.us.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.016.us.us.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !43
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.us.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !43
  %i.ba = add nuw i64 %.016.us.us.i, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !43
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ba
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !43
  %i.be = add nuw i64 %.016.us.us.i, 2            ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !43
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.be
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !43
  %i.bi = add nuw i64 %.016.us.us.i, 3            ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !43
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bi
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !43
  %i.bm = add nuw i64 %.016.us.us.i, 4            ; 2 uses
  %exitcond27.not.i.3 = icmp eq i64 %i.bm, %1
  br i1 %exitcond27.not.i.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i, !llvm.loop !52

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new
  %.016.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new ], [ %i.co, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ] ; 6 uses
  %niter786 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader.new ], [ %niter786.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.016.us.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !43
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.i
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !43
  %i.bt = or disjoint i64 %.016.us.i, 1           ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !43
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bt
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !43
  %i.ca = or disjoint i64 %.016.us.i, 2           ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !43
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ca
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !43
  %i.ch = or disjoint i64 %.016.us.i, 3           ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !43
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ch
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !43
  %i.co = add nuw i64 %.016.us.i, 4               ; 2 uses
  %niter786.next.3 = add i64 %niter786, 4         ; 2 uses
  %niter786.ncmp.3 = icmp eq i64 %niter786.next.3, %unroll_iter785
  br i1 %niter786.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit589.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i, !llvm.loop !53

.split.i:                                         ; preds = %.noexc47
  br i1 %.not.i.i39, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader: ; preds = %.split.i
  %xtraiter769 = and i64 %1, 1
  %i.cp = icmp eq i64 %1, 1
  br i1 %i.cp, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader
  %unroll_iter773 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader: ; preds = %.split.i
  %xtraiter775 = and i64 %1, 1
  %i.cq = icmp eq i64 %1, 1
  br i1 %i.cq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader
  %unroll_iter779 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i: ; preds = %bb.j, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader.new
  %.016.us19.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader.new ], [ %i.dh, %bb.j ] ; 6 uses
  %niter780 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader.new ], [ %niter780.next.1, %bb.j ]
  %i.cr = lshr i64 %.016.us19.i, 6
  %i.cs = and i64 %.016.us19.i, 62
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !39 ; 2 uses
  %i.cv = shl nuw nsw i64 1, %i.cs
  %i.cw = and i64 %i.cv, %i.cu
  %.not.us.i = icmp eq i64 %i.cw, 0
  br i1 %.not.us.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.016.us19.i
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !43
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i
  %.sink.i46 = phi i16 [ %i.cy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us19.i
  store i16 %.sink.i46, ptr %i.cz, align 2, !tbaa !43
  %i.da = or disjoint i64 %.016.us19.i, 1         ; 3 uses
  %i.db = and i64 %i.da, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.cu
  %.not.us.i.1 = icmp eq i64 %i.dd, 0
  br i1 %.not.us.i.1, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.da
  %i.df = load i16, ptr %i.de, align 2, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1
  %.sink.i46.1 = phi i16 [ %i.df, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.1 ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.1 ]
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.da
  store i16 %.sink.i46.1, ptr %i.dg, align 2, !tbaa !43
  %i.dh = add nuw i64 %.016.us19.i, 2             ; 2 uses
  %niter780.next.1 = add i64 %niter780, 2         ; 2 uses
  %niter780.ncmp.1 = icmp eq i64 %niter780.next.1, %unroll_iter779
  br i1 %niter780.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i, !llvm.loop !53

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41: ; preds = %bb.k, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader.new
  %.016.i42 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader.new ], [ %i.eh, %bb.k ] ; 4 uses
  %niter774 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader.new ], [ %niter774.next.1, %bb.k ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.016.i42
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = zext i32 %i.dj to i64                   ; 3 uses
  %i.dl = lshr i64 %i.dk, 6
  %i.dm = and i64 %i.dk, 63
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dl
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !39
  %i.dp = shl nuw i64 1, %i.dm
  %i.dq = and i64 %i.dp, %i.do
  %.not.i43 = icmp eq i64 %i.dq, 0
  br i1 %.not.i43, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.dk
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !43
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41
  %.sink28.i = phi i16 [ %i.ds, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44 ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41 ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.i42
  store i16 %.sink28.i, ptr %i.dt, align 2, !tbaa !43
  %i.du = or disjoint i64 %.016.i42, 1            ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = zext i32 %i.dw to i64                   ; 3 uses
  %i.dy = lshr i64 %i.dx, 6
  %i.dz = and i64 %i.dx, 63
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !39
  %i.ec = shl nuw i64 1, %i.dz
  %i.ed = and i64 %i.ec, %i.eb
  %.not.i43.1 = icmp eq i64 %i.ed, 0
  br i1 %.not.i43.1, label %bb.k, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.dx
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1
  %.sink28.i.1 = phi i16 [ %i.ef, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.1 ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.1 ]
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.du
  store i16 %.sink28.i.1, ptr %i.eg, align 2, !tbaa !43
  %i.eh = add nuw i64 %.016.i42, 2                ; 2 uses
  %niter774.next.1 = add i64 %niter774, 2         ; 2 uses
  %niter774.ncmp.1 = icmp eq i64 %niter774.next.1, %unroll_iter773
  br i1 %niter774.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41, !llvm.loop !53

bb.l:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIiEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc70 unwind label %bb.d

.noexc70:                                         ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18 ; 18 uses
  %i.ek = ptrtoaddr ptr %i.ej to i64
  %i.el = load ptr, ptr %3, align 8, !tbaa !36
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !38 ; 9 uses
  %.not.i.i48 = icmp eq ptr %i.em, null           ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i49 = icmp eq ptr %i.eo, null
  br i1 %.not.i14.i49, label %.split.us.i63, label %.split.i50

.split.us.i63:                                    ; preds = %.noexc70
  br i1 %.not.i.i48, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader: ; preds = %.split.us.i63
  %i.ep = add i64 %1, -1
  %xtraiter760 = and i64 %1, 3                    ; 3 uses
  %i.eq = icmp ult i64 %i.ep, 3
  br i1 %i.eq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader
  %unroll_iter764 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader: ; preds = %.split.us.i63
  %min.iters.check538 = icmp ult i64 %1, 8
  %i.er = sub i64 %i.ek, %i.a
  %diff.check536 = icmp ugt i64 %i.er, -32
  %or.cond581 = select i1 %min.iters.check538, i1 true, i1 %diff.check536
  br i1 %or.cond581, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592, label %vector.ph539

vector.ph539:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader
  %n.vec541 = and i64 %1, -8                      ; 3 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph539
  %index543 = phi i64 [ 0, %vector.ph539 ], [ %index.next546, %vector.body542 ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index543 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %wide.load544 = load <4 x i32>, ptr %i.es, align 4, !tbaa !3
  %wide.load545 = load <4 x i32>, ptr %i.et, align 4, !tbaa !3
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index543 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %wide.load544, ptr %i.eu, align 4, !tbaa !3
  store <4 x i32> %wide.load545, ptr %i.ev, align 4, !tbaa !3
  %index.next546 = add nuw i64 %index543, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next546, %n.vec541
  br i1 %i.ew, label %middle.block547, label %vector.body542, !llvm.loop !54

middle.block547:                                  ; preds = %vector.body542
  %cmp.n548 = icmp eq i64 %1, %n.vec541
  br i1 %cmp.n548, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader, %middle.block547
  %.016.us.us.i68.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader ], [ %n.vec541, %middle.block547 ] ; 3 uses
  %xtraiter766 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod767.not = icmp eq i64 %xtraiter766, 0
  br i1 %lcmp.mod767.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol
  %.016.us.us.i68.prol = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol ], [ %.016.us.us.i68.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592 ] ; 3 uses
  %prol.iter768 = phi i64 [ %prol.iter768.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.016.us.us.i68.prol
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i68.prol
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add nuw i64 %.016.us.us.i68.prol, 1     ; 2 uses
  %prol.iter768.next = add i64 %prol.iter768, 1   ; 2 uses
  %prol.iter768.cmp.not = icmp eq i64 %prol.iter768.next, %xtraiter766
  br i1 %prol.iter768.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol, !llvm.loop !55

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592
  %.016.us.us.i68.unr = phi i64 [ %.016.us.us.i68.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.preheader592 ], [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol ]
  %i.fb = sub i64 %.016.us.us.i68.ph, %1
  %i.fc = icmp ugt i64 %i.fb, -4
  br i1 %i.fc, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67
  %.016.us.us.i68 = phi i64 [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67 ], [ %.016.us.us.i68.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67.prol.loopexit ] ; 6 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.016.us.us.i68
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i68
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !3
  %i.fg = add nuw i64 %.016.us.us.i68, 1          ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fg
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !3
  %i.fk = add nuw i64 %.016.us.us.i68, 2          ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fk
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !3
  %i.fo = add nuw i64 %.016.us.us.i68, 3          ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fo
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = add nuw i64 %.016.us.us.i68, 4          ; 2 uses
  %exitcond27.not.i69.3 = icmp eq i64 %i.fs, %1
  br i1 %exitcond27.not.i69.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i67, !llvm.loop !56

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader.new
  %.016.us.i65 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader.new ], [ %i.gu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64 ] ; 6 uses
  %niter765 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader.new ], [ %niter765.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.016.us.i65
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.i65
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !3
  %i.fz = or disjoint i64 %.016.us.i65, 1         ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fz
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !3
  %i.gg = or disjoint i64 %.016.us.i65, 2         ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gg
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !3
  %i.gn = or disjoint i64 %.016.us.i65, 3         ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !3
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !3
  %i.gu = add nuw i64 %.016.us.i65, 4             ; 2 uses
  %niter765.next.3 = add i64 %niter765, 4         ; 2 uses
  %niter765.ncmp.3 = icmp eq i64 %niter765.next.3, %unroll_iter764
  br i1 %niter765.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit594.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64, !llvm.loop !57

.split.i50:                                       ; preds = %.noexc70
  br i1 %.not.i.i48, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader: ; preds = %.split.i50
  %xtraiter748 = and i64 %1, 1
  %i.gv = icmp eq i64 %1, 1
  br i1 %i.gv, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader
  %unroll_iter752 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader: ; preds = %.split.i50
  %xtraiter754 = and i64 %1, 1
  %i.gw = icmp eq i64 %1, 1
  br i1 %i.gw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader
  %unroll_iter758 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57: ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader.new
  %.016.us19.i58 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader.new ], [ %i.hn, %bb.m ] ; 6 uses
  %niter759 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.preheader.new ], [ %niter759.next.1, %bb.m ]
  %i.gx = lshr i64 %.016.us19.i58, 6
  %i.gy = and i64 %.016.us19.i58, 62
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !39 ; 2 uses
  %i.hb = shl nuw nsw i64 1, %i.gy
  %i.hc = and i64 %i.hb, %i.ha
  %.not.us.i59 = icmp eq i64 %i.hc, 0
  br i1 %.not.us.i59, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.016.us19.i58
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57
  %.sink.i61 = phi i32 [ %i.he, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60 ], [ -2147483648, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57 ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us19.i58
  store i32 %.sink.i61, ptr %i.hf, align 4, !tbaa !3
  %i.hg = or disjoint i64 %.016.us19.i58, 1       ; 3 uses
  %i.hh = and i64 %i.hg, 63
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i64 %i.hi, %i.ha
  %.not.us.i59.1 = icmp eq i64 %i.hj, 0
  br i1 %.not.us.i59.1, label %bb.m, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hg
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1
  %.sink.i61.1 = phi i32 [ %i.hl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i60.1 ], [ -2147483648, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57.1 ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hg
  store i32 %.sink.i61.1, ptr %i.hm, align 4, !tbaa !3
  %i.hn = add nuw i64 %.016.us19.i58, 2           ; 2 uses
  %niter759.next.1 = add i64 %niter759, 2         ; 2 uses
  %niter759.ncmp.1 = icmp eq i64 %niter759.next.1, %unroll_iter758
  br i1 %niter759.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit595.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i57, !llvm.loop !57

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader.new
  %.016.i52 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader.new ], [ %i.in, %bb.n ] ; 4 uses
  %niter753 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.preheader.new ], [ %niter753.next.1, %bb.n ]
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.016.i52
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !3
  %i.hq = zext i32 %i.hp to i64                   ; 3 uses
  %i.hr = lshr i64 %i.hq, 6
  %i.hs = and i64 %i.hq, 63
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.hr
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !39
  %i.hv = shl nuw i64 1, %i.hs
  %i.hw = and i64 %i.hv, %i.hu
  %.not.i53 = icmp eq i64 %i.hw, 0
  br i1 %.not.i53, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.hq
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51
  %.sink28.i55 = phi i32 [ %i.hy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54 ], [ -2147483648, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51 ]
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.i52
  store i32 %.sink28.i55, ptr %i.hz, align 4, !tbaa !3
  %i.ia = or disjoint i64 %.016.i52, 1            ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !3
  %i.id = zext i32 %i.ic to i64                   ; 3 uses
  %i.ie = lshr i64 %i.id, 6
  %i.if = and i64 %i.id, 63
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ie
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !39
  %i.ii = shl nuw i64 1, %i.if
  %i.ij = and i64 %i.ii, %i.ih
  %.not.i53.1 = icmp eq i64 %i.ij, 0
  br i1 %.not.i53.1, label %bb.n, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.id
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1
  %.sink28.i55.1 = phi i32 [ %i.il, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i54.1 ], [ -2147483648, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51.1 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ia
  store i32 %.sink28.i55.1, ptr %i.im, align 4, !tbaa !3
  %i.in = add nuw i64 %.016.i52, 2                ; 2 uses
  %niter753.next.1 = add i64 %niter753, 2         ; 2 uses
  %niter753.ncmp.1 = icmp eq i64 %niter753.next.1, %unroll_iter752
  br i1 %niter753.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit596.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i51, !llvm.loop !57

bb.o:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIlEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc93 unwind label %bb.d

.noexc93:                                         ; preds = %bb.o
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !18 ; 18 uses
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = load ptr, ptr %3, align 8, !tbaa !36
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !38 ; 9 uses
  %.not.i.i71 = icmp eq ptr %i.is, null           ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !37 ; 7 uses
  %.not.i14.i72 = icmp eq ptr %i.iu, null
  br i1 %.not.i14.i72, label %.split.us.i86, label %.split.i73

.split.us.i86:                                    ; preds = %.noexc93
  br i1 %.not.i.i71, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader: ; preds = %.split.us.i86
  %i.iv = add i64 %1, -1
  %xtraiter739 = and i64 %1, 3                    ; 3 uses
  %i.iw = icmp ult i64 %i.iv, 3
  br i1 %i.iw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader
  %unroll_iter743 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader: ; preds = %.split.us.i86
  %min.iters.check523 = icmp ult i64 %1, 8
  %i.ix = sub i64 %i.iq, %i.a
  %diff.check521 = icmp ugt i64 %i.ix, -32
  %or.cond582 = select i1 %min.iters.check523, i1 true, i1 %diff.check521
  br i1 %or.cond582, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597, label %vector.ph524

vector.ph524:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader
  %n.vec526 = and i64 %1, -4                      ; 3 uses
  br label %vector.body527

vector.body527:                                   ; preds = %vector.body527, %vector.ph524
  %index528 = phi i64 [ 0, %vector.ph524 ], [ %index.next531, %vector.body527 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %index528 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %wide.load529 = load <2 x i64>, ptr %i.iy, align 8, !tbaa !39
  %wide.load530 = load <2 x i64>, ptr %i.iz, align 8, !tbaa !39
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index528 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <2 x i64> %wide.load529, ptr %i.ja, align 8, !tbaa !39
  store <2 x i64> %wide.load530, ptr %i.jb, align 8, !tbaa !39
  %index.next531 = add nuw i64 %index528, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next531, %n.vec526
  br i1 %i.jc, label %middle.block532, label %vector.body527, !llvm.loop !58

middle.block532:                                  ; preds = %vector.body527
  %cmp.n533 = icmp eq i64 %1, %n.vec526
  br i1 %cmp.n533, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader, %middle.block532
  %.016.us.us.i91.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader ], [ %n.vec526, %middle.block532 ] ; 3 uses
  %xtraiter745 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol
  %.016.us.us.i91.prol = phi i64 [ %i.jg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol ], [ %.016.us.us.i91.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597 ] ; 3 uses
  %prol.iter747 = phi i64 [ %prol.iter747.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597 ]
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.016.us.us.i91.prol
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !39
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i91.prol
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !39
  %i.jg = add nuw i64 %.016.us.us.i91.prol, 1     ; 2 uses
  %prol.iter747.next = add i64 %prol.iter747, 1   ; 2 uses
  %prol.iter747.cmp.not = icmp eq i64 %prol.iter747.next, %xtraiter745
  br i1 %prol.iter747.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol, !llvm.loop !59

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597
  %.016.us.us.i91.unr = phi i64 [ %.016.us.us.i91.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.preheader597 ], [ %i.jg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol ]
  %i.jh = sub i64 %.016.us.us.i91.ph, %1
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90
  %.016.us.us.i91 = phi i64 [ %i.jy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90 ], [ %.016.us.us.i91.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.016.us.us.i91
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !39
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i91
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !39
  %i.jm = add nuw i64 %.016.us.us.i91, 1          ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jm
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !39
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jm
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !39
  %i.jq = add nuw i64 %.016.us.us.i91, 2          ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.jq
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !39
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jq
  store i64 %i.js, ptr %i.jt, align 8, !tbaa !39
  %i.ju = add nuw i64 %.016.us.us.i91, 3          ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ju
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !39
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ju
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !39
  %i.jy = add nuw i64 %.016.us.us.i91, 4          ; 2 uses
  %exitcond27.not.i92.3 = icmp eq i64 %i.jy, %1
  br i1 %exitcond27.not.i92.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i90, !llvm.loop !60

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader.new
  %.016.us.i88 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader.new ], [ %i.la, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87 ] ; 6 uses
  %niter744 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87.preheader.new ], [ %niter744.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87 ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.016.us.i88
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !3
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.kb
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !39
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.i88
  store i64 %i.kd, ptr %i.ke, align 8, !tbaa !39
  %i.kf = or disjoint i64 %.016.us.i88, 1         ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !3
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !39
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kf
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !39
  %i.km = or disjoint i64 %.016.us.i88, 2         ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !3
  %i.kp = zext i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.kp
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !39
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.km
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !39
  %i.kt = or disjoint i64 %.016.us.i88, 3         ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !3
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.kw
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !39
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.kt
  store i64 %i.ky, ptr %i.kz, align 8, !tbaa !39
  %i.la = add nuw i64 %.016.us.i88, 4             ; 2 uses
  %niter744.next.3 = add i64 %niter744, 4         ; 2 uses
  %niter744.ncmp.3 = icmp eq i64 %niter744.next.3, %unroll_iter743
  br i1 %niter744.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit599.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i87, !llvm.loop !61

.split.i73:                                       ; preds = %.noexc93
  br i1 %.not.i.i71, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader: ; preds = %.split.i73
  %xtraiter727 = and i64 %1, 1
  %i.lb = icmp eq i64 %1, 1
  br i1 %i.lb, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader
  %unroll_iter731 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader: ; preds = %.split.i73
  %xtraiter733 = and i64 %1, 1
  %i.lc = icmp eq i64 %1, 1
  br i1 %i.lc, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader
  %unroll_iter737 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80: ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader.new
  %.016.us19.i81 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader.new ], [ %i.lw, %bb.p ] ; 7 uses
  %niter738 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.preheader.new ], [ %niter738.next.1, %bb.p ]
  %i.ld = lshr i64 %.016.us19.i81, 6
  %i.le = and i64 %.016.us19.i81, 62
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ld
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !39
  %i.lh = shl nuw nsw i64 1, %i.le
  %i.li = and i64 %i.lh, %i.lg
  %.not.us.i82 = icmp eq i64 %i.li, 0
  br i1 %.not.us.i82, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.016.us19.i81
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !39
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80
  %.sink.i84 = phi i64 [ %i.lk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83 ], [ -9223372036854775808, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80 ]
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us19.i81
  store i64 %.sink.i84, ptr %i.ll, align 8, !tbaa !39
  %i.lm = or disjoint i64 %.016.us19.i81, 1       ; 3 uses
  %i.ln = lshr i64 %.016.us19.i81, 6
  %i.lo = and i64 %i.lm, 63
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ln
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !39
  %i.lr = shl nuw i64 1, %i.lo
  %i.ls = and i64 %i.lr, %i.lq
  %.not.us.i82.1 = icmp eq i64 %i.ls, 0
  br i1 %.not.us.i82.1, label %bb.p, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.lm
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1
  %.sink.i84.1 = phi i64 [ %i.lu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i83.1 ], [ -9223372036854775808, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80.1 ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lm
  store i64 %.sink.i84.1, ptr %i.lv, align 8, !tbaa !39
  %i.lw = add nuw i64 %.016.us19.i81, 2           ; 2 uses
  %niter738.next.1 = add i64 %niter738, 2         ; 2 uses
  %niter738.ncmp.1 = icmp eq i64 %niter738.next.1, %unroll_iter737
  br i1 %niter738.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit600.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i80, !llvm.loop !61

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader.new
  %.016.i75 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader.new ], [ %i.mw, %bb.q ] ; 4 uses
  %niter732 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.preheader.new ], [ %niter732.next.1, %bb.q ]
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.016.i75
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !3
  %i.lz = zext i32 %i.ly to i64                   ; 3 uses
  %i.ma = lshr i64 %i.lz, 6
  %i.mb = and i64 %i.lz, 63
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.ma
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !39
  %i.me = shl nuw i64 1, %i.mb
  %i.mf = and i64 %i.me, %i.md
  %.not.i76 = icmp eq i64 %i.mf, 0
  br i1 %.not.i76, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.lz
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !39
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74
  %.sink28.i78 = phi i64 [ %i.mh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77 ], [ -9223372036854775808, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74 ]
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.i75
  store i64 %.sink28.i78, ptr %i.mi, align 8, !tbaa !39
  %i.mj = or disjoint i64 %.016.i75, 1            ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !3
  %i.mm = zext i32 %i.ml to i64                   ; 3 uses
  %i.mn = lshr i64 %i.mm, 6
  %i.mo = and i64 %i.mm, 63
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.mn
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !39
  %i.mr = shl nuw i64 1, %i.mo
  %i.ms = and i64 %i.mr, %i.mq
  %.not.i76.1 = icmp eq i64 %i.ms, 0
  br i1 %.not.i76.1, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.mm
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !39
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1
  %.sink28.i78.1 = phi i64 [ %i.mu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i77.1 ], [ -9223372036854775808, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74.1 ]
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mj
  store i64 %.sink28.i78.1, ptr %i.mv, align 8, !tbaa !39
  %i.mw = add nuw i64 %.016.i75, 2                ; 2 uses
  %niter732.next.1 = add i64 %niter732, 2         ; 2 uses
  %niter732.ncmp.1 = icmp eq i64 %niter732.next.1, %unroll_iter731
  br i1 %niter732.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit601.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i74, !llvm.loop !61

bb.r:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc103 unwind label %bb.d

.noexc103:                                        ; preds = %bb.r
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !18
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.na = load ptr, ptr %3, align 8, !tbaa !36
  %i.nb = load ptr, ptr %i.mz, align 8, !tbaa !37 ; 2 uses
  %.not.i14.i97 = icmp eq ptr %i.nb, null
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.noexc103
  %.016.i94 = phi i64 [ 0, %.noexc103 ], [ %i.nq, %bb.u ] ; 4 uses
  %i.nc = load ptr, ptr %i.na, align 8, !tbaa !38 ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.nc, null
  br i1 %.not.i.i95, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i96, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %.016.i94
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = zext i32 %i.ne to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i96

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i96: ; preds = %bb.t, %bb.s
  %i.ng = phi i64 [ %i.nf, %bb.t ], [ %.016.i94, %bb.s ] ; 3 uses
  br i1 %.not.i14.i97, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i100, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i98

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i98: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i96
  %i.nh = lshr i64 %i.ng, 6
  %i.ni = and i64 %i.ng, 63
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.nh
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !39
  %i.nl = shl nuw i64 1, %i.ni
  %i.nm = and i64 %i.nk, %i.nl
  %.not.i99 = icmp eq i64 %i.nm, 0
  br i1 %.not.i99, label %bb.u, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i100

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i100: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i98, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i96
  %i.nn = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ng
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i100, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i98
  %.sink.i101 = phi i8 [ %i.no, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i100 ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i98 ]
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %.016.i94
  store i8 %.sink.i101, ptr %i.np, align 1, !tbaa !40
  %i.nq = add nuw i64 %.016.i94, 1                ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %i.nq, %1
  br i1 %exitcond.not.i102, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %bb.s, !llvm.loop !62

bb.v:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeItEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc126 unwind label %bb.d

.noexc126:                                        ; preds = %bb.v
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !18 ; 19 uses
  %i.nt = ptrtoaddr ptr %i.ns to i64
  %i.nu = load ptr, ptr %3, align 8, !tbaa !36
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !38 ; 9 uses
  %.not.i.i104 = icmp eq ptr %i.nv, null          ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i105 = icmp eq ptr %i.nx, null
  br i1 %.not.i14.i105, label %.split.us.i119, label %.split.i106

.split.us.i119:                                   ; preds = %.noexc126
  br i1 %.not.i.i104, label %iter.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader: ; preds = %.split.us.i119
  %i.ny = add i64 %1, -1
  %xtraiter718 = and i64 %1, 3                    ; 3 uses
  %i.nz = icmp ult i64 %i.ny, 3
  br i1 %i.nz, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader
  %unroll_iter722 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120

iter.check:                                       ; preds = %.split.us.i119
  %min.iters.check501 = icmp ult i64 %1, 4
  %i.oa = sub i64 %i.nt, %i.a
  %diff.check499 = icmp ugt i64 %i.oa, -32
  %or.cond583 = select i1 %min.iters.check501, i1 true, i1 %diff.check499
  br i1 %or.cond583, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check502 = icmp ult i64 %1, 16
  br i1 %min.iters.check502, label %vec.epilog.ph, label %vector.ph503

vector.ph503:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf504 = and i64 %1, 12
  %n.vec505 = and i64 %1, -16                     ; 4 uses
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph503
  %index507 = phi i64 [ 0, %vector.ph503 ], [ %index.next510, %vector.body506 ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %index507 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %wide.load508 = load <8 x i16>, ptr %i.ob, align 2, !tbaa !43
  %wide.load509 = load <8 x i16>, ptr %i.oc, align 2, !tbaa !43
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index507 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  store <8 x i16> %wide.load508, ptr %i.od, align 2, !tbaa !43
  store <8 x i16> %wide.load509, ptr %i.oe, align 2, !tbaa !43
  %index.next510 = add nuw i64 %index507, 16      ; 2 uses
  %i.of = icmp eq i64 %index.next510, %n.vec505
  br i1 %i.of, label %middle.block511, label %vector.body506, !llvm.loop !63

middle.block511:                                  ; preds = %vector.body506
  %cmp.n512 = icmp eq i64 %1, %n.vec505
  br i1 %cmp.n512, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block511
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf504, 0
  br i1 %min.epilog.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader, label %vec.epilog.ph, !prof !48

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec505, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec514 = and i64 %1, -4                      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index515 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next517, %vec.epilog.vector.body ] ; 3 uses
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %index515
  %wide.load516 = load <4 x i16>, ptr %i.og, align 2, !tbaa !43
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index515
  store <4 x i16> %wide.load516, ptr %i.oh, align 2, !tbaa !43
  %index.next517 = add nuw i64 %index515, 4       ; 2 uses
  %i.oi = icmp eq i64 %index.next517, %n.vec514
  br i1 %i.oi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !64

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n518 = icmp eq i64 %1, %n.vec514
  br i1 %cmp.n518, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016.us.us.i124.ph = phi i64 [ 0, %iter.check ], [ %n.vec505, %vec.epilog.iter.check ], [ %n.vec514, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter724 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol
  %.016.us.us.i124.prol = phi i64 [ %i.om, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol ], [ %.016.us.us.i124.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader ] ; 3 uses
  %prol.iter726 = phi i64 [ %prol.iter726.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader ]
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %.016.us.us.i124.prol
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !43
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.us.i124.prol
  store i16 %i.ok, ptr %i.ol, align 2, !tbaa !43
  %i.om = add nuw i64 %.016.us.us.i124.prol, 1    ; 2 uses
  %prol.iter726.next = add i64 %prol.iter726, 1   ; 2 uses
  %prol.iter726.cmp.not = icmp eq i64 %prol.iter726.next, %xtraiter724
  br i1 %prol.iter726.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol, !llvm.loop !65

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader
  %.016.us.us.i124.unr = phi i64 [ %.016.us.us.i124.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.preheader ], [ %i.om, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol ]
  %i.on = sub i64 %.016.us.us.i124.ph, %1
  %i.oo = icmp ugt i64 %i.on, -4
  br i1 %i.oo, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123
  %.016.us.us.i124 = phi i64 [ %i.pe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123 ], [ %.016.us.us.i124.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123.prol.loopexit ] ; 6 uses
  %i.op = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %.016.us.us.i124
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !43
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.us.i124
  store i16 %i.oq, ptr %i.or, align 2, !tbaa !43
  %i.os = add nuw i64 %.016.us.us.i124, 1         ; 2 uses
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.os
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !43
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.os
  store i16 %i.ou, ptr %i.ov, align 2, !tbaa !43
  %i.ow = add nuw i64 %.016.us.us.i124, 2         ; 2 uses
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.ow
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !43
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ow
  store i16 %i.oy, ptr %i.oz, align 2, !tbaa !43
  %i.pa = add nuw i64 %.016.us.us.i124, 3         ; 2 uses
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.pa
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !43
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.pa
  store i16 %i.pc, ptr %i.pd, align 2, !tbaa !43
  %i.pe = add nuw i64 %.016.us.us.i124, 4         ; 2 uses
  %exitcond27.not.i125.3 = icmp eq i64 %i.pe, %1
  br i1 %exitcond27.not.i125.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i123, !llvm.loop !66

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader.new
  %.016.us.i121 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader.new ], [ %i.qg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120 ] ; 6 uses
  %niter723 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120.preheader.new ], [ %niter723.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120 ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.016.us.i121
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !3
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.ph
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !43
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.i121
  store i16 %i.pj, ptr %i.pk, align 2, !tbaa !43
  %i.pl = or disjoint i64 %.016.us.i121, 1        ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.po
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !43
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.pl
  store i16 %i.pq, ptr %i.pr, align 2, !tbaa !43
  %i.ps = or disjoint i64 %.016.us.i121, 2        ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !3
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.pv
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !43
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ps
  store i16 %i.px, ptr %i.py, align 2, !tbaa !43
  %i.pz = or disjoint i64 %.016.us.i121, 3        ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.pz
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !3
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.qc
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !43
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.pz
  store i16 %i.qe, ptr %i.qf, align 2, !tbaa !43
  %i.qg = add nuw i64 %.016.us.i121, 4            ; 2 uses
  %niter723.next.3 = add i64 %niter723, 4         ; 2 uses
  %niter723.ncmp.3 = icmp eq i64 %niter723.next.3, %unroll_iter722
  br i1 %niter723.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit604.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i120, !llvm.loop !67

.split.i106:                                      ; preds = %.noexc126
  br i1 %.not.i.i104, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader: ; preds = %.split.i106
  %xtraiter706 = and i64 %1, 1
  %i.qh = icmp eq i64 %1, 1
  br i1 %i.qh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader
  %unroll_iter710 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader: ; preds = %.split.i106
  %xtraiter712 = and i64 %1, 1
  %i.qi = icmp eq i64 %1, 1
  br i1 %i.qi, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader
  %unroll_iter716 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113: ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader.new
  %.016.us19.i114 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader.new ], [ %i.qz, %bb.w ] ; 6 uses
  %niter717 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.preheader.new ], [ %niter717.next.1, %bb.w ]
  %i.qj = lshr i64 %.016.us19.i114, 6
  %i.qk = and i64 %.016.us19.i114, 62
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.qj
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !39 ; 2 uses
  %i.qn = shl nuw nsw i64 1, %i.qk
  %i.qo = and i64 %i.qn, %i.qm
  %.not.us.i115 = icmp eq i64 %i.qo, 0
  br i1 %.not.us.i115, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %.016.us19.i114
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !43
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113
  %.sink.i117 = phi i16 [ %i.qq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113 ]
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us19.i114
  store i16 %.sink.i117, ptr %i.qr, align 2, !tbaa !43
  %i.qs = or disjoint i64 %.016.us19.i114, 1      ; 3 uses
  %i.qt = and i64 %i.qs, 63
  %i.qu = shl nuw i64 1, %i.qt
  %i.qv = and i64 %i.qu, %i.qm
  %.not.us.i115.1 = icmp eq i64 %i.qv, 0
  br i1 %.not.us.i115.1, label %bb.w, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.qs
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !43
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1
  %.sink.i117.1 = phi i16 [ %i.qx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i116.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113.1 ]
  %i.qy = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.qs
  store i16 %.sink.i117.1, ptr %i.qy, align 2, !tbaa !43
  %i.qz = add nuw i64 %.016.us19.i114, 2          ; 2 uses
  %niter717.next.1 = add i64 %niter717, 2         ; 2 uses
  %niter717.ncmp.1 = icmp eq i64 %niter717.next.1, %unroll_iter716
  br i1 %niter717.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit605.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i113, !llvm.loop !67

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107: ; preds = %bb.x, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader.new
  %.016.i108 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader.new ], [ %i.rz, %bb.x ] ; 4 uses
  %niter711 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.preheader.new ], [ %niter711.next.1, %bb.x ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %.016.i108
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !3
  %i.rc = zext i32 %i.rb to i64                   ; 3 uses
  %i.rd = lshr i64 %i.rc, 6
  %i.re = and i64 %i.rc, 63
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.rd
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !39
  %i.rh = shl nuw i64 1, %i.re
  %i.ri = and i64 %i.rh, %i.rg
  %.not.i109 = icmp eq i64 %i.ri, 0
  br i1 %.not.i109, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.rc
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !43
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107
  %.sink28.i111 = phi i16 [ %i.rk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107 ]
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.i108
  store i16 %.sink28.i111, ptr %i.rl, align 2, !tbaa !43
  %i.rm = or disjoint i64 %.016.i108, 1           ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !3
  %i.rp = zext i32 %i.ro to i64                   ; 3 uses
  %i.rq = lshr i64 %i.rp, 6
  %i.rr = and i64 %i.rp, 63
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.rq
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !39
  %i.ru = shl nuw i64 1, %i.rr
  %i.rv = and i64 %i.ru, %i.rt
  %.not.i109.1 = icmp eq i64 %i.rv, 0
  br i1 %.not.i109.1, label %bb.x, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1
  %i.rw = getelementptr inbounds nuw [2 x i8], ptr %i.ns, i64 %i.rp
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !43
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1
  %.sink28.i111.1 = phi i16 [ %i.rx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i110.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107.1 ]
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.rm
  store i16 %.sink28.i111.1, ptr %i.ry, align 2, !tbaa !43
  %i.rz = add nuw i64 %.016.i108, 2               ; 2 uses
  %niter711.next.1 = add i64 %niter711, 2         ; 2 uses
  %niter711.ncmp.1 = icmp eq i64 %niter711.next.1, %unroll_iter710
  br i1 %niter711.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit606.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i107, !llvm.loop !67

bb.y:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIjEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc149 unwind label %bb.d

.noexc149:                                        ; preds = %bb.y
  %i.sa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !18 ; 18 uses
  %i.sc = ptrtoaddr ptr %i.sb to i64
  %i.sd = load ptr, ptr %3, align 8, !tbaa !36
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !38 ; 9 uses
  %.not.i.i127 = icmp eq ptr %i.se, null          ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i128 = icmp eq ptr %i.sg, null
  br i1 %.not.i14.i128, label %.split.us.i142, label %.split.i129

.split.us.i142:                                   ; preds = %.noexc149
  br i1 %.not.i.i127, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader: ; preds = %.split.us.i142
  %i.sh = add i64 %1, -1
  %xtraiter697 = and i64 %1, 3                    ; 3 uses
  %i.si = icmp ult i64 %i.sh, 3
  br i1 %i.si, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader
  %unroll_iter701 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader: ; preds = %.split.us.i142
  %min.iters.check486 = icmp ult i64 %1, 8
  %i.sj = sub i64 %i.sc, %i.a
  %diff.check484 = icmp ugt i64 %i.sj, -32
  %or.cond584 = select i1 %min.iters.check486, i1 true, i1 %diff.check484
  br i1 %or.cond584, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607, label %vector.ph487

vector.ph487:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader
  %n.vec489 = and i64 %1, -8                      ; 3 uses
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next494, %vector.body490 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index491 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load492 = load <4 x i32>, ptr %i.sk, align 4, !tbaa !3
  %wide.load493 = load <4 x i32>, ptr %i.sl, align 4, !tbaa !3
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index491 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store <4 x i32> %wide.load492, ptr %i.sm, align 4, !tbaa !3
  store <4 x i32> %wide.load493, ptr %i.sn, align 4, !tbaa !3
  %index.next494 = add nuw i64 %index491, 8       ; 2 uses
  %i.so = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.so, label %middle.block495, label %vector.body490, !llvm.loop !68

middle.block495:                                  ; preds = %vector.body490
  %cmp.n496 = icmp eq i64 %1, %n.vec489
  br i1 %cmp.n496, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader, %middle.block495
  %.016.us.us.i147.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader ], [ %n.vec489, %middle.block495 ] ; 3 uses
  %xtraiter703 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod704.not = icmp eq i64 %xtraiter703, 0
  br i1 %lcmp.mod704.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol
  %.016.us.us.i147.prol = phi i64 [ %i.ss, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol ], [ %.016.us.us.i147.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607 ] ; 3 uses
  %prol.iter705 = phi i64 [ %prol.iter705.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607 ]
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.016.us.us.i147.prol
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !3
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i147.prol
  store i32 %i.sq, ptr %i.sr, align 4, !tbaa !3
  %i.ss = add nuw i64 %.016.us.us.i147.prol, 1    ; 2 uses
  %prol.iter705.next = add i64 %prol.iter705, 1   ; 2 uses
  %prol.iter705.cmp.not = icmp eq i64 %prol.iter705.next, %xtraiter703
  br i1 %prol.iter705.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol, !llvm.loop !69

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607
  %.016.us.us.i147.unr = phi i64 [ %.016.us.us.i147.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.preheader607 ], [ %i.ss, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol ]
  %i.st = sub i64 %.016.us.us.i147.ph, %1
  %i.su = icmp ugt i64 %i.st, -4
  br i1 %i.su, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146
  %.016.us.us.i147 = phi i64 [ %i.tk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146 ], [ %.016.us.us.i147.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146.prol.loopexit ] ; 6 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.016.us.us.i147
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i147
  store i32 %i.sw, ptr %i.sx, align 4, !tbaa !3
  %i.sy = add nuw i64 %.016.us.us.i147, 1         ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !3
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.sy
  store i32 %i.ta, ptr %i.tb, align 4, !tbaa !3
  %i.tc = add nuw i64 %.016.us.us.i147, 2         ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !tbaa !3
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tc
  store i32 %i.te, ptr %i.tf, align 4, !tbaa !3
  %i.tg = add nuw i64 %.016.us.us.i147, 3         ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !3
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tg
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !3
  %i.tk = add nuw i64 %.016.us.us.i147, 4         ; 2 uses
  %exitcond27.not.i148.3 = icmp eq i64 %i.tk, %1
  br i1 %exitcond27.not.i148.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i146, !llvm.loop !70

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader.new
  %.016.us.i144 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader.new ], [ %i.um, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143 ] ; 6 uses
  %niter702 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143.preheader.new ], [ %niter702.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143 ]
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.016.us.i144
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !3
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !3
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.i144
  store i32 %i.tp, ptr %i.tq, align 4, !tbaa !3
  %i.tr = or disjoint i64 %.016.us.i144, 1        ; 2 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !3
  %i.tu = zext i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.tr
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !3
  %i.ty = or disjoint i64 %.016.us.i144, 2        ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !3
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !3
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ty
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !3
  %i.uf = or disjoint i64 %.016.us.i144, 3        ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !3
  %i.ui = zext i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.ui
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !3
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uf
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !3
  %i.um = add nuw i64 %.016.us.i144, 4            ; 2 uses
  %niter702.next.3 = add i64 %niter702, 4         ; 2 uses
  %niter702.ncmp.3 = icmp eq i64 %niter702.next.3, %unroll_iter701
  br i1 %niter702.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit609.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i143, !llvm.loop !71

.split.i129:                                      ; preds = %.noexc149
  br i1 %.not.i.i127, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader: ; preds = %.split.i129
  %xtraiter685 = and i64 %1, 1
  %i.un = icmp eq i64 %1, 1
  br i1 %i.un, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader
  %unroll_iter689 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader: ; preds = %.split.i129
  %xtraiter691 = and i64 %1, 1
  %i.uo = icmp eq i64 %1, 1
  br i1 %i.uo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader
  %unroll_iter695 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136: ; preds = %bb.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader.new
  %.016.us19.i137 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader.new ], [ %i.vf, %bb.z ] ; 6 uses
  %niter696 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.preheader.new ], [ %niter696.next.1, %bb.z ]
  %i.up = lshr i64 %.016.us19.i137, 6
  %i.uq = and i64 %.016.us19.i137, 62
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.up
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !39 ; 2 uses
  %i.ut = shl nuw nsw i64 1, %i.uq
  %i.uu = and i64 %i.ut, %i.us
  %.not.us.i138 = icmp eq i64 %i.uu, 0
  br i1 %.not.us.i138, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %.016.us19.i137
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136
  %.sink.i140 = phi i32 [ %i.uw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136 ]
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us19.i137
  store i32 %.sink.i140, ptr %i.ux, align 4, !tbaa !3
  %i.uy = or disjoint i64 %.016.us19.i137, 1      ; 3 uses
  %i.uz = and i64 %i.uy, 63
  %i.va = shl nuw i64 1, %i.uz
  %i.vb = and i64 %i.va, %i.us
  %.not.us.i138.1 = icmp eq i64 %i.vb, 0
  br i1 %.not.us.i138.1, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.uy
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !3
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1
  %.sink.i140.1 = phi i32 [ %i.vd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i139.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136.1 ]
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uy
  store i32 %.sink.i140.1, ptr %i.ve, align 4, !tbaa !3
  %i.vf = add nuw i64 %.016.us19.i137, 2          ; 2 uses
  %niter696.next.1 = add i64 %niter696, 2         ; 2 uses
  %niter696.ncmp.1 = icmp eq i64 %niter696.next.1, %unroll_iter695
  br i1 %niter696.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit610.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i136, !llvm.loop !71

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130: ; preds = %bb.aa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader.new
  %.016.i131 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader.new ], [ %i.wf, %bb.aa ] ; 4 uses
  %niter690 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.preheader.new ], [ %niter690.next.1, %bb.aa ]
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.016.i131
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !3
  %i.vi = zext i32 %i.vh to i64                   ; 3 uses
  %i.vj = lshr i64 %i.vi, 6
  %i.vk = and i64 %i.vi, 63
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.vj
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !39
  %i.vn = shl nuw i64 1, %i.vk
  %i.vo = and i64 %i.vn, %i.vm
  %.not.i132 = icmp eq i64 %i.vo, 0
  br i1 %.not.i132, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.vi
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130
  %.sink28.i134 = phi i32 [ %i.vq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130 ]
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.i131
  store i32 %.sink28.i134, ptr %i.vr, align 4, !tbaa !3
  %i.vs = or disjoint i64 %.016.i131, 1           ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.vs
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !3
  %i.vv = zext i32 %i.vu to i64                   ; 3 uses
  %i.vw = lshr i64 %i.vv, 6
  %i.vx = and i64 %i.vv, 63
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.vw
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !39
  %i.wa = shl nuw i64 1, %i.vx
  %i.wb = and i64 %i.wa, %i.vz
  %.not.i132.1 = icmp eq i64 %i.wb, 0
  br i1 %.not.i132.1, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %i.vv
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1
  %.sink28.i134.1 = phi i32 [ %i.wd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i133.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130.1 ]
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.vs
  store i32 %.sink28.i134.1, ptr %i.we, align 4, !tbaa !3
  %i.wf = add nuw i64 %.016.i131, 2               ; 2 uses
  %niter690.next.1 = add i64 %niter690, 2         ; 2 uses
  %niter690.ncmp.1 = icmp eq i64 %niter690.next.1, %unroll_iter689
  br i1 %niter690.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit611.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i130, !llvm.loop !71

bb.ab:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc172 unwind label %bb.d

.noexc172:                                        ; preds = %bb.ab
  %i.wg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !18 ; 18 uses
  %i.wi = ptrtoaddr ptr %i.wh to i64
  %i.wj = load ptr, ptr %3, align 8, !tbaa !36
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !38 ; 9 uses
  %.not.i.i150 = icmp eq ptr %i.wk, null          ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !37 ; 7 uses
  %.not.i14.i151 = icmp eq ptr %i.wm, null
  br i1 %.not.i14.i151, label %.split.us.i165, label %.split.i152

.split.us.i165:                                   ; preds = %.noexc172
  br i1 %.not.i.i150, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader: ; preds = %.split.us.i165
  %i.wn = add i64 %1, -1
  %xtraiter676 = and i64 %1, 3                    ; 3 uses
  %i.wo = icmp ult i64 %i.wn, 3
  br i1 %i.wo, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader
  %unroll_iter680 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader: ; preds = %.split.us.i165
  %min.iters.check471 = icmp ult i64 %1, 8
  %i.wp = sub i64 %i.wi, %i.a
  %diff.check469 = icmp ugt i64 %i.wp, -32
  %or.cond585 = select i1 %min.iters.check471, i1 true, i1 %diff.check469
  br i1 %or.cond585, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612, label %vector.ph472

vector.ph472:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader
  %n.vec474 = and i64 %1, -4                      ; 3 uses
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph472
  %index476 = phi i64 [ 0, %vector.ph472 ], [ %index.next479, %vector.body475 ] ; 3 uses
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %index476 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  %wide.load477 = load <2 x i64>, ptr %i.wq, align 8, !tbaa !39
  %wide.load478 = load <2 x i64>, ptr %i.wr, align 8, !tbaa !39
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index476 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store <2 x i64> %wide.load477, ptr %i.ws, align 8, !tbaa !39
  store <2 x i64> %wide.load478, ptr %i.wt, align 8, !tbaa !39
  %index.next479 = add nuw i64 %index476, 4       ; 2 uses
  %i.wu = icmp eq i64 %index.next479, %n.vec474
  br i1 %i.wu, label %middle.block480, label %vector.body475, !llvm.loop !72

middle.block480:                                  ; preds = %vector.body475
  %cmp.n481 = icmp eq i64 %1, %n.vec474
  br i1 %cmp.n481, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader, %middle.block480
  %.016.us.us.i170.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader ], [ %n.vec474, %middle.block480 ] ; 3 uses
  %xtraiter682 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod683.not = icmp eq i64 %xtraiter682, 0
  br i1 %lcmp.mod683.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol
  %.016.us.us.i170.prol = phi i64 [ %i.wy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol ], [ %.016.us.us.i170.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612 ] ; 3 uses
  %prol.iter684 = phi i64 [ %prol.iter684.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612 ]
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %.016.us.us.i170.prol
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !39
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i170.prol
  store i64 %i.ww, ptr %i.wx, align 8, !tbaa !39
  %i.wy = add nuw i64 %.016.us.us.i170.prol, 1    ; 2 uses
  %prol.iter684.next = add i64 %prol.iter684, 1   ; 2 uses
  %prol.iter684.cmp.not = icmp eq i64 %prol.iter684.next, %xtraiter682
  br i1 %prol.iter684.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol, !llvm.loop !73

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612
  %.016.us.us.i170.unr = phi i64 [ %.016.us.us.i170.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.preheader612 ], [ %i.wy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol ]
  %i.wz = sub i64 %.016.us.us.i170.ph, %1
  %i.xa = icmp ugt i64 %i.wz, -4
  br i1 %i.xa, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169
  %.016.us.us.i170 = phi i64 [ %i.xq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169 ], [ %.016.us.us.i170.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169.prol.loopexit ] ; 6 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %.016.us.us.i170
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !39
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i170
  store i64 %i.xc, ptr %i.xd, align 8, !tbaa !39
  %i.xe = add nuw i64 %.016.us.us.i170, 1         ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.xe
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !39
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.xe
  store i64 %i.xg, ptr %i.xh, align 8, !tbaa !39
  %i.xi = add nuw i64 %.016.us.us.i170, 2         ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.xi
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !39
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.xi
  store i64 %i.xk, ptr %i.xl, align 8, !tbaa !39
  %i.xm = add nuw i64 %.016.us.us.i170, 3         ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.xm
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !39
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.xm
  store i64 %i.xo, ptr %i.xp, align 8, !tbaa !39
  %i.xq = add nuw i64 %.016.us.us.i170, 4         ; 2 uses
  %exitcond27.not.i171.3 = icmp eq i64 %i.xq, %1
  br i1 %exitcond27.not.i171.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i169, !llvm.loop !74

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader.new
  %.016.us.i167 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader.new ], [ %i.ys, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166 ] ; 6 uses
  %niter681 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166.preheader.new ], [ %niter681.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166 ]
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.016.us.i167
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !3
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.xt
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !39
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.i167
  store i64 %i.xv, ptr %i.xw, align 8, !tbaa !39
  %i.xx = or disjoint i64 %.016.us.i167, 1        ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !3
  %i.ya = zext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.ya
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !39
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.xx
  store i64 %i.yc, ptr %i.yd, align 8, !tbaa !39
  %i.ye = or disjoint i64 %.016.us.i167, 2        ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !3
  %i.yh = zext i32 %i.yg to i64
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.yh
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !39
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ye
  store i64 %i.yj, ptr %i.yk, align 8, !tbaa !39
  %i.yl = or disjoint i64 %.016.us.i167, 3        ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.yl
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !3
  %i.yo = zext i32 %i.yn to i64
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.yo
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !39
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.yl
  store i64 %i.yq, ptr %i.yr, align 8, !tbaa !39
  %i.ys = add nuw i64 %.016.us.i167, 4            ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit614.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i166, !llvm.loop !75

.split.i152:                                      ; preds = %.noexc172
  br i1 %.not.i.i150, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader: ; preds = %.split.i152
  %xtraiter664 = and i64 %1, 1
  %i.yt = icmp eq i64 %1, 1
  br i1 %i.yt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader
  %unroll_iter668 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader: ; preds = %.split.i152
  %xtraiter670 = and i64 %1, 1
  %i.yu = icmp eq i64 %1, 1
  br i1 %i.yu, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader
  %unroll_iter674 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159: ; preds = %bb.ac, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader.new
  %.016.us19.i160 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader.new ], [ %i.zo, %bb.ac ] ; 7 uses
  %niter675 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.preheader.new ], [ %niter675.next.1, %bb.ac ]
  %i.yv = lshr i64 %.016.us19.i160, 6
  %i.yw = and i64 %.016.us19.i160, 62
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.yv
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !39
  %i.yz = shl nuw nsw i64 1, %i.yw
  %i.za = and i64 %i.yz, %i.yy
  %.not.us.i161 = icmp eq i64 %i.za, 0
  br i1 %.not.us.i161, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %.016.us19.i160
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !39
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159
  %.sink.i163 = phi i64 [ %i.zc, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159 ]
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us19.i160
  store i64 %.sink.i163, ptr %i.zd, align 8, !tbaa !39
  %i.ze = or disjoint i64 %.016.us19.i160, 1      ; 3 uses
  %i.zf = lshr i64 %.016.us19.i160, 6
  %i.zg = and i64 %i.ze, 63
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.zf
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !39
  %i.zj = shl nuw i64 1, %i.zg
  %i.zk = and i64 %i.zj, %i.zi
  %.not.us.i161.1 = icmp eq i64 %i.zk, 0
  br i1 %.not.us.i161.1, label %bb.ac, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.ze
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1
  %.sink.i163.1 = phi i64 [ %i.zm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i162.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159.1 ]
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ze
  store i64 %.sink.i163.1, ptr %i.zn, align 8, !tbaa !39
  %i.zo = add nuw i64 %.016.us19.i160, 2          ; 2 uses
  %niter675.next.1 = add i64 %niter675, 2         ; 2 uses
  %niter675.ncmp.1 = icmp eq i64 %niter675.next.1, %unroll_iter674
  br i1 %niter675.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit615.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i159, !llvm.loop !75

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153: ; preds = %bb.ad, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader.new
  %.016.i154 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader.new ], [ %i.aao, %bb.ad ] ; 4 uses
  %niter669 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.preheader.new ], [ %niter669.next.1, %bb.ad ]
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.016.i154
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !3
  %i.zr = zext i32 %i.zq to i64                   ; 3 uses
  %i.zs = lshr i64 %i.zr, 6
  %i.zt = and i64 %i.zr, 63
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.zs
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !39
  %i.zw = shl nuw i64 1, %i.zt
  %i.zx = and i64 %i.zw, %i.zv
  %.not.i155 = icmp eq i64 %i.zx, 0
  br i1 %.not.i155, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.zr
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !39
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153
  %.sink28.i157 = phi i64 [ %i.zz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153 ]
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.i154
  store i64 %.sink28.i157, ptr %i.aaa, align 8, !tbaa !39
  %i.aab = or disjoint i64 %.016.i154, 1          ; 2 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !3
  %i.aae = zext i32 %i.aad to i64                 ; 3 uses
  %i.aaf = lshr i64 %i.aae, 6
  %i.aag = and i64 %i.aae, 63
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %i.aaf
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !39
  %i.aaj = shl nuw i64 1, %i.aag
  %i.aak = and i64 %i.aaj, %i.aai
  %.not.i155.1 = icmp eq i64 %i.aak, 0
  br i1 %.not.i155.1, label %bb.ad, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.wh, i64 %i.aae
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !39
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1
  %.sink28.i157.1 = phi i64 [ %i.aam, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i156.1 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153.1 ]
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aab
  store i64 %.sink28.i157.1, ptr %i.aan, align 8, !tbaa !39
  %i.aao = add nuw i64 %.016.i154, 2              ; 2 uses
  %niter669.next.1 = add i64 %niter669, 2         ; 2 uses
  %niter669.ncmp.1 = icmp eq i64 %niter669.next.1, %unroll_iter668
  br i1 %niter669.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit616.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i153, !llvm.loop !75

bb.ae:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_9hugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc181 unwind label %bb.d

.noexc181:                                        ; preds = %bb.ae
  %i.aap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !18
  %i.aar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aas = load ptr, ptr %3, align 8, !tbaa !36
  %i.aat = load ptr, ptr %i.aar, align 8, !tbaa !37 ; 2 uses
  %.not.i14.i176 = icmp eq ptr %i.aat, null
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %.noexc181
  %.016.i173 = phi i64 [ 0, %.noexc181 ], [ %i.abi, %bb.ai ] ; 5 uses
  %i.aau = load ptr, ptr %i.aas, align 8, !tbaa !38 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i174, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i175, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %.016.i173
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !3
  %i.aax = zext i32 %i.aaw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i175

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i175: ; preds = %bb.ag, %bb.af
  %i.aay = phi i64 [ %i.aax, %bb.ag ], [ %.016.i173, %bb.af ] ; 3 uses
  br i1 %.not.i14.i176, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i179, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i177

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i177: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i175
  %i.aaz = lshr i64 %i.aay, 6
  %i.aba = and i64 %i.aay, 63
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.aat, i64 %i.aaz
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !39
  %i.abd = shl nuw i64 1, %i.aba
  %i.abe = and i64 %i.abc, %i.abd
  %.not.i178 = icmp eq i64 %i.abe, 0
  br i1 %.not.i178, label %bb.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i179

bb.ah:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i177
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i173 ; 2 uses
  store i64 0, ptr %i.abf, align 8, !tbaa !39
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !39
  br label %bb.ai

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i179: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i177, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i175
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %i.aay
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abh, ptr noundef nonnull align 8 dereferenceable(16) %i.abg, i64 16, i1 false), !tbaa.struct !76
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i179, %bb.ah
  %i.abi = add nuw i64 %.016.i173, 1              ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %i.abi, %1
  br i1 %exitcond.not.i180, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %bb.af, !llvm.loop !77

bb.aj:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10uhugeint_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc190 unwind label %bb.d

.noexc190:                                        ; preds = %bb.aj
  %i.abj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !18
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.abm = load ptr, ptr %3, align 8, !tbaa !36
  %i.abn = load ptr, ptr %i.abl, align 8, !tbaa !37 ; 2 uses
  %.not.i14.i185 = icmp eq ptr %i.abn, null
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %.noexc190
  %.016.i182 = phi i64 [ 0, %.noexc190 ], [ %i.acc, %bb.an ] ; 5 uses
  %i.abo = load ptr, ptr %i.abm, align 8, !tbaa !38 ; 2 uses
  %.not.i.i183 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i183, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i184, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abo, i64 %.016.i182
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !3
  %i.abr = zext i32 %i.abq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i184

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i184: ; preds = %bb.al, %bb.ak
  %i.abs = phi i64 [ %i.abr, %bb.al ], [ %.016.i182, %bb.ak ] ; 3 uses
  br i1 %.not.i14.i185, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i188, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i186

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i186: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i184
  %i.abt = lshr i64 %i.abs, 6
  %i.abu = and i64 %i.abs, 63
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.abt
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !39
  %i.abx = shl nuw i64 1, %i.abu
  %i.aby = and i64 %i.abw, %i.abx
  %.not.i187 = icmp eq i64 %i.aby, 0
  br i1 %.not.i187, label %bb.am, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i188

bb.am:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i186
  %i.abz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abz, i8 0, i64 16, i1 false)
  br label %bb.an

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i188: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i186, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i184
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abk, i64 %i.abs
  %i.acb = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acb, ptr noundef nonnull align 8 dereferenceable(16) %i.aca, i64 16, i1 false), !tbaa.struct !76
  br label %bb.an

bb.an:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i188, %bb.am
  %i.acc = add nuw i64 %.016.i182, 1              ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %i.acc, %1
  br i1 %exitcond.not.i189, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %bb.ak, !llvm.loop !78

bb.ao:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIfEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc213 unwind label %bb.d

.noexc213:                                        ; preds = %bb.ao
  %i.acd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !18 ; 18 uses
  %i.acf = ptrtoaddr ptr %i.ace to i64
  %i.acg = load ptr, ptr %3, align 8, !tbaa !36
  %i.ach = load ptr, ptr %i.acg, align 8, !tbaa !38 ; 9 uses
  %.not.i.i191 = icmp eq ptr %i.ach, null         ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i192 = icmp eq ptr %i.acj, null
  br i1 %.not.i14.i192, label %.split.us.i206, label %.split.i193

.split.us.i206:                                   ; preds = %.noexc213
  br i1 %.not.i.i191, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader: ; preds = %.split.us.i206
  %i.ack = add i64 %1, -1
  %xtraiter655 = and i64 %1, 3                    ; 3 uses
  %i.acl = icmp ult i64 %i.ack, 3
  br i1 %i.acl, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader
  %unroll_iter659 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader: ; preds = %.split.us.i206
  %min.iters.check456 = icmp ult i64 %1, 8
  %i.acm = sub i64 %i.acf, %i.a
  %diff.check454 = icmp ugt i64 %i.acm, -32
  %or.cond586 = select i1 %min.iters.check456, i1 true, i1 %diff.check454
  br i1 %or.cond586, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619, label %vector.ph457

vector.ph457:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader
  %n.vec459 = and i64 %1, -8                      ; 3 uses
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph457
  %index461 = phi i64 [ 0, %vector.ph457 ], [ %index.next464, %vector.body460 ] ; 3 uses
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %index461 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %wide.load462 = load <4 x float>, ptr %i.acn, align 4, !tbaa !79
  %wide.load463 = load <4 x float>, ptr %i.aco, align 4, !tbaa !79
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index461 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store <4 x float> %wide.load462, ptr %i.acp, align 4, !tbaa !79
  store <4 x float> %wide.load463, ptr %i.acq, align 4, !tbaa !79
  %index.next464 = add nuw i64 %index461, 8       ; 2 uses
  %i.acr = icmp eq i64 %index.next464, %n.vec459
  br i1 %i.acr, label %middle.block465, label %vector.body460, !llvm.loop !81

middle.block465:                                  ; preds = %vector.body460
  %cmp.n466 = icmp eq i64 %1, %n.vec459
  br i1 %cmp.n466, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader, %middle.block465
  %.016.us.us.i211.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader ], [ %n.vec459, %middle.block465 ] ; 3 uses
  %xtraiter661 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol
  %.016.us.us.i211.prol = phi i64 [ %i.acv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol ], [ %.016.us.us.i211.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619 ] ; 3 uses
  %prol.iter663 = phi i64 [ %prol.iter663.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619 ]
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %.016.us.us.i211.prol
  %i.act = load float, ptr %i.acs, align 4, !tbaa !79
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i211.prol
  store float %i.act, ptr %i.acu, align 4, !tbaa !79
  %i.acv = add nuw i64 %.016.us.us.i211.prol, 1   ; 2 uses
  %prol.iter663.next = add i64 %prol.iter663, 1   ; 2 uses
  %prol.iter663.cmp.not = icmp eq i64 %prol.iter663.next, %xtraiter661
  br i1 %prol.iter663.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol, !llvm.loop !82

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619
  %.016.us.us.i211.unr = phi i64 [ %.016.us.us.i211.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.preheader619 ], [ %i.acv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol ]
  %i.acw = sub i64 %.016.us.us.i211.ph, %1
  %i.acx = icmp ugt i64 %i.acw, -4
  br i1 %i.acx, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210
  %.016.us.us.i211 = phi i64 [ %i.adn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210 ], [ %.016.us.us.i211.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210.prol.loopexit ] ; 6 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %.016.us.us.i211
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !79
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.us.i211
  store float %i.acz, ptr %i.ada, align 4, !tbaa !79
  %i.adb = add nuw i64 %.016.us.us.i211, 1        ; 2 uses
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adb
  %i.add = load float, ptr %i.adc, align 4, !tbaa !79
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adb
  store float %i.add, ptr %i.ade, align 4, !tbaa !79
  %i.adf = add nuw i64 %.016.us.us.i211, 2        ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adf
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !79
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adf
  store float %i.adh, ptr %i.adi, align 4, !tbaa !79
  %i.adj = add nuw i64 %.016.us.us.i211, 3        ; 2 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adj
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !79
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adj
  store float %i.adl, ptr %i.adm, align 4, !tbaa !79
  %i.adn = add nuw i64 %.016.us.us.i211, 4        ; 2 uses
  %exitcond27.not.i212.3 = icmp eq i64 %i.adn, %1
  br i1 %exitcond27.not.i212.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i210, !llvm.loop !83

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader.new
  %.016.us.i208 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader.new ], [ %i.aep, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207 ] ; 6 uses
  %niter660 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207.preheader.new ], [ %niter660.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207 ]
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %.016.us.i208
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !3
  %i.adq = zext i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adq
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !79
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us.i208
  store float %i.ads, ptr %i.adt, align 4, !tbaa !79
  %i.adu = or disjoint i64 %.016.us.i208, 1       ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !3
  %i.adx = zext i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.adx
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !79
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adu
  store float %i.adz, ptr %i.aea, align 4, !tbaa !79
  %i.aeb = or disjoint i64 %.016.us.i208, 2       ; 2 uses
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !3
  %i.aee = zext i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.aee
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !79
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aeb
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !79
  %i.aei = or disjoint i64 %.016.us.i208, 3       ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !3
  %i.ael = zext i32 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.ael
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !79
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aei
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !79
  %i.aep = add nuw i64 %.016.us.i208, 4           ; 2 uses
  %niter660.next.3 = add i64 %niter660, 4         ; 2 uses
  %niter660.ncmp.3 = icmp eq i64 %niter660.next.3, %unroll_iter659
  br i1 %niter660.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit621.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i207, !llvm.loop !84

.split.i193:                                      ; preds = %.noexc213
  br i1 %.not.i.i191, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader: ; preds = %.split.i193
  %xtraiter643 = and i64 %1, 1
  %i.aeq = icmp eq i64 %1, 1
  br i1 %i.aeq, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader
  %unroll_iter647 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader: ; preds = %.split.i193
  %xtraiter649 = and i64 %1, 1
  %i.aer = icmp eq i64 %1, 1
  br i1 %i.aer, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader
  %unroll_iter653 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200: ; preds = %bb.ap, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader.new
  %.016.us19.i201 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader.new ], [ %i.afi, %bb.ap ] ; 6 uses
  %niter654 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.preheader.new ], [ %niter654.next.1, %bb.ap ]
  %i.aes = lshr i64 %.016.us19.i201, 6
  %i.aet = and i64 %.016.us19.i201, 62
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.aes
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !39 ; 2 uses
  %i.aew = shl nuw nsw i64 1, %i.aet
  %i.aex = and i64 %i.aew, %i.aev
  %.not.us.i202 = icmp eq i64 %i.aex, 0
  br i1 %.not.us.i202, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %.016.us19.i201
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !79
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200
  %.sink.i204 = phi float [ %i.aez, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200 ]
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.us19.i201
  store float %.sink.i204, ptr %i.afa, align 4, !tbaa !79
  %i.afb = or disjoint i64 %.016.us19.i201, 1     ; 3 uses
  %i.afc = and i64 %i.afb, 63
  %i.afd = shl nuw i64 1, %i.afc
  %i.afe = and i64 %i.afd, %i.aev
  %.not.us.i202.1 = icmp eq i64 %i.afe, 0
  br i1 %.not.us.i202.1, label %bb.ap, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.afb
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !79
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1
  %.sink.i204.1 = phi float [ %i.afg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i203.1 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200.1 ]
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afb
  store float %.sink.i204.1, ptr %i.afh, align 4, !tbaa !79
  %i.afi = add nuw i64 %.016.us19.i201, 2         ; 2 uses
  %niter654.next.1 = add i64 %niter654, 2         ; 2 uses
  %niter654.ncmp.1 = icmp eq i64 %niter654.next.1, %unroll_iter653
  br i1 %niter654.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit622.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i200, !llvm.loop !84

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194: ; preds = %bb.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader.new
  %.016.i195 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader.new ], [ %i.agi, %bb.aq ] ; 4 uses
  %niter648 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.preheader.new ], [ %niter648.next.1, %bb.aq ]
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %.016.i195
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !3
  %i.afl = zext i32 %i.afk to i64                 ; 3 uses
  %i.afm = lshr i64 %i.afl, 6
  %i.afn = and i64 %i.afl, 63
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.afm
  %i.afp = load i64, ptr %i.afo, align 8, !tbaa !39
  %i.afq = shl nuw i64 1, %i.afn
  %i.afr = and i64 %i.afq, %i.afp
  %.not.i196 = icmp eq i64 %i.afr, 0
  br i1 %.not.i196, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.afl
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !79
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194
  %.sink28.i198 = phi float [ %i.aft, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194 ]
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016.i195
  store float %.sink28.i198, ptr %i.afu, align 4, !tbaa !79
  %i.afv = or disjoint i64 %.016.i195, 1          ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %i.afv
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !3
  %i.afy = zext i32 %i.afx to i64                 ; 3 uses
  %i.afz = lshr i64 %i.afy, 6
  %i.aga = and i64 %i.afy, 63
  %i.agb = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.afz
  %i.agc = load i64, ptr %i.agb, align 8, !tbaa !39
  %i.agd = shl nuw i64 1, %i.aga
  %i.age = and i64 %i.agd, %i.agc
  %.not.i196.1 = icmp eq i64 %i.age, 0
  br i1 %.not.i196.1, label %bb.aq, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %i.afy
  %i.agg = load float, ptr %i.agf, align 4, !tbaa !79
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1
  %.sink28.i198.1 = phi float [ %i.agg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i197.1 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194.1 ]
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.afv
  store float %.sink28.i198.1, ptr %i.agh, align 4, !tbaa !79
  %i.agi = add nuw i64 %.016.i195, 2              ; 2 uses
  %niter648.next.1 = add i64 %niter648, 2         ; 2 uses
  %niter648.ncmp.1 = icmp eq i64 %niter648.next.1, %unroll_iter647
  br i1 %niter648.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit623.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i194, !llvm.loop !84

bb.ar:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc236 unwind label %bb.d

.noexc236:                                        ; preds = %bb.ar
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !18 ; 18 uses
  %i.agl = ptrtoaddr ptr %i.agk to i64
  %i.agm = load ptr, ptr %3, align 8, !tbaa !36
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !38 ; 9 uses
  %.not.i.i214 = icmp eq ptr %i.agn, null         ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.agp = load ptr, ptr %i.ago, align 8, !tbaa !37 ; 6 uses
  %.not.i14.i215 = icmp eq ptr %i.agp, null
  br i1 %.not.i14.i215, label %.split.us.i229, label %.split.i216

.split.us.i229:                                   ; preds = %.noexc236
  br i1 %.not.i.i214, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader: ; preds = %.split.us.i229
  %i.agq = add i64 %1, -1
  %xtraiter636 = and i64 %1, 3                    ; 3 uses
  %i.agr = icmp ult i64 %i.agq, 3
  br i1 %i.agr, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader
  %unroll_iter639 = and i64 %1, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader: ; preds = %.split.us.i229
  %min.iters.check = icmp ult i64 %1, 8
  %i.ags = sub i64 %i.agl, %i.a
  %diff.check = icmp ugt i64 %i.ags, -32
  %or.cond587 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond587, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %index ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %wide.load = load <2 x double>, ptr %i.agt, align 8, !tbaa !85
  %wide.load452 = load <2 x double>, ptr %i.agu, align 8, !tbaa !85
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 16
  store <2 x double> %wide.load, ptr %i.agv, align 8, !tbaa !85
  store <2 x double> %wide.load452, ptr %i.agw, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agx = icmp eq i64 %index.next, %n.vec
  br i1 %i.agx, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader, %middle.block
  %.016.us.us.i234.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter641 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br i1 %lcmp.mod642.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol
  %.016.us.us.i234.prol = phi i64 [ %i.ahb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol ], [ %.016.us.us.i234.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624 ]
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %.016.us.us.i234.prol
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !85
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i234.prol
  store double %i.agz, ptr %i.aha, align 8, !tbaa !85
  %i.ahb = add nuw i64 %.016.us.us.i234.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter641
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol, !llvm.loop !88

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624
  %.016.us.us.i234.unr = phi i64 [ %.016.us.us.i234.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.preheader624 ], [ %i.ahb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol ]
  %i.ahc = sub i64 %.016.us.us.i234.ph, %1
  %i.ahd = icmp ugt i64 %i.ahc, -4
  br i1 %i.ahd, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233
  %.016.us.us.i234 = phi i64 [ %i.aht, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233 ], [ %.016.us.us.i234.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233.prol.loopexit ] ; 6 uses
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %.016.us.us.i234
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !85
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.us.i234
  store double %i.ahf, ptr %i.ahg, align 8, !tbaa !85
  %i.ahh = add nuw i64 %.016.us.us.i234, 1        ; 2 uses
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahh
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !85
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ahh
  store double %i.ahj, ptr %i.ahk, align 8, !tbaa !85
  %i.ahl = add nuw i64 %.016.us.us.i234, 2        ; 2 uses
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahl
  %i.ahn = load double, ptr %i.ahm, align 8, !tbaa !85
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ahl
  store double %i.ahn, ptr %i.aho, align 8, !tbaa !85
  %i.ahp = add nuw i64 %.016.us.us.i234, 3        ; 2 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahp
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !85
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ahp
  store double %i.ahr, ptr %i.ahs, align 8, !tbaa !85
  %i.aht = add nuw i64 %.016.us.us.i234, 4        ; 2 uses
  %exitcond27.not.i235.3 = icmp eq i64 %i.aht, %1
  br i1 %exitcond27.not.i235.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i233, !llvm.loop !89

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader.new
  %.016.us.i231 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader.new ], [ %i.aiv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230 ] ; 6 uses
  %niter640 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230.preheader.new ], [ %niter640.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230 ]
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %.016.us.i231
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !3
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ahw
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !85
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us.i231
  store double %i.ahy, ptr %i.ahz, align 8, !tbaa !85
  %i.aia = or disjoint i64 %.016.us.i231, 1       ; 2 uses
  %i.aib = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.aia
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !3
  %i.aid = zext i32 %i.aic to i64
  %i.aie = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.aid
  %i.aif = load double, ptr %i.aie, align 8, !tbaa !85
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aia
  store double %i.aif, ptr %i.aig, align 8, !tbaa !85
  %i.aih = or disjoint i64 %.016.us.i231, 2       ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.aih
  %i.aij = load i32, ptr %i.aii, align 4, !tbaa !3
  %i.aik = zext i32 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.aik
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !85
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aih
  store double %i.aim, ptr %i.ain, align 8, !tbaa !85
  %i.aio = or disjoint i64 %.016.us.i231, 3       ; 2 uses
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.aio
  %i.aiq = load i32, ptr %i.aip, align 4, !tbaa !3
  %i.air = zext i32 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.air
  %i.ait = load double, ptr %i.ais, align 8, !tbaa !85
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aio
  store double %i.ait, ptr %i.aiu, align 8, !tbaa !85
  %i.aiv = add nuw i64 %.016.us.i231, 4           ; 2 uses
  %niter640.next.3 = add i64 %niter640, 4         ; 2 uses
  %niter640.ncmp.3 = icmp eq i64 %niter640.next.3, %unroll_iter639
  br i1 %niter640.ncmp.3, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit626.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i230, !llvm.loop !90

.split.i216:                                      ; preds = %.noexc236
  br i1 %.not.i.i214, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader: ; preds = %.split.i216
  %xtraiter = and i64 %1, 1
  %i.aiw = icmp eq i64 %1, 1
  br i1 %i.aiw, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader
  %unroll_iter = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader: ; preds = %.split.i216
  %xtraiter631 = and i64 %1, 1
  %i.aix = icmp eq i64 %1, 1
  br i1 %i.aix, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader
  %unroll_iter634 = and i64 %1, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223: ; preds = %bb.as, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader.new
  %.016.us19.i224 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader.new ], [ %i.ajo, %bb.as ] ; 6 uses
  %niter635 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.preheader.new ], [ %niter635.next.1, %bb.as ]
  %i.aiy = lshr i64 %.016.us19.i224, 6
  %i.aiz = and i64 %.016.us19.i224, 62
  %i.aja = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.aiy
  %i.ajb = load i64, ptr %i.aja, align 8, !tbaa !39 ; 2 uses
  %i.ajc = shl nuw nsw i64 1, %i.aiz
  %i.ajd = and i64 %i.ajc, %i.ajb
  %.not.us.i225 = icmp eq i64 %i.ajd, 0
  br i1 %.not.us.i225, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %.016.us19.i224
  %i.ajf = load double, ptr %i.aje, align 8, !tbaa !85
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223
  %.sink.i227 = phi double [ %i.ajf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223 ]
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.us19.i224
  store double %.sink.i227, ptr %i.ajg, align 8, !tbaa !85
  %i.ajh = or disjoint i64 %.016.us19.i224, 1     ; 3 uses
  %i.aji = and i64 %i.ajh, 63
  %i.ajj = shl nuw i64 1, %i.aji
  %i.ajk = and i64 %i.ajj, %i.ajb
  %.not.us.i225.1 = icmp eq i64 %i.ajk, 0
  br i1 %.not.us.i225.1, label %bb.as, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ajh
  %i.ajm = load double, ptr %i.ajl, align 8, !tbaa !85
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1
  %.sink.i227.1 = phi double [ %i.ajm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i226.1 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223.1 ]
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ajh
  store double %.sink.i227.1, ptr %i.ajn, align 8, !tbaa !85
  %i.ajo = add nuw i64 %.016.us19.i224, 2         ; 2 uses
  %niter635.next.1 = add i64 %niter635, 2         ; 2 uses
  %niter635.ncmp.1 = icmp eq i64 %niter635.next.1, %unroll_iter634
  br i1 %niter635.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit627.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i223, !llvm.loop !90

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217: ; preds = %bb.at, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader.new
  %.016.i218 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader.new ], [ %i.ako, %bb.at ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.preheader.new ], [ %niter.next.1, %bb.at ]
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %.016.i218
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !3
  %i.ajr = zext i32 %i.ajq to i64                 ; 3 uses
  %i.ajs = lshr i64 %i.ajr, 6
  %i.ajt = and i64 %i.ajr, 63
  %i.aju = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.ajs
  %i.ajv = load i64, ptr %i.aju, align 8, !tbaa !39
  %i.ajw = shl nuw i64 1, %i.ajt
  %i.ajx = and i64 %i.ajw, %i.ajv
  %.not.i219 = icmp eq i64 %i.ajx, 0
  br i1 %.not.i219, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ajr
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !85
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217
  %.sink28.i221 = phi double [ %i.ajz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217 ]
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016.i218
  store double %.sink28.i221, ptr %i.aka, align 8, !tbaa !85
  %i.akb = or disjoint i64 %.016.i218, 1          ; 2 uses
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 4, !tbaa !3
  %i.ake = zext i32 %i.akd to i64                 ; 3 uses
  %i.akf = lshr i64 %i.ake, 6
  %i.akg = and i64 %i.ake, 63
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.agp, i64 %i.akf
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !39
  %i.akj = shl nuw i64 1, %i.akg
  %i.akk = and i64 %i.akj, %i.aki
  %.not.i219.1 = icmp eq i64 %i.akk, 0
  br i1 %.not.i219.1, label %bb.at, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220.1: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.ake
  %i.akm = load double, ptr %i.akl, align 8, !tbaa !85
  br label %bb.at

bb.at:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1
  %.sink28.i221.1 = phi double [ %i.akm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i220.1 ], [ +qnan, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217.1 ]
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.akb
  store double %.sink28.i221.1, ptr %i.akn, align 8, !tbaa !85
  %i.ako = add nuw i64 %.016.i218, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit628.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i217, !llvm.loop !90

bb.au:                                            ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %.noexc246 unwind label %bb.d

.noexc246:                                        ; preds = %bb.au
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8, !tbaa !18
  %i.akr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aks = load ptr, ptr %3, align 8, !tbaa !36
  %i.akt = load ptr, ptr %i.akr, align 8, !tbaa !37 ; 2 uses
  %.not.i14.i240 = icmp eq ptr %i.akt, null
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %.noexc246
  %.016.i237 = phi i64 [ 0, %.noexc246 ], [ %i.ali, %bb.ay ] ; 5 uses
  %i.aku = load ptr, ptr %i.aks, align 8, !tbaa !38 ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.aku, null
  br i1 %.not.i.i238, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i239, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aku, i64 %.016.i237
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !3
  %i.akx = zext i32 %i.akw to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i239

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i239: ; preds = %bb.aw, %bb.av
  %i.aky = phi i64 [ %i.akx, %bb.aw ], [ %.016.i237, %bb.av ] ; 3 uses
  br i1 %.not.i14.i240, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i243, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i241

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i241: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i239
  %i.akz = lshr i64 %i.aky, 6
  %i.ala = and i64 %i.aky, 63
  %i.alb = getelementptr inbounds nuw [8 x i8], ptr %i.akt, i64 %i.akz
  %i.alc = load i64, ptr %i.alb, align 8, !tbaa !39
  %i.ald = shl nuw i64 1, %i.ala
  %i.ale = and i64 %i.alc, %i.ald
  %.not.i242 = icmp eq i64 %i.ale, 0
  br i1 %.not.i242, label %bb.ax, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i243

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i241
  %i.alf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i237 ; 2 uses
  store i64 -9223372034707292160, ptr %i.alf, align 8
  %.sroa.4.0..sroa_idx.i245 = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx.i245, align 8, !tbaa !39
  br label %bb.ay

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i243: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i241, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i239
  %i.alg = getelementptr inbounds nuw [16 x i8], ptr %i.akq, i64 %i.aky
  %i.alh = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.016.i237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alh, ptr noundef nonnull align 8 dereferenceable(16) %i.alg, i64 16, i1 false), !tbaa.struct !91
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i243, %bb.ax
  %i.ali = add nuw i64 %.016.i237, 1              ; 2 uses
  %exitcond.not.i244 = icmp eq i64 %i.ali, %1
  br i1 %exitcond.not.i244, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %bb.av, !llvm.loop !92

bb.az:                                            ; preds = %bb.c
  %i.alj = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.alj, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  invoke void @__cxa_throw(ptr nonnull %i.alj, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.bs unwind label %bb.bc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.az
  %i.alk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0 = phi i1 [ false, %bb.bb ], [ true, %bb.ba ] ; 2 uses
  %i.all = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.alm = load ptr, ptr %4, align 8, !tbaa !93   ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.alo = icmp eq ptr %i.alm, %i.aln
  br i1 %i.alo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bc
  call void @_ZdlPv(ptr noundef %i.alm) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.0, label %bb.bd, label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br i1 %.0, label %bb.bd, label %bb.br

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn249 = phi { ptr, i32 } [ %i.alk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.all, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.all, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.alj) #15
  br label %bb.br

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit589.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i
  %lcmp.mod783.not = icmp eq i64 %xtraiter781, 0
  br i1 %lcmp.mod783.not, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit589.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader
  %.016.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.preheader ], [ %i.co, %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit589.unr-lcssa ]
  %lcmp.mod784 = icmp ne i64 %xtraiter781, 0
  call void @llvm.assume(i1 %lcmp.mod784)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader
  %.016.us.i.epil = phi i64 [ %i.alv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil ], [ %.016.us.i.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader ] ; 3 uses
  %epil.iter782 = phi i64 [ %epil.iter782.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil.preheader ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.016.us.i.epil
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3
  %i.alr = zext i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.alr
  %i.alt = load i16, ptr %i.als, align 2, !tbaa !43
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us.i.epil
  store i16 %i.alt, ptr %i.alu, align 2, !tbaa !43
  %i.alv = add nuw i64 %.016.us.i.epil, 1
  %epil.iter782.next = add i64 %epil.iter782, 1   ; 2 uses
  %epil.iter782.cmp.not = icmp eq i64 %epil.iter782.next, %xtraiter781
  br i1 %epil.iter782.cmp.not, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i.epil, !llvm.loop !96

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.unr-lcssa: ; preds = %bb.j
  %lcmp.mod777.not = icmp eq i64 %xtraiter775, 0
  br i1 %lcmp.mod777.not, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader
  %.016.us19.i.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.preheader ], [ %i.dh, %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.unr-lcssa ] ; 4 uses
  %lcmp.mod778 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod778)
  %i.alw = lshr i64 %.016.us19.i.epil.init, 6
  %i.alx = and i64 %.016.us19.i.epil.init, 63
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.alw
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !39
  %i.ama = shl nuw i64 1, %i.alx
  %i.amb = and i64 %i.ama, %i.alz
  %.not.us.i.epil = icmp eq i64 %i.amb, 0
  br i1 %.not.us.i.epil, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.epilog-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader
  %i.amc = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.016.us19.i.epil.init
  %i.amd = load i16, ptr %i.amc, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.epilog-lcssa

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit590.epilog-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader
  %.sink.i46.epil = phi i16 [ %i.amd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us21.i.epil ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us20.i.epil.preheader ]
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.us19.i.epil.init
  store i16 %.sink.i46.epil, ptr %i.ame, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.unr-lcssa: ; preds = %bb.k
  %lcmp.mod771.not = icmp eq i64 %xtraiter769, 0
  br i1 %lcmp.mod771.not, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader
  %.016.i42.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.preheader ], [ %i.eh, %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.unr-lcssa ] ; 2 uses
  %lcmp.mod772 = trunc i64 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod772)
  %i.amf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.016.i42.epil.init
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !3
  %i.amh = zext i32 %i.amg to i64                 ; 3 uses
  %i.ami = lshr i64 %i.amh, 6
  %i.amj = and i64 %i.amh, 63
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ami
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !39
  %i.amm = shl nuw i64 1, %i.amj
  %i.amn = and i64 %i.amm, %i.aml
  %.not.i43.epil = icmp eq i64 %i.amn, 0
  br i1 %.not.i43.epil, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.epilog-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.epil

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.epil: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader
  %i.amo = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.amh
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.epilog-lcssa

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit591.epilog-lcssa: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.epil, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader
  %.sink28.i.epil = phi i16 [ %i.amp, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i44.epil ], [ -32768, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i41.epil.preheader ]
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016.i42.epil.init
  store i16 %.sink28.i.epil, ptr %i.amq, align 2, !tbaa !43
  br label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit

_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit594.unr-lcssa: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64
  %lcmp.mod762.not = icmp eq i64 %xtraiter760, 0
  br i1 %lcmp.mod762.not, label %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.epil.preheader: ; preds = %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit594.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader
  %.016.us.i65.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.preheader ], [ %i.gu, %_ZN6duckdb12_GLOBAL__N_117CopyToStorageLoopIaEEvRNS_19UnifiedVectorFormatEmPh.exit.loopexit594.unr-lcssa ]
  %lcmp.mod763 = icmp ne i64 %xtraiter760, 0
  call void @llvm.assume(i1 %lcmp.mod763)
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i64.epil
end_hunk_0
begin_hunk_1_@_ZN6duckdb16VectorOperations15ReadFromStorageEPhmRNS_6VectorE:bb.a

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !115 ; 7 uses
  %.not.i66 = icmp eq i64 %1, 0
  br i1 %.not.i66, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i67.preheader

.lr.ph.i67.preheader:                             ; preds = %bb.h
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %min.iters.check182 = icmp ult i64 %1, 8
  %i.gw = sub i64 %i.a, %i.gv
  %diff.check180 = icmp ugt i64 %i.gw, -32
  %or.cond344 = select i1 %min.iters.check182, i1 true, i1 %diff.check180
  br i1 %or.cond344, label %.lr.ph.i67.preheader355, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i67.preheader
  %n.vec185 = and i64 %1, -8                      ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph183
  %index187 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body186 ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index187 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load188 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !3
  %wide.load189 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index187 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store <4 x i32> %wide.load188, ptr %i.gz, align 4, !tbaa !3
  store <4 x i32> %wide.load189, ptr %i.ha, align 4, !tbaa !3
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.hb, label %middle.block191, label %vector.body186, !llvm.loop !145

middle.block191:                                  ; preds = %vector.body186
  %cmp.n192 = icmp eq i64 %1, %n.vec185
  br i1 %cmp.n192, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i67.preheader355

.lr.ph.i67.preheader355:                          ; preds = %.lr.ph.i67.preheader, %middle.block191
  %.08.i68.ph = phi i64 [ 0, %.lr.ph.i67.preheader ], [ %n.vec185, %middle.block191 ] ; 3 uses
  %xtraiter385 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol

.lr.ph.i67.prol:                                  ; preds = %.lr.ph.i67.preheader355, %.lr.ph.i67.prol
  %.08.i68.prol = phi i64 [ %i.hf, %.lr.ph.i67.prol ], [ %.08.i68.ph, %.lr.ph.i67.preheader355 ] ; 3 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph.i67.prol ], [ 0, %.lr.ph.i67.preheader355 ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i68.prol
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.08.i68.prol
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !3
  %i.hf = add nuw i64 %.08.i68.prol, 1            ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph.i67.prol.loopexit, label %.lr.ph.i67.prol, !llvm.loop !146

.lr.ph.i67.prol.loopexit:                         ; preds = %.lr.ph.i67.prol, %.lr.ph.i67.preheader355
  %.08.i68.unr = phi i64 [ %.08.i68.ph, %.lr.ph.i67.preheader355 ], [ %i.hf, %.lr.ph.i67.prol ]
  %i.hg = sub i64 %.08.i68.ph, %1
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %.lr.ph.i67.prol.loopexit, %.lr.ph.i67
  %.08.i68 = phi i64 [ %i.hx, %.lr.ph.i67 ], [ %.08.i68.unr, %.lr.ph.i67.prol.loopexit ] ; 6 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i68
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.08.i68
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !3
  %i.hl = add nuw i64 %.08.i68, 1                 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hl
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !3
  %i.hp = add nuw i64 %.08.i68, 2                 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hp
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !3
  %i.ht = add nuw i64 %.08.i68, 3                 ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ht
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !3
  %i.hx = add nuw i64 %.08.i68, 4                 ; 2 uses
  %exitcond.not.i69.3 = icmp eq i64 %i.hx, %1
  br i1 %exitcond.not.i69.3, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i67, !llvm.loop !147

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !115 ; 7 uses
  %.not.i70 = icmp eq i64 %1, 0
  br i1 %.not.i70, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.i
  %i.ia = ptrtoaddr ptr %i.hz to i64
  %min.iters.check167 = icmp ult i64 %1, 8
  %i.ib = sub i64 %i.a, %i.ia
  %diff.check165 = icmp ugt i64 %i.ib, -32
  %or.cond345 = select i1 %min.iters.check167, i1 true, i1 %diff.check165
  br i1 %or.cond345, label %.lr.ph.i71.preheader357, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph.i71.preheader
  %n.vec170 = and i64 %1, -4                      ; 3 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph168
  %index172 = phi i64 [ 0, %vector.ph168 ], [ %index.next175, %vector.body171 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index172 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %wide.load173 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !39
  %wide.load174 = load <2 x i64>, ptr %i.id, align 8, !tbaa !39
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %index172 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <2 x i64> %wide.load173, ptr %i.ie, align 8, !tbaa !39
  store <2 x i64> %wide.load174, ptr %i.if, align 8, !tbaa !39
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.ig, label %middle.block176, label %vector.body171, !llvm.loop !148

middle.block176:                                  ; preds = %vector.body171
  %cmp.n177 = icmp eq i64 %1, %n.vec170
  br i1 %cmp.n177, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i71.preheader357

.lr.ph.i71.preheader357:                          ; preds = %.lr.ph.i71.preheader, %middle.block176
  %.08.i72.ph = phi i64 [ 0, %.lr.ph.i71.preheader ], [ %n.vec170, %middle.block176 ] ; 3 uses
  %xtraiter382 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol

.lr.ph.i71.prol:                                  ; preds = %.lr.ph.i71.preheader357, %.lr.ph.i71.prol
  %.08.i72.prol = phi i64 [ %i.ik, %.lr.ph.i71.prol ], [ %.08.i72.ph, %.lr.ph.i71.preheader357 ] ; 3 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i71.prol ], [ 0, %.lr.ph.i71.preheader357 ]
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.i72.prol
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !39
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.08.i72.prol
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !39
  %i.ik = add nuw i64 %.08.i72.prol, 1            ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i71.prol.loopexit, label %.lr.ph.i71.prol, !llvm.loop !149

.lr.ph.i71.prol.loopexit:                         ; preds = %.lr.ph.i71.prol, %.lr.ph.i71.preheader357
  %.08.i72.unr = phi i64 [ %.08.i72.ph, %.lr.ph.i71.preheader357 ], [ %i.ik, %.lr.ph.i71.prol ]
  %i.il = sub i64 %.08.i72.ph, %1
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.prol.loopexit, %.lr.ph.i71
  %.08.i72 = phi i64 [ %i.jc, %.lr.ph.i71 ], [ %.08.i72.unr, %.lr.ph.i71.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.i72
  %i.io = load i64, ptr %i.in, align 8, !tbaa !39
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.08.i72
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !39
  %i.iq = add nuw i64 %.08.i72, 1                 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !39
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.iq
  store i64 %i.is, ptr %i.it, align 8, !tbaa !39
  %i.iu = add nuw i64 %.08.i72, 2                 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.iu
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !39
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.iu
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !39
  %i.iy = add nuw i64 %.08.i72, 3                 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.iy
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !39
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.iy
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !39
  %i.jc = add nuw i64 %.08.i72, 4                 ; 2 uses
  %exitcond.not.i73.3 = icmp eq i64 %i.jc, %1
  br i1 %exitcond.not.i73.3, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i71, !llvm.loop !150

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !115 ; 3 uses
  %.not.i74 = icmp eq i64 %1, 0
  br i1 %.not.i74, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i75.preheader

.lr.ph.i75.preheader:                             ; preds = %bb.j
  %xtraiter377 = and i64 %1, 1
  %i.jf = icmp eq i64 %1, 1
  br i1 %i.jf, label %.lr.ph.i75.epil.preheader, label %.lr.ph.i75.preheader.new

.lr.ph.i75.preheader.new:                         ; preds = %.lr.ph.i75.preheader
  %unroll_iter380 = and i64 %1, -2
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %.lr.ph.i75, %.lr.ph.i75.preheader.new
  %.08.i76 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %i.jl, %.lr.ph.i75 ] ; 4 uses
  %niter381 = phi i64 [ 0, %.lr.ph.i75.preheader.new ], [ %niter381.next.1, %.lr.ph.i75 ]
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i76
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %.08.i76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.jg, i64 16, i1 false), !tbaa.struct !76
  %i.ji = or disjoint i64 %.08.i76, 1             ; 2 uses
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ji
  %i.jk = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.ji
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !tbaa.struct !76
  %i.jl = add nuw i64 %.08.i76, 2                 ; 2 uses
  %niter381.next.1 = add i64 %niter381, 2         ; 2 uses
  %niter381.ncmp.1 = icmp eq i64 %niter381.next.1, %unroll_iter380
  br i1 %niter381.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit359.unr-lcssa, label %.lr.ph.i75, !llvm.loop !151

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10uhugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !115 ; 3 uses
  %.not.i78 = icmp eq i64 %1, 0
  br i1 %.not.i78, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %bb.k
  %xtraiter372 = and i64 %1, 1
  %i.jo = icmp eq i64 %1, 1
  br i1 %i.jo, label %.lr.ph.i79.epil.preheader, label %.lr.ph.i79.preheader.new

.lr.ph.i79.preheader.new:                         ; preds = %.lr.ph.i79.preheader
  %unroll_iter375 = and i64 %1, -2
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79, %.lr.ph.i79.preheader.new
  %.08.i80 = phi i64 [ 0, %.lr.ph.i79.preheader.new ], [ %i.ju, %.lr.ph.i79 ] ; 4 uses
  %niter376 = phi i64 [ 0, %.lr.ph.i79.preheader.new ], [ %niter376.next.1, %.lr.ph.i79 ]
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i80
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.08.i80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.jp, i64 16, i1 false), !tbaa.struct !76
  %i.jr = or disjoint i64 %.08.i80, 1             ; 2 uses
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.jr
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.js, i64 16, i1 false), !tbaa.struct !76
  %i.ju = add nuw i64 %.08.i80, 2                 ; 2 uses
  %niter376.next.1 = add i64 %niter376, 2         ; 2 uses
  %niter376.ncmp.1 = icmp eq i64 %niter376.next.1, %unroll_iter375
  br i1 %niter376.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit360.unr-lcssa, label %.lr.ph.i79, !llvm.loop !152

bb.l:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !115 ; 7 uses
  %.not.i82 = icmp eq i64 %1, 0
  br i1 %.not.i82, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i83.preheader

.lr.ph.i83.preheader:                             ; preds = %bb.l
  %i.jx = ptrtoaddr ptr %i.jw to i64
  %min.iters.check152 = icmp ult i64 %1, 8
  %i.jy = sub i64 %i.a, %i.jx
  %diff.check150 = icmp ugt i64 %i.jy, -32
  %or.cond346 = select i1 %min.iters.check152, i1 true, i1 %diff.check150
  br i1 %or.cond346, label %.lr.ph.i83.preheader361, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.i83.preheader
  %n.vec155 = and i64 %1, -8                      ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph153
  %index157 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index157 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load158 = load <4 x float>, ptr %i.jz, align 4, !tbaa !79
  %wide.load159 = load <4 x float>, ptr %i.ka, align 4, !tbaa !79
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %index157 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <4 x float> %wide.load158, ptr %i.kb, align 4, !tbaa !79
  store <4 x float> %wide.load159, ptr %i.kc, align 4, !tbaa !79
  %index.next160 = add nuw i64 %index157, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.kd, label %middle.block161, label %vector.body156, !llvm.loop !153

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %1, %n.vec155
  br i1 %cmp.n162, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i83.preheader361

.lr.ph.i83.preheader361:                          ; preds = %.lr.ph.i83.preheader, %middle.block161
  %.08.i84.ph = phi i64 [ 0, %.lr.ph.i83.preheader ], [ %n.vec155, %middle.block161 ] ; 3 uses
  %xtraiter369 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod370.not = icmp eq i64 %xtraiter369, 0
  br i1 %lcmp.mod370.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol

.lr.ph.i83.prol:                                  ; preds = %.lr.ph.i83.preheader361, %.lr.ph.i83.prol
  %.08.i84.prol = phi i64 [ %i.kh, %.lr.ph.i83.prol ], [ %.08.i84.ph, %.lr.ph.i83.preheader361 ] ; 3 uses
  %prol.iter371 = phi i64 [ %prol.iter371.next, %.lr.ph.i83.prol ], [ 0, %.lr.ph.i83.preheader361 ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i84.prol
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !79
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.08.i84.prol
  store float %i.kf, ptr %i.kg, align 4, !tbaa !79
  %i.kh = add nuw i64 %.08.i84.prol, 1            ; 2 uses
  %prol.iter371.next = add i64 %prol.iter371, 1   ; 2 uses
  %prol.iter371.cmp.not = icmp eq i64 %prol.iter371.next, %xtraiter369
  br i1 %prol.iter371.cmp.not, label %.lr.ph.i83.prol.loopexit, label %.lr.ph.i83.prol, !llvm.loop !154

.lr.ph.i83.prol.loopexit:                         ; preds = %.lr.ph.i83.prol, %.lr.ph.i83.preheader361
  %.08.i84.unr = phi i64 [ %.08.i84.ph, %.lr.ph.i83.preheader361 ], [ %i.kh, %.lr.ph.i83.prol ]
  %i.ki = sub i64 %.08.i84.ph, %1
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %.lr.ph.i83.prol.loopexit, %.lr.ph.i83
  %.08.i84 = phi i64 [ %i.kz, %.lr.ph.i83 ], [ %.08.i84.unr, %.lr.ph.i83.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08.i84
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !79
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.08.i84
  store float %i.kl, ptr %i.km, align 4, !tbaa !79
  %i.kn = add nuw i64 %.08.i84, 1                 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kn
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !79
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.kn
  store float %i.kp, ptr %i.kq, align 4, !tbaa !79
  %i.kr = add nuw i64 %.08.i84, 2                 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kr
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !79
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.kr
  store float %i.kt, ptr %i.ku, align 4, !tbaa !79
  %i.kv = add nuw i64 %.08.i84, 3                 ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kv
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !79
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.kv
  store float %i.kx, ptr %i.ky, align 4, !tbaa !79
  %i.kz = add nuw i64 %.08.i84, 4                 ; 2 uses
  %exitcond.not.i85.3 = icmp eq i64 %i.kz, %1
  br i1 %exitcond.not.i85.3, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i83, !llvm.loop !155

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !115 ; 7 uses
  %.not.i86 = icmp eq i64 %1, 0
  br i1 %.not.i86, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %bb.m
  %i.lc = ptrtoaddr ptr %i.lb to i64
  %min.iters.check = icmp ult i64 %1, 8
  %i.ld = sub i64 %i.a, %i.lc
  %diff.check = icmp ugt i64 %i.ld, -32
  %or.cond347 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond347, label %.lr.ph.i87.preheader363, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i87.preheader
  %n.vec = and i64 %1, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %wide.load = load <2 x double>, ptr %i.le, align 8, !tbaa !85
  %wide.load148 = load <2 x double>, ptr %i.lf, align 8, !tbaa !85
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <2 x double> %wide.load, ptr %i.lg, align 8, !tbaa !85
  store <2 x double> %wide.load148, ptr %i.lh, align 8, !tbaa !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.li = icmp eq i64 %index.next, %n.vec
  br i1 %i.li, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i87.preheader363

.lr.ph.i87.preheader363:                          ; preds = %.lr.ph.i87.preheader, %middle.block
  %.08.i88.ph = phi i64 [ 0, %.lr.ph.i87.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter367 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol

.lr.ph.i87.prol:                                  ; preds = %.lr.ph.i87.preheader363, %.lr.ph.i87.prol
  %.08.i88.prol = phi i64 [ %i.lm, %.lr.ph.i87.prol ], [ %.08.i88.ph, %.lr.ph.i87.preheader363 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i87.prol ], [ 0, %.lr.ph.i87.preheader363 ]
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.i88.prol
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !85
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.08.i88.prol
  store double %i.lk, ptr %i.ll, align 8, !tbaa !85
  %i.lm = add nuw i64 %.08.i88.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter367
  br i1 %prol.iter.cmp.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol, !llvm.loop !157

.lr.ph.i87.prol.loopexit:                         ; preds = %.lr.ph.i87.prol, %.lr.ph.i87.preheader363
  %.08.i88.unr = phi i64 [ %.08.i88.ph, %.lr.ph.i87.preheader363 ], [ %i.lm, %.lr.ph.i87.prol ]
  %i.ln = sub i64 %.08.i88.ph, %1
  %i.lo = icmp ugt i64 %i.ln, -4
  br i1 %i.lo, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87
  %.08.i88 = phi i64 [ %i.me, %.lr.ph.i87 ], [ %.08.i88.unr, %.lr.ph.i87.prol.loopexit ] ; 6 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.08.i88
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !85
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.08.i88
  store double %i.lq, ptr %i.lr, align 8, !tbaa !85
  %i.ls = add nuw i64 %.08.i88, 1                 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ls
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !85
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ls
  store double %i.lu, ptr %i.lv, align 8, !tbaa !85
  %i.lw = add nuw i64 %.08.i88, 2                 ; 2 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lw
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !85
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lw
  store double %i.ly, ptr %i.lz, align 8, !tbaa !85
  %i.ma = add nuw i64 %.08.i88, 3                 ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ma
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !85
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ma
  store double %i.mc, ptr %i.md, align 8, !tbaa !85
  %i.me = add nuw i64 %.08.i88, 4                 ; 2 uses
  %exitcond.not.i89.3 = icmp eq i64 %i.me, %1
  br i1 %exitcond.not.i89.3, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i87, !llvm.loop !158

bb.n:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !115 ; 3 uses
  %.not.i90 = icmp eq i64 %1, 0
  br i1 %.not.i90, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i91.preheader

.lr.ph.i91.preheader:                             ; preds = %bb.n
  %xtraiter = and i64 %1, 1
  %i.mh = icmp eq i64 %1, 1
  br i1 %i.mh, label %.lr.ph.i91.epil.preheader, label %.lr.ph.i91.preheader.new

.lr.ph.i91.preheader.new:                         ; preds = %.lr.ph.i91.preheader
  %unroll_iter = and i64 %1, -2
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91, %.lr.ph.i91.preheader.new
  %.08.i92 = phi i64 [ 0, %.lr.ph.i91.preheader.new ], [ %i.mn, %.lr.ph.i91 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i91.preheader.new ], [ %niter.next.1, %.lr.ph.i91 ]
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i92
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %.08.i92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mi, i64 16, i1 false), !tbaa.struct !91
  %i.mk = or disjoint i64 %.08.i92, 1             ; 2 uses
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.mk
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.mk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ml, i64 16, i1 false), !tbaa.struct !91
  %i.mn = add nuw i64 %.08.i92, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit365.unr-lcssa, label %.lr.ph.i91, !llvm.loop !159

bb.o:                                             ; preds = %bb.a
  %i.mo = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.mo, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.o
  %i.mp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.mq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mr = load ptr, ptr %3, align 8, !tbaa !93    ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.mr) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.0, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.0, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn97 = phi { ptr, i32 } [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.mo) #15
  br label %bb.t

_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit359.unr-lcssa: ; preds = %.lr.ph.i75
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i75.epil.preheader

.lr.ph.i75.epil.preheader:                        ; preds = %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit359.unr-lcssa, %.lr.ph.i75.preheader
  %.08.i76.epil.init = phi i64 [ 0, %.lr.ph.i75.preheader ], [ %i.jl, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit359.unr-lcssa ] ; 2 uses
  %lcmp.mod379 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod379)
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i76.epil.init
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %.08.i76.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mv, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mu, i64 16, i1 false), !tbaa.struct !76
  br label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit

_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit360.unr-lcssa: ; preds = %.lr.ph.i79
  %lcmp.mod373.not = icmp eq i64 %xtraiter372, 0
  br i1 %lcmp.mod373.not, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i79.epil.preheader

.lr.ph.i79.epil.preheader:                        ; preds = %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit360.unr-lcssa, %.lr.ph.i79.preheader
  %.08.i80.epil.init = phi i64 [ 0, %.lr.ph.i79.preheader ], [ %i.ju, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit360.unr-lcssa ] ; 2 uses
  %lcmp.mod374 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod374)
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i80.epil.init
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %.08.i80.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.mw, i64 16, i1 false), !tbaa.struct !76
  br label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit

_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit365.unr-lcssa: ; preds = %.lr.ph.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit, label %.lr.ph.i91.epil.preheader

.lr.ph.i91.epil.preheader:                        ; preds = %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit365.unr-lcssa, %.lr.ph.i91.preheader
  %.08.i92.epil.init = phi i64 [ 0, %.lr.ph.i91.preheader ], [ %i.mn, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit365.unr-lcssa ] ; 2 uses
  %lcmp.mod366 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod366)
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.08.i92.epil.init
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %.08.i92.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mz, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.my, i64 16, i1 false), !tbaa.struct !91
  br label %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit

_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit: ; preds = %.lr.ph.i91.epil.preheader, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit365.unr-lcssa, %.lr.ph.i87.prol.loopexit, %.lr.ph.i87, %.lr.ph.i83.prol.loopexit, %.lr.ph.i83, %.lr.ph.i79.epil.preheader, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit360.unr-lcssa, %.lr.ph.i75.epil.preheader, %_ZN6duckdb12_GLOBAL__N_119ReadFromStorageLoopIaEEvPhmRNS_6VectorE.exit.loopexit359.unr-lcssa, %.lr.ph.i71.prol.loopexit, %.lr.ph.i71, %.lr.ph.i67.prol.loopexit, %.lr.ph.i67, %.lr.ph.i63.prol.loopexit, %.lr.ph.i63, %.lr.ph.i59.prol.loopexit, %.lr.ph.i59, %.lr.ph.i55.prol.loopexit, %.lr.ph.i55, %.lr.ph.i51.prol.loopexit, %.lr.ph.i51, %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block161, %middle.block176, %middle.block191, %middle.block207, %vec.epilog.middle.block, %middle.block230, %vec.epilog.middle.block244, %middle.block259, %middle.block274, %middle.block291, %vec.epilog.middle.block305, %middle.block322, %vec.epilog.middle.block336, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s
  %.pn96 = phi { ptr, i32 } [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn97, %bb.s ], [ %i.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn96

bb.u:                                             ; preds = %bb.q
  unreachable
}

declare void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !108
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !inline_history !160
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIaEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !161
  %i.d = and i8 %i.c, -3
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 3, ptr %i.a, align 1, !tbaa !162
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.i = load ptr, ptr %1, align 8, !tbaa !93     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
end_hunk_1
