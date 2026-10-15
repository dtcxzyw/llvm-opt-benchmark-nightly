Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMCCodeEmitter?download=true
inline.NumInlined: 1836
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE:bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.j = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo10isExtendedERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i1 [ true, %bb.d ], [ %i.j, %bb.e ]
  %i.l = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo16isSubInstructionERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.n = load i8, ptr %i.m, align 1, !tbaa !41, !range !97, !noundef !23
  %i.o = trunc nuw i8 %i.n to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not86 = phi i1 [ true, %bb.f ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i8, ptr %i.p, align 4, !tbaa !27, !range !97, !noundef !23
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond = and i1 %i.k, %i.r
  %or.cond3.not = select i1 %or.cond, i1 %.not86, i1 false
  br i1 %or.cond3.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not87118 = icmp eq i32 %i.t, 0
  br i1 %.not87118, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = zext i32 %i.t to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  %.not88 = icmp eq ptr %2, %i.x
  br i1 %.not88, label %._crit_edge.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not87 = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %.not87, label %._crit_edge, label %bb.j, !llvm.loop !92

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.j
  %i.y = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit, %bb.i
  %.080 = phi i32 [ -1, %bb.i ], [ %i.y, %._crit_edge.loopexit.split.loop.exit ], [ -1, %bb.k ]
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.aa = call noundef zeroext i16 @_ZN4llvm18HexagonMCInstrInfo15getExtendableOpERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.ab = zext i16 %i.aa to i32
  %i.ac = icmp eq i32 %.080, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.ae = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo18getExtentAlignmentERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.af = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ag = and i64 %i.af, 63
  %i.ah = zext nneg i32 %i.ae to i64
  %i.ai = shl i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l, %bb.h
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ak = trunc i64 %i.aj to i32
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.n:                                             ; preds = %bb.c
  %i.al = load i8, ptr %.0100, align 8, !tbaa !96
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0100, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !100
  %i.ap = call noundef i32 @_ZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(320) %5) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0100, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !101
  %i.as = call noundef i32 @_ZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(320) %5) ; 0 uses
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.p:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm18HexagonMCInstrInfo7getDescERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.au, ptr noundef nonnull align 8 dereferenceable(128) %1) #16 ; 3 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.ax = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo13getExtentBitsERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.aw, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.az = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo18getExtentAlignmentERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.ba = sub i32 %i.ax, %i.az                    ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0100, i64 1
  %i.bc = load i32, ptr %i.bb, align 1            ; 3 uses
  %i.bd = trunc i32 %i.bc to i8                   ; 2 uses
  %i.be = load i32, ptr %i.av, align 8, !tbaa !50 ; 2 uses
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.bg = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo7getTypeERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.bf, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.bh = icmp eq i32 %i.ba, 16
  br i1 %i.bh, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !27, !range !97, !noundef !23
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.thread102, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %i.bd, label %.thread102 [
    i8 0, label %bb.s
    i8 8, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  %i.bn = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo11s27_2_relocERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #16
  br i1 %i.bn, label %.thread112, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.bp = call noundef i32 @_ZN4llvm18HexagonMCInstrInfo18getExtentAlignmentERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.bo, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.bq = call fastcc noundef zeroext i1 @"_ZZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoEENK3$_0clERKNS_11MCInstrDescE"(ptr noundef nonnull align 8 dereferenceable(32) %i.av)
  br i1 %i.bq, label %bb.u, label %.thread102

bb.u:                                             ; preds = %bb.t
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoEE11GPRelFixups, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !103
  br label %bb.ad

bb.v:                                             ; preds = %bb.r
  %switch.selectcmp = icmp eq i32 %i.be, 1355
  %switch.select = select i1 %switch.selectcmp, i32 4047, i32 -1
  %switch.selectcmp89 = icmp eq i32 %i.be, 1770
  br i1 %switch.selectcmp89, label %.thread112, label %bb.ad

bb.w:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !46
  %i.bw = and i64 %i.bv, 1024
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = icmp eq i32 %i.bg, 5
  %i.bz = or i1 %i.by, %i.bx                      ; 2 uses
  switch i32 %i.ba, label %.thread102 [
    i32 9, label %bb.x
    i32 8, label %bb.z
    i32 7, label %bb.z
    i32 0, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %i.bz, label %bb.y, label %.thread102

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !27, !range !97, !noundef !23
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = select i1 %i.cc, i32 4030, i32 4024
  br label %.thread112

bb.z:                                             ; preds = %bb.w, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !27, !range !97, !noundef !23
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %.mask83122 = and i32 %i.bc, 255
  %i.ch = icmp eq i32 %.mask83122, 7
  %or.cond6 = and i1 %i.ch, %i.cg
  br i1 %or.cond6, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.cj = call noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo14isExtentSignedERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58) %i.ci, ptr noundef nonnull align 8 dereferenceable(128) %1) #16
  %i.ck = select i1 %i.cj, i32 4085, i32 4086
  br label %.thread112

