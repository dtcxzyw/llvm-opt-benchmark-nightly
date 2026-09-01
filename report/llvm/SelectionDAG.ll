Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEb:bb.a
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !1581
  %i.ah = icmp eq i32 %.val30.val.i.i.i.i.i, %.1.val.i.i.i.i.i
  br i1 %i.ah, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge._crit_edge57.i.i.i.i.i
  %.val.val.i.i.i.i.i = phi i32 [ %.val30.val.i.i.i.i.i, %bb.l ], [ %.val.val.pre.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ]
  %.2.i.i.i.i.i = phi ptr [ %i.ai, %bb.l ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !1581
  %i.aj = icmp eq i32 %.val.val.i.i.i.i.i, %.2.val.i.i.i.i.i
  br i1 %i.aj, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit", label %_ZN4llvm14isNullConstantENS_7SDValueE.exit.thread

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 4
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282": ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284": ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 12
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit": ; preds = %bb.d, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282", %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284", %bb.i, %bb.k, %bb.m
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %bb.k ], [ %.029.lcssa.i.i.i.i.i, %bb.i ], [ %.2.i.i.i.i.i, %bb.m ], [ %i.am, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit284" ], [ %i.al, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit282" ], [ %i.ak, %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02950.i.i.i.i.i, %bb.d ]
  %i.an = icmp eq ptr %i.p, %.028.i.i.i.i.i
  br i1 %i.an, label %_ZN4llvm14isNullConstantENS_7SDValueE.exit.thread, label %bb.n

bb.n:                                             ; preds = %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_3ISD8NodeTypeEEEZNS_12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERS3_S4_bE3$_0EEbOT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47 ; 5 uses
  store i32 %i.ap, ptr %i.b, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = zext i32 %.sroa.21.0.copyload to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.at, align 8, !tbaa !55 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i, ptr %6, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.au, align 8
  %.not.i78 = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i78, label %_ZNK4llvm3EVT15isFloatingPointEv.exit, label %.split

.split:                                           ; preds = %bb.n
  %i.av = add i16 %.sroa.0.0.copyload.i.i, -12
  %or.cond.i.i = icmp ult i16 %i.av, 7
  %i.aw = add i16 %.sroa.0.0.copyload.i.i, -105
  %or.cond3.i.i = icmp ult i16 %i.aw, 58
  %or.cond4.i.i = or i1 %or.cond.i.i, %or.cond3.i.i
  %i.ax = add i16 %.sroa.0.0.copyload.i.i, -195
  %spec.select.i.i = icmp ult i16 %i.ax, 21
  %i.ay = or i1 %spec.select.i.i, %or.cond4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.ay, label %bb.o, label %bb.p

_ZNK4llvm3EVT15isFloatingPointEv.exit:            ; preds = %bb.n
  %i.az = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.copyload, i64 28
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 4, !tbaa !98
  %i.bb = and i32 %.sroa.0.0.copyload.i, 2176
  %or.cond = icmp eq i32 %i.bb, 2176
  br i1 %or.cond, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %.split, %_ZNK4llvm3EVT15isFloatingPointEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.a, ptr %7, align 8, !tbaa !1784
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.bc, align 8, !tbaa !1786
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.bd, align 8, !tbaa !426
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.b, ptr %i.be, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %.sroa.0.0.copyload.i.i79 = load i16, ptr %i.at, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0.copyload.i.i81 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i79, ptr %8, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i81, ptr %i.bf, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i79, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.p
  %i.bg = add i16 %.sroa.0.0.copyload.i.i79, -163
  %spec.select.i.i.i = icmp ult i16 %i.bg, 53
  br i1 %spec.select.i.i.i, label %bb.q, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i

_ZNK4llvm3EVT16isScalableVectorEv.exit.i:         ; preds = %bb.p
  %i.bh = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #33
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i, %.split.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i:     ; preds = %.split.i
  %i.bi = zext i16 %.sroa.0.0.copyload.i.i79 to i64
  %i.bj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !719
  %i.bm = zext i16 %i.bl to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

bb.r:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i
  %i.bn = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit

