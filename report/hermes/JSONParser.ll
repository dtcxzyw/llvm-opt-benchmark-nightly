inline.NumInlined: 698
inline.NumDeleted: 419
begin_hunk_0_@_ZN6hermes6parser11JSONFactory9newObjectEPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEES8_b:bb.a
vector.memcheck24:                                ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i
  %i.cn = add i64 %i.d, -16
  %i.co = sub i64 %i.cn, %i.c                     ; 2 uses
  %i.cp = lshr i64 %i.co, 1
  %i.cq = and i64 %i.cp, 9223372036854775800
  %i.cr = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.cq
  %scevgep25 = getelementptr i8, ptr %i.cr, i64 24
  %scevgep26 = getelementptr i8, ptr %1, i64 8
  %i.cs = and i64 %i.co, -16
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %scevgep27 = getelementptr i8, ptr %i.ct, i64 16
  %bound028 = icmp ult ptr %i.ci, %scevgep27
  %bound129 = icmp ult ptr %scevgep26, %scevgep25
  %found.conflict30 = and i1 %bound028, %bound129
  br i1 %found.conflict30, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck24
  %n.mod.vf34 = and i64 %i.cm, 3                  ; 2 uses
  %i.cu = icmp eq i64 %n.mod.vf34, 0
  %i.cv = select i1 %i.cu, i64 4, i64 %n.mod.vf34
  %n.vec35 = sub nsw i64 %i.cm, %i.cv             ; 3 uses
  %i.cw = shl i64 %n.vec35, 3
  %i.cx = getelementptr i8, ptr %i.ci, i64 %i.cw
  %i.cy = shl i64 %n.vec35, 4
  %i.cz = getelementptr i8, ptr %1, i64 %i.cy
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next43, %vector.body36 ] ; 3 uses
  %i.da = shl i64 %index37, 3
  %next.gep38 = getelementptr i8, ptr %i.ci, i64 %i.da ; 2 uses
  %i.db = shl i64 %index37, 4                     ; 4 uses
  %next.gep39 = getelementptr i8, ptr %1, i64 %i.db
  %i.dc = getelementptr i8, ptr %1, i64 %i.db
  %i.dd = getelementptr i8, ptr %1, i64 %i.db
  %i.de = getelementptr i8, ptr %1, i64 %i.db
  %i.df = getelementptr inbounds nuw i8, ptr %next.gep39, i64 8
  %i.dg = getelementptr i8, ptr %i.dc, i64 24
  %i.dh = getelementptr i8, ptr %i.dd, i64 40
  %i.di = getelementptr i8, ptr %i.de, i64 56
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !130, !alias.scope !143
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !130, !alias.scope !143
  %i.dl = insertelement <2 x ptr> poison, ptr %i.dj, i64 0
  %i.dm = insertelement <2 x ptr> %i.dl, ptr %i.dk, i64 1
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !130, !alias.scope !143
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !130, !alias.scope !143
  %i.dp = insertelement <2 x ptr> poison, ptr %i.dn, i64 0
  %i.dq = insertelement <2 x ptr> %i.dp, ptr %i.do, i64 1
  %i.dr = getelementptr i8, ptr %next.gep38, i64 16
  store <2 x ptr> %i.dm, ptr %next.gep38, align 8, !tbaa !16, !alias.scope !146, !noalias !143
  store <2 x ptr> %i.dq, ptr %i.dr, align 8, !tbaa !16, !alias.scope !146, !noalias !143
  %index.next43 = add nuw i64 %index37, 4         ; 2 uses
  %i.ds = icmp eq i64 %index.next43, %n.vec35
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.body36, !llvm.loop !148

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.body36, %vector.memcheck24, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.08.i.i.i.i.i.i.i.ph = phi ptr [ %i.ci, %vector.memcheck24 ], [ %i.ci, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.cx, %vector.body36 ]
  %.sroa.03.07.i.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck24 ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.cz, %vector.body36 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.03.07.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !130
  store ptr %i.du, ptr %.08.i.i.i.i.i.i.i, align 8, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK6hermes6parser11JSONFactory9newObjectINS_18PairSecondIteratorIPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEEEEEEPNS0_10JSONObjectEPNS0_15JSONHiddenClassET_SG_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !149

