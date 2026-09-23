Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/NthValue?download=true
inline.NumInlined: 9366
inline.NumDeleted: 2574
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction5applyERKN5boost13intrusive_ptrINS0_6BufferEEESA_SA_SA_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  br i1 %.not37.i.i.not.i.i.i.i529.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph531

bb.o:                                             ; preds = %.lr.ph531
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i530, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.cm
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph531, label %.critedge.i.i.i.i.i.i, !llvm.loop !7

.lr.ph531:                                        ; preds = %bb.n, %bb.o
  %indvars.iv.i.i.i.i530 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.cn = lshr exact i64 %indvars.iv.i.i.i.i530, 3
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !159
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i.i:                            ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.cg, %i.cl
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.cr = lshr i32 %i.cg, 6
  %i.cs = and i32 %i.cg, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.ct
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !159
  %.demorgan.i.i.i.i = or i64 %i.cw, %notmask.i40.i.i.i.i.i.i
  %i.cx = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.cy = zext i1 %i.cx to i16
  %i.cz = or disjoint i16 %i.cy, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph531, %bb.p, %.critedge.i.i.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.cz, %bb.p ], [ 256, %.lr.ph531 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.ca, align 4
  %i.da = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.da, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i to i1
  %i.db = load i32, ptr %i.ar, align 4, !tbaa !247 ; 8 uses
  br i1 %.0.i.i.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.dc = load i32, ptr %i.at, align 8, !tbaa !248 ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %i.de = sext i32 %i.db to i64
  %wide.trip.count.i.i.i = sext i32 %i.dc to i64
  %sext446.i = shl i64 %.fca.0.extract.i, 32
  %i.df = ashr exact i64 %sext446.i, 32
  br label %bb.r

bb.r:                                             ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.de, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i ] ; 4 uses
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i.i.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !115 ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.i.i.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i = icmp sgt i32 %i.dh, %i.dj
  br i1 %.not3.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.r
  %i.dk = sext i32 %i.dh to i64
  %i.dl = add i32 %i.dj, 1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %.lr.ph.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.u ] ; 3 uses
  %.0194.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.dm = sub nsw i64 %indvars.iv.i.i.i.i.i, %i.df ; 2 uses
  %i.dn = lshr i64 %i.dm, 6
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !159
  %i.dq = and i64 %i.dm, 63
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = and i64 %i.dr, %i.dp
  %.not1.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not1.i.i.i.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dt = add nsw i64 %.0194.i.i.i.i.i, 1         ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.bw
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = trunc nsw i64 %indvars.iv.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i
  %.1.i.i.i.i.i = phi i64 [ %.0194.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dt, %bb.s ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i to i32
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.dl, %lftr.wideiv.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.r
  %.sink.i.i.i.i.i = phi i32 [ %i.dv, %bb.t ], [ -1, %bb.r ], [ -1, %bb.u ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %.sink.i.i.i.i.i, ptr %i.dw, align 4, !tbaa !115
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.r, !llvm.loop !822

bb.v:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.dx = load ptr, ptr %5, align 8, !tbaa !239   ; 4 uses
  %i.dy = load i32, ptr %i.at, align 8, !tbaa !248 ; 7 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %i.db, %i.dy
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

bb.w:                                             ; preds = %bb.v
  %i.dz = add i32 %i.db, 63                       ; 2 uses
  %i.ea = srem i32 %i.dz, 64
  %i.eb = sub nsw i32 %i.dz, %i.ea                ; 6 uses
  %i.ec = and i32 %i.dy, -64                      ; 6 uses
  %i.ed = icmp slt i32 %i.ec, %i.eb
  br i1 %i.ed, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ee = ashr i32 %i.dy, 6
  %i.ef = and i32 %i.dy, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.eg
  %i.eh = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.ei = sub nsw i32 %i.eb, %i.db                ; 2 uses
  %i.ej = zext nneg i32 %i.ei to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ej
  %i.ek = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.el = sub nsw i32 64, %i.ei
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %i.ek, %i.em
  %i.eo = and i64 %i.en, %i.eh
  %i.ep = sext i32 %i.ee to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159
  %i.es = and i64 %i.eo, %i.er                    ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.x
  %i.et = sext i32 %i.ec to i64
  %sext445.i = shl i64 %.fca.0.extract.i, 32
  %i.eu = ashr exact i64 %sext445.i, 32
  br label %bb.y

bb.y:                                             ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.es, %.preheader.i.i.i.i.i.i.i ], [ %i.fp, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ev = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i.i.i, i1 true)
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.ew = or disjoint i64 %i.ev, %i.et            ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !115 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ew
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ey, %i.fa
  br i1 %.not3.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %bb.y
  %i.fb = sext i32 %i.ey to i64
  %i.fc = add i32 %i.fa, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ab, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 3 uses
  %.0194.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.ab ] ; 2 uses
  %i.fd = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, %i.eu ; 2 uses
  %i.fe = lshr i64 %i.fd, 6
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !159
  %i.fh = and i64 %i.fd, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = and i64 %i.fi, %i.fg
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fk = add nsw i64 %.0194.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, %i.bw
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fm = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.0194.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.fk, %bb.z ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i to i32
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fc, %lftr.wideiv.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.y
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %bb.aa ], [ -1, %bb.y ], [ -1, %bb.ab ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %i.ew
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.fn, align 4, !tbaa !115
  %i.fo = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.fp = and i64 %i.fo, %.012.i.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.y, !llvm.loop !823

bb.ac:                                            ; preds = %bb.w
  %.not32.i.i.i.i.i.i = icmp eq i32 %i.db, %i.eb
  br i1 %.not32.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fq = sdiv i32 %i.db, 64                      ; 2 uses
  %i.fr = sub nsw i32 %i.eb, %i.db                ; 2 uses
  %i.fs = zext nneg i32 %i.fr to i64
  %notmask.i.i35.i.i.i.i.i.i = shl nsw i64 -1, %i.fs
  %i.ft = xor i64 %notmask.i.i35.i.i.i.i.i.i, -1
  %i.fu = sub nsw i32 64, %i.fr
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl i64 %i.ft, %i.fv
  %i.fx = sext i32 %i.fq to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !159
  %i.ga = and i64 %i.fz, %i.fw                    ; 2 uses
  %.not.i36.i.i.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.i36.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i:                       ; preds = %bb.ad
  %i.gb = shl nsw i32 %i.fq, 6
  %i.gc = sext i32 %i.gb to i64
  %sext.i = shl i64 %.fca.0.extract.i, 32
  %i.gd = ashr exact i64 %sext.i, 32
  br label %bb.ae

bb.ae:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i
  %.012.i38.i.i.i.i.i.i = phi i64 [ %i.ga, %.preheader.i37.i.i.i.i.i.i ], [ %i.gy, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i ] ; 3 uses
  %i.ge = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i38.i.i.i.i.i.i, i1 true)
  %.val.i.i39.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.gf = or disjoint i64 %i.ge, %i.gc            ; 3 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !115 ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.gf
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i40.i.i.i.i.i.i = icmp sgt i32 %i.gh, %i.gj
  br i1 %.not3.i.i.i40.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i41.i.i.i.i.i.i

.lr.ph.preheader.i.i.i41.i.i.i.i.i.i:             ; preds = %bb.ae
  %i.gk = sext i32 %i.gh to i64
  %i.gl = add i32 %i.gj, 1
  br label %.lr.ph.i.i.i42.i.i.i.i.i.i

.lr.ph.i.i.i42.i.i.i.i.i.i:                       ; preds = %bb.ah, %.lr.ph.preheader.i.i.i41.i.i.i.i.i.i
  %indvars.iv.i.i.i43.i.i.i.i.i.i = phi i64 [ %i.gk, %.lr.ph.preheader.i.i.i41.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i47.i.i.i.i.i.i, %bb.ah ] ; 3 uses
  %.0194.i.i.i44.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i41.i.i.i.i.i.i ], [ %.1.i.i.i46.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %i.gm = sub nsw i64 %indvars.iv.i.i.i43.i.i.i.i.i.i, %i.gd ; 2 uses
  %i.gn = lshr i64 %i.gm, 6
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !159
  %i.gq = and i64 %i.gm, 63
  %i.gr = shl nuw i64 1, %i.gq
  %i.gs = and i64 %i.gr, %i.gp
  %.not1.i.i.i45.i.i.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not1.i.i.i45.i.i.i.i.i.i, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph.i.i.i42.i.i.i.i.i.i
  %i.gt = add nsw i64 %.0194.i.i.i44.i.i.i.i.i.i, 1 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, %i.bw
  br i1 %i.gu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gv = trunc nsw i64 %indvars.iv.i.i.i43.i.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af, %.lr.ph.i.i.i42.i.i.i.i.i.i
  %.1.i.i.i46.i.i.i.i.i.i = phi i64 [ %.0194.i.i.i44.i.i.i.i.i.i, %.lr.ph.i.i.i42.i.i.i.i.i.i ], [ %i.gt, %bb.af ]
  %indvars.iv.next.i.i.i47.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i43.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i48.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i47.i.i.i.i.i.i to i32
  %exitcond.not.i.i.i49.i.i.i.i.i.i = icmp eq i32 %i.gl, %lftr.wideiv.i.i.i48.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i49.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i, label %.lr.ph.i.i.i42.i.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.ae
  %.sink.i.i.i51.i.i.i.i.i.i = phi i32 [ %i.gv, %bb.ag ], [ -1, %bb.ae ], [ -1, %bb.ah ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i39.i.i.i.i.i.i, i64 %i.gf
  store i32 %.sink.i.i.i51.i.i.i.i.i.i, ptr %i.gw, align 4, !tbaa !115
  %i.gx = add i64 %.012.i38.i.i.i.i.i.i, -1
  %i.gy = and i64 %i.gx, %.012.i38.i.i.i.i.i.i    ; 2 uses
  %.not10.i52.i.i.i.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not10.i52.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i, label %bb.ae, !llvm.loop !823

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i50.i.i.i.i.i.i, %bb.ad, %bb.ac
  %i.gz = add nsw i32 %i.eb, 64                   ; 2 uses
  %.not3394.i.i.i.i.i.i = icmp sgt i32 %i.gz, %i.ec
  br i1 %.not3394.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i
  %sext443.i = shl i64 %.fca.0.extract.i, 32
  %i.ha = ashr exact i64 %sext443.i, 32           ; 2 uses
  br label %bb.ai

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUlimE_clEim.exit53.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.dy, %i.ec
  br i1 %.not34.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.as

bb.ai:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hb = phi i32 [ %i.gz, %.lr.ph.i.i.i.i.i.i ], [ %i.jb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i ] ; 2 uses
  %.095.i.i.i.i.i.i = phi i32 [ %i.eb, %.lr.ph.i.i.i.i.i.i ], [ %i.hb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i ] ; 2 uses
  %i.hc = sdiv i32 %.095.i.i.i.i.i.i, 64          ; 3 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !159 ; 2 uses
  switch i64 %i.hf, label %.lr.ph.i.i.i.i.i.i.i [
    i64 -1, label %bb.aj
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ai
  %i.hg = shl nsw i32 %i.hc, 6
  %i.hh = sext i32 %i.hg to i64
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.hi = shl nsw i32 %i.hc, 6                    ; 2 uses
  %i.hj = add i32 %i.hi, 64
  %i.hk = sext i32 %i.hj to i64
  %.0.off.i.i.i.i.i.i = add i32 %.095.i.i.i.i.i.i, 127
  %.not36.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i, 64
  br i1 %.not36.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph35.i.i.i.i.i.i.i

.lr.ph35.i.i.i.i.i.i.i:                           ; preds = %bb.aj
  %i.hl = sext i32 %i.hi to i64
  br label %bb.ak

bb.ak:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i, %.lr.ph35.i.i.i.i.i.i.i
  %.034.i.i.i.i.i.i.i = phi i64 [ %i.hl, %.lr.ph35.i.i.i.i.i.i.i ], [ %i.ie, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i54.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %sext.i.i.i.i.i.i.i.i = shl i64 %.034.i.i.i.i.i.i.i, 32
  %i.hm = ashr exact i64 %sext.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !115 ; 2 uses
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.hm
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i55.i.i.i.i.i.i = icmp sgt i32 %i.ho, %i.hq
  br i1 %.not3.i.i.i55.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i56.i.i.i.i.i.i

.lr.ph.preheader.i.i.i56.i.i.i.i.i.i:             ; preds = %bb.ak
  %i.hr = sext i32 %i.ho to i64
  %i.hs = add i32 %i.hq, 1
  br label %.lr.ph.i.i.i57.i.i.i.i.i.i

.lr.ph.i.i.i57.i.i.i.i.i.i:                       ; preds = %bb.an, %.lr.ph.preheader.i.i.i56.i.i.i.i.i.i
  %indvars.iv.i.i.i58.i.i.i.i.i.i = phi i64 [ %i.hr, %.lr.ph.preheader.i.i.i56.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i62.i.i.i.i.i.i, %bb.an ] ; 3 uses
  %.0194.i.i.i59.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i56.i.i.i.i.i.i ], [ %.1.i.i.i61.i.i.i.i.i.i, %bb.an ] ; 2 uses
  %i.ht = sub nsw i64 %indvars.iv.i.i.i58.i.i.i.i.i.i, %i.ha ; 2 uses
  %i.hu = lshr i64 %i.ht, 6
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.hu
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !159
  %i.hx = and i64 %i.ht, 63
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = and i64 %i.hy, %i.hw
  %.not1.i.i.i60.i.i.i.i.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not1.i.i.i60.i.i.i.i.i.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %.lr.ph.i.i.i57.i.i.i.i.i.i
  %i.ia = add nsw i64 %.0194.i.i.i59.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, %i.bw
  br i1 %i.ib, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = trunc nsw i64 %indvars.iv.i.i.i58.i.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al, %.lr.ph.i.i.i57.i.i.i.i.i.i
  %.1.i.i.i61.i.i.i.i.i.i = phi i64 [ %.0194.i.i.i59.i.i.i.i.i.i, %.lr.ph.i.i.i57.i.i.i.i.i.i ], [ %i.ia, %bb.al ]
  %indvars.iv.next.i.i.i62.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i58.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i63.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i62.i.i.i.i.i.i to i32
  %exitcond.not.i.i.i64.i.i.i.i.i.i = icmp eq i32 %i.hs, %lftr.wideiv.i.i.i63.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i64.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i57.i.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.ak
  %.sink.i.i.i65.i.i.i.i.i.i = phi i32 [ %i.ic, %bb.am ], [ -1, %bb.ak ], [ -1, %bb.an ]
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i54.i.i.i.i.i.i, i64 %i.hm
  store i32 %.sink.i.i.i65.i.i.i.i.i.i, ptr %i.id, align 4, !tbaa !115
  %i.ie = add nuw i64 %.034.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.hk
  br i1 %i.if, label %bb.ak, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !824

bb.ao:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.01533.i.i.i.i.i.i.i = phi i64 [ %i.hf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ja, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i ] ; 3 uses
  %i.ig = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01533.i.i.i.i.i.i.i, i1 true)
  %.val.i17.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.ih = or disjoint i64 %i.ig, %i.hh            ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !115 ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ih
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i18.i.i.i.i.i.i.i = icmp sgt i32 %i.ij, %i.il
  br i1 %.not3.i.i18.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i, label %.lr.ph.preheader.i.i19.i.i.i.i.i.i.i

.lr.ph.preheader.i.i19.i.i.i.i.i.i.i:             ; preds = %bb.ao
  %i.im = sext i32 %i.ij to i64
  %i.in = add i32 %i.il, 1
  br label %.lr.ph.i.i20.i.i.i.i.i.i.i

.lr.ph.i.i20.i.i.i.i.i.i.i:                       ; preds = %bb.ar, %.lr.ph.preheader.i.i19.i.i.i.i.i.i.i
  %indvars.iv.i.i21.i.i.i.i.i.i.i = phi i64 [ %i.im, %.lr.ph.preheader.i.i19.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i25.i.i.i.i.i.i.i, %bb.ar ] ; 3 uses
  %.0194.i.i22.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i19.i.i.i.i.i.i.i ], [ %.1.i.i24.i.i.i.i.i.i.i, %bb.ar ] ; 2 uses
  %i.io = sub nsw i64 %indvars.iv.i.i21.i.i.i.i.i.i.i, %i.ha ; 2 uses
  %i.ip = lshr i64 %i.io, 6
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !159
  %i.is = and i64 %i.io, 63
  %i.it = shl nuw i64 1, %i.is
  %i.iu = and i64 %i.it, %i.ir
  %.not1.i.i23.i.i.i.i.i.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not1.i.i23.i.i.i.i.i.i.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph.i.i20.i.i.i.i.i.i.i
  %i.iv = add nsw i64 %.0194.i.i22.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, %i.bw
  br i1 %i.iw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ix = trunc nsw i64 %indvars.iv.i.i21.i.i.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap, %.lr.ph.i.i20.i.i.i.i.i.i.i
  %.1.i.i24.i.i.i.i.i.i.i = phi i64 [ %.0194.i.i22.i.i.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i.i.i ], [ %i.iv, %bb.ap ]
  %indvars.iv.next.i.i25.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i21.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i26.i.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i25.i.i.i.i.i.i.i to i32
  %exitcond.not.i.i27.i.i.i.i.i.i.i = icmp eq i32 %i.in, %lftr.wideiv.i.i26.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i27.i.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i, label %.lr.ph.i.i20.i.i.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ao
  %.sink.i.i28.i.i.i.i.i.i.i = phi i32 [ %i.ix, %bb.aq ], [ -1, %bb.ao ], [ -1, %bb.ar ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val.i17.i.i.i.i.i.i.i, i64 %i.ih
  store i32 %.sink.i.i28.i.i.i.i.i.i.i, ptr %i.iy, align 4, !tbaa !115
  %i.iz = add i64 %.01533.i.i.i.i.i.i.i, -1
  %i.ja = and i64 %i.iz, %.01533.i.i.i.i.i.i.i    ; 2 uses
  %.not.i67.i.i.i.i.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not.i67.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.ao, !llvm.loop !825

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clImEEDaSA_.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i66.i.i.i.i.i.i, %bb.aj, %bb.ai
  %i.jb = add nsw i32 %i.hb, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i = icmp sgt i32 %i.jb, %i.ec
  br i1 %.not33.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.ai, !llvm.loop !826

bb.as:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.jc = ashr i32 %i.dy, 6
  %i.jd = and i32 %i.dy, 63
  %i.je = zext nneg i32 %i.jd to i64
  %notmask.i68.i.i.i.i.i.i = shl nsw i64 -1, %i.je
  %i.jf = xor i64 %notmask.i68.i.i.i.i.i.i, -1
  %i.jg = sext i32 %i.jc to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !159
  %i.jj = and i64 %i.ji, %i.jf                    ; 2 uses
  %.not.i69.i.i.i.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i69.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.preheader.i70.i.i.i.i.i.i

.preheader.i70.i.i.i.i.i.i:                       ; preds = %bb.as
  %i.jk = sext i32 %i.ec to i64
  %sext444.i = shl i64 %.fca.0.extract.i, 32
  %i.jl = ashr exact i64 %sext444.i, 32
  br label %bb.at

bb.at:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i, %.preheader.i70.i.i.i.i.i.i
  %.012.i71.i.i.i.i.i.i = phi i64 [ %i.jj, %.preheader.i70.i.i.i.i.i.i ], [ %i.kg, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i ] ; 3 uses
  %i.jm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i71.i.i.i.i.i.i, i1 true)
  %.val.i.i72.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.jn = or disjoint i64 %i.jm, %i.jk            ; 3 uses
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !115 ; 2 uses
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.jn
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i73.i.i.i.i.i.i = icmp sgt i32 %i.jp, %i.jr
  br i1 %.not3.i.i.i73.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i74.i.i.i.i.i.i

.lr.ph.preheader.i.i.i74.i.i.i.i.i.i:             ; preds = %bb.at
  %i.js = sext i32 %i.jp to i64
  %i.jt = add i32 %i.jr, 1
  br label %.lr.ph.i.i.i75.i.i.i.i.i.i

.lr.ph.i.i.i75.i.i.i.i.i.i:                       ; preds = %bb.aw, %.lr.ph.preheader.i.i.i74.i.i.i.i.i.i
  %indvars.iv.i.i.i76.i.i.i.i.i.i = phi i64 [ %i.js, %.lr.ph.preheader.i.i.i74.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i80.i.i.i.i.i.i, %bb.aw ] ; 3 uses
  %.0194.i.i.i77.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i74.i.i.i.i.i.i ], [ %.1.i.i.i79.i.i.i.i.i.i, %bb.aw ] ; 2 uses
  %i.ju = sub nsw i64 %indvars.iv.i.i.i76.i.i.i.i.i.i, %i.jl ; 2 uses
  %i.jv = lshr i64 %i.ju, 6
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.jv
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !159
  %i.jy = and i64 %i.ju, 63
  %i.jz = shl nuw i64 1, %i.jy
  %i.ka = and i64 %i.jz, %i.jx
  %.not1.i.i.i78.i.i.i.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not1.i.i.i78.i.i.i.i.i.i, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %.lr.ph.i.i.i75.i.i.i.i.i.i
  %i.kb = add nsw i64 %.0194.i.i.i77.i.i.i.i.i.i, 1 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, %i.bw
  br i1 %i.kc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kd = trunc nsw i64 %indvars.iv.i.i.i76.i.i.i.i.i.i to i32
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au, %.lr.ph.i.i.i75.i.i.i.i.i.i
  %.1.i.i.i79.i.i.i.i.i.i = phi i64 [ %.0194.i.i.i77.i.i.i.i.i.i, %.lr.ph.i.i.i75.i.i.i.i.i.i ], [ %i.kb, %bb.au ]
  %indvars.iv.next.i.i.i80.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i76.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i81.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i80.i.i.i.i.i.i to i32
  %exitcond.not.i.i.i82.i.i.i.i.i.i = icmp eq i32 %i.jt, %lftr.wideiv.i.i.i81.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i82.i.i.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i, label %.lr.ph.i.i.i75.i.i.i.i.i.i, !llvm.loop !8

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiS9_iENKUlT_E_clIiEEDaSA_.exit.i83.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.sink.i.i.i84.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.av ], [ -1, %bb.at ], [ -1, %bb.aw ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i72.i.i.i.i.i.i, i64 %i.jn
  store i32 %.sink.i.i.i84.i.i.i.i.i.i, ptr %i.ke, align 4, !tbaa !115
  %i.kf = add nsw i64 %.012.i71.i.i.i.i.i.i, -1
  %i.kg = and i64 %i.kf, %.012.i71.i.i.i.i.i.i    ; 2 uses
  %.not10.i85.i.i.i.i.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not10.i85.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.at, !llvm.loop !823

bb.ax:                                            ; preds = %bb.i
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !159 ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !177, !range !126, !noundef !127
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i46.i.i, label %bb.ay

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i46.i.i: ; preds = %bb.ax
  %.0.in.pre.i.i47.i.i = load i8, ptr %i.kj, align 4, !tbaa !160, !range !126
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i5.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.kn = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.az, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i

bb.az:                                            ; preds = %bb.ay
  %i.kp = load i32, ptr %i.at, align 8, !tbaa !248 ; 6 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !249
  %i.ks = icmp eq i32 %i.kp, %i.kr
  br i1 %i.ks, label %bb.ba, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i

bb.ba:                                            ; preds = %bb.az
  %i.kt = load ptr, ptr %5, align 8, !tbaa !239   ; 2 uses
  %.not.i.i.i38.i.i = icmp sgt i32 %i.kp, 0
  br i1 %.not.i.i.i38.i.i, label %bb.bb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ku = and i32 %i.kp, 2147483584               ; 3 uses
  %i.kv = zext nneg i32 %i.ku to i64
  %.not37.i.i.not.i.i40.i.i515.not = icmp eq i32 %i.ku, 0
  br i1 %.not37.i.i.not.i.i40.i.i515.not, label %.critedge.i.i.i.i41.i.i, label %.lr.ph

bb.bc:                                            ; preds = %.lr.ph
  %indvars.iv.next.i.i45.i.i = add nuw nsw i64 %indvars.iv.i.i39.i.i516, 64 ; 2 uses
  %.not37.i.i.not.i.i40.i.i = icmp samesign ult i64 %indvars.iv.next.i.i45.i.i, %i.kv
  br i1 %.not37.i.i.not.i.i40.i.i, label %.lr.ph, label %.critedge.i.i.i.i41.i.i, !llvm.loop !7

.lr.ph:                                           ; preds = %bb.bb, %bb.bc
  %indvars.iv.i.i39.i.i516 = phi i64 [ %indvars.iv.next.i.i45.i.i, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %i.kw = lshr exact i64 %indvars.iv.i.i39.i.i516, 3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kw
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !159
  %i.kz = icmp eq i64 %i.ky, -1
  br i1 %i.kz, label %bb.bc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i, !llvm.loop !7

.critedge.i.i.i.i41.i.i:                          ; preds = %bb.bc, %bb.bb
  %.not38.i.i.i.i42.i.i = icmp eq i32 %i.kp, %i.ku
  br i1 %.not38.i.i.i.i42.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i, label %bb.bd

bb.bd:                                            ; preds = %.critedge.i.i.i.i41.i.i
  %i.la = lshr i32 %i.kp, 6
  %i.lb = and i32 %i.kp, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %notmask.i40.i.i.i.i43.i.i = shl nsw i64 -1, %i.lc
  %i.ld = zext nneg i32 %i.la to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !159
  %.demorgan.i.i44.i.i = or i64 %i.lf, %notmask.i40.i.i.i.i43.i.i
  %i.lg = icmp eq i64 %.demorgan.i.i44.i.i, -1
  %i.lh = zext i1 %i.lg to i16
  %i.li = or disjoint i16 %i.lh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i: ; preds = %.lr.ph, %bb.bd, %.critedge.i.i.i.i41.i.i, %bb.ba, %bb.az, %bb.ay
  %.sroa.0.0.insert.ext.i.i4.i.i = phi i16 [ 256, %bb.az ], [ 256, %bb.ay ], [ 257, %bb.ba ], [ 257, %.critedge.i.i.i.i41.i.i ], [ %i.li, %bb.bd ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i4.i.i, ptr %i.kj, align 4
  %i.lj = trunc i16 %.sroa.0.0.insert.ext.i.i4.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i5.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i5.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i46.i.i
  %.0.in.i.i6.i.i = phi i8 [ %.0.in.pre.i.i47.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i46.i.i ], [ %i.lj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i3.i.i ]
  %.0.i.i7.i.i = trunc nuw i8 %.0.in.i.i6.i.i to i1
  %i.lk = load i32, ptr %i.ar, align 4, !tbaa !247 ; 8 uses
  br i1 %.0.i.i7.i.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i5.i.i
  %i.ll = load i32, ptr %i.at, align 8, !tbaa !248 ; 2 uses
  %i.lm = icmp slt i32 %i.lk, %i.ll
  br i1 %i.lm, label %.lr.ph.i32.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

.lr.ph.i32.i.i:                                   ; preds = %bb.be
  %.val.i.i33.i.i = load ptr, ptr %i.u, align 8, !tbaa !241 ; 5 uses
  %i.ln = add i64 %i.ki, -1                       ; 4 uses
  %i.lo = sext i32 %i.lk to i64                   ; 5 uses
  %wide.trip.count.i34.i.i = sext i32 %i.ll to i64 ; 4 uses
  %i.lp = sub nsw i64 %wide.trip.count.i34.i.i, %i.lo ; 3 uses
  %min.iters.check547 = icmp ult i64 %i.lp, 16
  br i1 %min.iters.check547, label %scalar.ph546.preheader, label %vector.memcheck541

vector.memcheck541:                               ; preds = %.lr.ph.i32.i.i
  %.val.i.i33.i.i542 = ptrtoaddr ptr %.val.i.i33.i.i to i64 ; 2 uses
  %i.lq = sub i64 %i.ba, %.val.i.i33.i.i542
  %diff.check543 = icmp ugt i64 %i.lq, -32
  %i.lr = sub i64 %i.be, %.val.i.i33.i.i542
  %diff.check544 = icmp ugt i64 %i.lr, -32
  %conflict.rdx545 = or i1 %diff.check543, %diff.check544
  br i1 %conflict.rdx545, label %scalar.ph546.preheader, label %vector.ph548

vector.ph548:                                     ; preds = %vector.memcheck541
  %n.vec549 = and i64 %i.lp, -8                   ; 3 uses
  %i.ls = add nsw i64 %n.vec549, %i.lo
  %broadcast.splatinsert550 = insertelement <8 x i64> poison, i64 %i.ln, i64 0
  %broadcast.splat551 = shufflevector <8 x i64> %broadcast.splatinsert550, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body552

vector.body552:                                   ; preds = %vector.body552, %vector.ph548
  %index553 = phi i64 [ 0, %vector.ph548 ], [ %index.next556, %vector.body552 ] ; 2 uses
  %i.lt = add i64 %index553, %i.lo                ; 3 uses
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.lt
  %wide.load554 = load <8 x i32>, ptr %i.lu, align 4, !tbaa !115
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.lt
  %wide.load555 = load <8 x i32>, ptr %i.lv, align 4, !tbaa !115
  %i.lw = sext <8 x i32> %wide.load554 to <8 x i64>
  %i.lx = add <8 x i64> %broadcast.splat551, %i.lw ; 2 uses
  %i.ly = sext <8 x i32> %wide.load555 to <8 x i64>
  %i.lz = icmp sgt <8 x i64> %i.lx, %i.ly
  %i.ma = trunc <8 x i64> %i.lx to <8 x i32>
  %i.mb = select <8 x i1> %i.lz, <8 x i32> splat (i32 -1), <8 x i32> %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i33.i.i, i64 %i.lt
  store <8 x i32> %i.mb, ptr %i.mc, align 4, !tbaa !115
  %index.next556 = add nuw i64 %index553, 8       ; 2 uses
  %i.md = icmp eq i64 %index.next556, %n.vec549
  br i1 %i.md, label %middle.block557, label %vector.body552, !llvm.loop !827

middle.block557:                                  ; preds = %vector.body552
  %cmp.n558 = icmp eq i64 %i.lp, %n.vec549
  br i1 %cmp.n558, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %scalar.ph546.preheader

scalar.ph546.preheader:                           ; preds = %vector.memcheck541, %.lr.ph.i32.i.i, %middle.block557
  %indvars.iv.i35.i.i.ph = phi i64 [ %i.lo, %vector.memcheck541 ], [ %i.lo, %.lr.ph.i32.i.i ], [ %i.ls, %middle.block557 ] ; 7 uses
  %i.me = sub nsw i64 %wide.trip.count.i34.i.i, %indvars.iv.i35.i.i.ph
  %xtraiter = and i64 %i.me, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph546.prol.loopexit, label %scalar.ph546.prol

scalar.ph546.prol:                                ; preds = %scalar.ph546.preheader
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i35.i.i.ph
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !115
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.i35.i.i.ph
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !115
  %i.mj = sext i32 %i.mg to i64
  %i.mk = add i64 %i.ln, %i.mj                    ; 2 uses
  %i.ml = sext i32 %i.mi to i64
  %.not.i.i4.i.i.i.prol = icmp sgt i64 %i.mk, %i.ml
  %i.mm = trunc i64 %i.mk to i32
  %i.mn = select i1 %.not.i.i4.i.i.i.prol, i32 -1, i32 %i.mm
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i33.i.i, i64 %indvars.iv.i35.i.i.ph
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !115
  %indvars.iv.next.i36.i.i.prol = add nsw i64 %indvars.iv.i35.i.i.ph, 1
  br label %scalar.ph546.prol.loopexit

scalar.ph546.prol.loopexit:                       ; preds = %scalar.ph546.prol, %scalar.ph546.preheader
  %indvars.iv.i35.i.i.unr = phi i64 [ %indvars.iv.i35.i.i.ph, %scalar.ph546.preheader ], [ %indvars.iv.next.i36.i.i.prol, %scalar.ph546.prol ]
  %i.mp = add nsw i64 %wide.trip.count.i34.i.i, -1
  %i.mq = icmp eq i64 %indvars.iv.i35.i.i.ph, %i.mp
  br i1 %i.mq, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %scalar.ph546

scalar.ph546:                                     ; preds = %scalar.ph546.prol.loopexit, %scalar.ph546
  %indvars.iv.i35.i.i = phi i64 [ %indvars.iv.next.i36.i.i.1, %scalar.ph546 ], [ %indvars.iv.i35.i.i.unr, %scalar.ph546.prol.loopexit ] ; 5 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i35.i.i
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !115
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.i35.i.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !115
  %i.mv = sext i32 %i.ms to i64
  %i.mw = add i64 %i.ln, %i.mv                    ; 2 uses
  %i.mx = sext i32 %i.mu to i64
  %.not.i.i4.i.i.i = icmp sgt i64 %i.mw, %i.mx
  %i.my = trunc i64 %i.mw to i32
  %i.mz = select i1 %.not.i.i4.i.i.i, i32 -1, i32 %i.my
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i33.i.i, i64 %indvars.iv.i35.i.i
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !115
  %indvars.iv.next.i36.i.i = add nsw i64 %indvars.iv.i35.i.i, 1 ; 3 uses
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.next.i36.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !115
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.next.i36.i.i
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !115
  %i.nf = sext i32 %i.nc to i64
  %i.ng = add i64 %i.ln, %i.nf                    ; 2 uses
  %i.nh = sext i32 %i.ne to i64
  %.not.i.i4.i.i.i.1 = icmp sgt i64 %i.ng, %i.nh
  %i.ni = trunc i64 %i.ng to i32
  %i.nj = select i1 %.not.i.i4.i.i.i.1, i32 -1, i32 %i.ni
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i33.i.i, i64 %indvars.iv.next.i36.i.i
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !115
  %indvars.iv.next.i36.i.i.1 = add nsw i64 %indvars.iv.i35.i.i, 2 ; 2 uses
  %exitcond.not.i37.i.i.1 = icmp eq i64 %indvars.iv.next.i36.i.i.1, %wide.trip.count.i34.i.i
  br i1 %exitcond.not.i37.i.i.1, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %scalar.ph546, !llvm.loop !828

bb.bf:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i5.i.i
  %i.nl = load ptr, ptr %5, align 8, !tbaa !239   ; 4 uses
  %i.nm = load i32, ptr %i.at, align 8, !tbaa !248 ; 7 uses
  %.not.i.i.i.i12.i.i = icmp slt i32 %i.lk, %i.nm
  br i1 %.not.i.i.i.i12.i.i, label %bb.bg, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

bb.bg:                                            ; preds = %bb.bf
  %i.nn = add i32 %i.lk, 63                       ; 2 uses
  %i.no = srem i32 %i.nn, 64
  %i.np = sub nsw i32 %i.nn, %i.no                ; 6 uses
  %i.nq = and i32 %i.nm, -64                      ; 6 uses
  %i.nr = icmp slt i32 %i.nq, %i.np
  br i1 %i.nr, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.ns = ashr i32 %i.nm, 6
  %i.nt = and i32 %i.nm, 63
  %i.nu = zext nneg i32 %i.nt to i64
  %notmask.i.i.i.i.i26.i.i = shl nsw i64 -1, %i.nu
  %i.nv = xor i64 %notmask.i.i.i.i.i26.i.i, -1
  %i.nw = sub nsw i32 %i.np, %i.lk                ; 2 uses
  %i.nx = zext nneg i32 %i.nw to i64
  %notmask.i.i.i.i.i.i27.i.i = shl nsw i64 -1, %i.nx
  %i.ny = xor i64 %notmask.i.i.i.i.i.i27.i.i, -1
  %i.nz = sub nsw i32 64, %i.nw
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = shl i64 %i.ny, %i.oa
  %i.oc = and i64 %i.ob, %i.nv
  %i.od = sext i32 %i.ns to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.od
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !159
  %i.og = and i64 %i.oc, %i.of                    ; 2 uses
  %.not.i.i.i.i.i28.i.i = icmp eq i64 %i.og, 0
  br i1 %.not.i.i.i.i.i28.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.preheader.i.i.i.i.i29.i.i

.preheader.i.i.i.i.i29.i.i:                       ; preds = %bb.bh
  %.val.i.i.i.i.i.i30.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.oh = sext i32 %i.nq to i64
  %i.oi = add i64 %i.ki, -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader.i.i.i.i.i29.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.og, %.preheader.i.i.i.i.i29.i.i ], [ %i.ow, %bb.bi ] ; 3 uses
  %i.oj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i.i, i1 true)
  %i.ok = or disjoint i64 %i.oj, %i.oh            ; 3 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !115
  %i.on = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ok
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !115
  %i.op = sext i32 %i.om to i64
  %i.oq = add i64 %i.oi, %i.op                    ; 2 uses
  %i.or = sext i32 %i.oo to i64
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i64 %i.oq, %i.or
  %i.os = trunc i64 %i.oq to i32
  %i.ot = select i1 %.not.i.i.i.i.i.i.i.i.i, i32 -1, i32 %i.os
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i30.i.i, i64 %i.ok
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !115
  %i.ov = add nsw i64 %.011.i.i.i.i.i.i.i, -1
  %i.ow = and i64 %i.ov, %.011.i.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i31.i.i = icmp eq i64 %i.ow, 0
  br i1 %.not10.i.i.i.i.i31.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.bi, !llvm.loop !829

bb.bj:                                            ; preds = %bb.bg
  %.not32.i.i.i.i13.i.i = icmp eq i32 %i.lk, %i.np
  br i1 %.not32.i.i.i.i13.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ox = sdiv i32 %i.lk, 64                      ; 2 uses
  %i.oy = sub nsw i32 %i.np, %i.lk                ; 2 uses
  %i.oz = zext nneg i32 %i.oy to i64
  %notmask.i.i35.i.i.i.i14.i.i = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask.i.i35.i.i.i.i14.i.i, -1
  %i.pb = sub nsw i32 64, %i.oy
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = shl i64 %i.pa, %i.pc
  %i.pe = sext i32 %i.ox to i64
  %i.pf = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !159
  %i.ph = and i64 %i.pg, %i.pd                    ; 2 uses
  %.not.i36.i.i.i.i15.i.i = icmp eq i64 %i.ph, 0
  br i1 %.not.i36.i.i.i.i15.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i16.i.i

.preheader.i37.i.i.i.i16.i.i:                     ; preds = %bb.bk
  %i.pi = shl nsw i32 %i.ox, 6
  %.val.i.i38.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.pj = sext i32 %i.pi to i64
  %i.pk = add i64 %i.ki, -1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.preheader.i37.i.i.i.i16.i.i
  %.011.i39.i.i.i.i.i.i = phi i64 [ %i.ph, %.preheader.i37.i.i.i.i16.i.i ], [ %i.py, %bb.bl ] ; 3 uses
  %i.pl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i.i.i, i1 true)
  %i.pm = or disjoint i64 %i.pl, %i.pj            ; 3 uses
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !115
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.pm
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !115
  %i.pr = sext i32 %i.po to i64
  %i.ps = add i64 %i.pk, %i.pr                    ; 2 uses
  %i.pt = sext i32 %i.pq to i64
  %.not.i.i.i40.i.i.i.i.i.i = icmp sgt i64 %i.ps, %i.pt
  %i.pu = trunc i64 %i.ps to i32
  %i.pv = select i1 %.not.i.i.i40.i.i.i.i.i.i, i32 -1, i32 %i.pu
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i38.i.i.i.i.i.i, i64 %i.pm
  store i32 %i.pv, ptr %i.pw, align 4, !tbaa !115
  %i.px = add i64 %.011.i39.i.i.i.i.i.i, -1
  %i.py = and i64 %i.px, %.011.i39.i.i.i.i.i.i    ; 2 uses
  %.not10.i41.i.i.i.i.i.i = icmp eq i64 %i.py, 0
  br i1 %.not10.i41.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i, label %bb.bl, !llvm.loop !829

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.pz = add nsw i32 %i.np, 64                   ; 2 uses
  %.not3356.i.i.i.i.i.i = icmp sgt i32 %i.pz, %i.nq
  br i1 %.not3356.i.i.i.i.i.i, label %._crit_edge.i.i.i.i19.i.i, label %.lr.ph.i.i.i.i17.i.i