_ZNK4llvm3EVT20getVectorNumElementsEv.exit:       ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i, %bb.r
  %i.bo = phi i32 [ %i.bm, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i ], [ %i.bn, %bb.r ]
  %i.bp = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 false) ; 2 uses
  %i.bq = sub nsw i32 31, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.not65215.not = icmp eq i32 %i.bp, 31
  br i1 %.not65215.not, label %.critedge74.preheader, label %.lr.ph220

.critedge74.preheader:                            ; preds = %.critedge70, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit
  %.sroa.21.0.lcssa = phi i32 [ %.sroa.21.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.sroa.21.1.ph, %.critedge70 ] ; 2 uses
  %.sroa.0144.0.lcssa = phi ptr [ %.sroa.0144.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ], [ %.sroa.0144.1.ph, %.critedge70 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0144.0.lcssa, i64 24
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !47
  %i.bt = icmp eq i32 %i.bs, %i.ap
  br i1 %i.bt, label %.lr.ph224, label %.thread181

.lr.ph224:                                        ; preds = %.critedge74.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.y

.lr.ph220:                                        ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit, %.critedge70
  %.055219 = phi i32 [ %i.cz, %.critedge70 ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.0138.0218 = phi ptr [ %.sroa.0144.1.ph, %.critedge70 ], [ null, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.7139.0217 = phi i32 [ %.sroa.21.1.ph, %.critedge70 ], [ 0, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 3 uses
  %.sroa.0144.0216 = phi ptr [ %.sroa.0144.1.ph, %.critedge70 ], [ %.sroa.0144.0.copyload, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit ] ; 2 uses
  %i.bw = shl nuw i32 1, %.055219                 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0144.0216, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !47
  %.not60 = icmp eq i32 %i.by, %i.ap
  br i1 %.not60, label %bb.s, label %.critedge72

.critedge72:                                      ; preds = %.lr.ph220
  %i.bz = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i32 } %i.bz, 0
  %.fca.1.extract24 = extractvalue { ptr, i32 } %i.bz, 1
  br label %.critedge76

bb.s:                                             ; preds = %.lr.ph220
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0144.0216, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 4 uses
  %.sroa.0134.0.copyload = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %.sroa.0130.0.copyload = load ptr, ptr %i.cc, align 8, !tbaa !71 ; 3 uses
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0134.0.copyload, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !47
  %i.cf = icmp ne i32 %i.ce, 171
  %.not61186 = icmp eq ptr %.sroa.0134.0.copyload, null
  %.not61 = or i1 %.not61186, %i.cf
  br i1 %.not61, label %bb.t, label %select.unfold

bb.t:                                             ; preds = %bb.s
  %.sroa.6136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0130.0.copyload, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !47
  %i.ci = icmp eq i32 %i.ch, 171
  br i1 %i.ci, label %select.unfold, label %bb.u

select.unfold:                                    ; preds = %bb.t, %bb.s
  %.sroa.21.1.ph.in = phi ptr [ %.sroa.6132.0..sroa_idx, %bb.s ], [ %.sroa.6136.0..sroa_idx, %bb.t ]
  %.sroa.0144.1.ph = phi ptr [ %.sroa.0130.0.copyload, %bb.s ], [ %.sroa.0134.0.copyload, %bb.t ] ; 4 uses
  %.056.ph = phi ptr [ %.sroa.0134.0.copyload, %bb.s ], [ %.sroa.0130.0.copyload, %bb.t ] ; 2 uses
  %.sroa.21.1.ph = load i32, ptr %.sroa.21.1.ph.in, align 8, !tbaa !98 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.056.ph, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = icmp ne ptr %i.cl, %.sroa.0144.1.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = icmp ne i32 %i.co, %.sroa.21.1.ph
  %.not3.i = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %.not3.i, label %bb.u, label %.preheader

.preheader:                                       ; preds = %select.unfold
  %.not64213.not = icmp eq i32 %.055219, 31
  br i1 %.not64213.not, label %.critedge70, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %.056.ph, i64 88
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !811
  %i.cs = zext i32 %i.bw to i64
  %11 = sext i32 %i.bw to i64
  br label %bb.w

bb.u:                                             ; preds = %bb.t, %select.unfold
  %i.ct = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract13 = extractvalue { ptr, i32 } %i.ct, 0
  %.fca.1.extract14 = extractvalue { ptr, i32 } %i.ct, 1
  br label %.critedge76

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not64 = icmp slt i64 %indvars.iv.next, %11
  br i1 %.not64, label %bb.w, label %.critedge70, !llvm.loop !1788

bb.w:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !98
  %i.cw = add nuw nsw i64 %indvars.iv, %i.cs
  %i.cx = zext i32 %i.cv to i64
  %.not63 = icmp eq i64 %i.cw, %i.cx
  br i1 %.not63, label %bb.v, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = call fastcc { ptr, i32 } @"_ZZN4llvm12SelectionDAG19matchBinOpReductionEPNS_6SDNodeERNS_3ISD8NodeTypeENS_8ArrayRefIS4_EEbENK3$_1clENS_7SDValueEj"(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr %.sroa.0138.0218, i32 %.sroa.7139.0217, i32 noundef %i.bw) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cy, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cy, 1
  br label %.critedge76

.critedge70:                                      ; preds = %bb.v, %.preheader
  %i.cz = add nuw i32 %.055219, 1                 ; 2 uses
  %exitcond259.not = icmp eq i32 %i.cz, %i.bq
  br i1 %exitcond259.not, label %.critedge74.preheader, label %.lr.ph220, !llvm.loop !1789

bb.y:                                             ; preds = %.lr.ph224, %.critedge74
  %i.da = phi i32 [ %i.ap, %.lr.ph224 ], [ %i.gl, %.critedge74 ] ; 7 uses
  %.sroa.0144.3223 = phi ptr [ %.sroa.0144.0.lcssa, %.lr.ph224 ], [ %i.dz, %.critedge74 ] ; 9 uses
  %.sroa.21.3222 = phi i32 [ %.sroa.21.0.lcssa, %.lr.ph224 ], [ %i.ed, %.critedge74 ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0144.3223, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !54
  %i.dd = zext i32 %.sroa.21.3222 to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %.sroa.0.0.copyload.i.i86 = load i16, ptr %i.de, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i87 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.21.0.copyload.i.i88 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i87, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i86, ptr %9, align 8
  store ptr %.sroa.21.0.copyload.i.i88, ptr %i.bu, align 8
  %.not.i.i91 = icmp eq i16 %.sroa.0.0.copyload.i.i86, 0
  br i1 %.not.i.i91, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95, label %.split.i92

.split.i92:                                       ; preds = %bb.y
  %i.df = add i16 %.sroa.0.0.copyload.i.i86, -163
  %spec.select.i.i.i93 = icmp ult i16 %i.df, 53
  br i1 %spec.select.i.i.i93, label %bb.z, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94

_ZNK4llvm3EVT16isScalableVectorEv.exit.i95:       ; preds = %bb.y
  %i.dg = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #33
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95, %.split.i92
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94:   ; preds = %.split.i92
  %i.dh = zext i16 %.sroa.0.0.copyload.i.i86 to i64
  %i.di = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !719
  %i.dl = zext i16 %i.dk to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

bb.aa:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i95
  %i.dm = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96

_ZNK4llvm3EVT20getVectorNumElementsEv.exit96:     ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94, %bb.aa
  %i.dn = phi i32 [ %i.dl, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i94 ], [ %i.dm, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0144.3223, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !48 ; 2 uses
  %.sroa.0125.0.copyload = load ptr, ptr %i.dp, align 8, !tbaa !71 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %.sroa.0121.0.copyload = load ptr, ptr %i.dq, align 8, !tbaa !71 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0125.0.copyload, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !47
  %.not66 = icmp eq i32 %i.ds, 167
  br i1 %.not66, label %bb.ab, label %.thread181

bb.ab:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit96
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !47
  %.not67 = icmp eq i32 %i.du, 167
  br i1 %.not67, label %bb.ac, label %.thread181

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0125.0.copyload, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !48 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0121.0.copyload, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !48 ; 4 uses
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !49 ; 5 uses
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.eb = icmp ne ptr %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ed = load i32, ptr %i.ec, align 8            ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = icmp ne i32 %i.ed, %i.ef
  %.not3.i97 = select i1 %i.eb, i1 true, i1 %i.eg
  br i1 %.not3.i97, label %.thread181, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.ej = zext i32 %i.ed to i64
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %.sroa.0.0.copyload.i.i98 = load i16, ptr %i.ek, align 8, !tbaa !55 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i99 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.21.0.copyload.i.i100 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i99, align 8, !tbaa !57
  store i16 %.sroa.0.0.copyload.i.i98, ptr %10, align 8
  store ptr %.sroa.21.0.copyload.i.i100, ptr %i.bv, align 8
  %.not.i.i103 = icmp eq i16 %.sroa.0.0.copyload.i.i98, 0
  br i1 %.not.i.i103, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107, label %.split.i104

.split.i104:                                      ; preds = %bb.ad
  %i.el = add i16 %.sroa.0.0.copyload.i.i98, -163
  %spec.select.i.i.i105 = icmp ult i16 %i.el, 53
  br i1 %spec.select.i.i.i105, label %bb.ae, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106

_ZNK4llvm3EVT16isScalableVectorEv.exit.i107:      ; preds = %bb.ad
  %i.em = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #33
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107, %.split.i104
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.20) #34
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106:  ; preds = %.split.i104
  %i.en = zext i16 %.sroa.0.0.copyload.i.i98 to i64
  %i.eo = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -2
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !719
  %i.er = zext i16 %i.eq to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108

bb.af:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i107
  %i.es = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #33
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108

_ZNK4llvm3EVT20getVectorNumElementsEv.exit108:    ; preds = %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106, %bb.af
  %i.et = phi i32 [ %i.er, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i106 ], [ %i.es, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.eu = shl i32 %i.dn, 1
  %.not68 = icmp eq i32 %i.et, %i.eu
  br i1 %.not68, label %bb.ag, label %.thread181

bb.ag:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit108
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !59 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 65                  ; 2 uses
  br i1 %i.fc, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.ag
  %i.fd = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.ez) #33
  %i.fe = sub i32 %i.fb, %i.fd
  %i.ff = icmp ult i32 %i.fe, 65
  br i1 %i.ff, label %_ZNK4llvm5APInteqEm.exit, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit:                         ; preds = %bb.ag, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i
  %i.fg = load ptr, ptr %i.ez, align 8
  %spec.select.i.i109 = select i1 %i.fc, ptr %i.ez, ptr %i.fg
  %.0.i.i = load i64, ptr %spec.select.i.i109, align 8, !tbaa !45
  %i.fh = icmp eq i64 %.0.i.i, 0
  br i1 %i.fh, label %bb.ah, label %_ZNK4llvm5APInteqEm.exit.thread

bb.ah:                                            ; preds = %_ZNK4llvm5APInteqEm.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !49
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !61 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 3 uses
  %i.fn = zext i32 %i.dn to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !59 ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 65                  ; 2 uses
  br i1 %i.fq, label %_ZNK4llvm5APInteqEm.exit113, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i110

_ZNK4llvm5APInt13getActiveBitsEv.exit.i110:       ; preds = %bb.ah
  %i.fr = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.fm) #33
  %i.fs = sub i32 %i.fp, %i.fr
  %i.ft = icmp ult i32 %i.fs, 65
  br i1 %i.ft, label %_ZNK4llvm5APInteqEm.exit113, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit113:                      ; preds = %bb.ah, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i110
  %i.fu = load ptr, ptr %i.fm, align 8
  %spec.select.i.i111 = select i1 %i.fq, ptr %i.fm, ptr %i.fu
  %.0.i.i112 = load i64, ptr %spec.select.i.i111, align 8, !tbaa !45
  %i.fv = icmp eq i64 %.0.i.i112, %i.fn
  br i1 %i.fv, label %.critedge74, label %_ZNK4llvm5APInteqEm.exit.thread

_ZNK4llvm5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i110, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i, %_ZNK4llvm5APInteqEm.exit113, %_ZNK4llvm5APInteqEm.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !49
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !61 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
end_hunk_0
