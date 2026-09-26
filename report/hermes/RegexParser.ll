Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexParser?download=true
inline.NumInlined: 3182
inline.NumDeleted: 1582
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEv:bb.a
  store ptr %i.m, ptr %i.c, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit: ; preds = %bb.a, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i, %bb.b
  %i.n = phi i8 [ 1, %bb.b ], [ 0, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.o = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.n, ptr %i.a, align 1, !tbaa !100
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = call noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_11BracketNodeIS2_EEJRS2_RbRNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 8 dereferenceable(336) %i.o, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.q, ptr %i.b, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %i.b, ptr %2, align 8, !tbaa !505
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph: ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4

._crit_edge:                                      ; preds = %select.unfold.jt3, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit
  %.lcssa = phi ptr [ %i.s, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit ], [ %i.di, %select.unfold.jt3 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !28
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.c, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.c:                                             ; preds = %._crit_edge
  store i32 4, ptr %i.ag, align 8, !tbaa !28
  store ptr %.lcssa, ptr %i.c, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph, %select.unfold.jt3
  %i.aj = phi ptr [ %i.r, %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4.lr.ph ], [ %i.dh, %select.unfold.jt3 ] ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !43
  %i.al = icmp eq i16 %i.ak, 93
  br i1 %i.al, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread, label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  store ptr %i.am, ptr %i.c, align 8, !tbaa !26
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5: ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeBracketClassAtomEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.253") align 8 %3, ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.an = load i8, ptr %i.u, align 8, !tbaa !507, !range !160, !noundef !157
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.d, label %select.unfold.jt3, !llvm.loop !504

bb.d:                                             ; preds = %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !26  ; 3 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !27
  %.not.i.i6 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i6, label %bb.e, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7

_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7: ; preds = %bb.d
  %i.ar = load i16, ptr %i.ap, align 2, !tbaa !43
  %i.as = icmp eq i16 %i.ar, 45
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7, %bb.d
  %i.at = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
  br i1 %i.at, label %select.unfold.jt3, label %.thread, !llvm.loop !504

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

bb.f:                                             ; preds = %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i7
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store ptr %i.au, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE26tryConsumeBracketClassAtomEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional.253") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.av = load i8, ptr %i.v, align 8, !tbaa !507, !range !160, !noundef !157
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 45, ptr %5, align 8, !tbaa !205
  store i8 0, ptr %i.w, align 2, !tbaa !508
  store i8 0, ptr %i.x, align 8, !tbaa !509
  %i.ay = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3, !llvm.loop !504

bb.h:                                             ; preds = %bb.f
  %.pre = load i8, ptr %i.aa, align 2, !range !160 ; 2 uses
  %.pre39 = load i8, ptr %i.ab, align 2, !range !160 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load i8, ptr %i.y, align 8, !tbaa !206, !range !160, !noundef !157
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = load i8, ptr %i.z, align 8, !range !160
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond = select i1 %i.ba, i1 true, i1 %i.bc
  %i.bd = trunc nuw i8 %.pre to i1
  %or.cond18 = select i1 %or.cond, i1 true, i1 %i.bd
  %i.be = trunc nuw i8 %.pre39 to i1
  %or.cond22 = select i1 %or.cond18, i1 true, i1 %i.be
  br i1 %or.cond22, label %bb.j, label %.thread59

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %select.unfold.jt1.sink.split, label %select.unfold.jt1

bb.k:                                             ; preds = %bb.h
  %.pre41 = trunc nuw i8 %.pre to i1
  %.pre42 = trunc nuw i8 %.pre39 to i1
  %i.bh = select i1 %.pre41, i1 true, i1 %.pre42
  br i1 %i.bh, label %bb.l, label %.thread59

bb.l:                                             ; preds = %bb.k
  %i.bi = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store i32 45, ptr %6, align 8, !tbaa !205
  store i8 0, ptr %i.ae, align 2, !tbaa !508
  store i8 0, ptr %i.af, align 8, !tbaa !509
  %i.bj = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bk = call noundef zeroext i1 @_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %4) ; 0 uses
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3, !llvm.loop !504

.thread59:                                        ; preds = %bb.i, %bb.k
  %i.bl = load i32, ptr %3, align 8, !tbaa !205   ; 3 uses
  %i.bm = load i32, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread59
  %i.bo = load i32, ptr %i.ac, align 8, !tbaa !28
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %select.unfold.jt1.sink.split, label %select.unfold.jt1

bb.n:                                             ; preds = %.thread59
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !191 ; 2 uses
  %i.br = sub nuw i32 %i.bm, %i.bl
  %i.bs = add i32 %i.br, 1                        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.bs to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  %i.bu = icmp eq i32 %i.bs, 0
  br i1 %i.bu, label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !40
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.by
  %i.ca = call { ptr, ptr } @_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_(ptr noundef %i.bv, ptr noundef %i.bz, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 2 uses
  %i.cb = extractvalue { ptr, ptr } %i.ca, 0      ; 6 uses
  %i.cc = extractvalue { ptr, ptr } %i.ca, 1      ; 6 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = call noundef ptr @_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 0 uses
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

bb.q:                                             ; preds = %bb.o
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cg = load i32, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cf, i32 %i.cg) ; 2 uses
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !208
  %i.cj = add i32 %i.ci, %i.cg
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !209
  %i.cm = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !208
  %i.co = add i32 %i.cn, %i.cl
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.cj, i32 %i.co)
  %i.cp = sub i32 %.sroa.speculated.i.i, %i.ch
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cp, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 3 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 3 uses
  %i.cs = load i32, ptr %i.bw, align 8, !tbaa !40
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cc to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 4 uses
  %i.cy = icmp sgt i64 %i.cx, 8
  br i1 %i.cy, label %bb.r, label %bb.s, !prof !60