.lr.ph.i.i.i.i17.i.i:                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i
  %i.qa = add i64 %i.ki, -1                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.qa, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.bm

._crit_edge.i.i.i.i19.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUlimE_clEim.exit42.i.i.i.i.i.i
  %.not34.i.i.i.i20.i.i = icmp eq i32 %i.nm, %i.nq
  br i1 %.not34.i.i.i.i20.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.bp

bb.bm:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i17.i.i
  %i.qb = phi i32 [ %i.pz, %.lr.ph.i.i.i.i17.i.i ], [ %i.sp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i = phi i32 [ %i.np, %.lr.ph.i.i.i.i17.i.i ], [ %i.qb, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i ] ; 2 uses
  %i.qc = sdiv i32 %.057.i.i.i.i.i.i, 64          ; 3 uses
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !159 ; 2 uses
  switch i64 %i.qf, label %.lr.ph.i.i.i.i.i24.i.i [
    i64 -1, label %bb.bn
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i24.i.i:                           ; preds = %bb.bm
  %i.qg = shl nsw i32 %i.qc, 6
  %.val.i17.i.i.i.i.i25.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.qh = sext i32 %i.qg to i64
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qi = shl nsw i32 %i.qc, 6                    ; 4 uses
  %i.qj = add i32 %i.qi, 64
  %i.qk = sext i32 %i.qj to i64                   ; 3 uses
  %.0.off.i.i.i.i22.i.i = add i32 %.057.i.i.i.i.i.i, 127
  %.not24.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i22.i.i, 64
  br i1 %.not24.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, label %.lr.ph23.i.i.i.i.i.i.i

.lr.ph23.i.i.i.i.i.i.i:                           ; preds = %bb.bn
  %i.ql = sext i32 %i.qi to i64                   ; 9 uses
  %.val.i.i43.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241 ; 3 uses
  %.val.i.i43.i.i.i.i.i.i538 = ptrtoaddr ptr %.val.i.i43.i.i.i.i.i.i to i64 ; 2 uses
  %i.qm = or disjoint i64 %i.ql, 1
  %i.qn = tail call i64 @llvm.umax.i64(i64 %i.qm, i64 %i.qk) ; 2 uses
  %i.qo = sub i64 %i.qn, %i.ql                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.qo, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph23.i.i.i.i.i.i.i
  %i.qp = or disjoint i64 %i.ql, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.qp, i64 %i.qk)
  %i.qq = xor i64 %i.ql, -1
  %i.qr = add i64 %umax, %i.qq                    ; 2 uses
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = add i32 %i.qi, %i.qs
  %i.qu = icmp slt i32 %i.qt, %i.qi
  %i.qv = icmp ugt i64 %i.qr, 4294967295
  %i.qw = or i1 %i.qu, %i.qv
  br i1 %i.qw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.qx = sub i64 %i.ba, %.val.i.i43.i.i.i.i.i.i538
  %diff.check = icmp ugt i64 %i.qx, -32
  %i.qy = sub i64 %i.be, %.val.i.i43.i.i.i.i.i.i538
  %diff.check539 = icmp ugt i64 %i.qy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check539
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.qz = and i64 %i.qn, 1                        ; 2 uses
  %n.vec = sub i64 %i.qo, %i.qz                   ; 2 uses
  %i.ra = add i64 %n.vec, %i.ql
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.rb = add nuw i64 %index, %i.ql
  %i.rc = shl i64 %i.rb, 32
  %i.rd = ashr exact i64 %i.rc, 32                ; 3 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.rd
  %wide.load = load <8 x i32>, ptr %i.re, align 4, !tbaa !115
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.rd
  %wide.load540 = load <8 x i32>, ptr %i.rf, align 4, !tbaa !115
  %i.rg = sext <8 x i32> %wide.load to <8 x i64>
  %i.rh = add <8 x i64> %broadcast.splat, %i.rg   ; 2 uses
  %i.ri = sext <8 x i32> %wide.load540 to <8 x i64>
  %i.rj = icmp sgt <8 x i64> %i.rh, %i.ri
  %i.rk = trunc <8 x i64> %i.rh to <8 x i32>
  %i.rl = select <8 x i1> %i.rj, <8 x i32> splat (i32 -1), <8 x i32> %i.rk
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i43.i.i.i.i.i.i, i64 %i.rd
  store <8 x i32> %i.rl, ptr %i.rm, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rn = icmp eq i64 %index.next, %n.vec
  br i1 %i.rn, label %middle.block, label %vector.body, !llvm.loop !830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qz, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph23.i.i.i.i.i.i.i, %middle.block
  %.022.i.i.i.i.i.i.i.ph = phi i64 [ %i.ql, %vector.memcheck ], [ %i.ql, %vector.scevcheck ], [ %i.ql, %.lr.ph23.i.i.i.i.i.i.i ], [ %i.ra, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022.i.i.i.i.i.i.i = phi i64 [ %i.rz, %scalar.ph ], [ %.022.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %sext.i.i.i.i.i.i23.i.i = shl i64 %.022.i.i.i.i.i.i.i, 32
  %i.ro = ashr exact i64 %sext.i.i.i.i.i.i23.i.i, 32 ; 3 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !115
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ro
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !115
  %i.rt = sext i32 %i.rq to i64
  %i.ru = add i64 %i.qa, %i.rt                    ; 2 uses
  %i.rv = sext i32 %i.rs to i64
  %.not.i.i.i44.i.i.i.i.i.i = icmp sgt i64 %i.ru, %i.rv
  %i.rw = trunc i64 %i.ru to i32
  %i.rx = select i1 %.not.i.i.i44.i.i.i.i.i.i, i32 -1, i32 %i.rw
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i43.i.i.i.i.i.i, i64 %i.ro
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !115
  %i.rz = add nuw i64 %.022.i.i.i.i.i.i.i, 1      ; 2 uses
  %i.sa = icmp ult i64 %i.rz, %i.qk
  br i1 %i.sa, label %scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, !llvm.loop !831

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i.i.i.i.i24.i.i
  %.01521.i.i.i.i.i.i.i = phi i64 [ %i.qf, %.lr.ph.i.i.i.i.i24.i.i ], [ %i.so, %bb.bo ] ; 3 uses
  %i.sb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i.i.i.i.i.i.i, i1 true)
  %i.sc = or disjoint i64 %i.sb, %i.qh            ; 3 uses
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.sc
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !115
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.sc
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !115
  %i.sh = sext i32 %i.se to i64
  %i.si = add i64 %i.qa, %i.sh                    ; 2 uses
  %i.sj = sext i32 %i.sg to i64
  %.not.i.i18.i.i.i.i.i.i.i = icmp sgt i64 %i.si, %i.sj
  %i.sk = trunc i64 %i.si to i32
  %i.sl = select i1 %.not.i.i18.i.i.i.i.i.i.i, i32 -1, i32 %i.sk
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %.val.i17.i.i.i.i.i25.i.i, i64 %i.sc
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !115
  %i.sn = add i64 %.01521.i.i.i.i.i.i.i, -1
  %i.so = and i64 %i.sn, %.01521.i.i.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i.i = icmp eq i64 %i.so, 0
  br i1 %.not.i45.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i, label %bb.bo, !llvm.loop !832

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction30setRowNumbersForConstantOffsetEbRKNS0_17SelectivityVectorEPKiSB_iEUlT_E0_EEvPKmiibSC_ENKUliE_clEi.exit.i.i.i.i.i.i: ; preds = %scalar.ph, %bb.bo, %middle.block, %bb.bn, %bb.bm
  %i.sp = add nsw i32 %i.qb, 64                   ; 2 uses
  %.not33.i.i.i.i18.i.i = icmp sgt i32 %i.sp, %i.nq
  br i1 %.not33.i.i.i.i18.i.i, label %._crit_edge.i.i.i.i19.i.i, label %bb.bm, !llvm.loop !833

bb.bp:                                            ; preds = %._crit_edge.i.i.i.i19.i.i
  %i.sq = ashr i32 %i.nm, 6
  %i.sr = and i32 %i.nm, 63
  %i.ss = zext nneg i32 %i.sr to i64
  %notmask.i46.i.i.i.i.i.i = shl nsw i64 -1, %i.ss
  %i.st = xor i64 %notmask.i46.i.i.i.i.i.i, -1
  %i.su = sext i32 %i.sq to i64
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.su
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !159
  %i.sx = and i64 %i.sw, %i.st                    ; 2 uses
  %.not.i47.i.i.i.i.i.i = icmp eq i64 %i.sx, 0
  br i1 %.not.i47.i.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %.preheader.i48.i.i.i.i.i.i

.preheader.i48.i.i.i.i.i.i:                       ; preds = %bb.bp
  %.val.i.i49.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.sy = sext i32 %i.nq to i64
  %i.sz = add i64 %i.ki, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.preheader.i48.i.i.i.i.i.i
  %.011.i50.i.i.i.i.i.i = phi i64 [ %i.sx, %.preheader.i48.i.i.i.i.i.i ], [ %i.tn, %bb.bq ] ; 3 uses
  %i.ta = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i50.i.i.i.i.i.i, i1 true)
  %i.tb = or disjoint i64 %i.ta, %i.sy            ; 3 uses
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !115
  %i.te = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.tb
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !115
  %i.tg = sext i32 %i.td to i64
  %i.th = add i64 %i.sz, %i.tg                    ; 2 uses
  %i.ti = sext i32 %i.tf to i64
  %.not.i.i.i51.i.i.i.i.i.i = icmp sgt i64 %i.th, %i.ti
  %i.tj = trunc i64 %i.th to i32
  %i.tk = select i1 %.not.i.i.i51.i.i.i.i.i.i, i32 -1, i32 %i.tj
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i49.i.i.i.i.i.i, i64 %i.tb
  store i32 %i.tk, ptr %i.tl, align 4, !tbaa !115
  %i.tm = add nsw i64 %.011.i50.i.i.i.i.i.i, -1
  %i.tn = and i64 %i.tm, %.011.i50.i.i.i.i.i.i    ; 2 uses
  %.not10.i52.i.i.i.i21.i.i = icmp eq i64 %i.tn, 0
  br i1 %.not10.i52.i.i.i.i21.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, label %bb.bq, !llvm.loop !829

bb.br:                                            ; preds = %.thread.i, %bb.i
  %.0373.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %.thread.i ], [ 0, %bb.i ] ; 2 uses
  %.018371.i = phi i1 [ true, %.thread.i ], [ false, %bb.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !197 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !120
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 192
  %i.ts = load ptr, ptr %i.tr, align 8
  tail call void %i.ts(ptr noundef nonnull align 8 dereferenceable(94) %i.tp, i32 noundef %i.aw, i1 noundef zeroext true), !inline_history !834
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !243
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !224
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !244
  tail call void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiiiiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152) %i.tu, i32 noundef %i.tw, i32 noundef %i.ty, i32 noundef %i.aw, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %i.to)
  %i.tz = load ptr, ptr %i.to, align 8, !tbaa !197 ; 11 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !198
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = load i8, ptr %i.uc, align 8, !tbaa !203
  %i.ue = icmp eq i8 %i.ud, 3                     ; 2 uses
  br i1 %.018371.i, label %bb.bs, label %bb.ep

bb.bs:                                            ; preds = %bb.br
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %i.ue, label %bb.bt, label %bb.de

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.az, ptr %i.l, align 8, !tbaa !246
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !246
  store i32 %.0373.i, ptr %i.n, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #36
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !238
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !233
  store ptr %i.ui, ptr %i.o, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #36
  %i.uj = load ptr, ptr %i.tz, align 8, !tbaa !120
  %i.uk = icmp eq ptr %i.uj, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIiEE, i64 16)
  %i.ul = select i1 %i.uk, ptr %i.tz, ptr null
  store ptr %i.ul, ptr %i.p, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  store ptr %i.p, ptr %33, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr %i.o, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 24
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 40
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !177, !range !126, !noundef !127
  %i.up = trunc nuw i8 %i.uo to i1
  br i1 %i.up, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i, label %bb.bu

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i: ; preds = %bb.bt
  %.0.in.pre.i.i.i.i.i = load i8, ptr %i.um, align 4, !tbaa !160, !range !126
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.uq = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.ur = icmp eq i32 %i.uq, 0
  br i1 %i.ur, label %bb.bv, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.us = load i32, ptr %i.at, align 8, !tbaa !248 ; 6 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !249
  %i.uv = icmp eq i32 %i.us, %i.uu
  br i1 %i.uv, label %bb.bw, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.uw = load ptr, ptr %5, align 8, !tbaa !239   ; 2 uses
  %.not.i.i.i.i.i37.i = icmp sgt i32 %i.us, 0
  br i1 %.not.i.i.i.i.i37.i, label %bb.bx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.ux = and i32 %i.us, 2147483584               ; 3 uses
  %i.uy = zext nneg i32 %i.ux to i64
  %.not37.i.i.not.i.i.i.i.i526.not = icmp eq i32 %i.ux, 0
  br i1 %.not37.i.i.not.i.i.i.i.i526.not, label %.critedge.i.i.i.i.i.i.i, label %.lr.ph528

bb.by:                                            ; preds = %.lr.ph528
  %indvars.iv.next.i.i.i.i39.i = add nuw nsw i64 %indvars.iv.i.i.i.i38.i527, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i39.i, %i.uy
  br i1 %.not37.i.i.not.i.i.i.i.i, label %.lr.ph528, label %.critedge.i.i.i.i.i.i.i, !llvm.loop !7

.lr.ph528:                                        ; preds = %bb.bx, %bb.by
  %indvars.iv.i.i.i.i38.i527 = phi i64 [ %indvars.iv.next.i.i.i.i39.i, %bb.by ], [ 0, %bb.bx ] ; 2 uses
  %i.uz = lshr exact i64 %indvars.iv.i.i.i.i38.i527, 3
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uz
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !159
  %i.vc = icmp eq i64 %i.vb, -1
  br i1 %i.vc, label %bb.by, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.by, %bb.bx
  %.not38.i.i.i.i.i.i.i = icmp eq i32 %i.us, %i.ux
  br i1 %.not38.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %.critedge.i.i.i.i.i.i.i
  %i.vd = lshr i32 %i.us, 6
  %i.ve = and i32 %i.us, 63
  %i.vf = zext nneg i32 %i.ve to i64
  %notmask.i40.i.i.i.i.i.i.i = shl nsw i64 -1, %i.vf
  %i.vg = zext nneg i32 %i.vd to i64
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.uw, i64 %i.vg
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !159
  %.demorgan.i.i.i.i.i = or i64 %i.vi, %notmask.i40.i.i.i.i.i.i.i
  %i.vj = icmp eq i64 %.demorgan.i.i.i.i.i, -1
  %i.vk = zext i1 %i.vj to i16
  %i.vl = or disjoint i16 %i.vk, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i: ; preds = %.lr.ph528, %bb.bz, %.critedge.i.i.i.i.i.i.i, %bb.bw, %bb.bv, %bb.bu
  %.sroa.0.0.insert.ext.i.i.i.i.i = phi i16 [ 256, %bb.bv ], [ 256, %bb.bu ], [ 257, %bb.bw ], [ 257, %.critedge.i.i.i.i.i.i.i ], [ %i.vl, %bb.bz ], [ 256, %.lr.ph528 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i, ptr %i.um, align 4
  %i.vm = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i
  %.0.in.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i ], [ %i.vm, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i ]
  %.0.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i to i1
  %i.vn = load i32, ptr %i.ar, align 4, !tbaa !247 ; 8 uses
  br i1 %.0.i.i.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.vo = load i32, ptr %i.at, align 8, !tbaa !248 ; 2 uses
  %i.vp = icmp slt i32 %i.vn, %i.vo
  br i1 %i.vp, label %.lr.ph.i.i.i.i13, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i

.lr.ph.i.i.i.i13:                                 ; preds = %bb.ca, %.lr.ph.i.i.i.i13
  %.018.i.i.i.i = phi i32 [ %i.vq, %.lr.ph.i.i.i.i13 ], [ %i.vn, %bb.ca ] ; 2 uses
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %33, i32 noundef %.018.i.i.i.i)
  %i.vq = add i32 %.018.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.vq, %i.vo
  br i1 %exitcond.not.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i, label %.lr.ph.i.i.i.i13, !llvm.loop !835

