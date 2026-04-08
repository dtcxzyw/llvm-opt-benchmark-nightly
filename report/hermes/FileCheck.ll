inline.NumInlined: 1994
inline.NumDeleted: 840
begin_hunk_0_@_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE:bb.a
  %.sroa.speculated375 = call i64 @llvm.umin.i64(i64 %i.dc, i64 2) ; 2 uses
  %i.dd = load ptr, ptr %8, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.sroa.speculated375
  %i.df = sub nuw i64 %i.dc, %.sroa.speculated375
  %.sroa.speculated368 = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.db)
  %i.dg = call noundef zeroext i1 @_ZN4llvh16FileCheckPattern15AddRegExToRegExENS_9StringRefERjRNS_9SourceMgrE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %i.de, i64 %.sroa.speculated368, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %5)
  br i1 %i.dg, label %.critedge110, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE:bb.a
  %.sroa.speculated333 = call i64 @llvm.umin.i64(i64 %i.ef, i64 2) ; 2 uses
  %i.eg = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.speculated333 ; 12 uses
  %i.ei = sub nuw i64 %i.ef, %.sroa.speculated333
  %.sroa.speculated326 = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.ea) ; 5 uses
  %i.ej = add i64 %i.ea, 4
  %.sroa.speculated319 = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ej) ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.speculated319
  %i.el = sub nuw i64 %i.ef, %.sroa.speculated319
  store ptr %i.ek, ptr %8, align 8, !tbaa !41
  store i64 %i.el, ptr %i.b, align 8, !tbaa !44
  %.not413 = icmp eq i64 %.sroa.speculated326, 0
end_hunk_1
begin_hunk_2_@_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE:bb.a
  %i.gr = add nuw i64 %.1.i.fr, 1
  %.sroa.speculated235 = call i64 @llvm.umin.i64(i64 %.sroa.speculated326, i64 %i.gr) ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.speculated235
  %i.gt = sub nuw i64 %.sroa.speculated326, %.sroa.speculated235
  %i.gu = call noundef zeroext i1 @_ZN4llvh16FileCheckPattern15AddRegExToRegExENS_9StringRefERjRNS_9SourceMgrE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %i.gs, i64 %i.gt, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %5)
  br i1 %i.gu, label %.thread407, label %bb.as

end_hunk_2
begin_hunk_3_@_ZN4llvh16FileCheckPattern12ParsePatternENS_9StringRefES1_RNS_9SourceMgrEjRKNS_16FileCheckRequestE:bb.a
  %.sroa.speculated269 = call i64 @llvm.umin.i64(i64 %i.hk, i64 %.sroa.speculated.sink) ; 2 uses
  %i.hl = load ptr, ptr %8, align 8, !tbaa !71
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sroa.speculated269
  %i.hn = sub nuw i64 %i.hk, %.sroa.speculated269 ; 3 uses
  store ptr %i.hm, ptr %8, align 8, !tbaa !41
  store i64 %i.hn, ptr %i.b, align 8, !tbaa !44
  %.not470 = icmp eq i64 %i.hn, 0
end_hunk_3
begin_hunk_4_@_ZN4llvh16FileCheckPattern15FindRegexVarEndENS_9StringRefERNS_9SourceMgrE:bb.a
bb.d:                                             ; preds = %bb.c
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 2) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 %.sroa.speculated
  %i.j = sub nuw i64 %.sroa.9.0, %.sroa.speculated
  br label %bb.j

bb.e:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZNK4llvh16FileCheckPattern15PrintFuzzyMatchERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEE:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %3, %.03259
  %.sroa.07.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !41
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !tbaa !44 ; 2 uses
  %i.m = icmp eq i64 %.sroa.58.0.copyload.i, 0    ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %i.fb = load i64, ptr %i.dh, align 8, !tbaa !67
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fa) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.speculated
  %i.fd = sub nuw i64 %i.ez, %.sroa.speculated
  %.sroa.speculated272 = call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fb)
  store ptr null, ptr %12, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
end_hunk_6
begin_hunk_7_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %i.gy = load i64, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.gy, i64 %i.gx) ; 7 uses
  %i.gz = getelementptr i8, ptr %i.gu, i64 %.sroa.speculated.i ; 6 uses
  %i.ha = sub nuw i64 %i.gy, %.sroa.speculated.i  ; 8 uses
  store ptr %i.gz, ptr %8, align 8, !tbaa !41
  store i64 %i.ha, ptr %i.d, align 8, !tbaa !44
  %.not8.i.i = icmp eq i64 %.sroa.speculated.i, 0