bb.r:                                             ; preds = %bb.q
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cq, ptr nonnull align 4 %i.cc, i64 %i.cx, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !39
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = icmp eq i64 %i.cx, 8
  br i1 %i.cz, label %bb.t, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.da = load i64, ptr %i.cc, align 4, !tbaa !17
  store i64 %i.da, ptr %i.cq, align 4, !tbaa !17
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %7 = phi ptr [ %.pre.i.i.i, %bb.r ], [ %i.cr, %bb.s ], [ %i.cr, %bb.t ]
  %8 = getelementptr inbounds i8, ptr %i.cq, i64 %i.cx
  %i.db = ptrtoint ptr %8 to i64
  %i.dc = ptrtoint ptr %7 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = trunc i64 %i.de to i32
  store i32 %i.df, ptr %i.bw, align 8, !tbaa !40
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit

_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit: ; preds = %bb.n, %bb.p, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3: ; preds = %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addRangeEjj.exit, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %select.unfold.jt3

select.unfold.jt1.sink.split:                     ; preds = %bb.m, %bb.j
  store i32 7, ptr %i.ac, align 8, !tbaa !28
  %i.dg = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %i.dg, ptr %i.c, align 8, !tbaa !26
  br label %select.unfold.jt1

select.unfold.jt1:                                ; preds = %select.unfold.jt1.sink.split, %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit

select.unfold.jt3:                                ; preds = %bb.e, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit9.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !26  ; 2 uses
  %i.di = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %._crit_edge, label %_ZNK6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE5checkEDs.exit.i4, !llvm.loop !504

_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE8setErrorENS0_9constants9ErrorTypeE.exit: ; preds = %select.unfold.jt1, %.thread, %_ZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE10tryConsumeEDs.exit5.thread, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_14LeftAnchorNodeEJNS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17, !noalias !520 ; 7 uses
  %.sroa.0.0.copyload.i = load i8, ptr %1, align 1, !tbaa !29, !noalias !520
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex14LeftAnchorNodeE, i64 16), ptr %i.a, align 8, !tbaa !128, !noalias !520
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = lshr i8 %.sroa.0.0.copyload.i, 2
  %.lobit.i.i = and i8 %i.c, 1
  store i8 %.lobit.i.i, ptr %i.b, align 8, !tbaa !211, !noalias !520
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !123
  %.not.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !122
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !124  ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #17 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !37
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.y = add i64 %i.l, -8
  %i.z = sub i64 %i.y, %i.m                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep19 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep19
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ak = getelementptr i8, ptr %next.gep20, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep20, align 8, !tbaa !37, !alias.scope !523, !noalias !521
  %wide.load21 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !37, !alias.scope !523, !noalias !521
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !524, !noalias !523
  store <2 x i64> %wide.load21, ptr %i.al, align 8, !tbaa !37, !alias.scope !524, !noalias !523
  %i.am = getelementptr i8, ptr %next.gep20, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep20, align 8, !tbaa !37, !alias.scope !523, !noalias !521
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !37, !alias.scope !523, !noalias !521
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !518

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader23