bb.cb:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i
  %i.vr = load ptr, ptr %5, align 8, !tbaa !239   ; 5 uses
  %i.vs = load i32, ptr %i.at, align 8, !tbaa !248 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  store ptr %i.p, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 24
  store ptr %0, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 32
  store ptr %i.o, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 40
  store ptr %i.n, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 48
  store ptr %i.l, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 56
  store ptr %i.m, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i, align 8
  store i8 1, ptr %32, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.vr, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i21.i = icmp slt i32 %i.vn, %i.vs
  br i1 %.not.i.i.i.i.i.i21.i, label %bb.cc, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.vt = add i32 %i.vn, 63                       ; 2 uses
  %i.vu = srem i32 %i.vt, 64
  %i.vv = sub nsw i32 %i.vt, %i.vu                ; 6 uses
  %i.vw = and i32 %i.vs, -64                      ; 6 uses
  %i.vx = icmp slt i32 %i.vw, %i.vv
  br i1 %i.vx, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.vy = ashr i32 %i.vs, 6
  %i.vz = and i32 %i.vs, 63
  %i.wa = zext nneg i32 %i.vz to i64
  %notmask.i.i.i.i.i.i.i36.i = shl nsw i64 -1, %i.wa
  %i.wb = xor i64 %notmask.i.i.i.i.i.i.i36.i, -1
  %i.wc = sub nsw i32 %i.vv, %i.vn                ; 2 uses
  %i.wd = zext nneg i32 %i.wc to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.wd
  %i.we = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.wf = sub nsw i32 64, %i.wc
  %i.wg = zext nneg i32 %i.wf to i64
  %i.wh = shl i64 %i.we, %i.wg
  %i.wi = and i64 %i.wh, %i.wb
  %i.wj = sext i32 %i.vy to i64
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %i.wj
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !159
  %i.wm = and i64 %i.wi, %i.wl                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.wm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.cd, %.preheader.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.wr, %.preheader.i.i.i.i.i.i.i.i ], [ %i.wm, %bb.cd ] ; 3 uses
  %i.wn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i.i.i, i1 true)
  %i.wo = trunc nuw nsw i64 %i.wn to i32
  %i.wp = or disjoint i32 %i.vw, %i.wo
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i.i.i, i32 noundef %i.wp)
  %i.wq = add nsw i64 %.011.i.i.i.i.i.i.i.i, -1
  %i.wr = and i64 %i.wq, %.011.i.i.i.i.i.i.i.i    ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq i64 %i.wr, 0
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !836

bb.ce:                                            ; preds = %bb.cc
  %.not32.i.i.i.i.i.i.i = icmp eq i32 %i.vn, %i.vv
  br i1 %.not32.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ws = sdiv i32 %i.vn, 64                      ; 2 uses
  %i.wt = sub nsw i32 %i.vv, %i.vn                ; 2 uses
  %i.wu = zext nneg i32 %i.wt to i64
  %notmask.i.i35.i.i.i.i.i.i.i = shl nsw i64 -1, %i.wu
  %i.wv = xor i64 %notmask.i.i35.i.i.i.i.i.i.i, -1
  %i.ww = sub nsw i32 64, %i.wt
  %i.wx = zext nneg i32 %i.ww to i64
  %i.wy = shl i64 %i.wv, %i.wx
  %i.wz = sext i32 %i.ws to i64
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %i.wz
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !159
  %i.xc = and i64 %i.xb, %i.wy                    ; 2 uses
  %.not.i36.i.i.i.i.i.i.i = icmp eq i64 %i.xc, 0
  br i1 %.not.i36.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i.i:                     ; preds = %bb.cf
  %i.xd = shl nsw i32 %i.ws, 6
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.preheader.i37.i.i.i.i.i.i.i
  %.011.i38.i.i.i.i.i.i.i = phi i64 [ %i.xc, %.preheader.i37.i.i.i.i.i.i.i ], [ %i.xi, %bb.cg ] ; 3 uses
  %i.xe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i.i.i, i1 true)
  %i.xf = trunc nuw nsw i64 %i.xe to i32
  %i.xg = or disjoint i32 %i.xd, %i.xf
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i.i.i, i32 noundef %i.xg)
  %i.xh = add i64 %.011.i38.i.i.i.i.i.i.i, -1
  %i.xi = and i64 %i.xh, %.011.i38.i.i.i.i.i.i.i  ; 2 uses
  %.not10.i39.i.i.i.i.i.i.i = icmp eq i64 %i.xi, 0
  br i1 %.not10.i39.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %bb.cg, !llvm.loop !836

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i: ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.xj = add nsw i32 %i.vv, 64                   ; 2 uses
  %.not3359.i.i.i.i.i.i.i = icmp sgt i32 %i.xj, %i.vw
  br i1 %.not3359.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i.i22.i:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i
  %i.xk = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 40 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 128 ; 3 uses
  br label %bb.ch

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i32 %i.vs, %i.vw
  br i1 %.not34.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %bb.dd

bb.ch:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i22.i
  %i.xn = phi i32 [ %i.xj, %.lr.ph.i.i.i.i.i.i22.i ], [ %i.acs, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.060.i.i.i.i.i.i.i = phi i32 [ %i.vv, %.lr.ph.i.i.i.i.i.i22.i ], [ %i.xn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.xo = sdiv i32 %.060.i.i.i.i.i.i.i, 64        ; 3 uses
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %i.xp
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !159 ; 2 uses
  switch i64 %i.xr, label %.lr.ph.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.ci
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ch
  %i.xs = shl nsw i32 %i.xo, 6
  %i.xt = load ptr, ptr %i.xl, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i.i.i23.i = icmp eq ptr %i.xt, null
  %i.xu = load ptr, ptr %i.o, align 8
  %i.xv = load ptr, ptr %i.l, align 8
  %i.xw = load ptr, ptr %i.m, align 8
  br label %bb.cu

bb.ci:                                            ; preds = %bb.ch
  %i.xx = shl nsw i32 %i.xo, 6                    ; 2 uses
  %i.xy = sext i32 %i.xx to i64                   ; 2 uses
  %i.xz = add i32 %i.xx, 64
  %i.ya = sext i32 %i.xz to i64                   ; 2 uses
  %.0.off.i.i.i.i.i.i.i = add i32 %.060.i.i.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i.i.i:                         ; preds = %bb.ci
  %i.yb = load ptr, ptr %i.xl, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.yb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph22.split.us.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i.i.i: ; preds = %.lr.ph22.i.i.i.i.i.i.i.i
  %i.yc = load ptr, ptr %i.o, align 8
  %i.yd = load ptr, ptr %i.l, align 8
  %i.ye = load ptr, ptr %i.m, align 8
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i

.lr.ph22.split.us.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph22.i.i.i.i.i.i.i.i
  %i.yf = load ptr, ptr %i.xm, align 8, !tbaa !269
  %i.yg = load ptr, ptr %i.o, align 8
  %i.yh = load ptr, ptr %i.l, align 8
  %i.yi = load ptr, ptr %i.m, align 8
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, %.lr.ph22.split.us.i.i.i.i.i.i.i.i
  %.021.us.i.i.i.i.i.i.i.i = phi i64 [ %i.xy, %.lr.ph22.split.us.i.i.i.i.i.i.i.i ], [ %i.zg, %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %sext.i.us.i.i.i.i.i.i.i.i = shl i64 %.021.us.i.i.i.i.i.i.i.i, 32
  %i.yj = ashr exact i64 %sext.i.us.i.i.i.i.i.i.i.i, 32 ; 4 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !115 ; 3 uses
  %i.ym = icmp slt i32 %i.yl, 1
  br i1 %i.ym, label %.split.us.i.i.i.i.i.i.i.i, label %bb.cj, !prof !105

bb.cj:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i
  %.val.i.us.i.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8
  %i.yn = getelementptr inbounds [4 x i8], ptr %i.yh, i64 %i.yj
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !115 ; 2 uses
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.yj
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.us.i.i.i.i.i.i.i.i = icmp sgt i32 %i.yo, %i.yq
  br i1 %.not3.i.i.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.us.i.i.i.i.i.i.i.i:          ; preds = %bb.cj
  %i.yr = load i32, ptr %i.n, align 4, !tbaa !115
  %i.ys = sext i32 %i.yo to i64
  %i.yt = sext i32 %i.yr to i64
  %i.yu = add i32 %i.yq, 1
  br label %.lr.ph.i.i.us.i.i.i.i.i.i.i.i

.lr.ph.i.i.us.i.i.i.i.i.i.i.i:                    ; preds = %bb.cl, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.us.i.i.i.i.i.i.i.i = phi i64 [ %i.ys, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i.i.i.i, %bb.cl ] ; 3 uses
  %.0194.i.i.us.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i.i.i ], [ %.1.i.i.us.i.i.i.i.i.i.i.i, %bb.cl ] ; 2 uses
  %i.yv = sub nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i.i.i, %i.yt ; 2 uses
  %i.yw = lshr i64 %i.yv, 6
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yw
  %i.yy = load i64, ptr %i.yx, align 8, !tbaa !159
  %i.yz = and i64 %i.yv, 63
  %i.za = shl nuw i64 1, %i.yz
  %i.zb = and i64 %i.za, %i.yy
  %.not1.i.i.us.i.i.i.i.i.i.i.i = icmp eq i64 %i.zb, 0
  br i1 %.not1.i.i.us.i.i.i.i.i.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.lr.ph.i.i.us.i.i.i.i.i.i.i.i
  %i.zc = add nsw i32 %.0194.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zd = icmp eq i32 %i.zc, %i.yl
  br i1 %i.zd, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i
  %.1.i.i.us.i.i.i.i.i.i.i.i = phi i32 [ %.0194.i.i.us.i.i.i.i.i.i.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i.i.i ], [ %i.zc, %bb.ck ]
  %indvars.iv.next.i.i.us.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.us.i.i.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.us.i.i.i.i.i.i.i.i to i32
  %exitcond.not.i.i.us.i.i.i.i.i.i.i.i = icmp eq i32 %i.yu, %lftr.wideiv.i.i.us.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.us.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.i.i.i, !llvm.loop !9

bb.cm:                                            ; preds = %bb.ck
  %i.ze = trunc nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i.i.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i: ; preds = %bb.cl, %bb.cm, %bb.cj
  %.sink.i.i.us.i.i.i.i.i.i.i.i = phi i32 [ %i.ze, %bb.cm ], [ -1, %bb.cj ], [ -1, %bb.cl ]
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.val.i.us.i.i.i.i.i.i.i.i, i64 %i.yj
  store i32 %.sink.i.i.us.i.i.i.i.i.i.i.i, ptr %i.zf, align 4, !tbaa !115
  %i.zg = add nuw i64 %.021.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zh = icmp ult i64 %i.zg, %i.ya
  br i1 %i.zh, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !837

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i.i.i
  %.021.i.i.i.i.i.i.i.i = phi i64 [ %i.aaw, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i ], [ %i.xy, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i.i.i ] ; 5 uses
  %i.zi = lshr i64 %.021.i.i.i.i.i.i.i.i, 6
  %i.zj = and i64 %i.zi, 67108863
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.zj
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !159
  %i.zm = and i64 %.021.i.i.i.i.i.i.i.i, 63
  %i.zn = shl nuw i64 1, %i.zm
  %i.zo = and i64 %i.zn, %i.zl
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.zo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i

bb.cn:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i
  %i.zp = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %.021.i.i.i.i.i.i.i.i
  store i32 -1, ptr %i.zq, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i
  %i.zr = load ptr, ptr %i.xm, align 8, !tbaa !269
  %sext.i.i.i.i.i.i.i.i.i = shl i64 %.021.i.i.i.i.i.i.i.i, 32
  %i.zs = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i, 32 ; 4 uses
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.zs
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !115 ; 3 uses
  %i.zv = icmp slt i32 %i.zu, 1
  br i1 %i.zv, label %.split.us.i.i.i.i.i.i.i.i, label %bb.cq, !prof !105

.split.us.i.i.i.i.i.i.i.i:                        ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i.i.i = phi i32 [ %i.yl, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i.i.i ], [ %i.zu, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36, !noalias !896
  store i32 %.us-phi.i.i.i.i.i.i.i.i, ptr %30, align 16, !tbaa !88, !alias.scope !897, !noalias !896
  %i.zw = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 1, ptr %i.zw, align 16, !tbaa !88, !alias.scope !897, !noalias !896
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr nonnull @.str.28, i64 37, i64 17, ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36, !noalias !896
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction5applyERKN5boost13intrusive_ptrINS0_6BufferEEESA_SA_SA_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.yd, i64 %i.zs
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !115 ; 2 uses
  %i.aaf = getelementptr inbounds [4 x i8], ptr %i.ye, i64 %i.zs
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aae, %i.aag
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.cq
  %i.aah = load i32, ptr %i.n, align 4, !tbaa !115
  %i.aai = sext i32 %i.aae to i64
  %i.aaj = sext i32 %i.aah to i64
  %i.aak = add i32 %i.aag, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ct, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aai, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %bb.ct ] ; 3 uses
  %.0194.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i, %bb.ct ] ; 2 uses
  %i.aal = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, %i.aaj ; 2 uses
  %i.aam = lshr i64 %i.aal, 6
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.aam
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !159
  %i.aap = and i64 %i.aal, 63
  %i.aaq = shl nuw i64 1, %i.aap
  %i.aar = and i64 %i.aaq, %i.aao
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aar, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i.i, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aas = add nsw i32 %.0194.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aat = icmp eq i32 %i.aas, %i.zu
  br i1 %i.aat, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aau = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0194.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.aas, %bb.cr ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i.i.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i to i32
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aak, %lftr.wideiv.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs, %bb.cq
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aau, %bb.cs ], [ -1, %bb.cq ], [ -1, %bb.ct ]
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i, i64 %i.zs
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.aav, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, %bb.cn
  %i.aaw = add nuw i64 %.021.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %i.ya
  br i1 %i.aax, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !837

bb.cu:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.01520.i.i.i.i.i.i.i.i = phi i64 [ %i.xr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.acr, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.aay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i.i.i, i1 true)
  %i.aaz = trunc nuw nsw i64 %i.aay to i32
  %i.aba = or disjoint i32 %i.xs, %i.aaz          ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i23.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cu
  %i.abb = zext i32 %i.aba to i64                 ; 2 uses
  %i.abc = lshr i64 %i.abb, 6
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.xt, i64 %i.abc
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !159
  %i.abf = and i64 %i.abb, 63
  %i.abg = shl nuw i64 1, %i.abf
  %i.abh = and i64 %i.abe, %i.abg
  %.not.i.i.i48.i.i.i.i.i.i.i = icmp eq i64 %i.abh, 0
  br i1 %.not.i.i.i48.i.i.i.i.i.i.i, label %bb.cv, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i

bb.cv:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i
  %i.abi = sext i32 %i.aba to i64
  %i.abj = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.abi
  store i32 -1, ptr %i.abk, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i.i, %bb.cu
  %i.abl = load ptr, ptr %i.xm, align 8, !tbaa !269
  %i.abm = sext i32 %i.aba to i64                 ; 4 uses
  %i.abn = getelementptr inbounds [4 x i8], ptr %i.abl, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !115 ; 3 uses
  %i.abp = icmp slt i32 %i.abo, 1
  br i1 %i.abp, label %bb.cw, label %bb.cz, !prof !105

bb.cw:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36, !noalias !898
  store i32 %i.abo, ptr %28, align 16, !tbaa !88, !alias.scope !899, !noalias !898
  %i.abq = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i32 1, ptr %i.abq, align 16, !tbaa !88, !alias.scope !899, !noalias !898
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull @.str.28, i64 37, i64 17, ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36, !noalias !898
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr nonnull @.str.28) #39
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abr = landingpad { ptr, i32 }
          cleanup
  %i.abs = load ptr, ptr %29, align 8, !tbaa !87  ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cy
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !88
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %common.resume.i.i

bb.cz:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i24.i = load ptr, ptr %i.u, align 8
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.xv, i64 %i.abm
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !115 ; 2 uses
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.xw, i64 %i.abm
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i25.i = icmp sgt i32 %i.aby, %i.aca
  br i1 %.not3.i.i.i.i.i.i.i.i25.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i26.i

.lr.ph.preheader.i.i.i.i.i.i.i.i26.i:             ; preds = %bb.cz
  %i.acb = load i32, ptr %i.n, align 4, !tbaa !115
  %i.acc = sext i32 %i.aby to i64
  %i.acd = sext i32 %i.acb to i64
  %i.ace = add i32 %i.aca, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i27.i

.lr.ph.i.i.i.i.i.i.i.i27.i:                       ; preds = %bb.dc, %.lr.ph.preheader.i.i.i.i.i.i.i.i26.i
  %indvars.iv.i.i.i.i.i.i.i.i28.i = phi i64 [ %i.acc, %.lr.ph.preheader.i.i.i.i.i.i.i.i26.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i32.i, %bb.dc ] ; 3 uses
  %.0194.i.i.i.i.i.i.i.i29.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i26.i ], [ %.1.i.i.i.i.i.i.i.i31.i, %bb.dc ] ; 2 uses
  %i.acf = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.i28.i, %i.acd ; 2 uses
  %i.acg = lshr i64 %i.acf, 6
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.xu, i64 %i.acg
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !159
  %i.acj = and i64 %i.acf, 63
  %i.ack = shl nuw i64 1, %i.acj
  %i.acl = and i64 %i.ack, %i.aci
  %.not1.i.i.i.i.i.i.i.i30.i = icmp eq i64 %i.acl, 0
  br i1 %.not1.i.i.i.i.i.i.i.i30.i, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i27.i
  %i.acm = add nsw i32 %.0194.i.i.i.i.i.i.i.i29.i, 1 ; 2 uses
  %i.acn = icmp eq i32 %i.acm, %i.abo
  br i1 %i.acn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aco = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i28.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.da, %.lr.ph.i.i.i.i.i.i.i.i27.i
  %.1.i.i.i.i.i.i.i.i31.i = phi i32 [ %.0194.i.i.i.i.i.i.i.i29.i, %.lr.ph.i.i.i.i.i.i.i.i27.i ], [ %i.acm, %bb.da ]
  %indvars.iv.next.i.i.i.i.i.i.i.i32.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i28.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i.i33.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i.i.i32.i to i32
  %exitcond.not.i.i.i.i.i.i.i.i34.i = icmp eq i32 %i.ace, %lftr.wideiv.i.i.i.i.i.i.i.i33.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i34.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i27.i, !llvm.loop !9

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dc, %bb.db, %bb.cz
  %.sink.i.i.i.i.i.i.i.i35.i = phi i32 [ %i.aco, %bb.db ], [ -1, %bb.cz ], [ -1, %bb.dc ]
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i.i24.i, i64 %i.abm
  store i32 %.sink.i.i.i.i.i.i.i.i35.i, ptr %i.acp, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, %bb.cv
  %i.acq = add i64 %.01520.i.i.i.i.i.i.i.i, -1
  %i.acr = and i64 %i.acq, %.01520.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i41.i.i.i.i.i.i.i = icmp eq i64 %i.acr, 0
  br i1 %.not.i41.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.cu, !llvm.loop !846

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i, %bb.ci, %bb.ch
  %i.acs = add nsw i32 %i.xn, 64                  ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp sgt i32 %i.acs, %i.vw
  br i1 %.not33.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.ch, !llvm.loop !847

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.act = ashr i32 %i.vs, 6
  %i.acu = and i32 %i.vs, 63
  %i.acv = zext nneg i32 %i.acu to i64
  %notmask.i42.i.i.i.i.i.i.i = shl nsw i64 -1, %i.acv
  %i.acw = xor i64 %notmask.i42.i.i.i.i.i.i.i, -1
  %i.acx = sext i32 %i.act to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.vr, i64 %i.acx
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !159
  %i.ada = and i64 %i.acz, %i.acw                 ; 2 uses
  %.not.i43.i.i.i.i.i.i.i = icmp eq i64 %i.ada, 0
  br i1 %.not.i43.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i44.i.i.i.i.i.i.i

.preheader.i44.i.i.i.i.i.i.i:                     ; preds = %bb.dd, %.preheader.i44.i.i.i.i.i.i.i
  %.011.i45.i.i.i.i.i.i.i = phi i64 [ %i.adf, %.preheader.i44.i.i.i.i.i.i.i ], [ %i.ada, %bb.dd ] ; 3 uses
  %i.adb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i.i.i, i1 true)
  %i.adc = trunc nuw nsw i64 %i.adb to i32
  %i.add = or disjoint i32 %i.vw, %i.adc
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i.i.i, i32 noundef %i.add)
  %i.ade = add nsw i64 %.011.i45.i.i.i.i.i.i.i, -1
  %i.adf = and i64 %i.ade, %.011.i45.i.i.i.i.i.i.i ; 2 uses
  %.not10.i46.i.i.i.i.i.i.i = icmp eq i64 %i.adf, 0
  br i1 %.not10.i46.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i44.i.i.i.i.i.i.i, !llvm.loop !836

_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i: ; preds = %.preheader.i44.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %bb.dd, %._crit_edge.i.i.i.i.i.i.i, %bb.cd, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i: ; preds = %.lr.ph.i.i.i.i13, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

bb.de:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.az, ptr %i.g, align 8, !tbaa !246
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !246
  store i32 %.0373.i, ptr %i.i, align 4, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.adg = load ptr, ptr %i.uf, align 8, !tbaa !238
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !233
  store ptr %i.adi, ptr %i.j, align 8, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #36
  %i.adj = load ptr, ptr %i.tz, align 8, !tbaa !120
  %i.adk = icmp eq ptr %i.adj, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16)
  %i.adl = select i1 %i.adk, ptr %i.tz, ptr null
  store ptr %i.adl, ptr %i.k, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store ptr %i.k, ptr %27, align 8
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8
  %.sroa.3.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i18.i.i, align 8
  %.sroa.4.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i19.i.i, align 8
  %.sroa.5.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %27, i64 32
  store ptr %i.g, ptr %.sroa.5.0..sroa_idx.i20.i.i, align 8
  %.sroa.6.0..sroa_idx.i21.i.i = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx.i21.i.i, align 8
  %i.adm = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !177, !range !126, !noundef !127
  %i.adp = trunc nuw i8 %i.ado to i1
  br i1 %i.adp, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i136.i.i, label %bb.df

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i136.i.i: ; preds = %bb.de
  %.0.in.pre.i.i.i137.i.i = load i8, ptr %i.adm, align 4, !tbaa !160, !range !126
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i24.i.i

bb.df:                                            ; preds = %bb.de
  %i.adq = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.adr = icmp eq i32 %i.adq, 0
  br i1 %i.adr, label %bb.dg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i

bb.dg:                                            ; preds = %bb.df
  %i.ads = load i32, ptr %i.at, align 8, !tbaa !248 ; 6 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !249
  %i.adv = icmp eq i32 %i.ads, %i.adu
  br i1 %i.adv, label %bb.dh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.adw = load ptr, ptr %5, align 8, !tbaa !239  ; 2 uses
  %.not.i.i.i.i128.i.i = icmp sgt i32 %i.ads, 0
  br i1 %.not.i.i.i.i128.i.i, label %bb.di, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i

bb.di:                                            ; preds = %bb.dh
  %i.adx = and i32 %i.ads, 2147483584             ; 3 uses
  %i.ady = zext nneg i32 %i.adx to i64
  %.not37.i.i.not.i.i.i130.i.i523.not = icmp eq i32 %i.adx, 0
  br i1 %.not37.i.i.not.i.i.i130.i.i523.not, label %.critedge.i.i.i.i.i131.i.i, label %.lr.ph525

bb.dj:                                            ; preds = %.lr.ph525
  %indvars.iv.next.i.i.i135.i.i = add nuw nsw i64 %indvars.iv.i.i.i129.i.i524, 64 ; 2 uses
  %.not37.i.i.not.i.i.i130.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i135.i.i, %i.ady
  br i1 %.not37.i.i.not.i.i.i130.i.i, label %.lr.ph525, label %.critedge.i.i.i.i.i131.i.i, !llvm.loop !7

.lr.ph525:                                        ; preds = %bb.di, %bb.dj
  %indvars.iv.i.i.i129.i.i524 = phi i64 [ %indvars.iv.next.i.i.i135.i.i, %bb.dj ], [ 0, %bb.di ] ; 2 uses
  %i.adz = lshr exact i64 %indvars.iv.i.i.i129.i.i524, 3
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.adz
  %i.aeb = load i64, ptr %i.aea, align 8, !tbaa !159
  %i.aec = icmp eq i64 %i.aeb, -1
  br i1 %i.aec, label %bb.dj, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i, !llvm.loop !7

.critedge.i.i.i.i.i131.i.i:                       ; preds = %bb.dj, %bb.di
  %.not38.i.i.i.i.i132.i.i = icmp eq i32 %i.ads, %i.adx
  br i1 %.not38.i.i.i.i.i132.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i, label %bb.dk

bb.dk:                                            ; preds = %.critedge.i.i.i.i.i131.i.i
  %i.aed = lshr i32 %i.ads, 6
  %i.aee = and i32 %i.ads, 63
  %i.aef = zext nneg i32 %i.aee to i64
  %notmask.i40.i.i.i.i.i133.i.i = shl nsw i64 -1, %i.aef
  %i.aeg = zext nneg i32 %i.aed to i64
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.aeg
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !159
  %.demorgan.i.i.i134.i.i = or i64 %i.aei, %notmask.i40.i.i.i.i.i133.i.i
  %i.aej = icmp eq i64 %.demorgan.i.i.i134.i.i, -1
  %i.aek = zext i1 %i.aej to i16
  %i.ael = or disjoint i16 %i.aek, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i: ; preds = %.lr.ph525, %bb.dk, %.critedge.i.i.i.i.i131.i.i, %bb.dh, %bb.dg, %bb.df
  %.sroa.0.0.insert.ext.i.i.i23.i.i = phi i16 [ 256, %bb.dg ], [ 256, %bb.df ], [ 257, %bb.dh ], [ 257, %.critedge.i.i.i.i.i131.i.i ], [ %i.ael, %bb.dk ], [ 256, %.lr.ph525 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i23.i.i, ptr %i.adm, align 4
  %i.aem = trunc i16 %.sroa.0.0.insert.ext.i.i.i23.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i24.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i24.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i136.i.i
  %.0.in.i.i.i25.i.i = phi i8 [ %.0.in.pre.i.i.i137.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i136.i.i ], [ %i.aem, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i22.i.i ]
  %.0.i.i.i26.i.i = trunc nuw i8 %.0.in.i.i.i25.i.i to i1
  %i.aen = load i32, ptr %i.ar, align 4, !tbaa !247 ; 8 uses
  br i1 %.0.i.i.i26.i.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i24.i.i
  %i.aeo = load i32, ptr %i.at, align 8, !tbaa !248 ; 2 uses
  %i.aep = icmp slt i32 %i.aen, %i.aeo
  br i1 %i.aep, label %.lr.ph.i.i125.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i

.lr.ph.i.i125.i.i:                                ; preds = %bb.dl, %.lr.ph.i.i125.i.i
  %.018.i.i126.i.i = phi i32 [ %i.aeq, %.lr.ph.i.i125.i.i ], [ %i.aen, %bb.dl ] ; 2 uses
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %27, i32 noundef %.018.i.i126.i.i)
  %i.aeq = add i32 %.018.i.i126.i.i, 1            ; 2 uses
  %exitcond.not.i.i127.i.i = icmp eq i32 %i.aeq, %i.aeo
  br i1 %exitcond.not.i.i127.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i, label %.lr.ph.i.i125.i.i, !llvm.loop !848

