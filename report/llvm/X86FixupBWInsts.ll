Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86FixupBWInsts?download=true
inline.NumInlined: 891
inline.NumDeleted: 613
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK12_GLOBAL__N_118X86FixupBWInstImpl21getSuperRegDestIfDeadEPN4llvm12MachineInstrE:bb.a
  %.sroa.716.0.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %spec.store.select.i.i.i.lcssa.unr, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i7.i.i.prol.loopexit ], [ %spec.store.select.i.i.i.3, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i7.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.05960.i.i, %.lr.ph.i.i ], [ %.lcssa215.unr, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i7.i.i.prol.loopexit ], [ %i.bm, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i7.i.i ]
  %i.bn = icmp ult i32 %.sroa.9.0.i.i, %.sroa.9.0189
  br i1 %i.bn, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, label %bb.d

_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i:         ; preds = %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.716.0.i.i, i64 2
  %i.bp = load i16, ptr %.sroa.716.0.i.i, align 2, !tbaa !408, !noalias !409 ; 2 uses
  %i.bq = sext i16 %i.bp to i32
  %i.br = add i32 %.sroa.0.0.i.i, %i.bq           ; 4 uses
  %.not.i.i.i.i = icmp eq i16 %i.bp, 0
  %spec.select.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.bo ; 2 uses
  %i.bs = xor i64 %i.al, -1
  %i.bt = add nsw i64 %.061.i.i, %i.bs
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i
  %.sroa.10.1.i = phi i32 [ %i.br, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %.sroa.10.0.i, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ] ; 5 uses
  %.sroa.74.1.i = phi ptr [ %spec.select.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %.sroa.74.0.i, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ] ; 4 uses
  %.sroa.0.1.i = phi i32 [ %i.br, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %.sroa.0.0.i, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ] ; 4 uses
  %i.bu = phi i32 [ %i.br, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %i.ak, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ]
  %i.bv = phi ptr [ %spec.select.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %i.aj, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ]
  %.sroa.0.058.i.i = phi i32 [ %i.br, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %.sroa.0.05960.i.i, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ]
  %.1.i.i = phi i64 [ %i.bt, %_ZN4llvm17MCRegUnitIteratorppEv.exit.i.i ], [ %i.al, %_ZSt9__advanceIN4llvm17MCRegUnitIteratorElEvRT_T0_St18input_iterator_tag.exit.i.i ] ; 2 uses
  %i.bw = icmp sgt i64 %.1.i.i, 0
  br i1 %i.bw, label %.lr.ph.i.i, label %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit, !llvm.loop !418

_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %.sroa.74.1.i, null
  br i1 %i.bx, label %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit
  %i.by = icmp ugt i32 %.sroa.10.1.i, %.sroa.9.0189
  br i1 %i.by, label %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread, label %_ZN4llvm17MCRegUnitIteratorppEv.exit

_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread: ; preds = %bb.c, %bb.e, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit
  %.sroa.0.2.i144 = phi i32 [ %.sroa.0.1.i, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit ], [ %.sroa.0.1.i, %bb.e ], [ %.sroa.088.0188, %bb.c ]
  %.sroa.74.3.i141 = phi ptr [ null, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit ], [ %.sroa.74.1.i, %bb.e ], [ null, %bb.c ]
  %.sroa.10.2.i138 = phi i32 [ %.sroa.10.1.i, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit ], [ %.sroa.10.1.i, %bb.e ], [ %.sroa.8.0186, %bb.c ]
  %i.bz = and i32 %.sroa.9.0189, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = lshr i32 %.sroa.9.0189, 6
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ch = and i64 %i.cg, %i.cb
  %.not179 = icmp eq i64 %i.ch, 0
  br i1 %.not179, label %_ZN4llvm17MCRegUnitIteratorppEv.exit, label %.thread154