bb.ab:                                            ; preds = %bb.z
  %i.cl = icmp eq i32 %i.ba, 7
  %or.cond8 = and i1 %i.cl, %i.bz
  %i.cm = select i1 %i.cg, i32 4031, i32 4012
  br i1 %or.cond8, label %.thread112, label %.thread102

bb.ac:                                            ; preds = %bb.w
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !22, !nonnull !23, !align !24
  %i.co = call noundef i32 @_ZNK4llvm20HexagonMCCodeEmitter14getFixupNoBitsERKNS_11MCInstrInfoERKNS_6MCInstERKNS_9MCOperandENS_13HexagonMCExpr11VariantKindE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(58) %i.cn, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nonnull align 8 poison, i8 noundef zeroext %i.bd)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.v, %bb.u, %bb.ac
  %.2 = phi i32 [ %i.co, %bb.ac ], [ %i.bt, %bb.u ], [ %switch.select, %bb.v ] ; 2 uses
  %i.cp = icmp eq i32 %.2, -1
  br i1 %i.cp, label %.thread102, label %.thread112

.thread102:                                       ; preds = %bb.q, %bb.t, %bb.x, %bb.w, %bb.ab, %bb.r, %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !27, !range !97, !noundef !23
  %i.cs = trunc nuw i8 %i.cr to i1
  %_ZL9ExtFixups._ZL9StdFixups = select i1 %i.cs, ptr @_ZL9ExtFixups, ptr @_ZL9StdFixups ; 2 uses
  %.mask84 = and i32 %i.bc, 255                   ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %_ZL9ExtFixups._ZL9StdFixups, i64 16
  %.val116 = load ptr, ptr %6, align 8, !tbaa !14 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %_ZL9ExtFixups._ZL9StdFixups, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %.val116, null
  br i1 %.not10.i.i.i, label %.thread109, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread102, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.val116, %.thread102 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %7, %.thread102 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = icmp ult i32 %i.cu, %.mask84            ; 2 uses
  %.19.i.i.i = select i1 %i.cv, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.cv, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !93

_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.cw = icmp eq ptr %.19.i.i.i, %7
  br i1 %i.cw, label %.thread109, label %_ZNKSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit

_ZNKSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit: ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !48
  %i.cz = icmp ult i32 %.mask84, %i.cy
  br i1 %i.cz, label %.thread109, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.db = zext i32 %i.ba to i64
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !48 ; 2 uses
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %.thread109, label %.thread112

.thread109:                                       ; preds = %_ZNKSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %.thread102, %_ZNKSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE4findERS6_.exit, %bb.ae
  call fastcc void @_ZL22raise_relocation_errorjj(i32 noundef %i.ba, i32 noundef %.mask84) #18
  unreachable

.thread112:                                       ; preds = %bb.ab, %bb.v, %bb.y, %bb.s, %bb.aa, %bb.ad, %bb.ae
  %.4114 = phi i32 [ %i.de, %bb.ae ], [ %.2, %bb.ad ], [ %i.cd, %bb.y ], [ 4046, %bb.v ], [ 4105, %bb.s ], [ %i.ck, %bb.aa ], [ %i.cm, %bb.ab ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !26 ; 3 uses
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %_ZL7isPCRelj.exit, label %bb.af

bb.af:                                            ; preds = %.thread112
  switch i32 %.4114, label %_ZL7isPCRelj.exit [
    i32 4010, label %bb.ag
    i32 4011, label %bb.ag
    i32 4012, label %bb.ag
    i32 4023, label %bb.ag
    i32 4024, label %bb.ag
    i32 4025, label %bb.ag
    i32 4027, label %bb.ag
    i32 4028, label %bb.ag
    i32 4029, label %bb.ag
    i32 4030, label %bb.ag
    i32 4031, label %bb.ag
    i32 4040, label %bb.ag
    i32 4045, label %bb.ag
    i32 4058, label %bb.ag
    i32 4059, label %bb.ag
    i32 4106, label %bb.ag
    i32 4108, label %bb.ag
    i32 4080, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !65, !nonnull !23, !align !24
  %i.dn = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(2208) %i.dm, i1 noundef zeroext false, i32 noundef 0) #16
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !65, !nonnull !23, !align !24
  %i.dp = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.dh, ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(2208) %i.do, ptr null) #16
  %.pre = load i32, ptr %i.di, align 8, !tbaa !26
  br label %_ZL7isPCRelj.exit

_ZL7isPCRelj.exit:                                ; preds = %bb.af, %bb.ag, %.thread112
  %i.dq = phi i32 [ %.pre, %bb.ag ], [ 0, %.thread112 ], [ %i.dj, %bb.af ]
  %.077 = phi ptr [ %i.dp, %bb.ag ], [ %i.dh, %.thread112 ], [ %i.dh, %bb.af ] ; 2 uses
  %i.dr = trunc i32 %.4114 to i16
  %switch.tableidx = add i16 %i.dr, -4010         ; 2 uses
  %i.ds = icmp ult i16 %switch.tableidx, 100
  br i1 %i.ds, label %switch.lookup, label %bb.ah

