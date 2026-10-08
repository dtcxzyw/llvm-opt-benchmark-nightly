Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ParseTentative?download=true
inline.NumInlined: 881
inline.NumDeleted: 292
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5clang6Parser25isCXX11AttributeSpecifierEbb:bb.a
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %indvars.i.i, ptr %i.bl, align 8, !tbaa !28
  %.not.i.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i, label %bb.q, !llvm.loop !0

.sink.split.i:                                    ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i, %bb.p, %bb.n
  %.sink3.i = phi i16 [ 1, %bb.n ], [ -1, %bb.p ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i.i ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i.i ]
  %i.ce = add i16 %.sink3.i, %i.bk
  store i16 %i.ce, ptr %i.bd, align 2, !tbaa !1005
  br label %_ZN5clang6Parser14ConsumeBracketEv.exit

_ZN5clang6Parser14ConsumeBracketEv.exit:          ; preds = %bb.o, %.sink.split.i
  %i.cf = load i32, ptr %i.d, align 8, !tbaa !770
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !18
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ch, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #10
  %i.ci = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !983, !nonnull !105, !align !106
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = and i64 %i.cl, 1048576
  %.not21 = icmp eq i64 %i.cm, 0
  br i1 %.not21, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN5clang6Parser14ConsumeBracketEv.exit
  %i.cn = tail call i32 @_ZN5clang6Parser14ConsumeBracketEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 21, ptr %i.b, align 2, !tbaa !24
  %i.co = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.b, i64 1, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cp = load i16, ptr %i.e, align 8, !tbaa !13
  %i.cq = icmp eq i16 %i.cp, 21
  %i.cr = and i1 %i.co, %i.cq
  %i.cs = select i1 %i.cr, i32 1, i32 2
  br label %.loopexit

bb.u:                                             ; preds = %_ZN5clang6Parser14ConsumeBracketEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr %0, ptr %3, align 8, !tbaa !989
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false), !tbaa.struct !23
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cu, ptr noundef nonnull align 8 dereferenceable(20) %i.d, i64 20, i1 false), !tbaa.struct !26
  %i.cv = load i32, ptr %i.az, align 8, !tbaa !28
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !981
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cz = load <2 x i16>, ptr %i.bc, align 8, !tbaa !25
  store <2 x i16> %i.cz, ptr %i.cy, align 8, !tbaa !25
  %i.da = load i16, ptr %i.bf, align 4, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i16 %i.da, ptr %i.db, align 4, !tbaa !982
  tail call void @_ZN5clang12Preprocessor24EnableBacktrackAtThisPosEb(ptr noundef nonnull align 8 dereferenceable(3344) %i.ci, i1 noundef zeroext false) #10
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 86
  store i8 1, ptr %i.dc, align 2, !tbaa !990
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %4, i8 0, i64 16, i1 false)
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !970
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.df, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 4, ptr %i.dg, align 4, !tbaa !975
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.dh = call noundef zeroext i1 @_ZN5clang6Parser21ParseLambdaIntroducerERNS_16LambdaIntroducerEPNS0_30LambdaIntroducerTentativeParseE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef nonnull %i.c) #10
  br i1 %i.dh, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = load i32, ptr %i.c, align 4, !tbaa !1042
  switch i32 %i.di, label %bb.x [
    i32 2, label %bb.y
    i32 0, label %bb.w
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.dj = load i16, ptr %i.e, align 8, !tbaa !13
  %i.dk = icmp eq i16 %i.dj, 21
  %. = select i1 %2, i32 0, i32 2
  %spec.select = select i1 %i.dk, i32 1, i32 %.
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.x
  %cond = phi i1 [ false, %bb.w ], [ true, %bb.x ], [ false, %bb.u ], [ false, %bb.v ]
  %.0 = phi i32 [ %spec.select, %bb.w ], [ undef, %bb.x ], [ 0, %bb.u ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !970 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.de
  br i1 %i.dm, label %_ZN5clang16LambdaIntroducerD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef %i.dl) #10
  br label %_ZN5clang16LambdaIntroducerD2Ev.exit

_ZN5clang16LambdaIntroducerD2Ev.exit:             ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev(ptr noundef nonnull align 8 dead_on_return(87) dereferenceable(87) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %cond, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %_ZN5clang16LambdaIntroducerD2Ev.exit
  %i.dn = call i32 @_ZN5clang6Parser14ConsumeBracketEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ai, %bb.aa
  %i.do = load i16, ptr %i.e, align 8, !tbaa !13
  switch i16 %i.do, label %bb.ac [
    i16 21, label %.critedge.thread
    i16 67, label %.loopexit
  ]

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !771
  %i.dp = call noundef ptr @_ZN5clang6Parser32TryParseCXX11AttributeIdentifierERNS_14SourceLocationENS_18SemaCodeCompletion19AttributeCompletionEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 2, ptr noundef null) #10
  %.not22 = icmp eq ptr %i.dp, null
  br i1 %.not22, label %.critedge65, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load i16, ptr %i.e, align 8, !tbaa !13  ; 2 uses
  %i.dr = icmp eq i16 %i.dq, 73
  br i1 %i.dr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.d, align 8, !tbaa !770
  store i32 %i.ds, ptr %i.cg, align 8, !tbaa !18
  %i.dt = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.dt, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #10
  %i.du = call noundef ptr @_ZN5clang6Parser32TryParseCXX11AttributeIdentifierERNS_14SourceLocationENS_18SemaCodeCompletion19AttributeCompletionEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 2, ptr noundef null) #10
  %.not23 = icmp eq ptr %i.du, null
  br i1 %.not23, label %.critedge65, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ae
  %.pr = load i16, ptr %i.e, align 8, !tbaa !13
  br label %bb.af