bb.dm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i24.i.i
  %i.aer = load ptr, ptr %5, align 8, !tbaa !239  ; 5 uses
  %i.aes = load i32, ptr %i.at, align 8, !tbaa !248 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i27.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  store ptr %i.k, ptr %.sroa.39.0..sroa_idx.i.i.i.i27.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i28.i.i = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %0, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i28.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i29.i.i = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %i.j, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i29.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i30.i.i = getelementptr inbounds nuw i8, ptr %26, i64 40
  store ptr %i.i, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i30.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i31.i.i = getelementptr inbounds nuw i8, ptr %26, i64 48
  store ptr %i.g, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i31.i.i, align 8
  %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i32.i.i = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr %i.h, ptr %.sroa.9.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i32.i.i, align 8
  store i8 1, ptr %26, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i33.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %i.aer, ptr %.sroa.28.0..sroa_idx.i.i.i.i33.i.i, align 8
  %.not.i.i.i.i.i34.i.i = icmp slt i32 %i.aen, %i.aes
  br i1 %.not.i.i.i.i.i34.i.i, label %bb.dn, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.aet = add i32 %i.aen, 63                     ; 2 uses
  %i.aeu = srem i32 %i.aet, 64
  %i.aev = sub nsw i32 %i.aet, %i.aeu             ; 6 uses
  %i.aew = and i32 %i.aes, -64                    ; 6 uses
  %i.aex = icmp slt i32 %i.aew, %i.aev
  br i1 %i.aex, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aey = ashr i32 %i.aes, 6
  %i.aez = and i32 %i.aes, 63
  %i.afa = zext nneg i32 %i.aez to i64
  %notmask.i.i.i.i.i.i119.i.i = shl nsw i64 -1, %i.afa
  %i.afb = xor i64 %notmask.i.i.i.i.i.i119.i.i, -1
  %i.afc = sub nsw i32 %i.aev, %i.aen             ; 2 uses
  %i.afd = zext nneg i32 %i.afc to i64
  %notmask.i.i.i.i.i.i.i120.i.i = shl nsw i64 -1, %i.afd
  %i.afe = xor i64 %notmask.i.i.i.i.i.i.i120.i.i, -1
  %i.aff = sub nsw i32 64, %i.afc
  %i.afg = zext nneg i32 %i.aff to i64
  %i.afh = shl i64 %i.afe, %i.afg
  %i.afi = and i64 %i.afh, %i.afb
  %i.afj = sext i32 %i.aey to i64
  %i.afk = getelementptr inbounds [8 x i8], ptr %i.aer, i64 %i.afj
  %i.afl = load i64, ptr %i.afk, align 8, !tbaa !159
  %i.afm = and i64 %i.afi, %i.afl                 ; 2 uses
  %.not.i.i.i.i.i.i121.i.i = icmp eq i64 %i.afm, 0
  br i1 %.not.i.i.i.i.i.i121.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i122.i.i

.preheader.i.i.i.i.i.i122.i.i:                    ; preds = %bb.do, %.preheader.i.i.i.i.i.i122.i.i
  %.011.i.i.i.i.i.i123.i.i = phi i64 [ %i.afr, %.preheader.i.i.i.i.i.i122.i.i ], [ %i.afm, %bb.do ] ; 3 uses
  %i.afn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i123.i.i, i1 true)
  %i.afo = trunc nuw nsw i64 %i.afn to i32
  %i.afp = or disjoint i32 %i.aew, %i.afo
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i27.i.i, i32 noundef %i.afp)
  %i.afq = add nsw i64 %.011.i.i.i.i.i.i123.i.i, -1
  %i.afr = and i64 %i.afq, %.011.i.i.i.i.i.i123.i.i ; 2 uses
  %.not10.i.i.i.i.i.i124.i.i = icmp eq i64 %i.afr, 0
  br i1 %.not10.i.i.i.i.i.i124.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i122.i.i, !llvm.loop !849

bb.dp:                                            ; preds = %bb.dn
  %.not32.i.i.i.i.i35.i.i = icmp eq i32 %i.aen, %i.aev
  br i1 %.not32.i.i.i.i.i35.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.afs = sdiv i32 %i.aen, 64                    ; 2 uses
  %i.aft = sub nsw i32 %i.aev, %i.aen             ; 2 uses
  %i.afu = zext nneg i32 %i.aft to i64
  %notmask.i.i35.i.i.i.i.i36.i.i = shl nsw i64 -1, %i.afu
  %i.afv = xor i64 %notmask.i.i35.i.i.i.i.i36.i.i, -1
  %i.afw = sub nsw i32 64, %i.aft
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = shl i64 %i.afv, %i.afx
  %i.afz = sext i32 %i.afs to i64
  %i.aga = getelementptr inbounds [8 x i8], ptr %i.aer, i64 %i.afz
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !159
  %i.agc = and i64 %i.agb, %i.afy                 ; 2 uses
  %.not.i36.i.i.i.i.i37.i.i = icmp eq i64 %i.agc, 0
  br i1 %.not.i36.i.i.i.i.i37.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i38.i.i

.preheader.i37.i.i.i.i.i38.i.i:                   ; preds = %bb.dq
  %i.agd = shl nsw i32 %i.afs, 6
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dr, %.preheader.i37.i.i.i.i.i38.i.i
  %.011.i38.i.i.i.i.i39.i.i = phi i64 [ %i.agc, %.preheader.i37.i.i.i.i.i38.i.i ], [ %i.agi, %bb.dr ] ; 3 uses
  %i.age = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i.i39.i.i, i1 true)
  %i.agf = trunc nuw nsw i64 %i.age to i32
  %i.agg = or disjoint i32 %i.agd, %i.agf
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i27.i.i, i32 noundef %i.agg)
  %i.agh = add i64 %.011.i38.i.i.i.i.i39.i.i, -1
  %i.agi = and i64 %i.agh, %.011.i38.i.i.i.i.i39.i.i ; 2 uses
  %.not10.i39.i.i.i.i.i40.i.i = icmp eq i64 %i.agi, 0
  br i1 %.not10.i39.i.i.i.i.i40.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i, label %bb.dr, !llvm.loop !849

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i: ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.agj = add nsw i32 %i.aev, 64                 ; 2 uses
  %.not3359.i.i.i.i.i41.i.i = icmp sgt i32 %i.agj, %i.aew
  br i1 %.not3359.i.i.i.i.i41.i.i, label %._crit_edge.i.i.i.i.i45.i.i, label %.lr.ph.i.i.i.i.i42.i.i

.lr.ph.i.i.i.i.i42.i.i:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i
  %i.agk = load ptr, ptr %i.k, align 8            ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 40 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 144 ; 3 uses
  br label %bb.ds

._crit_edge.i.i.i.i.i45.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i46.i.i = icmp eq i32 %i.aes, %i.aew
  br i1 %.not34.i.i.i.i.i46.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %bb.eo

bb.ds:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i42.i.i
  %i.agn = phi i32 [ %i.agj, %.lr.ph.i.i.i.i.i42.i.i ], [ %i.als, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.060.i.i.i.i.i43.i.i = phi i32 [ %i.aev, %.lr.ph.i.i.i.i.i42.i.i ], [ %i.agn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ago = sdiv i32 %.060.i.i.i.i.i43.i.i, 64     ; 3 uses
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds [8 x i8], ptr %i.aer, i64 %i.agp
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !159 ; 2 uses
  switch i64 %i.agr, label %.lr.ph.i.i.i.i.i.i97.i.i [
    i64 -1, label %bb.dt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i97.i.i:                         ; preds = %bb.ds
  %i.ags = shl nsw i32 %i.ago, 6
  %i.agt = load ptr, ptr %i.agl, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i.i98.i.i = icmp eq ptr %i.agt, null
  %i.agu = load ptr, ptr %i.j, align 8
  %i.agv = load ptr, ptr %i.g, align 8
  %i.agw = load ptr, ptr %i.h, align 8
  br label %bb.ef

bb.dt:                                            ; preds = %bb.ds
  %i.agx = shl nsw i32 %i.ago, 6                  ; 2 uses
  %i.agy = sext i32 %i.agx to i64                 ; 2 uses
  %i.agz = add i32 %i.agx, 64
  %i.aha = sext i32 %i.agz to i64                 ; 2 uses
  %.0.off.i.i.i.i.i52.i.i = add i32 %.060.i.i.i.i.i43.i.i, 127
  %.not23.i.i.i.i.i.i53.i.i = icmp ult i32 %.0.off.i.i.i.i.i52.i.i, 64
  br i1 %.not23.i.i.i.i.i.i53.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i54.i.i

.lr.ph22.i.i.i.i.i.i54.i.i:                       ; preds = %bb.dt
  %i.ahb = load ptr, ptr %i.agl, align 8, !tbaa !255 ; 2 uses
  %.not.i.i.i.i.i.i.i.i55.i.i = icmp eq ptr %i.ahb, null
  br i1 %.not.i.i.i.i.i.i.i.i55.i.i, label %.lr.ph22.split.us.i.i.i.i.i.i81.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i56.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i56.i.i: ; preds = %.lr.ph22.i.i.i.i.i.i54.i.i
  %i.ahc = load ptr, ptr %i.j, align 8
  %i.ahd = load ptr, ptr %i.g, align 8
  %i.ahe = load ptr, ptr %i.h, align 8
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i57.i.i

.lr.ph22.split.us.i.i.i.i.i.i81.i.i:              ; preds = %.lr.ph22.i.i.i.i.i.i54.i.i
  %i.ahf = load ptr, ptr %i.agm, align 8, !tbaa !273
  %i.ahg = load ptr, ptr %i.j, align 8
  %i.ahh = load ptr, ptr %i.g, align 8
  %i.ahi = load ptr, ptr %i.h, align 8
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, %.lr.ph22.split.us.i.i.i.i.i.i81.i.i
  %.021.us.i.i.i.i.i.i83.i.i = phi i64 [ %i.agy, %.lr.ph22.split.us.i.i.i.i.i.i81.i.i ], [ %i.aig, %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %sext.i.us.i.i.i.i.i.i84.i.i = shl i64 %.021.us.i.i.i.i.i.i83.i.i, 32
  %i.ahj = ashr exact i64 %sext.i.us.i.i.i.i.i.i84.i.i, 32 ; 4 uses
  %i.ahk = getelementptr inbounds [8 x i8], ptr %i.ahf, i64 %i.ahj
  %i.ahl = load i64, ptr %i.ahk, align 8, !tbaa !159 ; 3 uses
  %i.ahm = icmp slt i64 %i.ahl, 1
  br i1 %i.ahm, label %.split.us.i.i.i.i.i.i74.i.i, label %bb.du, !prof !105

bb.du:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i
  %.val.i.us.i.i.i.i.i.i85.i.i = load ptr, ptr %i.u, align 8
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.ahh, i64 %i.ahj
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !115 ; 2 uses
  %i.ahp = getelementptr inbounds [4 x i8], ptr %i.ahi, i64 %i.ahj
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.us.i.i.i.i.i.i86.i.i = icmp sgt i32 %i.aho, %i.ahq
  br i1 %.not3.i.i.us.i.i.i.i.i.i86.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.us.i.i.i.i.i.i87.i.i

.lr.ph.preheader.i.i.us.i.i.i.i.i.i87.i.i:        ; preds = %bb.du
  %i.ahr = load i32, ptr %i.i, align 4, !tbaa !115
  %i.ahs = sext i32 %i.aho to i64
  %i.aht = sext i32 %i.ahr to i64
  %i.ahu = add i32 %i.ahq, 1
  br label %.lr.ph.i.i.us.i.i.i.i.i.i88.i.i

.lr.ph.i.i.us.i.i.i.i.i.i88.i.i:                  ; preds = %bb.dw, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i87.i.i
  %indvars.iv.i.i.us.i.i.i.i.i.i89.i.i = phi i64 [ %i.ahs, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i87.i.i ], [ %indvars.iv.next.i.i.us.i.i.i.i.i.i93.i.i, %bb.dw ] ; 3 uses
  %.0194.i.i.us.i.i.i.i.i.i90.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.us.i.i.i.i.i.i87.i.i ], [ %.1.i.i.us.i.i.i.i.i.i92.i.i, %bb.dw ] ; 2 uses
  %i.ahv = sub nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i89.i.i, %i.aht ; 2 uses
  %i.ahw = lshr i64 %i.ahv, 6
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahw
  %i.ahy = load i64, ptr %i.ahx, align 8, !tbaa !159
  %i.ahz = and i64 %i.ahv, 63
  %i.aia = shl nuw i64 1, %i.ahz
  %i.aib = and i64 %i.aia, %i.ahy
  %.not1.i.i.us.i.i.i.i.i.i91.i.i = icmp eq i64 %i.aib, 0
  br i1 %.not1.i.i.us.i.i.i.i.i.i91.i.i, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph.i.i.us.i.i.i.i.i.i88.i.i
  %i.aic = add nsw i64 %.0194.i.i.us.i.i.i.i.i.i90.i.i, 1 ; 2 uses
  %i.aid = icmp eq i64 %i.aic, %i.ahl
  br i1 %i.aid, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph.i.i.us.i.i.i.i.i.i88.i.i
  %.1.i.i.us.i.i.i.i.i.i92.i.i = phi i64 [ %.0194.i.i.us.i.i.i.i.i.i90.i.i, %.lr.ph.i.i.us.i.i.i.i.i.i88.i.i ], [ %i.aic, %bb.dv ]
  %indvars.iv.next.i.i.us.i.i.i.i.i.i93.i.i = add nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i89.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.us.i.i.i.i.i.i94.i.i = trunc i64 %indvars.iv.next.i.i.us.i.i.i.i.i.i93.i.i to i32
  %exitcond.not.i.i.us.i.i.i.i.i.i95.i.i = icmp eq i32 %i.ahu, %lftr.wideiv.i.i.us.i.i.i.i.i.i94.i.i
  br i1 %exitcond.not.i.i.us.i.i.i.i.i.i95.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.us.i.i.i.i.i.i88.i.i, !llvm.loop !8

bb.dx:                                            ; preds = %bb.dv
  %i.aie = trunc nsw i64 %indvars.iv.i.i.us.i.i.i.i.i.i89.i.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i: ; preds = %bb.dw, %bb.dx, %bb.du
  %.sink.i.i.us.i.i.i.i.i.i96.i.i = phi i32 [ %i.aie, %bb.dx ], [ -1, %bb.du ], [ -1, %bb.dw ]
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %.val.i.us.i.i.i.i.i.i85.i.i, i64 %i.ahj
  store i32 %.sink.i.i.us.i.i.i.i.i.i96.i.i, ptr %i.aif, align 4, !tbaa !115
  %i.aig = add nuw i64 %.021.us.i.i.i.i.i.i83.i.i, 1 ; 2 uses
  %i.aih = icmp ult i64 %i.aig, %i.aha
  br i1 %i.aih, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !850

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i57.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i56.i.i
  %.021.i.i.i.i.i.i58.i.i = phi i64 [ %i.ajw, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i ], [ %i.agy, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.preheader.i56.i.i ] ; 5 uses
  %i.aii = lshr i64 %.021.i.i.i.i.i.i58.i.i, 6
  %i.aij = and i64 %i.aii, 67108863
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.ahb, i64 %i.aij
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !159
  %i.aim = and i64 %.021.i.i.i.i.i.i58.i.i, 63
  %i.ain = shl nuw i64 1, %i.aim
  %i.aio = and i64 %i.ain, %i.ail
  %.not.i.i.i.i.i.i.i.i.i59.i.i = icmp eq i64 %i.aio, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i59.i.i, label %bb.dy, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i60.i.i

bb.dy:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i57.i.i
  %i.aip = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %.021.i.i.i.i.i.i58.i.i
  store i32 -1, ptr %i.aiq, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i60.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i57.i.i
  %i.air = load ptr, ptr %i.agm, align 8, !tbaa !273
  %sext.i.i.i.i.i.i.i61.i.i = shl i64 %.021.i.i.i.i.i.i58.i.i, 32
  %i.ais = ashr exact i64 %sext.i.i.i.i.i.i.i61.i.i, 32 ; 4 uses
  %i.ait = getelementptr inbounds [8 x i8], ptr %i.air, i64 %i.ais
  %i.aiu = load i64, ptr %i.ait, align 8, !tbaa !159 ; 3 uses
  %i.aiv = icmp slt i64 %i.aiu, 1
  br i1 %i.aiv, label %.split.us.i.i.i.i.i.i74.i.i, label %bb.eb, !prof !105

.split.us.i.i.i.i.i.i74.i.i:                      ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i60.i.i, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i
  %.us-phi.i.i.i.i.i.i75.i.i = phi i64 [ %i.ahl, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.i.i82.i.i ], [ %i.aiu, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i60.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36, !noalias !900
  store i64 %.us-phi.i.i.i.i.i.i75.i.i, ptr %24, align 16, !tbaa !88, !noalias !900
  %i.aiw = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 1, ptr %i.aiw, align 16, !tbaa !88, !alias.scope !901, !noalias !900
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr nonnull @.str.28, i64 37, i64 19, ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36, !noalias !900
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction5applyERKN5boost13intrusive_ptrINS0_6BufferEEESA_SA_SA_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.ahd, i64 %i.ais
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !115 ; 2 uses
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.ahe, i64 %i.ais
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i.i.i.i63.i.i = icmp sgt i32 %i.aje, %i.ajg
  br i1 %.not3.i.i.i.i.i.i.i.i63.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i64.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i64.i.i:           ; preds = %bb.eb
  %i.ajh = load i32, ptr %i.i, align 4, !tbaa !115
  %i.aji = sext i32 %i.aje to i64
  %i.ajj = sext i32 %i.ajh to i64
  %i.ajk = add i32 %i.ajg, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i65.i.i

.lr.ph.i.i.i.i.i.i.i.i65.i.i:                     ; preds = %bb.ee, %.lr.ph.preheader.i.i.i.i.i.i.i.i64.i.i
  %indvars.iv.i.i.i.i.i.i.i.i66.i.i = phi i64 [ %i.aji, %.lr.ph.preheader.i.i.i.i.i.i.i.i64.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i70.i.i, %bb.ee ] ; 3 uses
  %.0194.i.i.i.i.i.i.i.i67.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i.i64.i.i ], [ %.1.i.i.i.i.i.i.i.i69.i.i, %bb.ee ] ; 2 uses
  %i.ajl = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i.i66.i.i, %i.ajj ; 2 uses
  %i.ajm = lshr i64 %i.ajl, 6
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ahc, i64 %i.ajm
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !159
  %i.ajp = and i64 %i.ajl, 63
  %i.ajq = shl nuw i64 1, %i.ajp
  %i.ajr = and i64 %i.ajq, %i.ajo
  %.not1.i.i.i.i.i.i.i.i68.i.i = icmp eq i64 %i.ajr, 0
  br i1 %.not1.i.i.i.i.i.i.i.i68.i.i, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i65.i.i
  %i.ajs = add nsw i64 %.0194.i.i.i.i.i.i.i.i67.i.i, 1 ; 2 uses
  %i.ajt = icmp eq i64 %i.ajs, %i.aiu
  br i1 %i.ajt, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aju = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i66.i.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i

bb.ee:                                            ; preds = %bb.ec, %.lr.ph.i.i.i.i.i.i.i.i65.i.i
  %.1.i.i.i.i.i.i.i.i69.i.i = phi i64 [ %.0194.i.i.i.i.i.i.i.i67.i.i, %.lr.ph.i.i.i.i.i.i.i.i65.i.i ], [ %i.ajs, %bb.ec ]
  %indvars.iv.next.i.i.i.i.i.i.i.i70.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i66.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i.i71.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i.i.i70.i.i to i32
  %exitcond.not.i.i.i.i.i.i.i.i72.i.i = icmp eq i32 %i.ajk, %lftr.wideiv.i.i.i.i.i.i.i.i71.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i72.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i65.i.i, !llvm.loop !8

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.eb
  %.sink.i.i.i.i.i.i.i.i73.i.i = phi i32 [ %i.aju, %bb.ed ], [ -1, %bb.eb ], [ -1, %bb.ee ]
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i.i62.i.i, i64 %i.ais
  store i32 %.sink.i.i.i.i.i.i.i.i73.i.i, ptr %i.ajv, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i.i, %bb.dy
  %i.ajw = add nuw i64 %.021.i.i.i.i.i.i58.i.i, 1 ; 2 uses
  %i.ajx = icmp ult i64 %i.ajw, %i.aha
  br i1 %i.ajx, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i.i57.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, !llvm.loop !850

bb.ef:                                            ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i97.i.i
  %.01520.i.i.i.i.i.i99.i.i = phi i64 [ %i.agr, %.lr.ph.i.i.i.i.i.i97.i.i ], [ %i.alr, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ajy = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i99.i.i, i1 true)
  %i.ajz = trunc nuw nsw i64 %i.ajy to i32
  %i.aka = or disjoint i32 %i.ags, %i.ajz         ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i98.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i102.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i100.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i100.i.i: ; preds = %bb.ef
  %i.akb = zext i32 %i.aka to i64                 ; 2 uses
  %i.akc = lshr i64 %i.akb, 6
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.akc
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !159
  %i.akf = and i64 %i.akb, 63
  %i.akg = shl nuw i64 1, %i.akf
  %i.akh = and i64 %i.ake, %i.akg
  %.not.i.i.i48.i.i.i.i.i101.i.i = icmp eq i64 %i.akh, 0
  br i1 %.not.i.i.i48.i.i.i.i.i101.i.i, label %bb.eg, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i102.i.i

bb.eg:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i100.i.i
  %i.aki = sext i32 %i.aka to i64
  %i.akj = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %i.aki
  store i32 -1, ptr %i.akk, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i102.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i.i100.i.i, %bb.ef
  %i.akl = load ptr, ptr %i.agm, align 8, !tbaa !273
  %i.akm = sext i32 %i.aka to i64                 ; 4 uses
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.akl, i64 %i.akm
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !159 ; 3 uses
  %i.akp = icmp slt i64 %i.ako, 1
  br i1 %i.akp, label %bb.eh, label %bb.ek, !prof !105

bb.eh:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i102.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36, !noalias !902
  store i64 %i.ako, ptr %22, align 16, !tbaa !88, !noalias !902
  %i.akq = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 1, ptr %i.akq, align 16, !tbaa !88, !alias.scope !903, !noalias !902
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.28, i64 37, i64 19, ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36, !noalias !902
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr nonnull @.str.28) #39
          to label %bb.ei unwind label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.akr = landingpad { ptr, i32 }
          cleanup
  %i.aks = load ptr, ptr %23, align 8, !tbaa !87  ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aku = icmp eq ptr %i.aks, %i.akt
  br i1 %i.aku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i117.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116.i.i: ; preds = %bb.ej
  %i.akv = load i64, ptr %i.akt, align 8, !tbaa !88
  %i.akw = add i64 %i.akv, 1
  call void @_ZdlPvm(ptr noundef %i.aks, i64 noundef %i.akw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i117.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i117.i.i: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br label %common.resume.i.i

bb.ek:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i.i.i.i.i102.i.i
  %.val.i.i.i.i.i.i103.i.i = load ptr, ptr %i.u, align 8
  %i.akx = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.akm
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !115 ; 2 uses
  %i.akz = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.akm
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !115 ; 2 uses
  %.not3.i.i.i.i.i.i.i104.i.i = icmp sgt i32 %i.aky, %i.ala
  br i1 %.not3.i.i.i.i.i.i.i104.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i105.i.i

.lr.ph.preheader.i.i.i.i.i.i.i105.i.i:            ; preds = %bb.ek
  %i.alb = load i32, ptr %i.i, align 4, !tbaa !115
  %i.alc = sext i32 %i.aky to i64
  %i.ald = sext i32 %i.alb to i64
  %i.ale = add i32 %i.ala, 1
  br label %.lr.ph.i.i.i.i.i.i.i106.i.i

.lr.ph.i.i.i.i.i.i.i106.i.i:                      ; preds = %bb.en, %.lr.ph.preheader.i.i.i.i.i.i.i105.i.i
  %indvars.iv.i.i.i.i.i.i.i107.i.i = phi i64 [ %i.alc, %.lr.ph.preheader.i.i.i.i.i.i.i105.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i111.i.i, %bb.en ] ; 3 uses
  %.0194.i.i.i.i.i.i.i108.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i105.i.i ], [ %.1.i.i.i.i.i.i.i110.i.i, %bb.en ] ; 2 uses
  %i.alf = sub nsw i64 %indvars.iv.i.i.i.i.i.i.i107.i.i, %i.ald ; 2 uses
  %i.alg = lshr i64 %i.alf, 6
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.alg
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !159
  %i.alj = and i64 %i.alf, 63
  %i.alk = shl nuw i64 1, %i.alj
  %i.all = and i64 %i.alk, %i.ali
  %.not1.i.i.i.i.i.i.i109.i.i = icmp eq i64 %i.all, 0
  br i1 %.not1.i.i.i.i.i.i.i109.i.i, label %bb.el, label %bb.en

bb.el:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i106.i.i
  %i.alm = add nsw i64 %.0194.i.i.i.i.i.i.i108.i.i, 1 ; 2 uses
  %i.aln = icmp eq i64 %i.alm, %i.ako
  br i1 %i.aln, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.alo = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i107.i.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i

bb.en:                                            ; preds = %bb.el, %.lr.ph.i.i.i.i.i.i.i106.i.i
  %.1.i.i.i.i.i.i.i110.i.i = phi i64 [ %.0194.i.i.i.i.i.i.i108.i.i, %.lr.ph.i.i.i.i.i.i.i106.i.i ], [ %i.alm, %bb.el ]
  %indvars.iv.next.i.i.i.i.i.i.i111.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i107.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i.i.i.i.i112.i.i = trunc i64 %indvars.iv.next.i.i.i.i.i.i.i111.i.i to i32
  %exitcond.not.i.i.i.i.i.i.i113.i.i = icmp eq i32 %i.ale, %lftr.wideiv.i.i.i.i.i.i.i112.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i113.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i106.i.i, !llvm.loop !8

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.en, %bb.em, %bb.ek
  %.sink.i.i.i.i.i.i.i114.i.i = phi i32 [ %i.alo, %bb.em ], [ -1, %bb.ek ], [ -1, %bb.en ]
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i103.i.i, i64 %i.akm
  store i32 %.sink.i.i.i.i.i.i.i114.i.i, ptr %i.alp, align 4, !tbaa !115
  br label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.i.i.i.i.i.i.i, %bb.eg
  %i.alq = add i64 %.01520.i.i.i.i.i.i99.i.i, -1
  %i.alr = and i64 %i.alq, %.01520.i.i.i.i.i.i99.i.i ; 2 uses
  %.not.i41.i.i.i.i.i115.i.i = icmp eq i64 %i.alr, 0
  br i1 %.not.i41.i.i.i.i.i115.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i, label %bb.ef, !llvm.loop !859

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit.i.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clImEEDaSB_.exit.i.i.i.i.i.i.i.i, %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit.i.us.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i.i.i.i, %bb.dt, %bb.ds
  %i.als = add nsw i32 %i.agn, 64                 ; 2 uses
  %.not33.i.i.i.i.i44.i.i = icmp sgt i32 %i.als, %i.aew
  br i1 %.not33.i.i.i.i.i44.i.i, label %._crit_edge.i.i.i.i.i45.i.i, label %bb.ds, !llvm.loop !860

bb.eo:                                            ; preds = %._crit_edge.i.i.i.i.i45.i.i
  %i.alt = ashr i32 %i.aes, 6
  %i.alu = and i32 %i.aes, 63
  %i.alv = zext nneg i32 %i.alu to i64
  %notmask.i42.i.i.i.i.i47.i.i = shl nsw i64 -1, %i.alv
  %i.alw = xor i64 %notmask.i42.i.i.i.i.i47.i.i, -1
  %i.alx = sext i32 %i.alt to i64
  %i.aly = getelementptr inbounds [8 x i8], ptr %i.aer, i64 %i.alx
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !159
  %i.ama = and i64 %i.alz, %i.alw                 ; 2 uses
  %.not.i43.i.i.i.i.i48.i.i = icmp eq i64 %i.ama, 0
  br i1 %.not.i43.i.i.i.i.i48.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i44.i.i.i.i.i49.i.i

.preheader.i44.i.i.i.i.i49.i.i:                   ; preds = %bb.eo, %.preheader.i44.i.i.i.i.i49.i.i
  %.011.i45.i.i.i.i.i50.i.i = phi i64 [ %i.amf, %.preheader.i44.i.i.i.i.i49.i.i ], [ %i.ama, %bb.eo ] ; 3 uses
  %i.amb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i.i50.i.i, i1 true)
  %i.amc = trunc nuw nsw i64 %i.amb to i32
  %i.amd = or disjoint i32 %i.aew, %i.amc
  call fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr noundef nonnull readonly align 8 dereferenceable(48) %.sroa.39.0..sroa_idx.i.i.i.i27.i.i, i32 noundef %i.amd)
  %i.ame = add nsw i64 %.011.i45.i.i.i.i.i50.i.i, -1
  %i.amf = and i64 %i.ame, %.011.i45.i.i.i.i.i50.i.i ; 2 uses
  %.not10.i46.i.i.i.i.i51.i.i = icmp eq i64 %i.amf, 0
  br i1 %.not10.i46.i.i.i.i.i51.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, label %.preheader.i44.i.i.i.i.i49.i.i, !llvm.loop !849