.lr.ph.i.i.i.i.preheader23:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader23, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader23 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !522, !noalias !521
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !37, !alias.scope !521, !noalias !522
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !37, !alias.scope !522, !noalias !521
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !519

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !123
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.au) #18
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.e
  store ptr %i.v, ptr %i.d, align 8, !tbaa !124
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !122
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.av, ptr %i.g, align 8, !tbaa !123
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  %.not.i.i4 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  store ptr %i.a, ptr %i.ay, align 8, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !55
  br label %_ZNSt10unique_ptrIN6hermes5regex14LeftAnchorNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 4 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.bc to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN6hermes5regex6ParserINS0_5RegexINS0_16UTF16RegexTraitsEEEPKDsE21consumeCharacterClassEvENKUlRKNS7_9ClassAtomEE_clESA_:bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !218  ; 9 uses
  %i.o = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775806
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add i64 %.sroa.speculated.i.i.i.i, %i.s  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4611686018427387903)
  %i.w = select i1 %i.u, i64 4611686018427387903, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q
  store i16 %.sroa.01.0.copyload, ptr %i.z, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = add i64 %i.o, -2
  %i.ac = sub i64 %i.ab, %i.p                     ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ac, 6
  %i.af = sub i64 %i.p, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check15 = icmp ult i64 %i.ac, 30
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.ae, 12
  %n.vec = and i64 %i.ae, -16                     ; 4 uses
  %i.ah = shl i64 %n.vec, 1                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.n, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.al = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep16, align 1, !alias.scope !660, !noalias !659
  %wide.load17 = load <8 x i16>, ptr %i.al, align 1, !alias.scope !660, !noalias !659
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !659, !noalias !660
  store <8 x i16> %wide.load17, ptr %i.am, align 1, !alias.scope !659, !noalias !660
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !219

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec19 = and i64 %i.ae, -4                    ; 3 uses
  %i.ao = shl i64 %n.vec19, 1                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.y, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr i8, ptr %i.n, i64 %i.ao
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.ar = shl i64 %index20, 1                     ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.y, i64 %i.ar
  %next.gep22 = getelementptr i8, ptr %i.n, i64 %i.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %wide.load23 = load <4 x i16>, ptr %next.gep22, align 1, !alias.scope !660, !noalias !659
  store <4 x i16> %wide.load23, ptr %next.gep21, align 1, !alias.scope !659, !noalias !660
  %index.next24 = add nuw i64 %index20, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next24, %n.vec19
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !654

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.ae, %n.vec19
  br i1 %cmp.n25, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.n, %iter.check ], [ %i.aj, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.at = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !660, !noalias !659
  store i16 %i.at, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !659, !noalias !660
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !655

_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ap, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !217
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.az) #18
  br label %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !218
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !216
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !217
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addClassENS0_14CharacterClassE.exit

bb.g:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !206, !range !160, !noundef !157
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %0, align 8, !tbaa !658, !nonnull !157, !align !158
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !191
  %.sroa.0.0.copyload = load ptr, ptr %i.be, align 8, !tbaa !662
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !111
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !665, !range !160, !noundef !157
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @_ZN6hermes26addRangeArrayPoolToBracketEPNS_12CodePointSetEN4llvh8ArrayRefINS_19UnicodeRangePoolRefEEEb(ptr noundef nonnull %i.bk, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext %i.bj) #15
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addClassENS0_14CharacterClassE.exit