end_hunk_7
begin_hunk_8_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
bb.m:                                             ; preds = %bb.l
  %i.hx = add nuw i64 %.sroa.8.0.copyload.i, 1    ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hx ; 24 uses
  %i.hz = sub nuw i64 %i.ha, %i.hx                ; 6 uses
  %.not.i29.i.i = icmp ult i64 %i.hz, 5
  br i1 %.not.i29.i.i, label %_ZNK4llvh9StringRef10startswithES0_.exit28.thread.i.i, label %_ZNK4llvh9StringRef10startswithES0_.exit30.i.i

end_hunk_8
begin_hunk_9_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %.0.lcssa.i36.i = phi i64 [ %.sroa.8.0.copyload.i, %.critedge.i ], [ %.04.i.i, %switch.early.test.i.i ], [ %i.ha, %bb.n ]
  %.sroa.speculated61.i = call i64 @llvm.umin.i64(i64 %i.ha, i64 %.0.lcssa.i36.i) ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.speculated61.i ; 2 uses
  %i.mt = sub nuw i64 %i.ha, %.sroa.speculated61.i ; 3 uses
  store ptr %i.ms, ptr %8, align 8, !tbaa !41
  store i64 %i.mt, ptr %i.d, align 8, !tbaa !44
  %i.mu = icmp eq i64 %i.mt, 0
end_hunk_9
begin_hunk_10_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %.sroa.speculated288 = call i64 @llvm.umin.i64(i64 %i.mz, i64 %i.my) ; 3 uses
  %i.na = load ptr, ptr %8, align 8, !tbaa !71    ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %.sroa.speculated288
  %i.nc = sub nuw i64 %i.mz, %.sroa.speculated288
  store ptr %i.nb, ptr %8, align 8, !tbaa !41
  store i64 %i.nc, ptr %i.d, align 8, !tbaa !44
  %i.nd = icmp eq i32 %.2296, 9
end_hunk_10
begin_hunk_11_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %.sroa.speculated265 = call i64 @llvm.umin.i64(i64 %i.nq, i64 %i.np) ; 2 uses
  %i.nr = load ptr, ptr %8, align 8, !tbaa !71
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.sroa.speculated265
  %i.nt = sub nuw i64 %i.nq, %.sroa.speculated265
  store ptr %i.ns, ptr %8, align 8, !tbaa !41
  store i64 %i.nt, ptr %i.d, align 8, !tbaa !44
  br label %bb.r
end_hunk_11
begin_hunk_12_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %.sroa.speculated237307 = call i64 @llvm.umin.i64(i64 %i.of, i64 %i.nu) ; 2 uses
  %i.og = load ptr, ptr %8, align 8, !tbaa !71
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %.sroa.speculated237307
  %i.oi = sub nuw i64 %i.of, %.sroa.speculated237307
  store ptr %i.oh, ptr %8, align 8, !tbaa !41
  store i64 %i.oi, ptr %i.d, align 8, !tbaa !44
  br label %bb.aa
end_hunk_12
begin_hunk_13_@_ZN4llvh9FileCheck13ReadCheckFileERNS_9SourceMgrENS_9StringRefERNS_5RegexERSt6vectorINS_15FileCheckStringESaIS7_EE:bb.a
  %.sroa.speculated237 = call i64 @llvm.umin.i64(i64 %i.oj, i64 %i.nu) ; 2 uses
  %i.ok = load ptr, ptr %8, align 8, !tbaa !71
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.sroa.speculated237
  %i.om = sub nuw i64 %i.oj, %.sroa.speculated237
  store ptr %i.ol, ptr %8, align 8, !tbaa !41
  store i64 %i.om, ptr %i.d, align 8, !tbaa !44
  switch i32 %.2296, label %bb.w [
end_hunk_13
begin_hunk_14_@_ZNK4llvh15FileCheckString5CheckERKNS_9SourceMgrENS_9StringRefEbRmRNS_9StringMapIS4_NS_15MallocAllocatorEEERNS_16FileCheckRequestE:bb.a
  %.048 = phi i64 [ 0, %bb.a ], [ %i.a, %bb.b ]   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %.048) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated ; 6 uses
  %i.d = sub nuw i64 %3, %.sroa.speculated        ; 4 uses
  %i.e = tail call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %i.c, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(25) %6) ; 4 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e
end_hunk_14
begin_hunk_15_@_ZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE:bb.a
  %.sroa.0175.0288 = load ptr, ptr %7, align 8, !tbaa !260
  %.sroa.speculated197289 = call i64 @llvm.umin.i64(i64 %3, i64 %.074305) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated197289 ; 3 uses
  %i.an = sub nuw i64 %3, %.sroa.speculated197289 ; 2 uses
  %i.ao = call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %i.am, i64 %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  br i1 %i.ap, label %._crit_edge, label %.lr.ph292