_ZN4llvm17MCRegUnitIteratorppEv.exit:             ; preds = %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread, %bb.e
  %.sroa.0.2.i143.ph = phi i32 [ %.sroa.0.1.i, %bb.e ], [ %.sroa.0.2.i144, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread ]
  %.sroa.74.3.i140.ph = phi ptr [ %.sroa.74.1.i, %bb.e ], [ %.sroa.74.3.i141, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread ]
  %.sroa.10.2.i137.ph = phi i32 [ %.sroa.10.1.i, %bb.e ], [ %.sroa.10.2.i138, %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.572.0190, i64 2
  %i.cj = load i16, ptr %.sroa.572.0190, align 2, !tbaa !408 ; 2 uses
  %i.ck = sext i16 %i.cj to i32
  %i.cl = add i32 %.sroa.9.0189, %i.ck
  %.not.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.i, label %.critedge8, label %bb.c

.thread154:                                       ; preds = %_ZSt11lower_boundIN4llvm17MCRegUnitIteratorENS0_9MCRegUnitEET_S3_S3_RKT0_.exit.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !346
  switch i32 %i.cn, label %.critedge8 [
    i32 2625, label %bb.f
    i32 2623, label %bb.f
    i32 2568, label %bb.f
    i32 2567, label %bb.f
  ]

bb.f:                                             ; preds = %.thread154, %.thread154, %.thread154, %.thread154
  %i.co = load ptr, ptr %i.d, align 8, !tbaa !347 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = load i24, ptr %i.cp, align 8
  %i.cr = zext i24 %i.cq to i64                   ; 2 uses
  %i.cs = tail call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #16
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.cr
  %.not191 = icmp samesign eq i64 %i.ct, %i.cr
  br i1 %.not191, label %.critedge8, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.ct
  %i.cw = add i32 %i.h, -1
  %i.cx = icmp ult i32 %i.cw, 1073741823
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph194, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157
  %.055193 = phi ptr [ %i.cv, %.lr.ph194 ], [ %i.es, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157 ] ; 3 uses
  %.056192 = phi i1 [ false, %.lr.ph194 ], [ %.258.ph, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157 ] ; 7 uses
  %i.cy = load i32, ptr %.055193, align 8         ; 2 uses
  %i.cz = and i32 %i.cy, 255
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.h, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157

bb.h:                                             ; preds = %bb.g
  %i.db = and i32 %i.cy, 16777216
  %.not180 = icmp eq i32 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.055193, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !348 ; 7 uses
  %i.de = icmp eq i32 %i.dd, %i.g                 ; 2 uses
  br i1 %.not180, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread161, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.de, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = load ptr, ptr %i.m, align 8, !tbaa !398, !noalias !419
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !402, !noalias !419
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !422, !noalias !419
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !408, !noalias !419 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.j
  %i.dn = zext i16 %i.dm to i32
  %i.do = add i32 %i.g, %i.dn
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.pn.i.i = phi ptr [ %i.ds, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.preheader.i.i ]
  %i.dp = phi i32 [ %i.dv, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i ], [ %i.do, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.dq = and i32 %i.dp, 65535
  %i.dr = icmp eq i32 %i.dd, %i.dq
  br i1 %i.dr, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 2 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !408, !noalias !423 ; 2 uses
  %i.du = zext i16 %i.dt to i32
  %i.dv = add i32 %i.dp, %i.du
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !430

_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread161: ; preds = %bb.h
  br i1 %i.de, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread161
  %i.dw = load ptr, ptr %i.m, align 8, !tbaa !398, !noalias !431
  %i.dx = load ptr, ptr %i.k, align 8, !tbaa !402, !noalias !431
  %i.dy = zext i32 %i.dd to i64
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !422, !noalias !431
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.ec ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !408, !noalias !431 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.k
  %i.ef = zext i16 %i.ee to i32
  %i.eg = add i32 %i.dd, %i.ef
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.pn.i.i.i = phi ptr [ %i.ek, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.ed, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.eh = phi i32 [ %i.en, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.ei = and i32 %i.eh, 65535
  %i.ej = icmp eq i32 %i.g, %i.ei
  br i1 %i.ej, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 2 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !408, !noalias !434 ; 2 uses
  %i.em = zext i16 %i.el to i32
  %i.en = add i32 %i.eh, %i.em
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !430

_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %bb.k
  %i.eo = icmp eq i32 %i.h, %i.dd
  br i1 %i.eo, label %.critedge8, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit
  %i.ep = add i32 %i.dd, -1
  %i.eq = icmp ult i32 %i.ep, 1073741823
  %or.cond.i = and i1 %i.cx, %i.eq
  br i1 %or.cond.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit: ; preds = %bb.l
  %i.er = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.c, i32 %i.h, i32 %i.dd) #16
  br i1 %i.er, label %.critedge8, label %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157

_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.l, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread161, %bb.i, %bb.j, %bb.g, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit
  %.258.ph = phi i1 [ %.056192, %bb.j ], [ %.056192, %bb.l ], [ %.056192, %bb.g ], [ %.056192, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit ], [ %.056192, %.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.i ], [ %.056192, %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread161 ], [ true, %.lr.ph.i.i.i.i.i.i ], [ %.056192, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.055193, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.es, %i.cu
  br i1 %.not, label %.critedge8.thread173.loopexit, label %bb.g

.critedge8.thread173.loopexit:                    ; preds = %_ZNK4llvm14MCRegisterInfo17isSuperRegisterEqENS_10MCRegisterES1_.exit.thread157
  %i.et = select i1 %.258.ph, i32 %i.h, i32 0
  br label %.critedge8

.critedge8:                                       ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit, %bb.f, %.critedge8.thread173.loopexit, %bb.b, %.thread154, %bb.a
  %.sroa.0124.4 = phi i32 [ 0, %bb.a ], [ %i.et, %.critedge8.thread173.loopexit ], [ 0, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit ], [ 0, %.thread154 ], [ %i.h, %bb.b ], [ 0, %bb.f ], [ 0, %_ZNK4llvm14MCRegisterInfo15isSubRegisterEqENS_10MCRegisterES1_.exit ], [ %i.h, %_ZN4llvm17MCRegUnitIteratorppEv.exit ]
  ret i32 %.sroa.0124.4
}

declare noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240), i32, i32) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm12MachineInstr16getDebugInstrNumERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

declare void @_ZN4llvm15MachineFunction26makeDebugValueSubstitutionESt4pairIjjES2_j(ptr noundef nonnull align 8 dereferenceable(1065), i64, i64, i32 noundef) local_unnamed_addr #5

declare i32 @_ZN4llvm22getX86SubSuperRegisterENS_10MCRegisterEjb(i32, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240), i32, i32) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32), ptr, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4llvm12MachineInstr10setMemRefsERNS_15MachineFunctionENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(1065), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPNS_12MachineInstrES3_ELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !209
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !209
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !209
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !209
  ret void
}

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef nonnull align 8 dereferenceable(17)) unnamed_addr #5

declare { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !441, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !441, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

declare void @__once_proxy() #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !442, !nonnull !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !444, !nonnull !19, !align !157
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !445
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #16, !inline_history !448
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_X86FixupBWInsts.cpp() #14 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL12FixupBWInsts, i32 noundef 0, i32 noundef 0) #16
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 120), align 8, !tbaa !230
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL12FixupBWInsts, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12FixupBWInsts, ptr nonnull align 1 dereferenceable(22) @.str, i64 21) #16
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 32), align 8, !tbaa !26
  store i64 49, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 40), align 8, !tbaa !28
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 120), align 8, !tbaa !230
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 137), align 1, !tbaa !441
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 136), align 8, !tbaa !449
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL12FixupBWInsts, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL12FixupBWInsts) #16
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL12FixupBWInsts, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = distinct !{null}
!14 = !{!15, !17, i64 16}
!15 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !16, i64 0, !5, i64 8, !5, i64 12, !17, i64 16}
!16 = !{!"any p2 pointer", !12, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!15, !16, i64 0}
!21 = !{!22, !12, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!12, !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSSt17reference_wrapperIN4llvm12PassRegistryEE", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 omnipotent char", !12, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"long", !6, i64 0}
end_hunk_0