_ZNK6hermes6parser11JSONFactory9newObjectINS_18PairSecondIteratorIPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEEEEEEPNS0_10JSONObjectEPNS0_15JSONHiddenClassET_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN6hermes6parser10JSONObjectnwINS_28BacktrackingBumpPtrAllocatorEEEPvmRT_m.exit.i
  %i.dx = load ptr, ptr %4, align 8, !tbaa !52    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.j
  br i1 %i.dy, label %_ZN4llvh11SmallVectorIPN6hermes6parser10JSONStringELj10EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK6hermes6parser11JSONFactory9newObjectINS_18PairSecondIteratorIPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEEEEEEPNS0_10JSONObjectEPNS0_15JSONHiddenClassET_SG_.exit
  call void @free(ptr noundef %i.dx) #17
  br label %_ZN4llvh11SmallVectorIPN6hermes6parser10JSONStringELj10EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes6parser10JSONStringELj10EED2Ev.exit: ; preds = %_ZNK6hermes6parser11JSONFactory9newObjectINS_18PairSecondIteratorIPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEEEEEEPNS0_10JSONObjectEPNS0_15JSONHiddenClassET_SG_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN4llvh11SmallVectorIPN6hermes6parser10JSONStringELj10EED2Ev.exit
  %.0 = phi ptr [ %.0.i.i.i.i, %_ZN4llvh11SmallVectorIPN6hermes6parser10JSONStringELj10EED2Ev.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK6hermes6parser11JSONFactory18LessHiddenClassKeyclERKSt4pairImPKPNS0_10JSONStringEESA_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !117    ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !117    ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %i.a, -1
  %or.cond.not = icmp ult i64 %i.d, %i.b
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.i = add nuw i64 %.01828, 1                   ; 2 uses
  %.not = icmp eq i64 %i.i, %i.a
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !121

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.029 = phi i1 [ undef, %.lr.ph ], [ %.1, %bb.c ]
  %.01828 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01828
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01828
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 3 uses
  %i.n = icmp ult ptr %i.k, %i.m
  %i.o = icmp ule ptr %i.k, %i.m
  %..0 = select i1 %i.o, i1 %.029, i1 false
  %cond = icmp eq ptr %i.k, %i.m
  %.1 = select i1 %i.n, i1 true, i1 %..0          ; 2 uses
  br i1 %cond, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ %.1, %bb.d ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EERNS_18SourceErrorManagerEb(ptr noundef nonnull align 8 dereferenceable(1176) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef captures(none) %2, ptr noundef nonnull align 8 dereferenceable(464) %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.27", align 8 ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !152
  store i64 %i.b, ptr %5, align 8, !tbaa !152
  store ptr null, ptr %2, align 8, !tbaa !152
  %i.c = load ptr, ptr %1, align 8, !tbaa !56, !nonnull !36, !align !75
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97, !nonnull !36, !align !75
  call void @_ZN6hermes6parser7JSLexerC1ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(464) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %i.e, i1 noundef zeroext true, i1 noundef zeroext %4) #17
  %i.f = load ptr, ptr %5, align 8, !tbaa !152    ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #17, !inline_history !154
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %3, ptr %i.j, align 8, !tbaa !155
  ret void
}

declare void @_ZN6hermes6parser7JSLexerC1ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160), ptr noundef, ptr noundef nonnull align 8 dereferenceable(464), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.c = tail call { i64, i8 } @_ZN6hermes6parser10JSONParser10parseValueEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) ; 2 uses
  %i.d = extractvalue { i64, i8 } %i.c, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i8 } %i.c, 0
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !157, !nonnull !36, !align !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %spec.select = select i1 %.not, i64 %i.f, i64 undef
  %spec.select2 = zext i1 %.not to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.01.0 = phi i64 [ %spec.select, %bb.b ], [ undef, %bb.a ]
  %.sroa.2.0 = phi i8 [ %spec.select2, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { i64, i8 } %.fca.1.insert
}