bb.i:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %0, align 8, !tbaa !658, !nonnull !157, !align !158
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !191 ; 2 uses
  %i.bn = load i32, ptr %1, align 8, !tbaa !205
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 4 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bn to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = call { ptr, ptr } @_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_(ptr noundef %i.bp, ptr noundef %i.bt, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 6 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 6 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = call noundef ptr @_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 0 uses
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE7addCharEj.exit

bb.k:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.cb = load i32, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.cc = call i32 @llvm.umin.i32(i32 %i.ca, i32 %i.cb) ; 2 uses
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !208
  %i.ce = add i32 %i.cd, %i.cb
  %i.cf = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !209
  %i.ch = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !208
  %i.cj = add i32 %i.ci, %i.cg
  %.sroa.speculated.i.i.i = call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.cj)
  %i.ck = sub i32 %.sroa.speculated.i.i.i, %i.cc
  store i32 %i.cc, ptr %i.bv, align 4, !tbaa !17
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.ck, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !39 ; 3 uses
  %i.cn = load i32, ptr %i.bq, align 8, !tbaa !40
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.bw to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = icmp sgt i64 %i.cs, 8
  br i1 %i.ct, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr nonnull align 4 %i.bw, i64 %i.cs, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !39
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cu = icmp eq i64 %i.cs, 8
  br i1 %i.cu, label %bb.n, label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cv = load i64, ptr %i.bw, align 4, !tbaa !17
  store i64 %i.cv, ptr %i.cl, align 4, !tbaa !17
  br label %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i

_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %3 = phi ptr [ %.pre.i.i.i.i, %bb.l ], [ %i.cm, %bb.m ], [ %i.cm, %bb.n ]
  %4 = getelementptr inbounds i8, ptr %i.cl, i64 %i.cs
  %i.cw = ptrtoint ptr %4 to i64
  %i.cx = ptrtoint ptr %3 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = lshr exact i64 %i.cy, 3
  %i.da = trunc i64 %i.cz to i32
  store i32 %i.da, ptr %i.bq, align 8, !tbaa !40
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE7addCharEj.exit

_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE7addCharEj.exit: ; preds = %bb.j, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addClassENS0_14CharacterClassE.exit

_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8addClassENS0_14CharacterClassE.exit: ; preds = %_ZNSt6vectorIN6hermes5regex14CharacterClassESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.c, %bb.h, %_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE7addCharEj.exit
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE6insertEPS2_RKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.f = icmp eq ptr %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !41
  %.not.i = icmp ult i32 %i.c, %i.h               ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 8) #15
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !40
  %.pre19 = load ptr, ptr %0, align 8, !tbaa !39
  %.pre20 = zext i32 %.pre.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit: ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.d, %bb.b ], [ %.pre20, %bb.c ]
  %i.j = phi ptr [ %i.a, %bb.b ], [ %.pre19, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.pre-phi
  %i.l = load i64, ptr %2, align 4
  store i64 %i.l, ptr %i.k, align 1
  %i.m = load i32, ptr %i.b, align 8, !tbaa !40
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %i.b, align 8, !tbaa !40
  %i.o = load ptr, ptr %0, align 8, !tbaa !39
  %i.p = zext i32 %i.n to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = ptrtoint ptr %1 to i64
  %i.t = ptrtoint ptr %i.a to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 8) #15
  %i.w = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %.pre = load i32, ptr %i.b, align 8, !tbaa !40
  %.pre21 = zext i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi22 = phi i64 [ %.pre21, %bb.e ], [ %i.d, %bb.d ]
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.a, %bb.d ] ; 2 uses
  %.015 = phi ptr [ %i.x, %bb.e ], [ %1, %bb.d ]  ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi22 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ab = load i64, ptr %i.aa, align 4, !tbaa !17
  store i64 %i.ab, ptr %i.z, align 4, !tbaa !17
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !40
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %.015 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !60

bb.g:                                             ; preds = %bb.f
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %.015, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit

bb.h:                                             ; preds = %bb.f
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.i, label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %.015, align 4, !tbaa !17
  store i64 %i.ao, ptr %i.af, align 4, !tbaa !17
  br label %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !40
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !40
  %.not18 = icmp ugt ptr %.015, %2
  br i1 %.not18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !39
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = icmp ult ptr %2, %i.at
  %spec.select.idx = select i1 %i.au, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit
  %.0 = phi ptr [ %2, %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit ], [ %spec.select, %bb.j ]
  %i.av = load i64, ptr %.0, align 4, !tbaa !17
  store i64 %i.av, ptr %.015, align 4, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit
  %.014 = phi ptr [ %i.r, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit ], [ %.015, %bb.k ]
  ret ptr %.014
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, ptr } @_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 4, !tbaa !17 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i to i32 ; 12 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.f = add i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i ; 7 uses
  br label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %bb.d
  %.01368 = phi i64 [ %i.d, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.2, %bb.d ] ; 3 uses
  %.067 = phi ptr [ %0, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %bb.d ] ; 4 uses
  %i.g = lshr i64 %.01368, 1                      ; 5 uses
  %.idx91 = shl nuw nsw i64 %i.g, 3               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.067, i64 %.idx91 ; 3 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 4, !tbaa !17 ; 2 uses
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.01.0.copyload.i to i32 ; 6 uses
  %.sroa.47.0.extract.shift.i.i = lshr i64 %.sroa.01.0.copyload.i, 32
  %.sroa.47.0.extract.trunc.i.i = trunc nuw i64 %.sroa.47.0.extract.shift.i.i to i32
  %i.i = icmp ugt i32 %i.f, %.sroa.04.0.extract.trunc.i.i ; 2 uses
  %i.j = add i32 %.sroa.47.0.extract.trunc.i.i, %.sroa.04.0.extract.trunc.i.i ; 3 uses
  %i.k = icmp ugt i32 %i.j, %.sroa.0.0.extract.trunc.i.i ; 2 uses
  %i.l = select i1 %i.i, i1 %i.k, i1 false
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = icmp ne i32 %i.f, %.sroa.04.0.extract.trunc.i.i
  %i.n = icmp ne i32 %i.j, %.sroa.0.0.extract.trunc.i.i
  %.not10.i.i = select i1 %i.m, i1 %i.n, i1 false
  %i.o = icmp ult i32 %.sroa.04.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  %spec.select.i.i = and i1 %i.o, %.not10.i.i
  br i1 %spec.select.i.i, label %bb.b, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = xor i64 %i.g, -1
  %i.r = add nsw i64 %.01368, %i.q
  br label %bb.d

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit
  %i.s = and i1 %i.k, %i.i
  br i1 %i.s, label %.critedge, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread
  %i.t = icmp ne i32 %i.j, %.sroa.0.0.extract.trunc.i.i
  %i.u = icmp ne i32 %i.f, %.sroa.04.0.extract.trunc.i.i
  %.not10.i.i22 = and i1 %i.t, %i.u
  %i.v = icmp ult i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.04.0.extract.trunc.i.i
  %spec.select.i.i23 = and i1 %i.v, %.not10.i.i22
  br i1 %spec.select.i.i23, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %.critedge, %.thread.i
  %.026.i = phi i64 [ %i.aj, %.thread.i ], [ %i.g, %.critedge ] ; 2 uses
  %.01125.i = phi ptr [ %i.ai, %.thread.i ], [ %.067, %.critedge ] ; 3 uses
  %i.w = lshr i64 %.026.i, 1                      ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.01125.i, i64 %i.w ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.x, align 4, !tbaa !17 ; 2 uses
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32 ; 4 uses
  %.sroa.47.0.extract.shift.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i, 32
  %.sroa.47.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.47.0.extract.shift.i.i.i to i32
  %i.y = icmp ugt i32 %i.f, %.sroa.04.0.extract.trunc.i.i.i
  %i.z = add i32 %.sroa.47.0.extract.trunc.i.i.i, %.sroa.04.0.extract.trunc.i.i.i ; 2 uses
  %i.aa = icmp ugt i32 %i.z, %.sroa.0.0.extract.trunc.i.i
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %i.ab, label %.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ac = icmp ne i32 %i.f, %.sroa.04.0.extract.trunc.i.i.i
  %i.ad = icmp ne i32 %i.z, %.sroa.0.0.extract.trunc.i.i
  %.not10.i.i.i = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp ult i32 %.sroa.04.0.extract.trunc.i.i.i, %.sroa.0.0.extract.trunc.i.i
  %spec.select.i.i.i = and i1 %i.ae, %.not10.i.i.i
  %cond.fr.i = freeze i1 %spec.select.i.i.i       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ag = xor i64 %i.w, -1
  %i.ah = add nsw i64 %.026.i, %i.ag
  %spec.select.i = select i1 %cond.fr.i, ptr %i.af, ptr %.01125.i
  %spec.select24.i = select i1 %cond.fr.i, i64 %i.ah, i64 %i.w
  br label %.thread.i