_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i: ; preds = %.preheader.i44.i.i.i.i.i49.i.i, %.preheader.i.i.i.i.i.i122.i.i, %bb.eo, %._crit_edge.i.i.i.i.i45.i.i, %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i: ; preds = %.lr.ph.i.i125.i.i, %_ZN8facebook5velox4bits13forEachSetBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiiSD_.exit.i.i.i.i, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit

bb.ep:                                            ; preds = %bb.br
  %i.amg = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 4 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %5, i64 37 ; 2 uses
  br i1 %i.ue, label %bb.eq, label %bb.fs

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.az, ptr %i.d, align 8, !tbaa !246
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  %i.ami = load ptr, ptr %i.tz, align 8, !tbaa !120
  %i.amj = icmp eq ptr %i.ami, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIiEE, i64 16)
  %i.amk = select i1 %i.amj, ptr %i.tz, ptr null  ; 2 uses
  store ptr %i.amk, ptr %i.f, align 8, !tbaa !254
  %i.aml = load i8, ptr %i.amh, align 1, !tbaa !177, !range !126, !noundef !127
  %i.amm = trunc nuw i8 %i.aml to i1
  br i1 %i.amm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i185.i.i, label %bb.er

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i185.i.i: ; preds = %bb.eq
  %.0.in.pre.i.i.i186.i.i = load i8, ptr %i.amg, align 4, !tbaa !160, !range !126
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i140.i.i

bb.er:                                            ; preds = %bb.eq
  %i.amn = load i32, ptr %i.ar, align 4, !tbaa !247
  %i.amo = icmp eq i32 %i.amn, 0
  br i1 %i.amo, label %bb.es, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i

bb.es:                                            ; preds = %bb.er
  %i.amp = load i32, ptr %i.at, align 8, !tbaa !248 ; 6 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.amr = load i32, ptr %i.amq, align 8, !tbaa !249
  %i.ams = icmp eq i32 %i.amp, %i.amr
  br i1 %i.ams, label %bb.et, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i

bb.et:                                            ; preds = %bb.es
  %i.amt = load ptr, ptr %5, align 8, !tbaa !239  ; 2 uses
  %.not.i.i.i.i177.i.i = icmp sgt i32 %i.amp, 0
  br i1 %.not.i.i.i.i177.i.i, label %bb.eu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i

bb.eu:                                            ; preds = %bb.et
  %i.amu = and i32 %i.amp, 2147483584             ; 3 uses
  %i.amv = zext nneg i32 %i.amu to i64
  %.not37.i.i.not.i.i.i179.i.i520.not = icmp eq i32 %i.amu, 0
  br i1 %.not37.i.i.not.i.i.i179.i.i520.not, label %.critedge.i.i.i.i.i180.i.i, label %.lr.ph522

bb.ev:                                            ; preds = %.lr.ph522
  %indvars.iv.next.i.i.i184.i.i = add nuw nsw i64 %indvars.iv.i.i.i178.i.i521, 64 ; 2 uses
  %.not37.i.i.not.i.i.i179.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i184.i.i, %i.amv
  br i1 %.not37.i.i.not.i.i.i179.i.i, label %.lr.ph522, label %.critedge.i.i.i.i.i180.i.i, !llvm.loop !7

.lr.ph522:                                        ; preds = %bb.eu, %bb.ev
  %indvars.iv.i.i.i178.i.i521 = phi i64 [ %indvars.iv.next.i.i.i184.i.i, %bb.ev ], [ 0, %bb.eu ] ; 2 uses
  %i.amw = lshr exact i64 %indvars.iv.i.i.i178.i.i521, 3
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.amw
  %i.amy = load i64, ptr %i.amx, align 8, !tbaa !159
  %i.amz = icmp eq i64 %i.amy, -1
  br i1 %i.amz, label %bb.ev, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i, !llvm.loop !7

.critedge.i.i.i.i.i180.i.i:                       ; preds = %bb.ev, %bb.eu
  %.not38.i.i.i.i.i181.i.i = icmp eq i32 %i.amp, %i.amu
  br i1 %.not38.i.i.i.i.i181.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i, label %bb.ew

bb.ew:                                            ; preds = %.critedge.i.i.i.i.i180.i.i
  %i.ana = lshr i32 %i.amp, 6
  %i.anb = and i32 %i.amp, 63
  %i.anc = zext nneg i32 %i.anb to i64
  %notmask.i40.i.i.i.i.i182.i.i = shl nsw i64 -1, %i.anc
  %i.and = zext nneg i32 %i.ana to i64
  %i.ane = getelementptr inbounds nuw [8 x i8], ptr %i.amt, i64 %i.and
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !159
  %.demorgan.i.i.i183.i.i = or i64 %i.anf, %notmask.i40.i.i.i.i.i182.i.i
  %i.ang = icmp eq i64 %.demorgan.i.i.i183.i.i, -1
  %i.anh = zext i1 %i.ang to i16
  %i.ani = or disjoint i16 %i.anh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i: ; preds = %.lr.ph522, %bb.ew, %.critedge.i.i.i.i.i180.i.i, %bb.et, %bb.es, %bb.er
  %.sroa.0.0.insert.ext.i.i.i139.i.i = phi i16 [ 256, %bb.es ], [ 256, %bb.er ], [ 257, %bb.et ], [ 257, %.critedge.i.i.i.i.i180.i.i ], [ %i.ani, %bb.ew ], [ 256, %.lr.ph522 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i139.i.i, ptr %i.amg, align 4
  %i.anj = trunc i16 %.sroa.0.0.insert.ext.i.i.i139.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i140.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i140.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i185.i.i
  %.0.in.i.i.i141.i.i = phi i8 [ %.0.in.pre.i.i.i186.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i185.i.i ], [ %i.anj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i138.i.i ]
  %.0.i.i.i142.i.i = trunc nuw i8 %.0.in.i.i.i141.i.i to i1
  %i.ank = load i32, ptr %i.ar, align 4, !tbaa !247 ; 9 uses
  br i1 %.0.i.i.i142.i.i, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i140.i.i
  %i.anl = load i32, ptr %i.at, align 8, !tbaa !248 ; 3 uses
  %i.anm = icmp slt i32 %i.ank, %i.anl
  br i1 %i.anm, label %.lr.ph.i.i174.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i

.lr.ph.i.i174.i.i:                                ; preds = %bb.ex
  %i.ann = getelementptr inbounds nuw i8, ptr %i.tz, i64 40
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !255 ; 2 uses
  %.not.i.i4.i.i.i.i = icmp eq ptr %i.ano, null
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amk, i64 128 ; 2 uses
  br i1 %.not.i.i4.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader.i.i.i.i: ; preds = %.lr.ph.i.i174.i.i
  %i.anq = sext i32 %i.ank to i64
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i174.i.i
  %i.anr = load ptr, ptr %i.anp, align 8, !tbaa !269 ; 3 uses
  %i.ans = sext i32 %i.ank to i64                 ; 7 uses
  %wide.trip.count.i.i.i.i = sext i32 %i.anl to i64 ; 2 uses
  %i.ant = sub nsw i64 %wide.trip.count.i.i.i.i, %i.ans
  %i.anu = freeze i64 %i.ant                      ; 2 uses
  %xtraiter629 = and i64 %i.anu, 1
  %lcmp.mod630.not = icmp eq i64 %xtraiter629, 0
  br i1 %lcmp.mod630.not, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol.loopexit, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol: ; preds = %.lr.ph.split.us.i.i.i.i
  %i.anv = getelementptr inbounds [4 x i8], ptr %i.anr, i64 %i.ans
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !115 ; 3 uses
  %i.anx = icmp slt i32 %i.anw, 1
  br i1 %i.anx, label %.split.us.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.prol, !prof !105

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.prol: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol
  %.val.i.us.i.i.i.i.prol = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.any = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ans
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !115
  %i.aoa = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.ans
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !115
  %i.aoc = add nsw i32 %i.anw, -1
  %i.aod = add i32 %i.aoc, %i.anz                 ; 2 uses
  %.not.i6.i.us.i.i.i.i.prol = icmp sgt i32 %i.aod, %i.aob
  %i.aoe = select i1 %.not.i6.i.us.i.i.i.i.prol, i32 -1, i32 %i.aod
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.val.i.us.i.i.i.i.prol, i64 %i.ans
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !115
  %indvars.iv.next37.i.i.i.i.prol = add nsw i64 %i.ans, 1
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol.loopexit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol.loopexit: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.prol, %.lr.ph.split.us.i.i.i.i
  %indvars.iv36.i.i.i.i.unr = phi i64 [ %i.ans, %.lr.ph.split.us.i.i.i.i ], [ %indvars.iv.next37.i.i.i.i.prol, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.prol ]
  %i.aog = icmp eq i64 %i.anu, 1
  br i1 %i.aog, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol.loopexit, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.1
  %indvars.iv36.i.i.i.i = phi i64 [ %indvars.iv.next37.i.i.i.i.1, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.1 ], [ %indvars.iv36.i.i.i.i.unr, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aoh = getelementptr inbounds [4 x i8], ptr %i.anr, i64 %indvars.iv36.i.i.i.i
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !115 ; 3 uses
  %i.aoj = icmp slt i32 %i.aoi, 1
  br i1 %i.aoj, label %.split.us.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i, !prof !105

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i: ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i
  %.val.i.us.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241 ; 2 uses
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv36.i.i.i.i
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !115
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv36.i.i.i.i
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !115
  %i.aoo = add nsw i32 %i.aoi, -1
  %i.aop = add i32 %i.aoo, %i.aol                 ; 2 uses
  %.not.i6.i.us.i.i.i.i = icmp sgt i32 %i.aop, %i.aon
  %i.aoq = select i1 %.not.i6.i.us.i.i.i.i, i32 -1, i32 %i.aop
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.val.i.us.i.i.i.i, i64 %indvars.iv36.i.i.i.i
  store i32 %i.aoq, ptr %i.aor, align 4, !tbaa !115
  %indvars.iv.next37.i.i.i.i = add nsw i64 %indvars.iv36.i.i.i.i, 1 ; 4 uses
  %i.aos = getelementptr inbounds [4 x i8], ptr %i.anr, i64 %indvars.iv.next37.i.i.i.i
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !115 ; 3 uses
  %i.aou = icmp slt i32 %i.aot, 1
  br i1 %i.aou, label %.split.us.i.i.i.i, label %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.1, !prof !105

_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i.1: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us.i.i.i.i
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.next37.i.i.i.i
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !115
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv.next37.i.i.i.i
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !115
  %i.aoz = add nsw i32 %i.aot, -1
  %i.apa = add i32 %i.aoz, %i.aow                 ; 2 uses
  %.not.i6.i.us.i.i.i.i.1 = icmp sgt i32 %i.apa, %i.aoy
  %i.apb = select i1 %.not.i6.i.us.i.i.i.i.1, i32 -1, i32 %i.apa
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %.val.i.us.i.i.i.i, i64 %indvars.iv.next37.i.i.i.i
  store i32 %i.apb, ptr %i.apc, align 4, !tbaa !115
  %indvars.iv.next37.i.i.i.i.1 = add nsw i64 %indvars.iv36.i.i.i.i, 2 ; 2 uses
  %exitcond39.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next37.i.i.i.i.1, %wide.trip.count.i.i.i.i
  br i1 %exitcond39.not.i.i.i.i.1, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_i.exit.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us.i.i.i.i, !llvm.loop !861

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader.i.i.i.i
  %indvars.iv.i.i.i19.i = phi i64 [ %i.anq, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i20.i, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.i.i.i.i ] ; 7 uses
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction5applyERKN5boost13intrusive_ptrINS0_6BufferEEESA_SA_SA_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE:bb.a
  %i.bhs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bht = load i32, ptr %i.bhs, align 8, !tbaa !249 ; 3 uses
  %i.bhu = sext i32 %i.bht to i64
  %i.bhv = add nsw i64 %i.bhu, 63
  %i.bhw = lshr i64 %i.bhv, 6                     ; 4 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !274 ; 4 uses
  %i.bhz = load ptr, ptr %i.bhr, align 8, !tbaa !239 ; 5 uses
  %i.bia = ptrtoint ptr %i.bhy to i64
  %i.bib = ptrtoint ptr %i.bhz to i64
  %i.bic = sub i64 %i.bia, %i.bib
  %i.bid = ashr exact i64 %i.bic, 3               ; 3 uses
  %i.bie = icmp ugt i64 %i.bhw, %i.bid
  br i1 %i.bie, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.bif = sub nuw nsw i64 %i.bhw, %i.bid
  call void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(38) %i.bhr, i64 noundef %i.bif)
  %.pre.i.i = load ptr, ptr %i.bhr, align 8, !tbaa !252
  %.pre7.i.i = load ptr, ptr %i.bhx, align 8, !tbaa !252
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.big = icmp ult i64 %i.bhw, %i.bid
  br i1 %i.big, label %bb.hd, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.hd:                                            ; preds = %bb.hc
  %i.bih = getelementptr inbounds nuw [8 x i8], ptr %i.bhz, i64 %i.bhw ; 3 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.bhy, %i.bih
  br i1 %.not.i.i.i.i19, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.hd
  store ptr %i.bih, ptr %i.bhx, align 8, !tbaa !274
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.hd, %bb.hc, %bb.hb
  %i.bii = phi ptr [ %.pre7.i.i, %bb.hb ], [ %i.bhy, %bb.hc ], [ %i.bhy, %bb.hd ], [ %i.bih, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 2 uses
  %i.bij = phi ptr [ %.pre.i.i, %bb.hb ], [ %i.bhz, %bb.hc ], [ %i.bhz, %bb.hd ], [ %i.bhz, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.bij, %i.bii
  br i1 %.not5.i.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.bik = ptrtoaddr ptr %i.bij to i64
  %i.bil = ptrtoaddr ptr %i.bii to i64
  %i.bim = add i64 %i.bil, -8
  %i.bin = sub i64 %i.bim, %i.bik
  %i.bio = and i64 %i.bin, -8
  %i.bip = add i64 %i.bio, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bij, i8 -1, i64 %i.bip, i1 false), !tbaa !159
  br label %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i

_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.biq = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i32 %i.bht, ptr %i.biq, align 8, !tbaa !249
  %i.bir = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  store i32 0, ptr %i.bir, align 4, !tbaa !247
  %i.bis = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store i32 %i.bht, ptr %i.bis, align 8, !tbaa !248
  %i.bit = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  store i16 257, ptr %i.bit, align 4
  call void @_ZN8facebook5velox17SelectivityVector8deselectERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %i.bhr, ptr noundef nonnull align 8 dereferenceable(38) %5)
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.biv = load i8, ptr %i.biu, align 1, !tbaa !177, !range !126, !noundef !127
  %i.biw = trunc nuw i8 %i.biv to i1
  br i1 %i.biw, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.he

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.bit, align 4, !tbaa !160, !range !126
  %.pre = load i32, ptr %i.bir, align 4, !tbaa !247
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.he:                                            ; preds = %_ZN8facebook5velox17SelectivityVector10resizeFillEib.exit.i
  %i.bix = load i32, ptr %i.bir, align 4, !tbaa !247 ; 2 uses
  %i.biy = icmp eq i32 %i.bix, 0
  br i1 %i.biy, label %bb.hf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.hf:                                            ; preds = %bb.he
  %i.biz = load i32, ptr %i.bis, align 8, !tbaa !248 ; 6 uses
  %i.bja = load i32, ptr %i.biq, align 8, !tbaa !249
  %i.bjb = icmp eq i32 %i.biz, %i.bja
  br i1 %i.bjb, label %bb.hg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.hg:                                            ; preds = %bb.hf
  %i.bjc = load ptr, ptr %i.bhr, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i6.i = icmp sgt i32 %i.biz, 0
  br i1 %.not.i.i.i6.i, label %bb.hh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.hh:                                            ; preds = %bb.hg
  %i.bjd = and i32 %i.biz, 2147483584             ; 3 uses
  %i.bje = zext nneg i32 %i.bjd to i64
  %.not37.i.i.not.i.i.i535.not = icmp eq i32 %i.bjd, 0
  br i1 %.not37.i.i.not.i.i.i535.not, label %.critedge.i.i.i.i.i, label %.lr.ph537

bb.hi:                                            ; preds = %.lr.ph537
  %indvars.iv.next.i.i.i18 = add nuw nsw i64 %indvars.iv.i.i.i17536, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i18, %i.bje
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph537, label %.critedge.i.i.i.i.i, !llvm.loop !7

.lr.ph537:                                        ; preds = %bb.hh, %bb.hi
  %indvars.iv.i.i.i17536 = phi i64 [ %indvars.iv.next.i.i.i18, %bb.hi ], [ 0, %bb.hh ] ; 2 uses
  %i.bjf = lshr exact i64 %indvars.iv.i.i.i17536, 3
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bjc, i64 %i.bjf
  %i.bjh = load i64, ptr %i.bjg, align 8, !tbaa !159
  %i.bji = icmp eq i64 %i.bjh, -1
  br i1 %i.bji, label %bb.hi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !7

.critedge.i.i.i.i.i:                              ; preds = %bb.hi, %bb.hh
  %.not38.i.i.i.i.i = icmp eq i32 %i.biz, %i.bjd
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.hj

bb.hj:                                            ; preds = %.critedge.i.i.i.i.i
  %i.bjj = lshr i32 %i.biz, 6
  %i.bjk = and i32 %i.biz, 63
  %i.bjl = zext nneg i32 %i.bjk to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.bjl
  %i.bjm = zext nneg i32 %i.bjj to i64
  %i.bjn = getelementptr inbounds nuw [8 x i8], ptr %i.bjc, i64 %i.bjm
  %i.bjo = load i64, ptr %i.bjn, align 8, !tbaa !159
  %.demorgan.i.i.i = or i64 %i.bjo, %notmask.i40.i.i.i.i.i
  %i.bjp = icmp eq i64 %.demorgan.i.i.i, -1
  %i.bjq = zext i1 %i.bjp to i16
  %i.bjr = or disjoint i16 %i.bjq, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph537, %bb.hj, %.critedge.i.i.i.i.i, %bb.hg, %bb.hf, %bb.he
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.hf ], [ 256, %bb.he ], [ 257, %bb.hg ], [ 257, %.critedge.i.i.i.i.i ], [ %i.bjr, %bb.hj ], [ 256, %.lr.ph537 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.bit, align 4
  %i.bjs = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %i.bjt = phi i32 [ %.pre, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.bix, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ] ; 9 uses
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.bjs, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  br i1 %.0.i.i.i, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.bju = load i32, ptr %i.bis, align 8, !tbaa !248 ; 2 uses
  %i.bjv = icmp slt i32 %i.bjt, %i.bju
  br i1 %i.bjv, label %.lr.ph.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

.lr.ph.i.i:                                       ; preds = %bb.hk
  %.val.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.bjw = sext i32 %i.bjt to i64
  %i.bjx = shl nsw i64 %i.bjw, 2
  %scevgep.i.i = getelementptr nuw i8, ptr %.val.val.i.i, i64 %i.bjx
  %i.bjy = xor i32 %i.bjt, -1
  %i.bjz = add i32 %i.bju, %i.bjy
  %i.bka = zext i32 %i.bjz to i64
  %i.bkb = shl nuw nsw i64 %i.bka, 2
  %i.bkc = add nuw nsw i64 %i.bkb, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 -1, i64 %i.bkc, i1 false), !tbaa !115
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.hl:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.bkd = load ptr, ptr %i.bhr, align 8, !tbaa !239 ; 4 uses
  %i.bke = load i32, ptr %i.bis, align 8, !tbaa !248 ; 7 uses
  %.not.i.i.i.i.i14 = icmp slt i32 %i.bjt, %i.bke
  br i1 %.not.i.i.i.i.i14, label %bb.hm, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit

bb.hm:                                            ; preds = %bb.hl
  %i.bkf = add i32 %i.bjt, 63                     ; 2 uses
  %i.bkg = srem i32 %i.bkf, 64
  %i.bkh = sub nsw i32 %i.bkf, %i.bkg             ; 6 uses
  %i.bki = and i32 %i.bke, -64                    ; 6 uses
  %i.bkj = icmp slt i32 %i.bki, %i.bkh
  br i1 %i.bkj, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.bkk = ashr i32 %i.bke, 6
  %i.bkl = and i32 %i.bke, 63
  %i.bkm = zext nneg i32 %i.bkl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bkm
  %i.bkn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bko = sub nsw i32 %i.bkh, %i.bjt             ; 2 uses
  %i.bkp = zext nneg i32 %i.bko to i64
  %notmask.i.i.i.i.i.i.i16 = shl nsw i64 -1, %i.bkp
  %i.bkq = xor i64 %notmask.i.i.i.i.i.i.i16, -1
  %i.bkr = sub nsw i32 64, %i.bko
  %i.bks = zext nneg i32 %i.bkr to i64
  %i.bkt = shl i64 %i.bkq, %i.bks
  %i.bku = and i64 %i.bkt, %i.bkn
  %i.bkv = sext i32 %i.bkk to i64
  %i.bkw = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.bkv
  %i.bkx = load i64, ptr %i.bkw, align 8, !tbaa !159
  %i.bky = and i64 %i.bku, %i.bkx                 ; 2 uses
  %.not.i.i.i.i.i5.i = icmp eq i64 %i.bky, 0
  br i1 %.not.i.i.i.i.i5.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.hn
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.bkz = sext i32 %i.bki to i64
  %invariant.gep.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.val.val.i.i.i.i.i.i, i64 %i.bkz
  br label %bb.ho

bb.ho:                                            ; preds = %bb.ho, %.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.bky, %.preheader.i.i.i.i.i.i ], [ %i.blc, %bb.ho ] ; 3 uses
  %i.bla = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %gep.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %i.bla
  store i32 -1, ptr %gep.i.i.i.i.i.i, align 4, !tbaa !115
  %i.blb = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.blc = and i64 %i.blb, %.011.i.i.i.i.i.i      ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.blc, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.ho, !llvm.loop !893

bb.hp:                                            ; preds = %bb.hm
  %.not32.i.i.i.i.i = icmp eq i32 %i.bjt, %i.bkh
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.bld = sdiv i32 %i.bjt, 64                    ; 2 uses
  %i.ble = sub nsw i32 %i.bkh, %i.bjt             ; 2 uses
  %i.blf = zext nneg i32 %i.ble to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.blf
  %i.blg = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.blh = sub nsw i32 64, %i.ble
  %i.bli = zext nneg i32 %i.blh to i64
  %i.blj = shl i64 %i.blg, %i.bli
  %i.blk = sext i32 %i.bld to i64
  %i.bll = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.blk
  %i.blm = load i64, ptr %i.bll, align 8, !tbaa !159
  %i.bln = and i64 %i.blm, %i.blj                 ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.bln, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.hq
  %i.blo = shl nsw i32 %i.bld, 6
  %.val.val.i39.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.blp = sext i32 %i.blo to i64
  %invariant.gep.i40.i.i.i.i.i = getelementptr [4 x i8], ptr %.val.val.i39.i.i.i.i.i, i64 %i.blp
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hr, %.preheader.i37.i.i.i.i.i
  %.011.i41.i.i.i.i.i = phi i64 [ %i.bln, %.preheader.i37.i.i.i.i.i ], [ %i.bls, %bb.hr ] ; 3 uses
  %i.blq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i41.i.i.i.i.i, i1 true)
  %gep.i42.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i40.i.i.i.i.i, i64 %i.blq
  store i32 -1, ptr %gep.i42.i.i.i.i.i, align 4, !tbaa !115
  %i.blr = add i64 %.011.i41.i.i.i.i.i, -1
  %i.bls = and i64 %i.blr, %.011.i41.i.i.i.i.i    ; 2 uses
  %.not10.i43.i.i.i.i.i = icmp eq i64 %i.bls, 0
  br i1 %.not10.i43.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i, label %bb.hr, !llvm.loop !893

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i: ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.blt = add nsw i32 %i.bkh, 64                 ; 2 uses
  %.not3361.i.i.i.i.i = icmp sgt i32 %i.blt, %i.bki
  br i1 %.not3361.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i15

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.bke, %i.bki
  br i1 %.not34.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.hu

.lr.ph.i.i.i.i.i15:                               ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i
  %i.blu = phi i32 [ %i.bmm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.blt, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i ] ; 2 uses
  %.062.i.i.i.i.i = phi i32 [ %i.blu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i ], [ %i.bkh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUlimE_clEim.exit44.i.i.i.i.i ] ; 2 uses
  %i.blv = sdiv i32 %.062.i.i.i.i.i, 64           ; 3 uses
  %i.blw = sext i32 %i.blv to i64
  %i.blx = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.blw
  %i.bly = load i64, ptr %i.blx, align 8, !tbaa !159 ; 2 uses
  switch i64 %i.bly, label %.lr.ph.i.i.i.i.i4.i [
    i64 -1, label %bb.hs
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i4.i:                              ; preds = %.lr.ph.i.i.i.i.i15
  %i.blz = shl nsw i32 %i.blv, 6
  %.val.val.i46.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.bma = sext i32 %i.blz to i64
  %invariant.gep.i47.i.i.i.i.i = getelementptr [4 x i8], ptr %.val.val.i46.i.i.i.i.i, i64 %i.bma
  br label %bb.ht

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i15
  %.0.off.i.i.i.i.i = add i32 %.062.i.i.i.i.i, 127
  %.not23.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i, label %.lr.ph22.i.i.i.i.i.i

.lr.ph22.i.i.i.i.i.i:                             ; preds = %bb.hs
  %i.bmb = shl nsw i32 %i.blv, 6                  ; 2 uses
  %i.bmc = add i32 %i.bmb, 64
  %i.bmd = sext i32 %i.bmc to i64
  %i.bme = sext i32 %i.bmb to i64                 ; 3 uses
  %.val17.val.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.bmf = shl nsw i64 %i.bme, 2
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %.val17.val.i.i.i.i.i.i, i64 %i.bmf
  %i.bmg = or disjoint i64 %i.bme, 1
  %umax.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bmg, i64 %i.bmd)
  %i.bmh = sub nsw i64 %umax.i.i.i.i.i.i, %i.bme
  %i.bmi = shl nsw i64 %i.bmh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i.i, i8 -1, i64 %i.bmi, i1 false), !tbaa !115
  br label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i

bb.ht:                                            ; preds = %bb.ht, %.lr.ph.i.i.i.i.i4.i
  %.01520.i.i.i.i.i.i = phi i64 [ %i.bly, %.lr.ph.i.i.i.i.i4.i ], [ %i.bml, %bb.ht ] ; 3 uses
  %i.bmj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i.i, i1 true)
  %gep.i48.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i47.i.i.i.i.i, i64 %i.bmj
  store i32 -1, ptr %gep.i48.i.i.i.i.i, align 4, !tbaa !115
  %i.bmk = add i64 %.01520.i.i.i.i.i.i, -1
  %i.bml = and i64 %i.bmk, %.01520.i.i.i.i.i.i    ; 2 uses
  %.not.i49.i.i.i.i.i = icmp eq i64 %i.bml, 0
  br i1 %.not.i49.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i, label %bb.ht, !llvm.loop !894