declare noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser10JSONParser10parseValueEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !181
  switch i32 %i.c, label %bb.l [
    i32 112, label %bb.b
    i32 70, label %bb.c
    i32 111, label %bb.e
    i32 49, label %bb.h
    i32 55, label %bb.i
    i32 14, label %3
    i32 15, label %bb.j
    i32 16, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !182, !nonnull !36, !align !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = tail call noundef ptr @_ZN6hermes6parser11JSONFactory9getStringEPNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef %i.f)
  %i.h = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.i = ptrtoint ptr %i.g to i64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !181
  %.not = icmp eq i32 %i.k, 111
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.m, align 1, !tbaa !185
  store ptr @.str.6, ptr %1, align 8, !tbaa !109
  store i8 3, ptr %i.l, align 8, !tbaa !188
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.o, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load double, ptr %i.q, align 8, !tbaa !190
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load double, ptr %i.s, align 8, !tbaa !190
  %i.u = fneg double %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi double [ %i.u, %bb.f ], [ %i.r, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !182, !nonnull !36, !align !75
  %i.x = tail call noundef ptr @_ZN6hermes6parser11JSONFactory9getNumberEd(ptr noundef nonnull align 8 dereferenceable(120) %i.w, double noundef %i.v)
  %i.y = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.z = ptrtoint ptr %i.x to i64
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.aa = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.ab = tail call { i64, i8 } @_ZN6hermes6parser10JSONParser11parseObjectEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) ; 2 uses
  %i.ac = extractvalue { i64, i8 } %i.ab, 0
  %i.ad = extractvalue { i64, i8 } %i.ab, 1
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ae = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  %i.af = tail call { i64, i8 } @_ZN6hermes6parser10JSONParser10parseArrayEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) ; 2 uses
  %i.ag = extractvalue { i64, i8 } %i.af, 0
  %i.ah = extractvalue { i64, i8 } %i.af, 1
  br label %bb.m

3:                                                ; preds = %bb.a
  %4 = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %5 = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %6 = tail call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.a, i32 noundef 0) #17 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.aj, align 1, !tbaa !185
  store ptr @.str.7, ptr %2, align 8, !tbaa !109
  store i8 3, ptr %i.ai, align 8, !tbaa !188
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i5 = load ptr, ptr %i.am, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i7 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i6, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.al, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i5, ptr %.sroa.2.0.copyload.i.i7, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %3, %bb.i, %bb.h, %bb.g, %bb.d, %bb.b
  %.sroa.0.0 = phi i64 [ undef, %bb.l ], [ %i.i, %bb.b ], [ %i.z, %bb.g ], [ undef, %bb.d ], [ %i.ac, %bb.h ], [ %i.ag, %bb.i ], [ ptrtoint (ptr @_ZN6hermes6parser11JSONBoolean5true_E to i64), %3 ], [ ptrtoint (ptr @_ZN6hermes6parser11JSONBoolean6false_E to i64), %bb.j ], [ ptrtoint (ptr @_ZN6hermes6parser8JSONNull9instance_E to i64), %bb.k ]
  %.sroa.8.0 = phi i8 [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.g ], [ 0, %bb.d ], [ %i.ad, %bb.h ], [ %i.ah, %bb.i ], [ 1, %3 ], [ 1, %bb.j ], [ 1, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.8.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i64, i8 } @_ZN6hermes6parser10JSONParser11parseObjectEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.llvh::SmallVector.90", align 8 ; 11 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 10, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !181
  switch i32 %i.f, label %._crit_edge [
    i32 51, label %.thread33
    i32 112, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.i, align 1, !tbaa !185
  store ptr @.str.9, ptr %2, align 8, !tbaa !109
  store i8 3, ptr %i.h, align 8, !tbaa !188
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.l, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.k, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.thread26

bb.b:                                             ; preds = %bb.h, %.lr.ph
  %i.m = load ptr, ptr %0, align 8, !tbaa !182, !nonnull !36, !align !75
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.o = call noundef ptr @_ZN6hermes6parser11JSONFactory9getStringEPNS_12UniqueStringE(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef %i.n)
  %i.p = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17
  %i.q = load i32, ptr %i.p, align 8, !tbaa !181
  %.not8 = icmp eq i32 %i.q, 92
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.s, align 1, !tbaa !185
  store ptr @.str.10, ptr %3, align 8, !tbaa !109
  store i8 3, ptr %i.r, align 8, !tbaa !188
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i11 = load ptr, ptr %i.v, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i12 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i12, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.u, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i11, ptr %.sroa.2.0.copyload.i.i13, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread26

bb.d:                                             ; preds = %bb.b
  %i.w = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 0 uses
  %i.x = call { i64, i8 } @_ZN6hermes6parser10JSONParser10parseValueEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) ; 2 uses
  %i.y = extractvalue { i64, i8 } %i.x, 1
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %.thread26