.thread.i:                                        ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ai = phi ptr [ %.01125.i, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %spec.select.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i ] ; 2 uses
  %i.aj = phi i64 [ %i.w, %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %spec.select24.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i ] ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !666

_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit: ; preds = %.thread.i, %.critedge
  %.011.lcssa.i = phi ptr [ %.067, %.critedge ], [ %i.ai, %.thread.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.01368, 3
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.am = add nuw nsw i64 %.idx91, 8
  %gepdiff = sub nsw i64 %.idx, %i.am
  %i.an = ashr exact i64 %gepdiff, 3              ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34: ; preds = %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, %.split.i
  %.025.i = phi i64 [ %i.bf, %.split.i ], [ %i.an, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ] ; 3 uses
  %.01124.i = phi ptr [ %i.be, %.split.i ], [ %i.al, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ] ; 2 uses
  %i.ap = lshr i64 %.025.i, 1                     ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.01124.i, i64 %i.ap ; 3 uses
  %.sroa.0.0.copyload.i.i37 = load i64, ptr %i.aq, align 4, !tbaa !17 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i38 = trunc i64 %.sroa.0.0.copyload.i.i37 to i32 ; 4 uses
  %.sroa.4.0.extract.shift.i.i.i39 = lshr i64 %.sroa.0.0.copyload.i.i37, 32
  %.sroa.4.0.extract.trunc.i.i.i40 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.i39 to i32
  %i.ar = add i32 %.sroa.4.0.extract.trunc.i.i.i40, %.sroa.0.0.extract.trunc.i.i.i38 ; 2 uses
  %i.as = icmp ugt i32 %i.ar, %.sroa.0.0.extract.trunc.i.i
  %i.at = icmp ugt i32 %i.f, %.sroa.0.0.extract.trunc.i.i.i38
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %.thread.i44, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i

.thread.i44:                                      ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = xor i64 %i.ap, -1
  %i.ax = add nsw i64 %.025.i, %i.aw
  br label %.split.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34
  %i.ay = icmp ne i32 %i.ar, %.sroa.0.0.extract.trunc.i.i
  %i.az = icmp ne i32 %i.f, %.sroa.0.0.extract.trunc.i.i.i38
  %.not10.i.i.i41 = and i1 %i.az, %i.ay
  %i.ba = icmp ult i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i.i38
  %spec.select.i.i.i42 = and i1 %i.ba, %.not10.i.i.i41
  %cond.fr.i43 = freeze i1 %spec.select.i.i.i42
  br i1 %cond.fr.i43, label %.split.i, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i
  %i.bb = xor i64 %i.ap, -1
  %i.bc = add nsw i64 %.025.i, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %.split.i

.split.i:                                         ; preds = %bb.c, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i, %.thread.i44
  %i.be = phi ptr [ %i.av, %.thread.i44 ], [ %i.bd, %bb.c ], [ %.01124.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bf = phi i64 [ %i.ax, %.thread.i44 ], [ %i.bc, %bb.c ], [ %i.ap, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i34, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !667

bb.d:                                             ; preds = %bb.b, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit
  %.1 = phi ptr [ %i.p, %bb.b ], [ %.067, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit ] ; 3 uses
  %.2 = phi i64 [ %i.r, %bb.b ], [ %i.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIKS4_PS4_EEbRT_T0_.exit ] ; 2 uses
  %i.bh = icmp sgt i64 %.2, 0
  br i1 %i.bh, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit, !llvm.loop !668

_ZSt13__upper_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Val_comp_iterIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit: ; preds = %bb.d, %.split.i, %bb.a, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit
  %.sroa.3.0 = phi ptr [ %i.be, %.split.i ], [ %i.al, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.1, %bb.d ]
  %.sroa.0.0 = phi ptr [ %.011.lcssa.i, %.split.i ], [ %.011.lcssa.i, %_ZSt13__lower_boundIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EEET_S9_S9_RKT0_T1_.exit ], [ %0, %bb.a ], [ %.1, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEE10appendNodeINS0_13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.271", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17, !noalias !679 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !39, !noalias !679
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !40, !noalias !679
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 5, ptr %i.d, align 4, !tbaa !41, !noalias !679
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40, !noalias !679
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i, label %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i: ; preds = %bb.a
  %.sroa.0.0.copyload3.i = load i8, ptr %2, align 1, !tbaa !29, !noalias !679
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.a, align 8, !tbaa !128, !noalias !679
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.g, align 8, !tbaa !39, !noalias !679
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !40, !noalias !679
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 5, ptr %i.j, align 4, !tbaa !41, !noalias !679
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i

_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i:       ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1), !noalias !679 ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !40, !noalias !679
  %i.l = icmp eq i32 %.pre.i, 0
  %.sroa.0.0.copyload.i = load i8, ptr %2, align 1, !tbaa !29, !noalias !679 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6hermes5regex13MatchCharNodeE, i64 16), ptr %i.a, align 8, !tbaa !128, !noalias !679
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.n, ptr %i.m, align 8, !tbaa !39, !noalias !679
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !40, !noalias !679
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 5, ptr %i.p, align 4, !tbaa !41, !noalias !679
  br i1 %i.l, label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(36) %i.m, ptr noundef nonnull align 8 dereferenceable(36) %3), !noalias !679 ; 0 uses
  br label %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i

_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i: ; preds = %bb.b, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i
  %.sroa.0.0.copyload4.i = phi i8 [ %.sroa.0.0.copyload3.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.thread.i ], [ %.sroa.0.0.copyload.i, %_ZN4llvh11SmallVectorIjLj5EEC2EOS1_.exit.i ], [ %.sroa.0.0.copyload.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = and i8 %.sroa.0.0.copyload4.i, 1
  store i8 %i.s, ptr %i.r, align 8, !tbaa !261, !noalias !679
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  %i.u = lshr i8 %.sroa.0.0.copyload4.i, 3
  %.lobit.i.i = and i8 %i.u, 1
  store i8 %.lobit.i.i, ptr %i.t, align 1, !tbaa !262, !noalias !679
  %i.v = load ptr, ptr %3, align 8, !tbaa !39, !noalias !679 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i
  call void @free(ptr noundef %i.v) #15, !noalias !679
  br label %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN6hermes5regex13MatchCharNodeC2EN4llvh11SmallVectorIjLj5EEENS0_11SyntaxFlagsE.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122  ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !123
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ac = ptrtoint ptr %i.a to i64
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !122
  br label %_ZNSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZSt11make_uniqueIN6hermes5regex13MatchCharNodeEJN4llvh11SmallVectorIjLj5EEENS1_11SyntaxFlagsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !124 ; 10 uses
  %i.af = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 4 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i7 = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i7)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #17 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  %i.ar = ptrtoint ptr %i.a to i64
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !37
  %.not10.i.i.i.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.as = add i64 %i.af, -8
  %i.at = sub i64 %i.as, %i.ag                    ; 2 uses
  %i.au = lshr i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.at, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = add i64 %i.af, -8
  %i.ax = sub i64 %i.aw, %i.ag
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.az
  %scevgep21 = getelementptr i8, ptr %i.ae, i64 %i.az
  %bound0 = icmp ult ptr %i.ap, %scevgep21
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ae, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.bd ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.ae, i64 %i.bd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.be = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep22, align 8, !tbaa !37, !alias.scope !682, !noalias !680
  %wide.load23 = load <2 x i64>, ptr %i.be, align 8, !tbaa !37, !alias.scope !682, !noalias !680
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !683, !noalias !682
end_hunk_1