_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorEEUlT_E_EEvPKmiibSA_ENKUliE_clEi.exit.i.i.i.i.i: ; preds = %bb.ht, %.lr.ph22.i.i.i.i.i.i, %bb.hs, %.lr.ph.i.i.i.i.i15
  %i.bmm = add nsw i32 %i.blu, 64                 ; 2 uses
  %.not33.i.i.i.i.i = icmp sgt i32 %i.bmm, %i.bki
  br i1 %.not33.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i15, !llvm.loop !895

bb.hu:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.bmn = ashr i32 %i.bke, 6
  %i.bmo = and i32 %i.bke, 63
  %i.bmp = zext nneg i32 %i.bmo to i64
  %notmask.i50.i.i.i.i.i = shl nsw i64 -1, %i.bmp
  %i.bmq = xor i64 %notmask.i50.i.i.i.i.i, -1
  %i.bmr = sext i32 %i.bmn to i64
  %i.bms = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.bmr
  %i.bmt = load i64, ptr %i.bms, align 8, !tbaa !159
  %i.bmu = and i64 %i.bmt, %i.bmq                 ; 2 uses
  %.not.i51.i.i.i.i.i = icmp eq i64 %i.bmu, 0
  br i1 %.not.i51.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %.preheader.i52.i.i.i.i.i

.preheader.i52.i.i.i.i.i:                         ; preds = %bb.hu
  %.val.val.i54.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !241
  %i.bmv = sext i32 %i.bki to i64
  %invariant.gep.i55.i.i.i.i.i = getelementptr [4 x i8], ptr %.val.val.i54.i.i.i.i.i, i64 %i.bmv
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hv, %.preheader.i52.i.i.i.i.i
  %.011.i56.i.i.i.i.i = phi i64 [ %i.bmu, %.preheader.i52.i.i.i.i.i ], [ %i.bmy, %bb.hv ] ; 3 uses
  %i.bmw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i.i, i1 true)
  %gep.i57.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i55.i.i.i.i.i, i64 %i.bmw
  store i32 -1, ptr %gep.i57.i.i.i.i.i, align 4, !tbaa !115
  %i.bmx = add nsw i64 %.011.i56.i.i.i.i.i, -1
  %i.bmy = and i64 %i.bmx, %.011.i56.i.i.i.i.i    ; 2 uses
  %.not10.i58.i.i.i.i.i = icmp eq i64 %i.bmy, 0
  br i1 %.not10.i58.i.i.i.i.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit, label %bb.hv, !llvm.loop !893

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction27setRowNumbersForEmptyFramesERKNS0_17SelectivityVectorE.exit: ; preds = %bb.hv, %bb.ho, %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i, %bb.hk, %.lr.ph.i.i, %bb.hl, %bb.hn, %._crit_edge.i.i.i.i.i, %bb.hu
  %i.bmz = load ptr, ptr %i.u, align 8, !tbaa !241 ; 2 uses
  %i.bna = getelementptr inbounds nuw [4 x i8], ptr %i.bmz, i64 %i.t
  %i.bnb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !243
  %i.bnd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bne = load i32, ptr %i.bnd, align 4, !tbaa !204
  call void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiN5folly5RangeIPKiEEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bnc, i32 noundef %i.bne, ptr %i.bmz, ptr %i.bna, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.bnf = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bng = load i32, ptr %i.bnf, align 8, !tbaa !244
  %i.bnh = trunc i64 %i.t to i32
  %i.bni = add i32 %i.bng, %i.bnh
  store i32 %i.bni, ptr %i.bnf, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !120
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #38
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !118
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !inline_history !10
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36, !inline_history !10
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !88
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !115
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #36
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14WindowFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #40
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #19

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #20 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #36 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !120
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #39
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #17

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVector7setTypeERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.139", align 16 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !105

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector7setTypeERKSt10shared_ptrIKNS0_4TypeEEE18veloxCheckFailArgs) #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.d = tail call noundef zeroext i1 @_ZNK8facebook5velox4Type10kindEqualsERKSt10shared_ptrIKS1_E(ptr noundef nonnull align 8 dereferenceable(18) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.d, label %bb.g, label %bb.d, !prof !125

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !919
  store ptr %i.b, ptr %2, align 16, !tbaa !88, !noalias !919
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt10shared_ptrIKN8facebook5velox4TypeEENS0_9formatterISB_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.e, align 8, !tbaa !88, !noalias !919
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.f, align 16, !tbaa !88, !noalias !919
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customISt10shared_ptrIKN8facebook5velox4TypeEENS0_9formatterISB_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.g, align 8, !tbaa !88, !noalias !919
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.34, i64 140, i64 255, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !919
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10BaseVector7setTypeERKSt10shared_ptrIKNS0_4TypeEEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.34) #39
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !198
  store ptr %i.n, ptr %i.b, align 8, !tbaa !198
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 4 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEaSERKS4_.exit, label %bb.h

end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm:bb.a
._crit_edge:                                      ; preds = %.loopexit, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit
  %.0112152 = phi ptr [ %i.bx, %_ZNSt16allocator_traitsISaIhEE8allocateERS0_m.exit ], [ %.0112151, %.loopexit ] ; 2 uses
  %i.eh = load i64, ptr %i.ar, align 8, !tbaa !377
  %i.ei = and i64 %i.eh, 255
  %i.ej = shl nuw i64 1, %i.ei
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.w
  %.0.in = phi i64 [ %i.ej, %._crit_edge ], [ %.0, %bb.w ]
  %.0 = add i64 %.0.in, -1                        ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0112152, i64 %.0
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !88  ; 3 uses
  %i.em = icmp eq i8 %i.el, 0
  br i1 %i.em, label %bb.w, label %bb.x, !llvm.loop !1637

bb.x:                                             ; preds = %bb.w
  %i.en = load ptr, ptr %0, align 8, !tbaa !373
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.0 ; 2 uses
  %i.ep = zext nneg i8 %i.el to i64
  %i.eq = add nsw i64 %i.ep, -1                   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = icmp ne ptr %i.eo, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.et)
  %i.eu = icmp ult i8 %i.el, 17
  call void @llvm.assume(i1 %i.eu)
  %i.ev = lshr i64 %i.eq, 1
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = or i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !159
  br i1 %.not, label %bb.y, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %.0112152, i64 noundef %4) #38
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.z

bb.z:                                             ; preds = %bb.i, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE0_Lb1EED2Ev.exit, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit
  store i8 1, ptr %i.j, align 1, !tbaa !160
  %i.ez = load i64, ptr %i.d, align 8, !tbaa !159
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !470 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = load i64, ptr %i.e, align 8, !tbaa !159
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fb) #36
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !472, !range !126, !noundef !127
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1646, !nonnull !127
  %i.e = load i8, ptr %i.d, align 1, !tbaa !160, !range !126, !noundef !127
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !125

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1647, !nonnull !127, !align !304
  %i.i = load i64, ptr %i.h, align 8, !tbaa !159
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1648, !nonnull !127, !align !304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !470
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1649, !nonnull !127, !align !304
  %i.o = load i64, ptr %i.n, align 8, !tbaa !159
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1650 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1651, !nonnull !127, !align !304
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !318
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1652, !nonnull !127, !align !304
  %i.w = load i64, ptr %i.v, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1648, !nonnull !127, !align !304
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !470
  store ptr %i.z, ptr %i.q, align 8, !tbaa !373
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1653, !nonnull !127, !align !304
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !159 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !377
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !377
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #36
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #31

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #32

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.bmi.bzhi.64(i64, i64) #31

; Function Attrs: nounwind
declare void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.514") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #30 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !377  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !373   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nsw i32 %.sroa.040.0, -1
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !458
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !458
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !125, !llvm.loop !1654

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !1655

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !88
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !373
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !377
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !88
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !477 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !477
  br label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !1656

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !457
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !88
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.5) #43
  unreachable

_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit: ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load ptr, ptr %5, align 8, !tbaa !458
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !458
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !1657
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !159
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !377 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !377
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE13insertAtBlankIJS8_EEEvNS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !1659
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !1662
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #33

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 15
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 14, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

bb.d:                                             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1
  %i.k = udiv i64 %i.j, 12
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = sub nuw nsw i64 64, %i.l                 ; 2 uses
  %i.n = shl i64 12, %i.m
  %i.o = icmp ugt i64 %i.n, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 1, %i.m
  br label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE25computeChunkCountAndScaleEmbb.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn21.i = phi i64 [ %i.p, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.0.pn.i = phi i64 [ 12, %bb.f ], [ %spec.select.i, %bb.c ], [ 2, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !377
  %i.s = lshr i64 %i.r, 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE10rehashImplEmmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %2, i64 noundef %3, i64 noundef %.pn21.i, i64 noundef %.0.pn.i)
  ret void
}

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox4bits8andRangeILb1EEEvPmPKmS5_ii:bb.a

bb.g:                                             ; preds = %._crit_edge.i
  %i.bj = ashr i32 %4, 6
  %i.bk = and i32 %4, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %notmask.i36.i = shl nsw i64 -1, %i.bl          ; 2 uses
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bm ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !159
  %i.bp = and i64 %i.bo, %notmask.i36.i
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !159
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !159
  %i.bu = or i64 %i.bt, %notmask.i36.i
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %i.br, %i.bv
  %i.bx = or disjoint i64 %i.bw, %i.bp
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !159
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_8andRangeILb1EEEvPmPKmS6_iiEUlimE_ZNS3_ILb1EEEvS4_S6_S6_iiEUliE_EEviiT_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox8TypeKindENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::formatter.578", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 32768, ptr %3, align 8, !tbaa !290
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 32, ptr %i.b, align 4, !tbaa !88
  %scevgep.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.c, align 4, !tbaa !292
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 8, !tbaa !88
  %i.e = load ptr, ptr %1, align 8, !tbaa !294    ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !295  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = icmp samesign eq i64 %i.g, 0
  br i1 %i.i, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.e, align 1, !tbaa !88
  %i.k = icmp eq i8 %i.j, 125
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_13parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !294
  %.pre6 = load i64, ptr %i.f, align 8, !tbaa !295
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseERNS0_13parse_contextIcEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.m = phi i64 [ %.pre6, %bb.c ], [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.l, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.a ]
  %i.o = ptrtoint ptr %.0.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  store ptr %i.r, ptr %1, align 8, !tbaa !294
  %i.s = sub i64 %i.m, %i.q
  store i64 %i.s, ptr %i.f, align 8, !tbaa !295
  %i.t = load i8, ptr %0, align 1, !tbaa !390
  %i.u = call ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef signext %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNK3fmt3v119formatterIN8facebook5velox8TypeKindEcvE6formatINS0_7contextEEEDaS4_RT_(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.fmt::v11::format_specs", align 4 ; 7 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox12TypeKindName6toNameENS0_8TypeKindE(i8 noundef signext %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !290
  %i.e = and i32 %i.d, 960
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !297
  %i.f = tail call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 16, i1 false)
  %i.g = load i32, ptr %3, align 4, !tbaa !290    ; 2 uses
  %i.h = lshr i32 %i.g, 6
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.l, ptr %i.k, align 4, !tbaa !115
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i: ; preds = %bb.d, %bb.c
  %i.m = lshr i32 %i.g, 8
  %i.n = and i32 %i.m, 3                          ; 2 uses
  %.not.i17.i = icmp eq i32 %i.n, 0
  br i1 %.not.i17.i, label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = tail call noundef i32 @_ZN3fmt3v116detail16get_dynamic_specINS0_7contextEEEiNS0_11arg_id_kindERKNS1_7arg_refINT_9char_typeEEERS6_(i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
  store i32 %i.q, ptr %i.p, align 4, !tbaa !115
  br label %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i

_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i: ; preds = %bb.e, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit.i
  %.sroa.0.0.copyload.i19.i = load ptr, ptr %2, align 8, !tbaa !297
  %i.r = call ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %.sroa.0.0.copyload.i19.i, ptr %i.c, i64 %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit

_ZNK3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE6formatINS0_7contextEEEDTcldtfp0_3outEERKS4_RT_.exit: ; preds = %bb.b, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i
  %.sroa.015.0.i = phi ptr [ %i.r, %_ZN3fmt3v116detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_.exit18.i ], [ %i.f, %bb.b ]
  ret ptr %.sroa.015.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.579) align 8 %2, ptr noundef byval(%class.anon.580) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !526, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !527
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1806
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1807, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1808, !nonnull !127, !align !304
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !452
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !115
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !159
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !159
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1802

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !526, !range !126, !noundef !127
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !527
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !159
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1806
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1807, !nonnull !127, !align !304
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !246
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1808, !nonnull !127, !align !304
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !252
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !452
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !115
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !159
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !159
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1802

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !529, !range !126, !noundef !127
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !530
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !159
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !252
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !452
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !252
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !452
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !115
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !159
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !159
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1803

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !115
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !159
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !159
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1804

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1805

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !526, !range !126, !noundef !127
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !527
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !159
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1806
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1807, !nonnull !127, !align !304
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !246
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1808, !nonnull !127, !align !304
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !252
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !452
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !115
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !159
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !159
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1802

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.581) align 8 %2, ptr noundef byval(%class.anon.582) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !533, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !534
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1815
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1816, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !252
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !452
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !159
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1809

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !533, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !534
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1815
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1816, !nonnull !127, !align !304
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !252
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !452
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !159
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1809

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !536, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !537
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !252
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !452
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !252 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !452 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !159
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !159
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !159
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !159
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !159
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !159
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !159
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1810

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !159
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !159
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1811

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !159
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !159
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1812

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !159
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !159
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1813

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1814

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !533, !range !126, !noundef !127
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !534
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1815
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1816, !nonnull !127, !align !304
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !252
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !452
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !159
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !159
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1809

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.585) align 8 %2, ptr noundef byval(%class.anon.586) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !554, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !555
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !550, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !551, !nonnull !127, !align !304
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !552, !nonnull !127, !align !304
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !115
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !252
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !252
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !159
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !88
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1817

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !554, !range !126, !noundef !127
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !555
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !159
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !550, !nonnull !127, !align !304
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !551, !nonnull !127, !align !304
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !552, !nonnull !127, !align !304
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !246
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !115
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !252
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !252
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !159
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !88
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !88
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1817

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1818

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !554, !range !126, !noundef !127
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !555
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !159
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !550, !nonnull !127, !align !304
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !551, !nonnull !127, !align !304
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !552, !nonnull !127, !align !304
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !246
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !115
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !252
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !252
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !159
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !88
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !88
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1817

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !557, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !550, !nonnull !127, !align !304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !115
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !551, !nonnull !127, !align !304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !552, !nonnull !127, !align !304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !252
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !159
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !88
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !88
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1819

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !550, !nonnull !127, !align !304
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !246
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !115
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !551, !nonnull !127, !align !304
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !252
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !552, !nonnull !127, !align !304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !159
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !88
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !88
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1820

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.587) align 8 %2, ptr noundef byval(%class.anon.588) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !540, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !541
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1827
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1828, !nonnull !127, !align !304
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !452
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !159
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1821

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !540, !range !126, !noundef !127
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !541
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !159
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !1827
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1828, !nonnull !127, !align !304
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !452
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !159
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !159
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1821

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !543, !range !126, !noundef !127
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !544
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !159
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !452
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !452 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !159 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !159
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1823

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !159
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1824

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !159
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1825

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1826

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !540, !range !126, !noundef !127
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !541
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !159
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1827
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1828, !nonnull !127, !align !304
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !452
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !159
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !159
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1821

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.590, align 8            ; 7 uses
  %7 = alloca %class.anon.589, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1829

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !1832, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1833
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !573
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !574, !nonnull !127, !align !304 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !564  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !565, !range !126
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !566  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !452 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !159
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !159
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !1830

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !567, !range !126, !noundef !127
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !568
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !159
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !159
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !1830

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_:bb.a
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !578, !range !126, !noundef !127
  %i.s = load ptr, ptr %2, align 8, !tbaa !577
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.r, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = or i32 %1, 63
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 %i.ab, %i.ad
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

bb.e:                                             ; preds = %bb.b
  %.not35 = icmp eq i32 %1, %i.d
  br i1 %.not35, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ashr i32 %1, 6
  %i.ag = and i32 %1, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %notmask.i38 = shl nsw i64 -1, %i.ah
  %i.ai = xor i64 %notmask.i38, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !578, !range !126, !noundef !127
  %i.al = load ptr, ptr %2, align 8, !tbaa !577
  %i.am = sext i32 %i.af to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !159
  %i.ap = xor i8 %i.ak, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = xor i64 %i.ao, %i.ar
  %i.at = and i64 %i.as, %i.ai                    ; 2 uses
  %.not.i39 = icmp eq i64 %i.at, 0
  br i1 %.not.i39, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40: ; preds = %bb.f
  %i.au = or i32 %1, 63
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 true)
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = sub nuw nsw i32 %i.au, %i.aw
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread: ; preds = %bb.f, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !126
  %i.ba = load ptr, ptr %3, align 8
  %i.bb = xor i8 %i.az, 1
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = sub nsw i64 0, %i.bc                    ; 2 uses
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit: ; preds = %bb.g, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread
  %.0.in = phi i32 [ %i.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40.thread ], [ %.0, %bb.g ] ; 2 uses
  %.0 = add nsw i32 %.0.in, -64                   ; 3 uses
  %.not36 = icmp slt i32 %.0, %i.c
  br i1 %.not36, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %i.be = ashr exact i32 %.0, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !159 ; 2 uses
  %.not.i41 = icmp eq i64 %i.bh, %i.bd
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bh, %i.bd
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %.0.in, %i.bl
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit
  %.not37 = icmp eq i32 %0, %i.c
  br i1 %.not37, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bn = sdiv i32 %0, 64                         ; 2 uses
  %i.bo = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %notmask.i.i42 = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask.i.i42, -1
  %i.br = sub nsw i32 64, %i.bo
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !578, !range !126, !noundef !127
  %i.bw = load ptr, ptr %2, align 8, !tbaa !577
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !159
  %i.ca = xor i8 %i.bv, 1
  %i.cb = zext nneg i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = xor i64 %i.bz, %i.cc
  %i.ce = and i64 %i.cd, %i.bt                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ce, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = shl nsw i32 %i.bn, 6
  %i.cg = or disjoint i32 %i.cf, 63
  %i.ch = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = sub nuw nsw i32 %i.cg, %i.ci
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split: ; preds = %bb.d, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40, %bb.h, %bb.j
  %.sink61 = phi ptr [ %2, %bb.j ], [ %3, %bb.h ], [ %2, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %2, %bb.d ]
  %.sink = phi i32 [ %i.cj, %bb.j ], [ %i.bm, %bb.h ], [ %i.ax, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit40 ], [ %i.ae, %bb.d ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sink61, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !246, !nonnull !127, !align !305
  store i32 %.sink, ptr %i.cl, align 4, !tbaa !115
  br label %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit

_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split, %bb.i, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ true, %bb.i ], [ true, %bb.c ], [ false, %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUlimE_clEim.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.621) align 8 %2, ptr noundef byval(%class.anon.622) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !464, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !465
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1889
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !452
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1890, !nonnull !127, !align !304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !159
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1883

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !464, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !465
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1889
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !452
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !1890, !nonnull !127, !align !304
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !252
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !159
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1883

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !468, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !469
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !127, !align !304 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !452
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !252
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !452 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !252 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !159
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !159
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !159
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !159
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !159
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !159
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !159
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !1884

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !159
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !159
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1885

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !159
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !159
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1886

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !159
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !159
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1887

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1888

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !464, !range !126, !noundef !127
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !465
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !159
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1889
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !452
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !1890, !nonnull !127, !align !304
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !252
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !159
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !159
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1883

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorImE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN8facebook5velox10FlatVectorIiE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(184) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %2 = alloca %"class.std::optional.103", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i8, ptr %i.c, align 4, !tbaa !236
  %i.e = and i8 %i.d, 2
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit:      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = load atomic i32, ptr %i.f acquire, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.q, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread

_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread: ; preds = %bb.b, %_ZNK8facebook5velox6Buffer9isMutableEv.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !275
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !382
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.n, align 4, !tbaa !287
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %1, i64 noundef %i.k, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !238
  %.not10 = icmp eq ptr %i.o, null
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.p = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i8, ptr %i.q, align 4, !tbaa !236
  %i.s = and i8 %i.r, 2
  %.not.i5 = icmp eq i8 %i.s, 0
  br i1 %.not.i5, label %bb.e, label %bb.d, !prof !125

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.i, align 8, !tbaa !275
  %i.u = zext i32 %i.t to i64
  %i.v = shl i64 %i.u, 34
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !233
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !269
  %i.aa = ashr exact i64 %i.v, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 4 %i.z, i64 %i.aa, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.thread
  %i.ac = load ptr, ptr %1, align 8, !tbaa !238   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = atomicrmw add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !238 ; 7 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !238
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.i
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %.noexc.i.i unwind label %bb.j, !inline_history !6

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !232
  %.not.i.i.i = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !120
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %..i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.j, !inline_history !6

bb.j:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !238 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.av = load i8, ptr %i.au, align 4, !tbaa !236
  %i.aw = and i8 %i.av, 2
  %.not.i6 = icmp eq i8 %i.aw, 0
  br i1 %.not.i6, label %bb.l, label %bb.k, !prof !125

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc7 unwind label %bb.o

.noexc7:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !233
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !269
  %i.ba = load ptr, ptr %1, align 8, !tbaa !238   ; 7 uses
  %.not.i8 = icmp eq ptr %i.ba, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = atomicrmw sub ptr %i.bb, i32 1 acq_rel, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.m
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8
  invoke void %i.bg(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %.noexc.i unwind label %bb.n, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !232
  %.not.i.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !120
  %..i.i = select i1 %.not.i.i9, i64 8, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %..i.i
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ba)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.n, !inline_history !6

