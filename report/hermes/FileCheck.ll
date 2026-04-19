inline.NumInlined: 1994
inline.NumDeleted: 840
begin_hunk_0_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %.backedge
  %i.gr = phi i64 [ %i.bh, %.lr.ph.preheader.i.lr.ph ], [ %i.pz, %.backedge ]
  %.0328 = phi i32 [ 1, %.lr.ph.preheader.i.lr.ph ], [ %.2, %.backedge ]
  %.0294327 = phi i32 [ undef, %.lr.ph.preheader.i.lr.ph ], [ %.2296, %.backedge ]
  %.sroa.010.0.copyload.pre.i = load ptr, ptr %8, align 8, !tbaa !41
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL8SkipWordN4llvh9StringRefEm.exit.i, %.lr.ph.preheader.i
  %.1295 = phi i32 [ %.0294327, %.lr.ph.preheader.i ], [ %.3297, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ] ; 4 uses
  %.1 = phi i32 [ %.0328, %.lr.ph.preheader.i ], [ %.3, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ] ; 3 uses
  %.sroa.010.0.copyload.i = phi ptr [ %.sroa.010.0.copyload.pre.i, %.lr.ph.preheader.i ], [ %i.ms, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ]
  %i.gs = phi i64 [ %i.gr, %.lr.ph.preheader.i ], [ %i.mt, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ]
  %i.gt = call noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.sroa.010.0.copyload.i, i64 %i.gs, ptr noundef nonnull %6) #19
end_hunk_0
begin_hunk_1_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader442

.lr.ph.i.i.preheader442:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.hk, %middle.block ]
  %.079.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader442, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader442 ]
  %.079.i.i = phi i64 [ %i.hp, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader442 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.079.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !43
  %i.hn = icmp eq i8 %i.hm, 10
  %i.ho = zext i1 %i.hn to i32
  %spec.select.i.i = add i32 %.010.i.i, %i.ho     ; 2 uses
  %i.hp = add nuw i64 %.079.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.hp, %.sroa.speculated.i
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !193

end_hunk_1
begin_hunk_2_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br i1 %i.ml, label %.loopexit.i, label %.critedge.i, !llvm.loop !194

.critedge.i:                                      ; preds = %_ZNK4llvh9StringRef5countEc.exit.thread.i, %bb.l, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %switch.early.test.i, %switch.early.test.i, %.loopexit
  %.3297 = phi i32 [ %.1295, %.loopexit ], [ %.1295, %switch.early.test.i ], [ %.1295, %switch.early.test.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i ], [ 0, %bb.l ], [ 0, %_ZNK4llvh9StringRef5countEc.exit.thread.i ] ; 2 uses
  %.3 = phi i32 [ %i.hq, %.loopexit ], [ %i.hq, %switch.early.test.i ], [ %i.hq, %switch.early.test.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit8.thread.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit16.thread.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit20.thread.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit24.thread.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i ], [ %.4293, %bb.l ], [ %.4293, %_ZNK4llvh9StringRef5countEc.exit.thread.i ] ; 2 uses
  %i.mm = icmp ult i64 %.sroa.8.0.copyload.i, %i.ha
  br i1 %i.mm, label %.lr.ph.i37.i, label %_ZL8SkipWordN4llvh9StringRefEm.exit.i
end_hunk_2
begin_hunk_3_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br i1 %i.mu, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.l, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i, %_ZL8SkipWordN4llvh9StringRefEm.exit.i, %.lr.ph.i
  %.2296 = phi i32 [ %.3297, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ %.1295, %.lr.ph.i ], [ 1, %bb.l ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ 7, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ 6, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ 5, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ 4, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ 3, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ 2, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ 9, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 9 uses
  %.2 = phi i32 [ %.3, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ %.1, %.lr.ph.i ], [ %.4293, %bb.l ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.4293, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 2 uses
  %.sroa.8.0.i = phi i64 [ 0, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ 0, %.lr.ph.i ], [ %.sroa.8.0.copyload.i, %bb.l ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.sroa.8.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 3 uses
  %.sroa.044.0.i = phi ptr [ null, %_ZL8SkipWordN4llvh9StringRefEm.exit.i ], [ null, %.lr.ph.i ], [ %.sroa.044.0.copyload.i, %bb.l ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit16.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit14.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit12.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit10.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit8.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit6.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit20.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit22.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.thread.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit26.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit28.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit18.i.i ], [ %.sroa.044.0.copyload.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i.i ] ; 3 uses
  %i.mv = icmp eq ptr %.pre.pre.i, %i.be
  br i1 %i.mv, label %_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit, label %bb.o

end_hunk_3
begin_hunk_4_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a

_ZL23FindFirstMatchingPrefixRN4llvh5RegexERNS_9StringRefERjRNS_5Check13FileCheckTypeE.exit: ; preds = %.loopexit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  store ptr %.sroa.044.0.i, ptr %18, align 8
  store i64 %.sroa.8.0.i, ptr %i.bj, align 8
  %i.mw = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.mw, label %.thread312, label %switch.lookup
end_hunk_4
begin_hunk_5_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %i.nc = sub i64 %i.mz, %.sroa.speculated288
  store ptr %i.nb, ptr %8, align 8, !tbaa !41
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !44
  %37 = icmp eq i32 %.2296, 9
  br i1 %37, label %.thread316, label %bb.p

.thread316:                                       ; preds = %switch.lookup
end_hunk_5
begin_hunk_6_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br i1 %i.nw, label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %38 = icmp eq i32 %.2296, 6
  br i1 %38, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
end_hunk_6
begin_hunk_7_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  store i8 2, ptr %i.cw, align 8, !tbaa !47, !alias.scope !207
  store i8 3, ptr %i.cx, align 1, !tbaa !53, !alias.scope !207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %24, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %26, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit
end_hunk_7
begin_hunk_8_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a

_ZN4llvhplERKNS_5TwineES2_.exit136:               ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %39 = icmp eq i32 %.2296, 2
  %40 = icmp eq i32 %.2296, 7
  %41 = select i1 %40, ptr @.str.36, ptr @.str.37
  %42 = select i1 %39, ptr @.str.35, ptr %41      ; 2 uses
  store ptr %42, ptr %27, align 8, !tbaa !71
  %i.oo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #21
  store i64 %i.oo, ptr %i.bx, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
end_hunk_8
begin_hunk_9_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  store i8 2, ptr %i.cn, align 8, !tbaa !47, !alias.scope !237
  store i8 3, ptr %i.co, align 1, !tbaa !53, !alias.scope !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %.sroa.044.0.i, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %28, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %34, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
end_hunk_9
begin_hunk_10_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  br label %_ZNSt6vectorIN4llvh16FileCheckPatternESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.op = and i32 %.2296, -2
  %or.cond5 = icmp eq i32 %i.op, 4
  br i1 %or.cond5, label %bb.x, label %bb.aa

end_hunk_10