end_hunk_15
begin_hunk_16_@_ZNK4llvh15FileCheckString8CheckDagERKNS_9SourceMgrENS_9StringRefERSt6vectorIPKNS_16FileCheckPatternESaIS8_EERNS_9StringMapIS4_NS_15MallocAllocatorEEERKNS_16FileCheckRequestE:bb.a
  %.sroa.0175.0 = load ptr, ptr %.sroa.0175.1282, align 8, !tbaa !260
  %.sroa.speculated197 = call i64 @llvm.umin.i64(i64 %3, i64 %i.bx) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated197 ; 2 uses
  %i.bz = sub nuw i64 %3, %.sroa.speculated197    ; 2 uses
  %i.ca = call noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.0180.0300, ptr %i.by, i64 %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(25) %5) ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  br i1 %i.cb, label %._crit_edge, label %.lr.ph292, !llvm.loop !272
end_hunk_16
begin_hunk_17_@_ZL23CountNumNewlinesBetweenN4llvh9StringRefERPKc:bb.a
  %.sroa.speculated4854 = call i64 @llvm.umin.i64(i64 %i.c, i64 %i.b) ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated4854 ; 2 uses
  %i.f = sub nuw i64 %i.c, %.sroa.speculated4854  ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !41
  store i64 %i.f, ptr %i.a, align 8, !tbaa !44
  %.not5355 = icmp ugt i64 %i.c, %i.b
end_hunk_17
begin_hunk_18_@_ZL23CountNumNewlinesBetweenN4llvh9StringRefERPKc:bb.a
  %.sroa.speculated48 = call i64 @llvm.umin.i64(i64 %i.v, i64 %i.u) ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.speculated48 ; 2 uses
  %i.y = sub nuw i64 %i.v, %.sroa.speculated48    ; 2 uses
  store ptr %i.x, ptr %3, align 8, !tbaa !41
  store i64 %i.y, ptr %i.a, align 8, !tbaa !44
  %.not53 = icmp ugt i64 %i.v, %i.u
end_hunk_18
begin_hunk_19_@_ZL12PrintNoMatchbRKN4llvh9SourceMgrENS_9StringRefENS_5SMLocERKNS_16FileCheckPatternES3_RNS_9StringMapIS3_NS_15MallocAllocatorEEEb:bb.a
  %.sroa.speculated52 = call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.br) ; 2 uses
  %i.bu = load ptr, ptr %6, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.speculated52 ; 2 uses
  %i.bw = sub nuw i64 %i.bt, %.sroa.speculated52
  store ptr %i.bv, ptr %6, align 8, !tbaa !41
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
end_hunk_19
begin_hunk_20_@_ZN4llvh9FileCheck10CheckInputERNS_9SourceMgrENS_9StringRefENS_8ArrayRefINS_15FileCheckStringEEE:bb.a
  %i.x = add nuw i64 %i.s, 1
  %i.y = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = sub nuw i64 %i.u, %i.y
  br label %_ZNK4llvh9StringRef5splitEc.exit

_ZNK4llvh9StringRef5splitEc.exit:                 ; preds = %bb.c, %bb.d
end_hunk_20
begin_hunk_21_@_ZN4llvh9FileCheck10CheckInputERNS_9SourceMgrENS_9StringRefENS_8ArrayRefINS_15FileCheckStringEEE:bb.a
  %i.am = add i64 %i.al, %i.aj
  %.sroa.speculated129 = call i64 @llvm.umin.i64(i64 %.sroa.695.0.ph, i64 %i.am) ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.093.0.ph, i64 %.sroa.speculated129
  %i.ao = sub nuw i64 %.sroa.695.0.ph, %.sroa.speculated129
  %i.ap = add i32 %.048, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit206
end_hunk_21
begin_hunk_22_@_ZN4llvh9FileCheck10CheckInputERNS_9SourceMgrENS_9StringRefENS_8ArrayRefINS_15FileCheckStringEEE:bb.a
  %i.cf = add i64 %i.ce, %i.cc
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.8.3185, i64 %i.cf) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.3184, i64 %.sroa.speculated
  %i.ch = sub nuw i64 %.sroa.8.3185, %.sroa.speculated
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ci = add i32 %.144186, 1                     ; 2 uses
  %.not59 = icmp eq i32 %i.ci, %.351
end_hunk_22