bb.af:                                            ; preds = %thread-pre-split, %bb.ad
  %i.dv = phi i16 [ %.pr, %thread-pre-split ], [ %i.dq, %bb.ad ] ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 22
  br i1 %i.dw, label %_ZN5clang6Parser12ConsumeParenEv.exit, label %bb.ag

_ZN5clang6Parser12ConsumeParenEv.exit:            ; preds = %bb.af
  %i.dx = load i16, ptr %i.bc, align 8, !tbaa !998
  %i.dy = add i16 %i.dx, 1
  store i16 %i.dy, ptr %i.bc, align 8, !tbaa !998
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !770
  store i32 %i.dz, ptr %i.cg, align 8, !tbaa !18
  %i.ea = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ea, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 23, ptr %i.a, align 2, !tbaa !24
  %i.eb = call noundef zeroext i1 @_ZN5clang6Parser9SkipUntilEN4llvm8ArrayRefINS_3tok9TokenKindEEENS0_14SkipUntilFlagsE(ptr noundef nonnull align 8 dereferenceable(2960) %0, ptr nonnull %i.a, i64 1, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.eb, label %_ZN5clang6Parser12ConsumeParenEv.exit._crit_edge, label %.critedge65

_ZN5clang6Parser12ConsumeParenEv.exit._crit_edge: ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit
  %.pre = load i16, ptr %i.e, align 8, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit._crit_edge, %bb.af
  %i.ec = phi i16 [ %.pre, %_ZN5clang6Parser12ConsumeParenEv.exit._crit_edge ], [ %i.dv, %bb.af ] ; 2 uses
  %.not.i48 = icmp eq i16 %i.ec, 27
  br i1 %.not.i48, label %bb.ah, label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i32, ptr %i.d, align 8, !tbaa !770
  store i32 %i.ed, ptr %i.cg, align 8, !tbaa !18
  %i.ee = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.ee, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #10
  %.pr58 = load i16, ptr %i.e, align 8, !tbaa !13
  br label %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit

_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit: ; preds = %bb.ag, %bb.ah
  %i.ef = phi i16 [ %i.ec, %bb.ag ], [ %.pr58, %bb.ah ] ; 2 uses
  %.not.i49 = icmp eq i16 %i.ef, 67
  br i1 %.not.i49, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit
  %i.eg = load i32, ptr %i.d, align 8, !tbaa !770
  store i32 %i.eg, ptr %i.cg, align 8, !tbaa !18
  %i.eh = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.eh, ptr noundef nonnull align 8 dereferenceable(20) %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.ab

.critedge:                                        ; preds = %_ZN5clang6Parser15TryConsumeTokenENS_3tok9TokenKindE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.ei = icmp eq i16 %i.ef, 21
  br i1 %i.ei, label %.critedge.thread, label %.loopexit

.critedge.thread:                                 ; preds = %bb.ab, %.critedge
  %i.ej = call i32 @_ZN5clang6Parser14ConsumeBracketEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) ; 0 uses
  %i.ek = load i16, ptr %i.e, align 8, !tbaa !13
  %i.el = icmp eq i16 %i.ek, 21
  %i.em = zext i1 %i.el to i32
  br label %.loopexit