bb.e:                                             ; preds = %bb.d
  %i.aa = extractvalue { i64, i8 } %i.x, 0
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !55
  %.not.i = icmp ult i32 %i.ac, %i.ad
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !108

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 0, i64 noundef 16) #17
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi i32 [ %.pre.i, %bb.f ], [ %i.ac, %bb.e ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !52
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  store ptr %i.o, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 1
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !54
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !54
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !181
  switch i32 %i.ak, label %bb.i [
    i32 61, label %bb.h
    i32 51, label %.thread33
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 0 uses
  %i.am = load i32, ptr %i.e, align 8, !tbaa !181
  switch i32 %i.am, label %._crit_edge [
    i32 51, label %.thread33
    i32 112, label %bb.b
  ]

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.ao, align 1, !tbaa !185
  store ptr @.str.11, ptr %4, align 8, !tbaa !109
  store i8 3, ptr %i.an, align 8, !tbaa !188
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i14 = load ptr, ptr %i.ar, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i16 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i15, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aq, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i14, ptr %.sroa.2.0.copyload.i.i16, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.thread26

.thread33:                                        ; preds = %bb.g, %bb.h, %bb.a
  %i.as = call noundef ptr @_ZN6hermes6parser7JSLexer7advanceENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %i.d, i32 noundef 0) #17 ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.au = load i32, ptr %i.b, align 8, !tbaa !54
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.av
  %i.ax = call noundef ptr @_ZN6hermes6parser11JSONFactory9sortPropsEPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEES8_(ptr noundef %i.at, ptr noundef %i.aw) ; 2 uses
  %.not10 = icmp eq ptr %i.ax, null
  br i1 %.not10, label %.critedge, label %_ZN4llvhplERKNS_5TwineES2_.exit

_ZN4llvhplERKNS_5TwineES2_.exit:                  ; preds = %.thread33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 3, ptr %i.ba, align 8, !tbaa !188, !alias.scope !191
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 5, ptr %i.bb, align 1, !tbaa !185, !alias.scope !191
  store ptr @.str.12, ptr %6, align 8, !tbaa !109, !alias.scope !191
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !109, !alias.scope !191
  store ptr %6, ptr %5, align 8, !tbaa !109, !alias.scope !194
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.13, ptr %i.bd, align 8, !tbaa !109, !alias.scope !194
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 2, ptr %i.be, align 8, !tbaa !188, !alias.scope !194
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 3, ptr %i.bf, align 1, !tbaa !185, !alias.scope !194
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !189, !nonnull !36, !align !75
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %i.bi, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.2.0.copyload.i.i19 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i18, align 8, !tbaa !25
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.bh, i32 noundef 0, ptr %.sroa.0.0.copyload.i.i17, ptr %.sroa.2.0.copyload.i.i19, ptr noundef nonnull align 8 dereferenceable(18) %5, i32 noundef 2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %.thread26

.critedge:                                        ; preds = %.thread33
  %i.bj = load ptr, ptr %0, align 8, !tbaa !182, !nonnull !36, !align !75
  %i.bk = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.bl = load i32, ptr %i.b, align 8, !tbaa !54
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = call noundef ptr @_ZN6hermes6parser11JSONFactory9newObjectEPSt4pairIPNS0_10JSONStringEPNS0_9JSONValueEES8_b(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, ptr noundef %i.bk, ptr noundef %i.bn, i1 noundef zeroext true)
  %i.bp = ptrtoint ptr %i.bo to i64
  br label %.thread26

.thread26:                                        ; preds = %bb.d, %bb.c, %_ZN4llvhplERKNS_5TwineES2_.exit, %.critedge, %bb.i, %._crit_edge
  %.sroa.023.0 = phi i64 [ %i.bp, %.critedge ], [ undef, %_ZN4llvhplERKNS_5TwineES2_.exit ], [ undef, %._crit_edge ], [ undef, %bb.i ], [ undef, %bb.c ], [ undef, %bb.d ]
  %.sroa.2.3 = phi i8 [ 1, %.critedge ], [ 0, %_ZN4llvhplERKNS_5TwineES2_.exit ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bq = load ptr, ptr %1, align 8, !tbaa !52    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.a
  br i1 %i.br, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes6parser10JSONStringEPNS3_9JSONValueEELj10EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread26
  call void @free(ptr noundef %i.bq) #17
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes6parser10JSONStringEPNS3_9JSONValueEELj10EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIPN6hermes6parser10JSONStringEPNS3_9JSONValueEELj10EED2Ev.exit: ; preds = %.thread26, %bb.j
end_hunk_0