switch.lookup:                                    ; preds = %_ZL7isPCRelj.exit
  %i.dt = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoE, i64 %i.dt
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %switch.lookup, %_ZL7isPCRelj.exit
  %i.du = phi i64 [ %switch.load, %switch.lookup ], [ 0, %_ZL7isPCRelj.exit ]
  %.mask = and i32 %.4114, 65535
  %.sroa.6.8.insert.ext.i.i = zext nneg i32 %.mask to i64
  %.sroa.6.8.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.8.insert.ext.i.i, 32
  %.sroa.6.8.insert.insert.i.i = or disjoint i64 %i.du, %.sroa.6.8.insert.shift.i.i
  %.sroa.3.8.insert.ext.i.i = zext i32 %i.dq to i64
  %.sroa.3.8.insert.insert.i.i = or disjoint i64 %.sroa.6.8.insert.insert.i.i, %.sroa.3.8.insert.ext.i.i ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !61 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !104
  %.not.i.i = icmp ult i32 %i.dw, %i.dy
  br i1 %.not.i.i, label %bb.aj, label %bb.ai, !prof !105

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7MCFixupELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.077, i64 %.sroa.3.8.insert.insert.i.i)
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dz = zext i32 %i.dw to i64
  %i.ea = load ptr, ptr %4, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dz ; 2 uses
  store ptr %.077, ptr %i.eb, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %.sroa.3.8.insert.insert.i.i, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !61
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.dv, align 8, !tbaa !61
  br label %_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit

_ZL8addFixupRN4llvm15SmallVectorImplINS_7MCFixupEEEjPKNS_6MCExprEt.exit: ; preds = %bb.aj, %bb.ai, %bb.o, %bb.m
  %.0 = phi i32 [ %i.ak, %bb.m ], [ 0, %bb.o ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm18HexagonMCInstrInfo7getExprERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm6MCExpr18evaluateAsAbsoluteERl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo12isExtendableERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo10isExtendedERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo16isSubInstructionERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN4llvm18HexagonMCInstrInfo15getExtendableOpERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm18HexagonMCInstrInfo18getExtentAlignmentERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef i32 @_ZN4llvm18HexagonMCInstrInfo13getExtentBitsERKNS_11MCInstrInfoERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo11s27_2_relocERKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK4llvm20HexagonMCCodeEmitter14getExprOpValueERKNS_6MCInstERKNS_9MCOperandEPKNS_6MCExprERNS_15SmallVectorImplINS_7MCFixupEEERKNS_15MCSubtargetInfoEENK3$_0clERKNS_11MCInstrDescE"(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.f = load i16, ptr %i.e, align 2, !tbaa !107
  %i.g = zext i16 %i.f to i64
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2, !tbaa !108   ; 3 uses
  %i.k = zext i8 %i.j to i64                      ; 2 uses
  %.idx3.i = shl nuw nsw i64 %i.k, 1              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx3.i ; 2 uses
  %i.m = lshr i64 %i.k, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.n = and i64 %.idx3.i, 504
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.h, i64 %i.n
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.051.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.02950.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %.029.val39.i.i.i.i = load i16, ptr %.02950.i.i.i.i, align 2, !tbaa !66
  %i.o = icmp eq i16 %.029.val39.i.i.i.i, 12
  br i1 %i.o, label %"_ZN4llvm12is_containedINS_8ArrayRefItEENS_7Hexagon3$_1EEEbOT_RKT0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 2
  %.val37.i.i.i.i = load i16, ptr %i.p, align 2, !tbaa !66
  %i.q = icmp eq i16 %.val37.i.i.i.i, 12
  br i1 %i.q, label %"_ZN4llvm12is_containedINS_8ArrayRefItEENS_7Hexagon3$_1EEEbOT_RKT0_.exit.loopexit.split.loop.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 4
  %.val35.i.i.i.i = load i16, ptr %i.r, align 2, !tbaa !66
  %i.s = icmp eq i16 %.val35.i.i.i.i, 12
  br i1 %i.s, label %"_ZN4llvm12is_containedINS_8ArrayRefItEENS_7Hexagon3$_1EEEbOT_RKT0_.exit.loopexit.split.loop.exit13", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 6
  %.val33.i.i.i.i = load i16, ptr %i.t, align 2, !tbaa !66
  %i.u = icmp eq i16 %.val33.i.i.i.i, 12
  br i1 %i.u, label %"_ZN4llvm12is_containedINS_8ArrayRefItEENS_7Hexagon3$_1EEEbOT_RKT0_.exit.loopexit.split.loop.exit15", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i, i64 8
  %i.w = add nsw i64 %.051.i.i.i.i, -1
  %i.x = icmp sgt i64 %.051.i.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !106

end_hunk_0