.critedge65:                                      ; preds = %_ZN5clang6Parser12ConsumeParenEv.exit, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %.critedge65, %.critedge.thread, %.critedge, %_ZN5clang16LambdaIntroducerD2Ev.exit, %bb.t
  %.2 = phi i32 [ %i.cs, %bb.t ], [ %.0, %_ZN5clang16LambdaIntroducerD2Ev.exit ], [ 0, %.critedge ], [ %i.em, %.critedge.thread ], [ 0, %.critedge65 ], [ 1, %bb.ab ]
  %i.en = load ptr, ptr %i.o, align 8, !tbaa !104, !nonnull !105, !align !106
  call void @_ZN5clang12Preprocessor9BacktrackEv(ptr noundef nonnull align 8 dereferenceable(3344) %i.en) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.10, i64 20, i1 false), !tbaa.struct !26
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2672 ; 2 uses
  %i.ep = load i32, ptr %i.az, align 8, !tbaa !28 ; 3 uses
  %i.eq = icmp eq i32 %i.ba, %i.ep
  br i1 %i.eq, label %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.er = icmp ult i32 %i.ba, %i.ep
  br i1 %i.er, label %.sink.split.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2684
  %i.et = load i32, ptr %i.es, align 4, !tbaa !975
  %i.eu = icmp ugt i32 %i.ba, %i.et
  br i1 %i.eu, label %bb.al, label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 2688
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, ptr noundef nonnull %i.ev, i64 noundef %i.bb, i64 noundef 8) #10
  %.pre.i.i.i.i = load i32, ptr %i.az, align 8, !tbaa !28
  br label %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i: ; preds = %bb.al, %bb.ak
  %.pre-phi.i.i.i.i.in = phi i32 [ %i.ep, %bb.ak ], [ %.pre.i.i.i.i, %bb.al ] ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ba, %.pre-phi.i.i.i.i.in
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i
  %.pre-phi.i.i.i.i = zext i32 %.pre-phi.i.i.i.i.in to i64 ; 2 uses
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !970
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %.pre-phi.i.i.i.i
  %i.ey = sub nsw i64 %i.bb, %.pre-phi.i.i.i.i
  %i.ez = shl nsw i64 %i.ey, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ex, i8 0, i64 %i.ez, i1 false), !tbaa !976
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplIPKN5clang14IdentifierInfoEE7reserveEm.exit.i.i.i.i, %bb.aj
  store i32 %i.ba, ptr %i.az, align 8, !tbaa !28
  br label %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit

_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit: ; preds = %.loopexit, %.sink.split.i.i.i.i
  store <2 x i16> %i.be, ptr %i.bc, align 8, !tbaa !25
  store i16 %i.bg, ptr %i.bf, align 4, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %.thread57