bb.n:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.l, %bb.m, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.ab, %bb.f ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %_ZNK8facebook5velox6Buffer9isMutableEv.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !269
  ret ptr %i.bq
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !566 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !126
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !159
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !567, !range !126, !noundef !127 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !569
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !115
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !159
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !566
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !566 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !567, !range !126
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !568
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !569
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !115
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !115
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !269
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %indvars.iv
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !115
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !252 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !88
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !252
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !88
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !1974

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !239
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !248
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.630) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.631) align 8 %2, ptr noundef byval(%class.anon.632) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !581, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !582
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1979
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1980, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1981, !nonnull !127, !align !304
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !269
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !115
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !115
  %i.at = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.as, ptr %i.at, align 4, !tbaa !115
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1975

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !581, !range !126, !noundef !127
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !582
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !159
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1979
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !1980, !nonnull !127, !align !304
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !246
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1981, !nonnull !127, !align !304
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !246
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !269
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !115
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !115
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !115
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1975

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !584, !range !126, !noundef !127
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !585
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !159
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !246
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !269
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !246
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !269
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !115
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !115
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.020.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !115
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1976

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !115
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !115
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dz
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !115
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !1977

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1978

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !581, !range !126, !noundef !127
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !582
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !159
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1979
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !1980, !nonnull !127, !align !304
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !246
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1981, !nonnull !127, !align !304
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !246
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !269
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !115
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !115
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fk
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !115
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1975

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.633) align 8 %2, ptr noundef byval(%class.anon.634) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !588, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !589
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1988
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1989, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !269
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !115
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1982

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !588, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !589
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !1988
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1989, !nonnull !127, !align !304
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !246
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 128
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !269
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !115
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !115
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !1982

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !591, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !592
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !246
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !269
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !246 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !269 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <8 x i32>, ptr %i.di, align 4, !tbaa !115
  %wide.load69 = load <8 x i32>, ptr %i.dj, align 4, !tbaa !115
  %wide.load70 = load <8 x i32>, ptr %i.dk, align 4, !tbaa !115
  %wide.load71 = load <8 x i32>, ptr %i.dl, align 4, !tbaa !115
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <8 x i32> %wide.load, ptr %i.dm, align 4, !tbaa !115
  store <8 x i32> %wide.load69, ptr %i.dn, align 4, !tbaa !115
  store <8 x i32> %wide.load70, ptr %i.do, align 4, !tbaa !115
  store <8 x i32> %wide.load71, ptr %i.dp, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1983

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <8 x i32>, ptr %i.ds, align 4, !tbaa !115
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dr
  store <8 x i32> %wide.load74, ptr %i.dt, align 4, !tbaa !115
  %index.next75 = add nuw i64 %index73, 8         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1984

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !115
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.020.i
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !115
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !1985

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !115
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !115
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1986

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1987

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !588, !range !126, !noundef !127
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !589
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1988
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1989, !nonnull !127, !align !304
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !246
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !269
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !115
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !115
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1982

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.635) align 8 %2, ptr noundef byval(%class.anon.636) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !607, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !608
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !603, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !604, !nonnull !127, !align !304
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !605, !nonnull !127, !align !304
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !115
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !252
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !252
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !159
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !88
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1990

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !607, !range !126, !noundef !127
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !608
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !159
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !603, !nonnull !127, !align !304
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !604, !nonnull !127, !align !304
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !605, !nonnull !127, !align !304
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !246
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !115
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !252
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !252
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !159
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !88
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !88
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !1990

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !1991

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !607, !range !126, !noundef !127
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !608
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !159
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !603, !nonnull !127, !align !304
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !604, !nonnull !127, !align !304
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !605, !nonnull !127, !align !304
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !246
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !115
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !252
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !252
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !159
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !88
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !88
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !1990

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !610, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !611
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !603, !nonnull !127, !align !304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !115
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !604, !nonnull !127, !align !304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !605, !nonnull !127, !align !304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !252
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !159
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !88
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !88
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !1992

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !603, !nonnull !127, !align !304
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !246
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !115
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !604, !nonnull !127, !align !304
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !252
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !605, !nonnull !127, !align !304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !159
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !88
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !88
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !1993

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.637) align 8 %2, ptr noundef byval(%class.anon.638) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !595, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !596
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2000
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2001, !nonnull !127, !align !305
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !269
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i32, ptr %i.ae, align 4, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i32 %.pre.i, ptr %gep.i, align 4, !tbaa !115
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !1994

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !595, !range !126, !noundef !127
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !596
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !159
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2000
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2001, !nonnull !127, !align !305
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !269
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [4 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i32, ptr %i.bh, align 4, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [4 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i32 %.pre.i39, ptr %gep.i41, align 4, !tbaa !115
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !1994

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !598, !range !126, !noundef !127
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !599
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !127, !align !305 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 128 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !159
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !269
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i32, ptr %i.by, align 4, !tbaa !115
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !269 ; 3 uses
  %.pre.i44 = load i32, ptr %i.by, align 4, !tbaa !115 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i34                   ; 2 uses
  %i.cu = shl nsw i34 %i.ct, 2
  %i.cv = trunc i64 %i.cs to i34
  %i.cw = add i34 %i.ct, %i.cv
  %i.cx = shl i34 %i.cw, 2
  %i.cy = icmp slt i34 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 32
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <8 x i32> poison, i32 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 30
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <8 x i32> %broadcast.splat80, ptr %i.dg, align 4, !tbaa !115
  store <8 x i32> %broadcast.splat80, ptr %i.dh, align 4, !tbaa !115
  store <8 x i32> %broadcast.splat80, ptr %i.di, align 4, !tbaa !115
  store <8 x i32> %broadcast.splat80, ptr %i.dj, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1995

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 30
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <8 x i32> %broadcast.splat80, ptr %i.do, align 4, !tbaa !115
  %index.next82 = add nuw i64 %index81, 8         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1996

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 30
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i32 %.pre.i44, ptr %i.dr, align 4, !tbaa !115
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !1997

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [4 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i32 %.pre24.i, ptr %gep.i46, align 4, !tbaa !115
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !1998

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !1999

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !595, !range !126, !noundef !127
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !596
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !159
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2000
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2001, !nonnull !127, !align !305
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !269
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i32, ptr %i.eq, align 4, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i32 %.pre.i52, ptr %gep.i54, align 4, !tbaa !115
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !1994

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.640, align 8            ; 7 uses
  %7 = alloca %class.anon.639, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2002

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2005, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2006
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !615
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !616, !nonnull !127, !align !304 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !564  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !565, !range !126
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !566  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !269 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !115
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !115
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !2003

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !567, !range !126, !noundef !127
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, label %.preheader.split.us.split.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader: ; preds = %.preheader.split.us.split
  %i.al = sext i32 %i.m to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.aa, i64 %i.al
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19
  %.011.us.us20 = phi i64 [ %i.as, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19.preheader ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %i.an = load i32, ptr %i.x, align 8, !tbaa !568
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !115
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.am
  store i32 %i.aq, ptr %gep, align 4, !tbaa !115
  %i.ar = add i64 %.011.us.us20, -1
  %i.as = and i64 %i.ar, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.as, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !2003

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.au = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.be, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.aw = or disjoint i64 %i.av, %i.au            ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox10FlatVectorIiE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE:bb.a
bb.p:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bn)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit: ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.i.i.i, %bb.p
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !393 ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !393 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit, %.lr.ph
  %.sroa.05.08 = phi ptr [ %i.dn, %.lr.ph ], [ %i.de, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.dh = load ptr, ptr %.sroa.05.08, align 8, !tbaa !238 ; 2 uses
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2042
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.di) ; 2 uses
  %i.dk = lshr i64 %i.dj, 24
  %i.dl = or i64 %i.dk, 128
  %i.dm = add i64 %i.dj, %i.di
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.514") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 %i.dm, i64 %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2042
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.df
  br i1 %i.do, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIiEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats", align 4 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !162
  %i.b = load ptr, ptr %3, align 8, !tbaa !238
  store ptr %i.b, ptr %7, align 8, !tbaa !238
  store ptr null, ptr %3, align 8, !tbaa !238
  %i.c = load i32, ptr %4, align 4, !tbaa !115
  %i.d = load ptr, ptr %5, align 8, !tbaa !238
  store ptr %i.d, ptr %8, align 8, !tbaa !238
  store ptr null, ptr %5, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 0, ptr %i.e, align 4, !tbaa !287
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i8 0, ptr %i.f, align 4, !tbaa !287
  invoke void @_ZN8facebook5velox10FlatVectorIiEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIiEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(16) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.g = load ptr, ptr %8, align 8, !tbaa !238    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !120
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !238    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !6

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !120
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !6

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.655) align 8 %2, ptr noundef byval(%class.anon.656) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !397, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !398
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2049
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !269
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2050, !nonnull !127, !align !304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !246
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !115
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !115
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2043

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !397, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !398
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2049
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !269
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2050, !nonnull !127, !align !304
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !246
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !115
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bs
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !115
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2043

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !400, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !401
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !127, !align !304 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !269
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !246
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !269 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !246 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 32
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <8 x i32>, ptr %i.ds, align 4, !tbaa !115
  %wide.load69 = load <8 x i32>, ptr %i.dt, align 4, !tbaa !115
  %wide.load70 = load <8 x i32>, ptr %i.du, align 4, !tbaa !115
  %wide.load71 = load <8 x i32>, ptr %i.dv, align 4, !tbaa !115
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <8 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !115
  store <8 x i32> %wide.load69, ptr %i.dx, align 4, !tbaa !115
  store <8 x i32> %wide.load70, ptr %i.dy, align 4, !tbaa !115
  store <8 x i32> %wide.load71, ptr %i.dz, align 4, !tbaa !115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2044

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <8 x i32>, ptr %i.ee, align 4, !tbaa !115
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ed
  store <8 x i32> %wide.load74, ptr %i.ef, align 4, !tbaa !115
  %index.next75 = add nuw i64 %index73, 8         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2045

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !115
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.eh
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !115
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2046

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !115
  %i.er = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.eo
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !115
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2047

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2048

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !397, !range !126, !noundef !127
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !398
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !159
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2049
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !269
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !2050, !nonnull !127, !align !304
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !246
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !115
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.ft
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !115
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2043

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIiE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.181", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2056 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2057, !nonnull !127, !align !304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.o = sext i32 %1 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  store i32 -1, ptr %i.q, align 4, !tbaa !115
  br label %bb.j

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.a, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !269
  %i.t = sext i32 %1 to i64                       ; 4 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !115  ; 3 uses
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %bb.c, label %bb.f, !prof !105

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2058
  store i32 %i.v, ptr %2, align 16, !tbaa !88, !alias.scope !2059, !noalias !2058
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.x, align 16, !tbaa !88, !alias.scope !2059, !noalias !2058
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 37, i64 17, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2058
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !88
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2060, !nonnull !127, !align !304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !252
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2061, !nonnull !127, !align !304
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2062, !nonnull !127, !align !304
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246
  %i.an = getelementptr i8, ptr %i.b, i64 160
  %.val = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.t
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !115 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.t
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !115 ; 2 uses
  %.not3.i = icmp sgt i32 %i.ap, %i.ar
  br i1 %.not3.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2063, !nonnull !127, !align !305
  %i.au = load i32, ptr %i.at, align 4, !tbaa !115
  %i.av = sext i32 %i.ap to i64
  %i.aw = sext i32 %i.au to i64
  %i.ax = add i32 %i.ar, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.av, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %.0194.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.i ] ; 2 uses
  %i.ay = sub nsw i64 %indvars.iv.i, %i.aw        ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !159
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not1.i = icmp eq i64 %i.be, 0
  br i1 %.not1.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bf = add nsw i32 %.0194.i, 1                 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, %i.v
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit

bb.i:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi i32 [ %.0194.i, %.lr.ph.i ], [ %i.bf, %bb.g ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ax, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sink.i = phi i32 [ %i.bh, %bb.h ], [ -1, %bb.f ], [ -1, %bb.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.t
  store i32 %.sink.i, ptr %i.bi, align 4, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIiEEviPKmiPKiS9_T_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIlED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.d = load i8, ptr %i.c, align 1, !tbaa !376
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !377  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.i = icmp ult i64 %i.g, 256
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.g, 255                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.k, align 8, !tbaa !159
  store i64 %i.j, ptr %i.f, align 8, !tbaa !377
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.g, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.m = load i8, ptr %i.h, align 1, !tbaa !88
  %i.n = icmp eq i64 %i.l, 0
  %i.o = shl i8 %i.m, 3
  %i.p = and i8 %i.o, 120
  %narrow.i.i.i.i = add nuw i8 %i.p, 16
  %i.q = zext i8 %narrow.i.i.i.i to i64
  %i.r = shl i64 128, %i.l
  %.0.i.i.i.i.i = select i1 %i.n, i64 %i.q, i64 %i.r
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !373
  store i64 0, ptr %i.f, align 8, !tbaa !377
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %.0.i.i.i.i.i) #36
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit: ; preds = %bb.a, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !378  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !379  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost13intrusive_ptrIN8facebook5velox6BufferEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5boost13intrusive_ptrIN8facebook5velox6BufferEEEEvPT_.exit.i.i.i ], [ %i.t, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEED2Ev.exit ] ; 2 uses
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !238 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKS1_PKiEUlT_E3_EEvSC_:bb.a
._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge: ; preds = %bb.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !566 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bc = load i8, ptr %i.ao, align 1, !range !126
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i.i = select i1 %.pre10, i1 true, i1 %i.bd
  br i1 %or.cond.i.i, label %.split.i, label %bb.k

.split.i:                                         ; preds = %bb.j
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 6
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !159
  %i.bi = and i64 %i.be, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bh, %i.bj
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.ap, align 1, !tbaa !567, !range !126, !noundef !127 ; 2 uses
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, label %.split7.i

.split7.i:                                        ; preds = %bb.k
  %i.bn = load ptr, ptr %i.aq, align 8, !tbaa !569
  %i.bo = sext i32 %i.az to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !115
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bw, %i.bu
  %.not.i7.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i7.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i: ; preds = %bb.k
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !159
  %i.bz = and i64 %i.by, 1
  %.not.i6.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i6.i.i, label %bb.p, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i
  %i.ca = load ptr, ptr %i.ar, align 8, !tbaa !566
  br label %bb.l

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i: ; preds = %.split.i
  %i.cb = load ptr, ptr %i.ar, align 8, !tbaa !566 ; 2 uses
  br i1 %.pre10, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cc = phi ptr [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ]
  %.pre = load i8, ptr %i.ap, align 1, !tbaa !567, !range !126
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i
  %i.cd = phi i8 [ %i.bl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %.pre, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ]
  %i.ce = phi ptr [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread.i ], [ %i.cc, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i._crit_edge ] ; 2 uses
  %i.cf = trunc nuw i8 %i.cd to i1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load i32, ptr %i.au, align 8, !tbaa !568
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.aq, align 8, !tbaa !569
  %i.ci = sext i32 %i.az to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !115
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge, %bb.n, %bb.m, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i
  %i.cl = phi ptr [ %i.ce, %bb.n ], [ %i.ce, %bb.m ], [ %i.cb, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.bb, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %.0.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cg, %bb.m ], [ %i.az, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i ], [ %i.az, %._ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i_crit_edge ]
  %i.cm = sext i32 %.0.i.i.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !273
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !159
  %i.cr = load ptr, ptr %i.at, align 8, !tbaa !252 ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %i.cs = trunc i64 %indvars.iv to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = lshr i64 %indvars.iv, 3
  %i.cw = and i64 %i.cv, 536870911
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !88
  %i.cz = or i8 %i.cy, %i.cu
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !88
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

bb.p:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i, %.split7.i, %.split.i
  %i.da = load ptr, ptr %i.at, align 8, !tbaa !252
  %i.db = and i64 %indvars.iv, 7
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88
  %i.de = lshr i64 %indvars.iv, 3
  %i.df = and i64 %i.de, 536870911
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !88
  %i.di = and i8 %i.dh, %i.dd
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !88
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, %bb.o, %bb.p
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !2272

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.dj = load ptr, ptr %0, align 8, !tbaa !239
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !247
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !248
  tail call void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E3_EEvPKmiibSD_(ptr noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i1 noundef zeroext true, ptr noundef nonnull byval(%class.anon.705) align 8 %1)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E3_clIiEEDaSB_.exit, %bb.h, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.706) align 8 %2, ptr noundef byval(%class.anon.707) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !675, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !676
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2277
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !2278, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2279, !nonnull !127, !align !304
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !252
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !273
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.av, %bb.d ] ; 3 uses
  %i.am = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.an = or disjoint i64 %i.am, %i.ag            ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !115
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !159
  %i.at = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  store i64 %i.as, ptr %i.at, align 8, !tbaa !159
  %i.au = add nsw i64 %.011.i, -1
  %i.av = and i64 %i.au, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.av, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2273

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = sdiv i32 %0, 64                         ; 2 uses
  %i.ax = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ay = zext nneg i32 %i.ax to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.ay
  %i.az = xor i64 %notmask.i.i35, -1
  %i.ba = sub nsw i32 64, %i.ax
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl i64 %i.az, %i.bb
  %i.bd = load i8, ptr %2, align 8, !tbaa !675, !range !126, !noundef !127
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !676
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !159
  %i.bj = xor i8 %i.bd, 1
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = xor i64 %i.bi, %i.bl
  %i.bn = and i64 %i.bm, %i.bc                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bn, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = shl nsw i32 %i.aw, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2277
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !2278, !nonnull !127, !align !304
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !246
  %i.bu = sext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !2279, !nonnull !127, !align !304
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !252
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !273
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bn, %.preheader.i37 ], [ %i.cj, %bb.g ] ; 3 uses
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.cb = or disjoint i64 %i.ca, %i.bu            ; 2 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !115
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !159
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cb
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !159
  %i.ci = add i64 %.011.i38, -1
  %i.cj = and i64 %i.ci, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.cj, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2273

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.ck = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.ck, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.cl = load i8, ptr %3, align 8, !tbaa !678, !range !126, !noundef !127
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !679
  %i.co = xor i8 %i.cl, 1
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.cy = phi i32 [ %i.ck, %.lr.ph ], [ %i.ei, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.cy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cz = sdiv i32 %.051, 64                      ; 3 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !159
  %i.dd = xor i64 %i.dc, %i.cq                    ; 2 uses
  switch i64 %i.dd, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.de = shl nsw i32 %i.cz, 6
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.dg = sext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !252
  %i.di = load ptr, ptr %i.cx, align 8, !tbaa !273
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dj = shl nsw i32 %i.cz, 6                    ; 2 uses
  %i.dk = add nuw i32 %i.dj, 64
  %i.dl = sext i32 %i.dk to i64
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.i
  %i.dm = sext i32 %i.dj to i64
  %i.dn = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !252
  %i.dp = load ptr, ptr %i.cx, align 8, !tbaa !273
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph21.i
  %.020.i = phi i64 [ %i.dm, %.lr.ph21.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.020.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !115
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !159
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %.020.i
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !159
  %i.dw = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dl
  br i1 %i.dx, label %bb.j, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2274

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.01519.i = phi i64 [ %i.dd, %.lr.ph.i ], [ %i.eh, %bb.k ] ; 3 uses
  %i.dy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.dz = or disjoint i64 %i.dy, %i.dg            ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !115
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !159
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dz
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !159
  %i.eg = add i64 %.01519.i, -1
  %i.eh = and i64 %i.eg, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eh, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !2275

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %bb.j, %bb.k, %bb.h, %bb.i
  %i.ei = add nsw i32 %i.cy, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.ei, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2276

bb.l:                                             ; preds = %._crit_edge
  %i.ej = ashr i32 %1, 6
  %i.ek = and i32 %1, 63
  %i.el = zext nneg i32 %i.ek to i64
  %notmask.i42 = shl nsw i64 -1, %i.el
  %i.em = xor i64 %notmask.i42, -1
  %i.en = load i8, ptr %2, align 8, !tbaa !675, !range !126, !noundef !127
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !676
  %i.eq = sext i32 %i.ej to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !159
  %i.et = xor i8 %i.en, 1
  %i.eu = zext nneg i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = and i64 %i.ew, %i.em                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ex, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.l
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2277
  %i.fb = load ptr, ptr %i.ey, align 8, !tbaa !2278, !nonnull !127, !align !304
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !246
  %i.fd = sext i32 %i.d to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !2279, !nonnull !127, !align !304
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !252
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !273
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ex, %.preheader.i44 ], [ %i.fs, %bb.m ] ; 3 uses
  %i.fj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fk = or disjoint i64 %i.fj, %i.fd            ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !115
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !159
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.fk
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !159
  %i.fr = add nsw i64 %.011.i45, -1
  %i.fs = and i64 %i.fr, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fs, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2273

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.m, %bb.d, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.708) align 8 %2, ptr noundef byval(%class.anon.709) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !682, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !683
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2286
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2287, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !252
  %i.ag = sext i32 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !273
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !159
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2280

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !682, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !683
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !2286
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2287, !nonnull !127, !align !304
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !252
  %i.bo = sext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !273
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !159
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2280

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !685, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !686
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !252
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !273
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 2 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 6 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !252 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !273 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax, %i.cx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.de, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.df = and i64 %umax, 1                        ; 3 uses
  %n.vec72 = sub nuw i64 %i.db, %i.df             ; 3 uses
  %i.dg = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dh = add nuw i64 %index, %i.cx               ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dh ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %wide.load = load <4 x i64>, ptr %i.di, align 8, !tbaa !159
  %wide.load69 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !159
  %wide.load70 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !159
  %wide.load71 = load <4 x i64>, ptr %i.dl, align 8, !tbaa !159
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  store <4 x i64> %wide.load, ptr %i.dm, align 8, !tbaa !159
  store <4 x i64> %wide.load69, ptr %i.dn, align 8, !tbaa !159
  store <4 x i64> %wide.load70, ptr %i.do, align 8, !tbaa !159
  store <4 x i64> %wide.load71, ptr %i.dp, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec72
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !2281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dr = add nuw i64 %index73, %i.cx             ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.dr
  %wide.load74 = load <4 x i64>, ptr %i.ds, align 8, !tbaa !159
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dr
  store <4 x i64> %wide.load74, ptr %i.dt, align 8, !tbaa !159
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.du, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2282

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.df, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dg, %middle.block ], [ %i.cx, %iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.dy, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.020.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !159
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.020.i
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !159
  %i.dy = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.cw
  br i1 %i.dz, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, !llvm.loop !2283

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.eg, %bb.j ] ; 3 uses
  %i.ea = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eb = or disjoint i64 %i.ea, %i.cs            ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !159
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eb
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !159
  %i.ef = add i64 %.01519.i, -1
  %i.eg = and i64 %i.ef, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.eg, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2284

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eh = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eh, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2285

bb.k:                                             ; preds = %._crit_edge
  %i.ei = ashr i32 %1, 6
  %i.ej = and i32 %1, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %notmask.i42 = shl nsw i64 -1, %i.ek
  %i.el = xor i64 %notmask.i42, -1
  %i.em = load i8, ptr %2, align 8, !tbaa !682, !range !126, !noundef !127
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !683
  %i.ep = sext i32 %i.ei to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !159
  %i.es = xor i8 %i.em, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = and i64 %i.ev, %i.el                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.ew, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !2286
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !2287, !nonnull !127, !align !304
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !252
  %i.fc = sext i32 %i.d to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 144
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.ew, %.preheader.i44 ], [ %i.fl, %bb.l ] ; 3 uses
  %i.ff = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.fg = or disjoint i64 %i.ff, %i.fc            ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !159
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.fg
  store i64 %i.fi, ptr %i.fj, align 8, !tbaa !159
  %i.fk = add nsw i64 %.011.i45, -1
  %i.fl = and i64 %i.fk, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fl, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2280

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E0_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.710) align 8 %2, ptr noundef byval(%class.anon.711) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !701, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !702
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !697, !nonnull !127, !align !304
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !698, !nonnull !127, !align !304
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !699, !nonnull !127, !align !304
  br label %bb.d

bb.d:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.bk, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i ] ; 3 uses
  %i.ah = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true) ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %i.d, %i.ai             ; 2 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !246
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !115
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !252
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !252
  %i.aq = zext i32 %i.an to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 6
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !159
  %i.au = and i64 %i.aq, 63
  %i.av = shl nuw i64 1, %i.au
  %i.aw = and i64 %i.at, %i.av
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  %i.ax = zext i32 %i.aj to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = trunc nuw nsw i64 %i.ah to i8
  %i.bc = and i8 %i.bb, 7
  %i.bd = shl nuw i8 1, %i.bc
  %i.be = or i8 %i.ba, %i.bd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bf = and i64 %i.ax, 7
  %i.bg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !88
  %i.bi = and i8 %i.bh, %i.ba
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i = phi i8 [ %i.bi, %bb.f ], [ %i.be, %bb.e ]
  store i8 %.sink.i.i.i.i, ptr %i.az, align 1, !tbaa !88
  %i.bj = add nsw i64 %.011.i, -1
  %i.bk = and i64 %i.bj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.bk, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2288

bb.g:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = sdiv i32 %0, 64                         ; 2 uses
  %i.bm = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.bn
  %i.bo = xor i64 %notmask.i.i35, -1
  %i.bp = sub nsw i32 64, %i.bm
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl i64 %i.bo, %i.bq
  %i.bs = load i8, ptr %2, align 8, !tbaa !701, !range !126, !noundef !127
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !702
  %i.bv = sext i32 %i.bl to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !159
  %i.by = xor i8 %i.bs, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = xor i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.br                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.cc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = shl nsw i32 %i.bl, 6
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !697, !nonnull !127, !align !304
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !698, !nonnull !127, !align !304
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !699, !nonnull !127, !align !304
  br label %bb.i

bb.i:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %.preheader.i37
  %.011.i38 = phi i64 [ %i.cc, %.preheader.i37 ], [ %i.dn, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40 ] ; 3 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true) ; 2 uses
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = or disjoint i32 %i.ce, %i.cl            ; 2 uses
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !246
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !115
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !252
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !252
  %i.ct = zext i32 %i.cq to i64                   ; 2 uses
  %i.cu = lshr i64 %i.ct, 6
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !159
  %i.cx = and i64 %i.ct, 63
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = and i64 %i.cw, %i.cy
  %.not.i.i.i39 = icmp eq i64 %i.cz, 0
  %i.da = zext i32 %i.cm to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.de = trunc nuw nsw i64 %i.ck to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = or i8 %i.dd, %i.dg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

bb.k:                                             ; preds = %bb.i
  %i.di = and i64 %i.da, 7
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !88
  %i.dl = and i8 %i.dk, %i.dd
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i41 = phi i8 [ %i.dl, %bb.k ], [ %i.dh, %bb.j ]
  store i8 %.sink.i.i.i.i41, ptr %i.dc, align 1, !tbaa !88
  %i.dm = add i64 %.011.i38, -1
  %i.dn = and i64 %i.dm, %.011.i38                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.dn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, label %bb.i, !llvm.loop !2288

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i40, %bb.h, %bb.g
  %i.do = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3354 = icmp sgt i32 %i.do, %i.d
  br i1 %.not3354, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.l

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43, %.lr.ph
  %i.dp = phi i32 [ %i.dr, %.lr.ph ], [ %i.do, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ] ; 2 uses
  %.055 = phi i32 [ %i.dp, %.lr.ph ], [ %i.c, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit43 ]
  %i.dq = sdiv i32 %.055, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.dq)
  %i.dr = add nsw i32 %i.dp, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dr, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph, !llvm.loop !2289

bb.l:                                             ; preds = %._crit_edge
  %i.ds = ashr i32 %1, 6
  %i.dt = and i32 %1, 63
  %i.du = zext nneg i32 %i.dt to i64
  %notmask.i44 = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask.i44, -1
  %i.dw = load i8, ptr %2, align 8, !tbaa !701, !range !126, !noundef !127
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !702
  %i.dz = sext i32 %i.ds to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !159
  %i.ec = xor i8 %i.dw, 1
  %i.ed = zext nneg i8 %i.ec to i64
  %i.ee = sub nsw i64 0, %i.ed
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = and i64 %i.ef, %i.dv                    ; 2 uses
  %.not.i45 = icmp eq i64 %i.eg, 0
  br i1 %.not.i45, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %.preheader.i46

.preheader.i46:                                   ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !697, !nonnull !127, !align !304
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !698, !nonnull !127, !align !304
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !699, !nonnull !127, !align !304
  br label %bb.m

bb.m:                                             ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %.preheader.i46
  %.011.i47 = phi i64 [ %i.eg, %.preheader.i46 ], [ %i.fq, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49 ] ; 3 uses
  %i.en = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47, i1 true) ; 2 uses
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = or disjoint i32 %i.d, %i.eo             ; 2 uses
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !246
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !115
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !252
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !252
  %i.ew = zext i32 %i.et to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 6
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !159
  %i.fa = and i64 %i.ew, 63
  %i.fb = shl nuw i64 1, %i.fa
  %i.fc = and i64 %i.ez, %i.fb
  %.not.i.i.i48 = icmp eq i64 %i.fc, 0
  %i.fd = zext i32 %i.ep to i64                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i.i48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = trunc nuw nsw i64 %i.en to i8
  %i.fi = and i8 %i.fh, 7
  %i.fj = shl nuw i8 1, %i.fi
  %i.fk = or i8 %i.fg, %i.fj
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

bb.o:                                             ; preds = %bb.m
  %i.fl = and i64 %i.fd, 7
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !88
  %i.fo = and i8 %i.fn, %i.fg
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49: ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i50 = phi i8 [ %i.fo, %bb.o ], [ %i.fk, %bb.n ]
  store i8 %.sink.i.i.i.i50, ptr %i.ff, align 1, !tbaa !88
  %i.fp = add nsw i64 %.011.i47, -1
  %i.fq = and i64 %i.fp, %.011.i47                ; 2 uses
  %.not10.i51 = icmp eq i64 %i.fq, 0
  br i1 %.not10.i51, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit, label %bb.m, !llvm.loop !2288

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUlimE_clEim.exit: ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i49, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit.i, %bb.l, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E1_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !704, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !705
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i                       ; 2 uses
  switch i64 %i.j, label %.lr.ph [
    i64 -1, label %bb.b
    i64 0, label %.loopexit
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = shl nsw i32 %1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.o = shl i32 %1, 6                            ; 3 uses
  %i.p = add i32 %i.o, 64
  %i.q = sext i32 %i.p to i64
  %.not24 = icmp eq i32 %i.o, -64
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit
  %.022 = phi i64 [ %i.r, %.lr.ph23 ], [ %i.aw, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit ] ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !697, !nonnull !127, !align !304
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !246
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.022
  %i.y = load i32, ptr %i.x, align 4, !tbaa !115
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !698, !nonnull !127, !align !304
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !699, !nonnull !127, !align !304
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !252
  %i.ad = zext i32 %i.y to i64                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !159
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ag, %i.ai
  %.not.i.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr i64 %.022, 3
  %i.al = and i64 %i.ak, 536870911
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = trunc i64 %.022 to i8
  %i.ap = and i8 %i.ao, 7
  %i.aq = shl nuw i8 1, %i.ap
  %i.ar = or i8 %i.an, %i.aq
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

bb.e:                                             ; preds = %bb.c
  %i.as = and i64 %.022, 7
  %i.at = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !88
  %i.av = and i8 %i.au, %i.an
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit: ; preds = %bb.d, %bb.e
  %.sink.i.i.i = phi i8 [ %i.av, %bb.e ], [ %i.ar, %bb.d ]
  store i8 %.sink.i.i.i, ptr %i.am, align 1, !tbaa !88
  %i.aw = add nuw i64 %.022, 1                    ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.q
  br i1 %i.ax, label %bb.c, label %.loopexit, !llvm.loop !2290

bb.f:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit
  %.01521 = phi i64 [ %i.j, %.lr.ph ], [ %i.ce, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521, i1 true) ; 2 uses
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = or disjoint i32 %i.l, %i.az             ; 2 uses
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !697, !nonnull !127, !align !304
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !246
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !115
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !698, !nonnull !127, !align !304
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !252
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !699, !nonnull !127, !align !304
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252
  %i.bk = zext i32 %i.bf to i64                   ; 2 uses
  %i.bl = lshr i64 %i.bk, 6
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !159
  %i.bo = and i64 %i.bk, 63
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bn, %i.bp
  %.not.i.i17 = icmp eq i64 %i.bq, 0
  %i.br = zext i32 %i.ba to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !88  ; 2 uses
  br i1 %.not.i.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw nsw i64 %i.ay to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = shl nuw i8 1, %i.bw
  %i.by = or i8 %i.bu, %i.bx
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

bb.h:                                             ; preds = %bb.f
  %i.bz = and i64 %i.br, 7
  %i.ca = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !88
  %i.cc = and i8 %i.cb, %i.bu
  br label %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit

_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i.i18 = phi i8 [ %i.cc, %bb.h ], [ %i.by, %bb.g ]
  store i8 %.sink.i.i.i18, ptr %i.bt, align 1, !tbaa !88
  %i.cd = add i64 %.01521, -1
  %i.ce = and i64 %i.cd, %.01521                  ; 2 uses
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %.loopexit, label %bb.f, !llvm.loop !2291

.loopexit:                                        ; preds = %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clImEEDaSB_.exit, %_ZZN8facebook5velox10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENKUlT_E1_clIiEEDaSB_.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_EUlimE_ZNS3_ISE_EEvSG_iibSH_EUliE_EEviiSH_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.712) align 8 %2, ptr noundef byval(%class.anon.713) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !689, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !690
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2298
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !2299, !nonnull !127, !align !304
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !273
  %i.ah = sext i32 %i.d to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ak, %bb.d ] ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ai
  store i64 %.pre.i, ptr %gep.i, align 8, !tbaa !159
  %i.aj = add nsw i64 %.011.i, -1
  %i.ak = and i64 %i.aj, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ak, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2292

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = sdiv i32 %0, 64                         ; 2 uses
  %i.am = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask.i.i35, -1
  %i.ap = sub nsw i32 64, %i.am
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl i64 %i.ao, %i.aq
  %i.as = load i8, ptr %2, align 8, !tbaa !689, !range !126, !noundef !127
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !690
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !159
  %i.ay = xor i8 %i.as, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = xor i64 %i.ax, %i.ba
  %i.bc = and i64 %i.bb, %i.ar                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bc, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = shl nsw i32 %i.al, 6
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !2298
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2299, !nonnull !127, !align !304
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !273
  %i.bk = sext i32 %i.be to i64
  %invariant.gep.i38 = getelementptr [8 x i8], ptr %i.bj, i64 %i.bk
  %.pre.i39 = load i64, ptr %i.bh, align 8, !tbaa !159
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i40 = phi i64 [ %i.bc, %.preheader.i37 ], [ %i.bn, %bb.g ] ; 3 uses
  %i.bl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i40, i1 true)
  %gep.i41 = getelementptr [8 x i8], ptr %invariant.gep.i38, i64 %i.bl
  store i64 %.pre.i39, ptr %gep.i41, align 8, !tbaa !159
  %i.bm = add i64 %.011.i40, -1
  %i.bn = and i64 %i.bm, %.011.i40                ; 2 uses
  %.not10.i42 = icmp eq i64 %i.bn, 0
  br i1 %.not10.i42, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43, label %bb.g, !llvm.loop !2292

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43: ; preds = %bb.g, %bb.f, %bb.e
  %i.bo = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3359 = icmp sgt i32 %i.bo, %i.d
  br i1 %.not3359, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %i.bp = load i8, ptr %3, align 8, !tbaa !692, !range !126, !noundef !127
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !693
  %i.bs = xor i8 %i.bp, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !127, !align !304 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 144 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit43
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ca = phi i32 [ %i.bo, %.lr.ph ], [ %i.dx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.060 = phi i32 [ %i.c, %.lr.ph ], [ %i.ca, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cb = sdiv i32 %.060, 64                      ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !159
  %i.cf = xor i64 %i.ce, %i.bu                    ; 2 uses
  switch i64 %i.cf, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cg = shl nsw i32 %i.cb, 6
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !273
  %i.ci = sext i32 %i.cg to i64
  %invariant.gep.i45 = getelementptr [8 x i8], ptr %i.ch, i64 %i.ci
  %.pre24.i = load i64, ptr %i.by, align 8, !tbaa !159
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cj = shl nsw i32 %i.cb, 6                    ; 3 uses
  %i.ck = add i32 %i.cj, 64
  %i.cl = sext i32 %i.ck to i64                   ; 3 uses
  %.0.off = add i32 %.060, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cm = sext i32 %i.cj to i64                   ; 9 uses
  %i.cn = load ptr, ptr %i.bz, align 8, !tbaa !273 ; 3 uses
  %.pre.i44 = load i64, ptr %i.by, align 8, !tbaa !159 ; 2 uses
  %i.co = or disjoint i64 %i.cm, 1
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cl) ; 2 uses
  %i.cp = sub i64 %umax76, %i.cm                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.cq = or disjoint i64 %i.cm, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.cl)
  %i.cr = xor i64 %i.cm, -1
  %i.cs = add i64 %umax, %i.cr                    ; 2 uses
  %i.ct = sext i32 %i.cj to i35                   ; 2 uses
  %i.cu = shl nsw i35 %i.ct, 3
  %i.cv = trunc i64 %i.cs to i35
  %i.cw = add i35 %i.ct, %i.cv
  %i.cx = shl i35 %i.cw, 3
  %i.cy = icmp slt i35 %i.cx, %i.cu
  %i.cz = icmp ugt i64 %i.cs, 4294967295
  %i.da = or i1 %i.cy, %i.cz
  br i1 %i.da, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check77 = icmp ult i64 %i.cp, 16
  %i.db = and i64 %umax76, 1                      ; 3 uses
  %n.vec78 = sub i64 %i.cp, %i.db                 ; 3 uses
  %i.dc = add i64 %n.vec78, %i.cm                 ; 2 uses
  %broadcast.splatinsert79 = insertelement <4 x i64> poison, i64 %.pre.i44, i64 0
  %broadcast.splat80 = shufflevector <4 x i64> %broadcast.splatinsert79, <4 x i64> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check77, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.cm
  %i.de = shl i64 %i.dd, 32
  %i.df = ashr exact i64 %i.de, 29
  %i.dg = getelementptr inbounds i8, ptr %i.cn, i64 %i.df ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  store <4 x i64> %broadcast.splat80, ptr %i.dg, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.dh, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.di, align 8, !tbaa !159
  store <4 x i64> %broadcast.splat80, ptr %i.dj, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec78
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !2293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index81 = phi i64 [ %index.next82, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dl = add nuw i64 %index81, %i.cm
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 29
  %i.do = getelementptr inbounds i8, ptr %i.cn, i64 %i.dn
  store <4 x i64> %broadcast.splat80, ptr %i.do, align 8, !tbaa !159
  %index.next82 = add nuw i64 %index81, 4         ; 2 uses
  %i.dp = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.dp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2294

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %i.db, 0
  br i1 %cmp.n83, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.dc, %middle.block ], [ %i.cm, %vector.scevcheck ], [ %i.cm, %iter.check ], [ %i.dc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.ds, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.dq = ashr exact i64 %sext.i, 29
  %i.dr = getelementptr inbounds i8, ptr %i.cn, i64 %i.dq
  store i64 %.pre.i44, ptr %i.dr, align 8, !tbaa !159
  %i.ds = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.cl
  br i1 %i.dt, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2295

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %i.dw, %bb.j ] ; 3 uses
  %i.du = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %gep.i46 = getelementptr [8 x i8], ptr %invariant.gep.i45, i64 %i.du
  store i64 %.pre24.i, ptr %gep.i46, align 8, !tbaa !159
  %i.dv = add i64 %.01519.i, -1
  %i.dw = and i64 %i.dv, %.01519.i                ; 2 uses
  %.not.i47 = icmp eq i64 %i.dw, 0
  br i1 %.not.i47, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2296

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.dx = add nsw i32 %i.ca, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.dx, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2297

bb.k:                                             ; preds = %._crit_edge
  %i.dy = ashr i32 %1, 6
  %i.dz = and i32 %1, 63
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i48 = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i48, -1
  %i.ec = load i8, ptr %2, align 8, !tbaa !689, !range !126, !noundef !127
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !690
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !159
  %i.ei = xor i8 %i.ec, 1
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = sub nsw i64 0, %i.ej
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = and i64 %i.el, %i.eb                    ; 2 uses
  %.not.i49 = icmp eq i64 %i.em, 0
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !2298
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !2299, !nonnull !127, !align !304
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !273
  %i.et = sext i32 %i.d to i64
  %invariant.gep.i51 = getelementptr [8 x i8], ptr %i.es, i64 %i.et
  %.pre.i52 = load i64, ptr %i.eq, align 8, !tbaa !159
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i50
  %.011.i53 = phi i64 [ %i.em, %.preheader.i50 ], [ %i.ew, %bb.l ] ; 3 uses
  %i.eu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i53, i1 true)
  %gep.i54 = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %i.eu
  store i64 %.pre.i52, ptr %gep.i54, align 8, !tbaa !159
  %i.ev = add nsw i64 %.011.i53, -1
  %i.ew = and i64 %i.ev, %.011.i53                ; 2 uses
  %.not10.i55 = icmp eq i64 %i.ew, 0
  br i1 %.not10.i55, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2292

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr %4, ptr %5) local_unnamed_addr #4 comdat {
bb.a:
  %6 = alloca %class.anon.715, align 8            ; 7 uses
  %7 = alloca %class.anon.714, align 8            ; 9 uses
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i8 %i.a, ptr %6, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %.sroa.3.0..sroa_idx9, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.a, ptr %7, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %4, ptr %.sroa.313.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %5, ptr %.sroa.414.0..sroa_idx, align 8
  %.not.i = icmp slt i32 %1, %2
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 63                           ; 2 uses
  %i.c = srem i32 %i.b, 64
  %i.d = sub nsw i32 %i.b, %i.c                   ; 6 uses
  %i.e = and i32 %2, -64                          ; 4 uses
  %i.f = icmp slt i32 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = ashr i32 %2, 6
  %i.h = and i32 %2, 63
  %i.i = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i, -1
  %i.k = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.l
  %i.m = xor i64 %notmask.i.i.i, -1
  %i.n = sub nsw i32 64, %i.k
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = and i64 %i.p, %i.j
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.g, i64 noundef %i.q)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

bb.d:                                             ; preds = %bb.b
  %.not32.i = icmp eq i32 %1, %i.d
  br i1 %.not32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i32 %1, 64
  %i.s = sub nsw i32 %i.d, %1                     ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  %notmask.i.i35.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i.i35.i, -1
  %i.v = sub nsw i32 64, %i.s
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.u, %i.w
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.r, i64 noundef %i.x)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = add nsw i32 %i.d, 64                     ; 2 uses
  %.not3337.i = icmp sgt i32 %i.y, %i.e
  br i1 %.not3337.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.not34.i = icmp eq i32 %2, %i.e
  br i1 %.not34.i, label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit, label %bb.g

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.z = phi i32 [ %i.ab, %.lr.ph.i ], [ %i.y, %bb.f ] ; 2 uses
  %.038.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.d, %bb.f ]
  %i.aa = sdiv i32 %.038.i, 64
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.aa)
  %i.ab = add nsw i32 %i.z, 64                    ; 2 uses
  %.not33.i = icmp sgt i32 %i.ab, %i.e
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2300

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = ashr i32 %2, 6
  %i.ad = and i32 %2, 63
  %i.ae = zext nneg i32 %i.ad to i64
  %notmask.i36.i = shl nsw i64 -1, %i.ae
  %i.af = xor i64 %notmask.i36.i, -1
  call void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.ac, i64 noundef %i.af)
  br label %_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit

_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSE_EUlimE_ZNS3_ISF_EEvSH_iibSE_EUliE_EEviiSE_T0_.exit: ; preds = %bb.a, %bb.c, %._crit_edge.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE18copyValuesAndNullsEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiEUlT_E2_EEvPKmiibSD_ENKUlimE_clEim(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !2303, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2304
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 6 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !709
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !710, !nonnull !127, !align !304 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !564  ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 58
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 2, !tbaa !565, !range !126
  %.pre.i.fr = freeze i8 %.pre.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 57
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 59 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.w = trunc i8 %.pre.i.fr to i1                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 144 ; 3 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !566  ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !273 ; 3 uses
  br i1 %i.w, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, label %.preheader.split.us.split

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader: ; preds = %.preheader.split.us
  %i.ab = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us
  %.011.us.us = phi i64 [ %i.ai, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us ], [ %i.k, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us.preheader ] ; 3 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us, i1 true)
  %i.ad = or disjoint i64 %i.ac, %i.ab            ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !159
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !159
  %i.ah = add i64 %.011.us.us, -1
  %i.ai = and i64 %i.ah, %.011.us.us              ; 2 uses
  %.not10.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not10.us.us, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us, !llvm.loop !2301

.preheader.split.us.split:                        ; preds = %.preheader.split.us
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !567, !range !126, !noundef !127
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.preheader.split.us.split.split.us, label %.preheader.split.us.split.split

.preheader.split.us.split.split.us:               ; preds = %.preheader.split.us.split
  %i.al = load i32, ptr %i.x, align 8, !tbaa !568
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.am
  %.pre29 = load i64, ptr %i.an, align 8, !tbaa !159
  %i.ao = sext i32 %i.m to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ao
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, %.preheader.split.us.split.split.us
  %.011.us.us20 = phi i64 [ %i.k, %.preheader.split.us.split.split.us ], [ %i.ar, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19 ] ; 3 uses
  %i.ap = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us.us20, i1 true)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ap
  store i64 %.pre29, ptr %gep, align 8, !tbaa !159
  %i.aq = add i64 %.011.us.us20, -1
  %i.ar = and i64 %i.aq, %.011.us.us20            ; 2 uses
  %.not10.us.us23 = icmp eq i64 %i.ar, 0
  br i1 %.not10.us.us23, label %.loopexit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us.us19, !llvm.loop !2301

.preheader.split.us.split.split:                  ; preds = %.preheader.split.us.split
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !569
  %i.at = sext i32 %i.m to i64
  br label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us, %.preheader.split.us.split.split
  %.011.us = phi i64 [ %i.k, %.preheader.split.us.split.split ], [ %i.bd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.us ] ; 3 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.av = or disjoint i64 %i.au, %i.at            ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox10FlatVectorIlE16setStringBuffersESt6vectorIN5boost13intrusive_ptrINS0_6BufferEEESaIS7_EE:bb.a
bb.p:                                             ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE5clearEv.exit
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE11reserveImplEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bn)
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit: ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE16initializeChunksEPhmm.exit.i.i.i, %bb.p
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !393 ; 2 uses
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !393 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit, %.lr.ph
  %.sroa.05.08 = phi ptr [ %i.dn, %.lr.ph ], [ %i.de, %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.dh = load ptr, ptr %.sroa.05.08, align 8, !tbaa !238 ; 2 uses
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2340
  %i.di = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.di) ; 2 uses
  %i.dk = lshr i64 %i.dj, 24
  %i.dl = or i64 %i.dk, 128
  %i.dm = add i64 %i.dj, %i.di
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEE19tryEmplaceValueImplIS8_JS8_EEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIS8_EEEEbESC_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.514") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 %i.dm, i64 %i.dl, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.df
  br i1 %i.do, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN8facebook5velox10FlatVectorIlEEJRKPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEN5boost13intrusive_ptrINS1_6BufferEEERiSI_St6vectorISI_SaISI_EEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %8 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.facebook::velox::SimpleVectorStats.117", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !162
  %i.b = load ptr, ptr %3, align 8, !tbaa !238
  store ptr %i.b, ptr %7, align 8, !tbaa !238
  store ptr null, ptr %3, align 8, !tbaa !238
  %i.c = load i32, ptr %4, align 4, !tbaa !115
  %i.d = load ptr, ptr %5, align 8, !tbaa !238
  store ptr %i.d, ptr %8, align 8, !tbaa !238
  store ptr null, ptr %5, align 8, !tbaa !238
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !195
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !195
  invoke void @_ZN8facebook5velox10FlatVectorIlEC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSF_OSt6vectorISF_SaISF_EERKNS0_17SimpleVectorStatsIlEESt8optionalIiESP_SO_IbESP_SP_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 %7, i32 noundef %i.c, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 0, i64 0, i16 0, i64 0, i64 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.g = load ptr, ptr %8, align 8, !tbaa !238    ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = atomicrmw sub ptr %i.h, i32 1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %.noexc.i unwind label %bb.d, !inline_history !6

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !232
  %.not.i.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !120
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %..i.i
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !6

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.b, %bb.c, %.noexc.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !238    ; 7 uses
  %.not.i8 = icmp eq ptr %i.u, null
  br i1 %.not.i8, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = atomicrmw sub ptr %i.v, i32 1 acq_rel, align 4
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.sink.split.i.i9, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13

.sink.split.i.i9:                                 ; preds = %bb.e
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %.noexc.i10 unwind label %bb.f, !inline_history !6

.noexc.i10:                                       ; preds = %.sink.split.i.i9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232
  %.not.i.i11 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !120
  %..i.i12 = select i1 %.not.i.i11, i64 8, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %..i.i12
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(64) %i.u)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13 unwind label %bb.f, !inline_history !6

bb.f:                                             ; preds = %.noexc.i10, %.sink.split.i.i9
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #40
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit13: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %.noexc.i10
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #36
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  resume { ptr, i32 } %i.ai
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4bits11forEachWordIZNS1_10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_EUlimE_ZNS3_IS9_EEvSB_iibSC_EUliE_EEviiSC_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.728) align 8 %2, ptr noundef byval(%class.anon.729) align 8 %3) local_unnamed_addr #15 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !622, !range !126, !noundef !127
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !623
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2347
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !273
  %i.ag = sext i32 %i.d to i64
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !2348, !nonnull !127, !align !304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.011.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.ap, %bb.d ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i, i1 true)
  %i.ak = or disjoint i64 %i.aj, %i.ag            ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !159
  %i.an = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = add nsw i64 %.011.i, -1
  %i.ap = and i64 %i.ao, %.011.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.ap, 0
  br i1 %.not10.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !2341

bb.e:                                             ; preds = %bb.b
  %.not32 = icmp eq i32 %0, %i.c
  br i1 %.not32, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sdiv i32 %0, 64                         ; 2 uses
  %i.ar = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.as = zext nneg i32 %i.ar to i64
  %notmask.i.i35 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask.i.i35, -1
  %i.au = sub nsw i32 64, %i.ar
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %i.at, %i.av
  %i.ax = load i8, ptr %2, align 8, !tbaa !622, !range !126, !noundef !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !623
  %i.ba = sext i32 %i.aq to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !159
  %i.bd = xor i8 %i.ax, 1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = xor i64 %i.bc, %i.bf
  %i.bh = and i64 %i.bg, %i.aw                    ; 2 uses
  %.not.i36 = icmp eq i64 %i.bh, 0
  br i1 %.not.i36, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %.preheader.i37

.preheader.i37:                                   ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = shl nsw i32 %i.aq, 6
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2347
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !273
  %i.bo = sext i32 %i.bj to i64
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !2348, !nonnull !127, !align !304
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !252
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i37
  %.011.i38 = phi i64 [ %i.bh, %.preheader.i37 ], [ %i.bx, %bb.g ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38, i1 true)
  %i.bs = or disjoint i64 %i.br, %i.bo            ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !159
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bs
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !159
  %i.bw = add i64 %.011.i38, -1
  %i.bx = and i64 %i.bw, %.011.i38                ; 2 uses
  %.not10.i39 = icmp eq i64 %i.bx, 0
  br i1 %.not10.i39, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40, label %bb.g, !llvm.loop !2341

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3350 = icmp sgt i32 %i.by, %i.d
  br i1 %.not3350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %i.bz = load i8, ptr %3, align 8, !tbaa !625, !range !126, !noundef !127
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !626
  %i.cc = xor i8 %i.bz, 1
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = sub nsw i64 0, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.cf, align 8, !nonnull !127, !align !304 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit40
  %.not34 = icmp eq i32 %1, %i.d
  br i1 %.not34, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.k

bb.h:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  %i.ck = phi i32 [ %i.by, %.lr.ph ], [ %i.eu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %.051 = phi i32 [ %i.c, %.lr.ph ], [ %i.ck, %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit ] ; 2 uses
  %i.cl = sdiv i32 %.051, 64                      ; 3 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !159
  %i.cp = xor i64 %i.co, %i.ce                    ; 2 uses
  switch i64 %i.cp, label %.lr.ph.i [
    i64 -1, label %bb.i
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit
  ]

.lr.ph.i:                                         ; preds = %bb.h
  %i.cq = shl nsw i32 %i.cl, 6
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !273
  %i.cs = sext i32 %i.cq to i64
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !252
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cu = shl nsw i32 %i.cl, 6                    ; 4 uses
  %i.cv = add i32 %i.cu, 64
  %i.cw = sext i32 %i.cv to i64                   ; 3 uses
  %.0.off = add i32 %.051, 127
  %.not22.i = icmp ult i32 %.0.off, 64
  br i1 %.not22.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.cx = sext i32 %i.cu to i64                   ; 9 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !273 ; 4 uses
  %i.cz = load ptr, ptr %i.cj, align 8, !tbaa !252 ; 4 uses
  %i.da = or disjoint i64 %i.cx, 1
  %umax67 = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.db = sub i64 %umax67, %i.cx                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = ptrtoaddr ptr %i.cy to i64
  %i.de = or disjoint i64 %i.cx, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cw)
  %i.df = xor i64 %i.cx, -1
  %i.dg = add i64 %umax, %i.df                    ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = add i32 %i.cu, %i.dh
  %i.dj = icmp slt i32 %i.di, %i.cu
  %i.dk = icmp ugt i64 %i.dg, 4294967295
  %i.dl = or i1 %i.dj, %i.dk
  %i.dm = sub i64 %i.dd, %i.dc
  %diff.check = icmp ugt i64 %i.dm, -128
  %or.cond = select i1 %i.dl, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check68 = icmp ult i64 %i.db, 16
  %i.dn = and i64 %umax67, 1                      ; 3 uses
  %n.vec72 = sub i64 %i.db, %i.dn                 ; 3 uses
  %i.do = add i64 %n.vec72, %i.cx                 ; 2 uses
  br i1 %min.iters.check68, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.dp = add nuw i64 %index, %i.cx
  %i.dq = shl i64 %i.dp, 32
  %i.dr = ashr exact i64 %i.dq, 32                ; 2 uses
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.dr ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 96
  %wide.load = load <4 x i64>, ptr %i.ds, align 8, !tbaa !159
  %wide.load69 = load <4 x i64>, ptr %i.dt, align 8, !tbaa !159
  %wide.load70 = load <4 x i64>, ptr %i.du, align 8, !tbaa !159
  %wide.load71 = load <4 x i64>, ptr %i.dv, align 8, !tbaa !159
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dr ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <4 x i64> %wide.load, ptr %i.dw, align 8, !tbaa !159
  store <4 x i64> %wide.load69, ptr %i.dx, align 8, !tbaa !159
  store <4 x i64> %wide.load70, ptr %i.dy, align 8, !tbaa !159
  store <4 x i64> %wide.load71, ptr %i.dz, align 8, !tbaa !159
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec72
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index73 = phi i64 [ %index.next75, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eb = add nuw i64 %index73, %i.cx
  %i.ec = shl i64 %i.eb, 32
  %i.ed = ashr exact i64 %i.ec, 32                ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.ed
  %wide.load74 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !159
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ed
  store <4 x i64> %wide.load74, ptr %i.ef, align 8, !tbaa !159
  %index.next75 = add nuw i64 %index73, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next75, %n.vec72
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.dn, 0
  br i1 %cmp.n76, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vector.scevcheck, %vec.epilog.middle.block
  %.020.i.ph = phi i64 [ %i.do, %middle.block ], [ %i.cx, %iter.check ], [ %i.cx, %vector.scevcheck ], [ %i.do, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.020.i = phi i64 [ %i.el, %vec.epilog.scalar.ph ], [ %.020.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %sext.i = shl i64 %.020.i, 32
  %i.eh = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !159
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.eh
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !159
  %i.el = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.cw
  br i1 %i.em, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, !llvm.loop !2344

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.01519.i = phi i64 [ %i.cp, %.lr.ph.i ], [ %i.et, %bb.j ] ; 3 uses
  %i.en = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i, i1 true)
  %i.eo = or disjoint i64 %i.en, %i.cs            ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !159
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.eo
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !159
  %i.es = add i64 %.01519.i, -1
  %i.et = and i64 %i.es, %.01519.i                ; 2 uses
  %.not.i41 = icmp eq i64 %i.et, 0
  br i1 %.not.i41, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit, label %bb.j, !llvm.loop !2345

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUliE_clEi.exit: ; preds = %vec.epilog.scalar.ph, %bb.j, %middle.block, %vec.epilog.middle.block, %bb.h, %bb.i
  %i.eu = add nsw i32 %i.ck, 64                   ; 2 uses
  %.not33 = icmp sgt i32 %i.eu, %i.d
  br i1 %.not33, label %._crit_edge, label %bb.h, !llvm.loop !2346

bb.k:                                             ; preds = %._crit_edge
  %i.ev = ashr i32 %1, 6
  %i.ew = and i32 %1, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i42 = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i42, -1
  %i.ez = load i8, ptr %2, align 8, !tbaa !622, !range !126, !noundef !127
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !623
  %i.fc = sext i32 %i.ev to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !159
  %i.ff = xor i8 %i.ez, 1
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = xor i64 %i.fe, %i.fh
  %i.fj = and i64 %i.fi, %i.ey                    ; 2 uses
  %.not.i43 = icmp eq i64 %i.fj, 0
  br i1 %.not.i43, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %.preheader.i44

.preheader.i44:                                   ; preds = %bb.k
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2347
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 144
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !273
  %i.fp = sext i32 %i.d to i64
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !2348, !nonnull !127, !align !304
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !252
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i44
  %.011.i45 = phi i64 [ %i.fj, %.preheader.i44 ], [ %i.fy, %bb.l ] ; 3 uses
  %i.fs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45, i1 true)
  %i.ft = or disjoint i64 %i.fs, %i.fp            ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !159
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ft
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !159
  %i.fx = add nsw i64 %.011.i45, -1
  %i.fy = and i64 %i.fx, %.011.i45                ; 2 uses
  %.not10.i46 = icmp eq i64 %i.fy, 0
  br i1 %.not10.i46, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit, label %bb.l, !llvm.loop !2341

_ZZN8facebook5velox4bits10forEachBitIZNS0_10FlatVectorIlE14ensureWritableERKNS0_17SelectivityVectorEEUliE_EEvPKmiibT_ENKUlimE_clEim.exit: ; preds = %bb.l, %bb.d, %bb.k, %bb.c, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.368", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2354 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2355, !nonnull !127, !align !304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit:  ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %i.h = lshr i64 %i.g, 6
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !159
  %i.k = and i64 %i.g, 63
  %i.l = shl nuw i64 1, %i.k
  %i.m = and i64 %i.j, %i.l
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.o = sext i32 %1 to i64
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !241
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  store i32 -1, ptr %i.q, align 4, !tbaa !115
  br label %bb.j

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread: ; preds = %bb.a, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !273
  %i.t = sext i32 %1 to i64                       ; 4 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !159  ; 3 uses
  %i.w = icmp slt i64 %i.v, 1
  br i1 %i.w, label %bb.c, label %bb.f, !prof !105

bb.c:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !2356
  store i64 %i.v, ptr %2, align 16, !tbaa !88, !noalias !2356
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.x, align 16, !tbaa !88, !alias.scope !2357, !noalias !2356
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.28, i64 37, i64 19, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !2356
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb1ElEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.28) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !88
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2358, !nonnull !127, !align !304
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !252
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2359, !nonnull !127, !align !304
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !246
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !2360, !nonnull !127, !align !304
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246
  %i.an = getelementptr i8, ptr %i.b, i64 160
  %.val = load ptr, ptr %i.an, align 8
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.t
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !115 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.t
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !115 ; 2 uses
  %.not3.i = icmp sgt i32 %i.ap, %i.ar
  br i1 %.not3.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2361, !nonnull !127, !align !305
  %i.au = load i32, ptr %i.at, align 4, !tbaa !115
  %i.av = sext i32 %i.ap to i64
  %i.aw = sext i32 %i.au to i64
  %i.ax = add i32 %i.ar, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.av, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %.0194.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.i ] ; 2 uses
  %i.ay = sub nsw i64 %indvars.iv.i, %i.aw        ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !159
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.bb
  %.not1.i = icmp eq i64 %i.be, 0
  br i1 %.not1.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.bf = add nsw i64 %.0194.i, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, %i.v
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit

bb.i:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi i64 [ %.0194.i, %.lr.ph.i ], [ %i.bf, %bb.g ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ax, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit: ; preds = %bb.i, %bb.f, %bb.h
  %.sink.i = phi i32 [ %i.bh, %bb.h ], [ -1, %bb.f ], [ -1, %bb.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.t
  store i32 %.sink.i, ptr %i.bi, align 4, !tbaa !115
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction23setRowNumberIgnoreNullsIlEEviPKmiPKiS9_T_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSC_iEUlT_E_EEvPKmiibSD_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.181", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !2369, !range !126, !noundef !127
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2370
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 3 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2371
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !2372, !nonnull !127, !align !304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !254  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !255  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr i8, ptr %i.o, i64 160      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not.i.i, label %.preheader.split.us, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.preheader: ; preds = %.preheader
  %i.x = load ptr, ptr %i.v, align 8, !nonnull !127, !align !304
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !127, !align !304
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i

.preheader.split.us:                              ; preds = %.preheader
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !269
  %i.aa = sext i32 %i.m to i64
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !127, !align !304
  %i.ac = load ptr, ptr %i.w, align 8, !nonnull !127, !align !304
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.us: ; preds = %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us, %.preheader.split.us
  %.011.us = phi i64 [ %i.k, %.preheader.split.us ], [ %i.at, %_ZZN8facebook5velox9functions6window12_GLOBAL__N_116NthValueFunction22setRowNumbersApplyLoopILb0EiEEvRKNS0_17SelectivityVectorEPKiSA_iENKUlT_E_clIiEEDaSB_.exit.us ] ; 3 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.us, i1 true)
  %i.ae = or disjoint i64 %i.ad, %i.aa            ; 4 uses
end_hunk_10