.thread57:                                        ; preds = %bb.b, %_ZN5clang6Parser17GetLookAheadTokenEj.exit, %bb.i, %bb.d, %_ZN5clang6Parser9NextTokenEv.exit, %bb.c, %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit
  %.3 = phi i32 [ %spec.select62, %bb.b ], [ 1, %bb.c ], [ 1, %bb.i ], [ %.2, %_ZN5clang6Parser31RevertingTentativeParsingActionD2Ev.exit ], [ 0, %bb.d ], [ 0, %_ZN5clang6Parser9NextTokenEv.exit ], [ 1, %_ZN5clang6Parser17GetLookAheadTokenEj.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang6Parser17GetLookAheadTokenEj(ptr noundef nonnull align 8 dereferenceable(2960) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %i.b, align 8
  %i.d = icmp eq i16 %i.c, 1
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN5clang12Preprocessor9LookAheadEj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104, !nonnull !105, !align !106 ; 4 uses
  %i.h = add i32 %1, -1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2960
  %i.j = load i64, ptr %i.i, align 8, !tbaa !969
  %i.k = zext i32 %i.h to i64
  %i.l = add i64 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2928
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %i.o = zext i32 %i.n to i64
  %i.p = icmp ult i64 %i.l, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 2920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !970
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.l
  br label %_ZN5clang12Preprocessor9LookAheadEj.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(20) ptr @_ZN5clang12Preprocessor9PeekAheadEj(ptr noundef nonnull align 8 dereferenceable(3344) %i.g, i32 noundef %1) #10
  br label %_ZN5clang12Preprocessor9LookAheadEj.exit

_ZN5clang12Preprocessor9LookAheadEj.exit:         ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.s, %bb.d ], [ %i.t, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN5clang6Parser14ConsumeBracketEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i16 %i.b, 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !1005 ; 4 uses
  br i1 %i.c, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 2 uses
  %.promoted.i = load i32, ptr %i.f, align 8, !tbaa !28 ; 2 uses
  %.not.i2.i = icmp eq i32 %.promoted.i, 0
  br i1 %.not.i2.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !970
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i16, ptr %i.i, align 8, !tbaa !998  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %i.m = zext i32 %.promoted.i to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv.i ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1002 ; 2 uses
  %i.q = icmp eq i16 %i.j, %i.p
  br i1 %i.q, label %bb.e, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i16, ptr %i.r, align 8, !tbaa !1003
  %i.t = icmp eq i16 %i.e, %i.s
  br i1 %i.t, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i: ; preds = %bb.e
  %i.u = getelementptr inbounds i8, ptr %i.n, i64 -6
  %i.v = load i16, ptr %i.u, align 2, !tbaa !1004 ; 2 uses
  %i.w = icmp eq i16 %i.l, %i.v
  br i1 %i.w, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i

_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i: ; preds = %bb.e, %bb.d
  %.old.i.i = icmp ugt i16 %i.j, %i.p
  br i1 %.old.i.i, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i
  %.phi.trans.insert5.i.i = getelementptr inbounds i8, ptr %i.n, i64 -8
  %.pre6.i.i = load i16, ptr %.phi.trans.insert5.i.i, align 8, !tbaa !1003
  %i.x = icmp ugt i16 %i.e, %.pre6.i.i
  br i1 %i.x, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, label %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i

._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i: ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %i.n, i64 -6
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !1004
  br label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i: ; preds = %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i
  %i.y = phi i16 [ %.pre.i, %._ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit_crit_edge.i ], [ %i.v, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i ]
  %i.z = icmp ugt i16 %i.l, %i.y
  br i1 %i.z, label %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, label %.sink.split

_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i: ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i, %bb.f, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.thread.i.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc8isActiveERS0_.exit.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %i.f, align 8, !tbaa !28
  %.not.i.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i.i, label %.sink.split, label %bb.d, !llvm.loop !0

.sink.split:                                      ; preds = %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i, %bb.c, %bb.a
  %.sink3 = phi i16 [ 1, %bb.a ], [ -1, %bb.c ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.i ], [ -1, %_ZNK5clang6Parser19AngleBracketTracker3Loc16isActiveOrNestedERS0_.exit.thread.i ]
  %i.aa = add i16 %i.e, %.sink3
  store i16 %i.aa, ptr %i.d, align 2, !tbaa !1005
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !770
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104, !nonnull !105, !align !106
  tail call void @_ZN5clang12Preprocessor3LexERNS_5TokenE(ptr noundef nonnull align 8 dereferenceable(3344) %i.af, ptr noundef nonnull align 8 dereferenceable(20) %i.ab) #10
  %.sroa.01.0.copyload = load i32, ptr %i.ad, align 8, !tbaa !18
  ret i32 %.sroa.01.0.copyload
}

declare noundef zeroext i1 @_ZN5clang6Parser21ParseLambdaIntroducerERNS_16LambdaIntroducerEPNS0_30LambdaIntroducerTentativeParseE(ptr noundef nonnull align 8 dereferenceable(2960), ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN5clang6Parser32TryParseCXX11AttributeIdentifierERNS_14SourceLocationENS_18SemaCodeCompletion19AttributeCompletionEPKNS_14IdentifierInfoE(ptr noundef nonnull align 8 dereferenceable(2960), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZN5clang6Parser22TryParsePtrOperatorSeqEv(ptr noundef nonnull align 8 dereferenceable(2960) %0) local_unnamed_addr #0 align 2 {
bb.a:
end_hunk_0
