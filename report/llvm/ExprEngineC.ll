Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ExprEngineC?download=true
inline.NumInlined: 1954
inline.NumDeleted: 942
begin_hunk_0_@"_ZZN5clang4ento10ExprEngine19VisitBinaryOperatorEPKNS_14BinaryOperatorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetEENK3$_0clERNS0_4SValESA_NS_8QualTypeE":bb.a
  %i.bb = phi ptr [ %i.az, %bb.e ], [ null, %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 592
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !234
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.val, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !220
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !221
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !222
  %i.bm = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.bg, i32 noundef %i.bl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.bn = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValENS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412) %i.av, ptr %i.bb, i64 %i.be, ptr noundef %.8.val, i64 %2, i32 noundef %i.bm) #14 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bn, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.bn, 1
  store ptr %.fca.0.extract, ptr %0, align 8, !tbaa !221
  store i8 %.fca.1.extract, ptr %i.ar, align 8, !tbaa !235
  br label %bb.f

bb.f:                                             ; preds = %.split3, %.split, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %bb.c, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit, %bb.a
  ret void
}

declare void @_ZN5clang4ento10ExprEngine29createTemporaryRegionIfNeededEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameEPKNS_4ExprESC_PPKNS0_9SubRegionE(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(812), ptr nofree noundef align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZNK5clang4ento10ExprEngine12escapeValuesEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS2_8ArrayRefINS0_4SValEEENS0_17PointerEscapeKindEPKNS0_9CallEventE(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(812), ptr nofree noundef align 8 dereferenceable(8), ptr, i64, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN5clang4ento10ExprEngine8evalLoadERNS0_15ExplodedNodeSetEPKNS_4ExprES6_PNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValEPKNS_15ProgramPointTagENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(812), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr nofree noundef align 8 dereferenceable(8), ptr noundef byval(%"class.clang::ento::SVal") align 8, ptr noundef, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412), ptr, i8, i64, i64) local_unnamed_addr #3

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412), ptr noundef, ptr, i64, ptr noundef, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine14VisitBlockExprEPKNS_9BlockExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %7 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %8 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %9 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %11 = alloca %"class.clang::ento::ExplodedNodeSet", align 8 ; 12 uses
  %12 = alloca %"class.clang::ento::NodeBuilder", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(272) %i.c) #14, !inline_history !248 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !8 ; 2 uses
  %i.i = and i64 %.sroa.0.0.copyload.i, -16
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !8
  %i.m = and i64 %.sroa.0.0.copyload.i, 7
  %i.n = or i64 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !264  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !233, !nonnull !156, !align !157
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.s = and i64 %.sroa.3.0.copyload.i, -8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213, !nonnull !156, !noundef !156 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !214
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !221
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %7, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !222
  %i.af = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.x, i32 noundef %i.ae) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ag = call { ptr, i8 } @_ZN5clang4ento11SValBuilder15getBlockPointerEPKNS_9BlockDeclENS_7CanQualINS_4TypeEEEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(412) %i.r, ptr noundef %i.p, i64 %i.n, ptr noundef %i.t, i32 noundef %i.af) #14 ; 2 uses
  %.fca.0.extract35 = extractvalue { ptr, i8 } %i.ag, 0
  %.fca.1.extract36 = extractvalue { ptr, i8 } %i.ag, 1
  store ptr %.fca.0.extract35, ptr %8, align 8, !tbaa !221
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 %.fca.1.extract36, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !198 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.aj = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %8) #14 ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i68, label %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !270
  %i.am = icmp eq i32 %i.al, 11
  br i1 %i.am, label %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZNK5clang4ento15BlockDataRegion15referenced_varsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %i.aj) #14
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !277 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !293
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ar ; 3 uses
  %.sroa.0.0.copyload.i69 = load ptr, ptr %9, align 8, !tbaa !294 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.0.0.copyload.i70 = load ptr, ptr %i.at, align 8, !tbaa !294 ; 2 uses
  %.not119 = icmp eq ptr %.sroa.0.0.copyload.i70, %.sroa.0.0.copyload.i69
  br i1 %.not119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !294
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit
  %.sroa.097.0.lcssa = phi ptr [ %i.ai, %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit ], [ %.sroa.097.1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0124 = phi ptr [ %.1110, %bb.h ], [ %i.ao, %.lr.ph.preheader ] ; 3 uses
  %.sroa.097.0122 = phi ptr [ %.sroa.097.1, %bb.h ], [ %i.ai, %.lr.ph.preheader ] ; 8 uses
  %.sroa.7.0121 = phi ptr [ %i.bo, %bb.h ], [ %.sroa.2.0.copyload.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.095.0120 = phi ptr [ %i.bn, %bb.h ], [ %.sroa.0.0.copyload.i69, %.lr.ph.preheader ] ; 2 uses
  %i.au = load ptr, ptr %.sroa.095.0120, align 8, !tbaa !296 ; 3 uses
  %i.av = load ptr, ptr %.sroa.7.0121, align 8, !tbaa !296 ; 3 uses
  %.not65 = icmp eq ptr %.0124, %i.as
  br i1 %.not65, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.0124, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !298 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0124, i64 16 ; 3 uses
  %.not66 = icmp eq ptr %i.au, %i.av
  br i1 %.not66, label %bb.h, label %bb.e

.thread:                                          ; preds = %.lr.ph
  %.not66107 = icmp eq ptr %i.au, %i.av
  br i1 %.not66107, label %bb.h, label %.thread111

.thread111:                                       ; preds = %.thread
  %.sroa.3.0.copyload.i76114 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.az = and i64 %.sroa.3.0.copyload.i76114, -8
  %i.ba = inttoptr i64 %i.az to ptr
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.copyload.i76 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.bb = and i64 %.sroa.3.0.copyload.i76, -8
  %i.bc = inttoptr i64 %i.bb to ptr               ; 3 uses
  %.not67 = icmp eq ptr %i.ax, null
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.097.0122, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.ax, ptr noundef %i.bc) #14
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.097.0122, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !212
  %i.bi = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(412) %i.bh) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %.thread111, %bb.e
  %i.bj = phi ptr [ %i.ba, %.thread111 ], [ %i.bc, %bb.e ]
  %.1109117 = phi ptr [ %i.as, %.thread111 ], [ %i.ay, %bb.e ]
  %i.bk = call { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValENS0_3LocENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.097.0122, ptr %i.av, i8 4, i64 0) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.g, %bb.f
  %i.bl = phi ptr [ %i.bj, %bb.g ], [ %i.bc, %bb.f ]
  %.1109116 = phi ptr [ %.1109117, %bb.g ], [ %i.ay, %bb.f ]
  %.pn = phi { ptr, i8 } [ %i.bk, %bb.g ], [ %i.bi, %bb.f ] ; 2 uses
  %.sroa.089.0 = extractvalue { ptr, i8 } %.pn, 0
  %.sroa.690.0 = extractvalue { ptr, i8 } %.pn, 1
  call void @_ZNK5clang4ento12ProgramState7bindLocENS0_3LocENS0_4SValEPKNS_10StackFrameEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.097.0122, ptr %i.au, i8 4, ptr %.sroa.089.0, i8 %.sroa.690.0, ptr noundef %i.bl, i1 noundef zeroext true) #14
  %i.bm = load ptr, ptr %10, align 8, !tbaa !198
  store ptr %.sroa.097.0122, ptr %10, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.097.0122) #14
  br label %bb.h

bb.h:                                             ; preds = %.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.d
  %.1110 = phi ptr [ %i.ay, %bb.d ], [ %.1109116, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ], [ %i.as, %.thread ]
  %.sroa.097.1 = phi ptr [ %.sroa.097.0122, %bb.d ], [ %i.bm, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ], [ %.sroa.097.0122, %.thread ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.095.0120, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.7.0121, i64 8
  %.not = icmp eq ptr %.sroa.0.0.copyload.i70, %i.bn
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, %bb.c, %._crit_edge
  %.sroa.097.2 = phi ptr [ %.sroa.097.0.lcssa, %._crit_edge ], [ %i.ai, %bb.c ], [ %i.ai, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %11, i8 0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 0, ptr %i.br, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 36
  store i32 4, ptr %i.bs, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bt = load ptr, ptr %i.u, align 8, !tbaa !213
  store ptr %i.bt, ptr %12, align 8, !tbaa !303
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.bu, align 8, !tbaa !304
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %11, ptr %i.bv, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !191
  %.not.i.i78 = icmp eq ptr %2, null
  br i1 %.not.i.i78, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !192
  %i.by = trunc i64 %i.bx to i1
  br i1 %i.by, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit

_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang4ento15BlockDataRegionEKNS2_9MemRegionEEEDaPT0_.exit.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.3.0.copyload.i80 = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.ca = and i64 %.sroa.3.0.copyload.i80, -8
  %i.cb = inttoptr i64 %i.ca to ptr
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !221
  %.sroa.2.0.copyload = load i8, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !235
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.097.2, ptr noundef nonnull %1, ptr noundef %i.cb, ptr %.sroa.0.0.copyload, i8 %.sroa.2.0.copyload, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.cc = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.cd = inttoptr i64 %i.cc to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %4, ptr noundef nonnull %1, i32 noundef 12, ptr noundef %i.cd, ptr noundef null) #14
  %i.ce = load ptr, ptr %13, align 8, !tbaa !198  ; 3 uses
  store ptr %i.ce, ptr %5, align 8, !tbaa !198
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ce) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.k, %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  %i.cf = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, i1 noundef zeroext false) #14 ; 0 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i6.i, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cg) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ch = load ptr, ptr %13, align 8, !tbaa !198  ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i81, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82, label %bb.m

bb.m:                                             ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ch) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %bb.m
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !16, !nonnull !156, !align !157
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 256
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !158
  call void @_ZN5clang4ento14CheckerManager18runCheckersForStmtEbRNS0_15ExplodedNodeSetERKS2_PKNS_4StmtERNS0_10ExprEngineEb(ptr noundef nonnull align 8 dereferenceable(1864) %i.ck, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(812) %0, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bq
  br i1 %i.cm, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82
  call void @free(ptr noundef %i.cl) #14
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i: ; preds = %bb.n, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit82
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !194 ; 2 uses
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i
  %i.cq = load ptr, ptr %11, align 8, !tbaa !197
  %i.cr = zext i32 %i.co to i64                   ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = add nuw nsw i64 %i.cr, 31
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.cu, 1073741820
  %i.cw = add nuw nsw i64 %i.cv, %i.cs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cq, i64 noundef %i.cw, i64 noundef 8) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit84: ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.097.2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder15getBlockPointerEPKNS_9BlockDeclENS_7CanQualINS_4TypeEEEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(412), ptr noundef, i64, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #3

declare void @_ZNK5clang4ento15BlockDataRegion15referenced_varsEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare { ptr, i8 } @_ZNK5clang4ento12ProgramState7getSValENS0_3LocENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i8, i64) local_unnamed_addr #3

declare void @_ZNK5clang4ento12ProgramState7bindLocENS0_3LocENS0_4SValEPKNS_10StackFrameEb(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr, i8, ptr, i8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine19handleLValueBitCastEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_4ExprEPKNS_10StackFrameENS_8QualTypeESD_PKNS_8CastExprERNS0_11NodeBuilderEPNS0_12ExplodedNodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::IntrusiveRefCntPtr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(812) %1, ptr nofree noundef align 8 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, i64 %5, i64 %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.clang::ProgramPoint", align 8 ; 6 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %12 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %13 = alloca %"class.clang::ento::SVal", align 8 ; 5 uses
  %14 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %15 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %17 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %i.a = and i64 %5, -16
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !249
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !8
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !249
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16
  switch i8 %i.i, label %bb.d [
    i8 42, label %bb.b
    i8 43, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !246
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(272) %i.k) #14, !inline_history !248
  %i.p = tail call i64 @_ZNK5clang10ASTContext22getLValueReferenceTypeENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(23904) %i.o, i64 %6, i1 noundef zeroext true) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(272) %i.r) #14, !inline_history !248
  %i.w = tail call i64 @_ZNK5clang10ASTContext22getRValueReferenceTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.v, i64 %6) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.044.0 = phi i64 [ %i.p, %bb.b ], [ %i.w, %bb.c ], [ %6, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.x = load ptr, ptr %2, align 8, !tbaa !198    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %3, ptr noundef %4) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !212
  %i.ad = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(412) %i.ac) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %.fca.0.extract28 = extractvalue { ptr, i8 } %i.ad, 0 ; 2 uses
  %.fca.1.extract29 = extractvalue { ptr, i8 } %i.ad, 1 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5clang4ento10ExprEngine9VisitCastEPKNS_8CastExprEPKNS_4ExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  store ptr %.fca.0.extract123, ptr %67, align 8
  store i8 %.fca.1.extract124, ptr %.sroa.2126.0..sroa_idx, align 8
  %.sroa.0.0.copyload.i575 = load i64, ptr %i.dz, align 8, !tbaa !8 ; 2 uses
  %i.jm = load i24, ptr %1, align 8
  %i.jn = and i24 %i.jm, 1536
  %.not830 = icmp eq i24 %i.jn, 0
  br i1 %.not830, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = load ptr, ptr %i.g, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !246
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = call noundef nonnull align 8 dereferenceable(23904) ptr %i.jr(ptr noundef nonnull align 8 dereferenceable(272) %i.jo) #14, !inline_history !248
  %i.jt = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.js, i64 %.sroa.0.0.copyload.i575) #14
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.0120.0 = phi i64 [ %i.jt, %bb.as ], [ %.sroa.0.0.copyload.i575, %bb.ar ] ; 2 uses
  %i.ju = call noundef zeroext i1 @_ZNK5clang4ento4SVal14isZeroConstantEv(ptr noundef nonnull align 8 dereferenceable(9) %67) #14
  br i1 %i.ju, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #14
  %i.jv = load ptr, ptr %i.er, align 8, !tbaa !308
  %.sroa.0115.0.copyload = load ptr, ptr %67, align 8, !tbaa !221
  %.sroa.2116.0.copyload = load i8, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !235
  call void @_ZN5clang4ento12StoreManager17evalBaseToDerivedENS0_4SValENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.705") align 8 %68, ptr noundef nonnull align 8 dereferenceable(40) %i.jv, ptr %.sroa.0115.0.copyload, i8 %.sroa.2116.0.copyload, i64 %.sroa.0778.0) #14
  %i.jw = load i8, ptr %i.ev, align 8, !tbaa !363, !range !339, !noundef !156
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.av, label %.thread817

.thread817:                                       ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  br label %.critedge

.critedge:                                        ; preds = %.thread817, %bb.at
  %i.jy = load ptr, ptr %i.ex, align 16, !tbaa !249
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %.sroa.0.0.copyload.i.i.i.i576 = load i64, ptr %i.jz, align 8, !tbaa !8
  %i.ka = and i64 %.sroa.0.0.copyload.i.i.i.i576, -16
  %i.kb = inttoptr i64 %i.ka to ptr
  %i.kc = load ptr, ptr %i.kb, align 16, !tbaa !249
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load i8, ptr %i.kd, align 16
  %i.kf = and i8 %i.ke, -2
  %spec.select.i.i.i.i.i.i.i.i.i577 = icmp eq i8 %i.kf, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i577, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit583

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579: ; preds = %.critedge
  store ptr %i.fd, ptr %69, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #14
  %i.kg = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateSinkEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull %1, ptr noundef nonnull %i.fb, ptr nofree noundef nonnull align 8 dereferenceable(8) %69, ptr noundef null, i32 noundef 6) ; 0 uses
  %i.kh = load ptr, ptr %69, align 8, !tbaa !198  ; 2 uses
  %.not.i.i580 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i580, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit583: ; preds = %.critedge
  %i.ki = load ptr, ptr %i.eq, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.kj = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeNullWithTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.ki, i64 %.sroa.0120.0) ; 2 uses
  %.fca.0.extract103 = extractvalue { ptr, i8 } %i.kj, 0
  %.fca.1.extract104 = extractvalue { ptr, i8 } %i.kj, 1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %70, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.fca.0.extract103, i8 %.fca.1.extract104, i1 noundef zeroext true) #14
  br label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %67, ptr noundef nonnull align 8 dereferenceable(9) %68, i64 9, i1 false), !tbaa.struct !365
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #14
  %i.kk = load i8, ptr %.sroa.2126.0..sroa_idx, align 8, !tbaa !262 ; 2 uses
  %i.kl = icmp eq i8 %i.kk, 1
  br i1 %i.kl, label %bb.aw, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit590

bb.aw:                                            ; preds = %bb.av
  %i.km = load ptr, ptr %i.eq, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.kn = load ptr, ptr %i.ef, align 8, !tbaa !213 ; 2 uses
  %.not.i.i584 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i584, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit588, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !219
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit588

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit588: ; preds = %bb.aw, %bb.ax
  %i.kq = phi ptr [ %i.kp, %bb.ax ], [ null, %bb.aw ]
  %i.kr = load i32, ptr %i.et, align 8, !tbaa !234
  %i.ks = zext i32 %i.kr to i64
  %i.kt = call noundef i32 @_ZNK5clang4ento10ExprEngine20getNumVisitedCurrentEv(ptr noundef nonnull align 8 dereferenceable(812) %0)
  %i.ku = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412) %i.km, ptr noundef null, ptr %i.kq, i64 %i.ks, ptr noundef %i.ff, i64 %.sroa.0120.0, i32 noundef %i.kt) #14 ; 2 uses
  %.fca.0.extract93 = extractvalue { ptr, i8 } %i.ku, 0
  %.fca.1.extract94 = extractvalue { ptr, i8 } %i.ku, 1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %71, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.fca.0.extract93, i8 %.fca.1.extract94, i1 noundef zeroext true) #14
  br label %bb.ay

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit590: ; preds = %bb.av
  %.sroa.087.0.copyload = load ptr, ptr %67, align 8, !tbaa !221
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %72, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.sroa.087.0.copyload, i8 %i.kk, i1 noundef zeroext true) #14
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit588, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit590, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit583
  %.sink930 = phi ptr [ %71, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit588 ], [ %72, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit590 ], [ %70, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit583 ] ; 2 uses
  %i.kv = load ptr, ptr %.sink930, align 8, !tbaa !198 ; 6 uses
  store ptr %i.fd, ptr %.sink930, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #14
  %.not.i.i591 = icmp eq ptr %i.kv, null          ; 2 uses
  br i1 %.not.i.i591, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit592

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit592: ; preds = %bb.ay
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kv) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %.sroa.3.0.copyload.i.i594 = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.kw = and i64 %.sroa.3.0.copyload.i.i594, -8
  %i.kx = inttoptr i64 %i.kw to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %19, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.kx, ptr noundef null) #14
  store ptr %i.kv, ptr %20, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kv) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596.critedge: ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %.sroa.3.0.copyload.i.i594.c = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.ky = and i64 %.sroa.3.0.copyload.i.i594.c, -8
  %i.kz = inttoptr i64 %i.ky to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %19, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.kz, ptr noundef null) #14
  store ptr null, ptr %20, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit592
  %i.la = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr nofree noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull %i.fb, i1 noundef zeroext false) #14 ; 0 uses
  %i.lb = load ptr, ptr %20, align 8, !tbaa !198  ; 2 uses
  %.not.i.i6.i597 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i6.i597, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.lb) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i596, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  br i1 %.not.i.i591, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581.sink.split: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579
  %.sink931 = phi ptr [ %i.kh, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579 ], [ %i.kv, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598 ]
  %.sroa.0728.3.ph = phi ptr [ %i.fd, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579 ], [ %i.kv, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sink931) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581.sink.split, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579
  %.sroa.0728.3 = phi ptr [ null, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit598 ], [ %i.fd, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit579 ], [ %.sroa.0728.3.ph, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit581.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit504

bb.ba:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit484
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #14
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %2, ptr noundef %i.ff) #14
  %i.ld = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !201
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 240
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !212
  %i.lh = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.lc, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(412) %i.lg) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  %.fca.0.extract83 = extractvalue { ptr, i8 } %i.lh, 0
  %.fca.1.extract84 = extractvalue { ptr, i8 } %i.lh, 1
  store ptr %.fca.0.extract83, ptr %73, align 8
  store i8 %.fca.1.extract84, ptr %.sroa.286.0..sroa_idx, align 8
  %.sroa.0.0.copyload.i601 = load i64, ptr %i.dz, align 8, !tbaa !8 ; 2 uses
  %i.li = load i24, ptr %1, align 8
  %i.lj = and i24 %i.li, 1536
  %.not829 = icmp eq i24 %i.lj, 0
  br i1 %.not829, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lk = load ptr, ptr %i.g, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !246
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ln(ptr noundef nonnull align 8 dereferenceable(272) %i.lk) #14, !inline_history !248
  %i.lp = call i64 @_ZNK5clang10ASTContext14getPointerTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.lo, i64 %.sroa.0.0.copyload.i601) #14
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.081.0 = phi i64 [ %i.lp, %bb.bb ], [ %.sroa.0.0.copyload.i601, %bb.ba ]
  %i.lq = call noundef zeroext i1 @_ZNK5clang4ento4SVal10isConstantEv(ptr noundef nonnull align 8 dereferenceable(9) %73) #14
  br i1 %i.lq, label %thread-pre-split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #14
  %i.lr = load ptr, ptr %i.er, align 8, !tbaa !308
  %.sroa.076.0.copyload = load ptr, ptr %73, align 8, !tbaa !221
  %.sroa.277.0.copyload = load i8, ptr %.sroa.286.0..sroa_idx, align 8, !tbaa !235
  call void @_ZN5clang4ento12StoreManager17evalBaseToDerivedENS0_4SValENS_8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.705") align 8 %74, ptr noundef nonnull align 8 dereferenceable(40) %i.lr, ptr %.sroa.076.0.copyload, i8 %.sroa.277.0.copyload, i64 %.sroa.0778.0) #14
  %i.ls = load i8, ptr %i.es, align 8, !tbaa !363, !range !339, !noundef !156
  %i.lt = trunc nuw i8 %i.ls to i1                ; 2 uses
  %.sroa.0697.0.copyload = load ptr, ptr %74, align 8
  %.sroa.5699.0.copyload = load i8, ptr %.sroa.5699.0..sroa_idx, align 8
  %.sroa.5699.0 = select i1 %i.lt, i8 %.sroa.5699.0.copyload, i8 1 ; 2 uses
  %.sroa.0697.0 = select i1 %i.lt, ptr %.sroa.0697.0.copyload, ptr null
  store ptr %.sroa.0697.0, ptr %73, align 8, !tbaa !221
  store i8 %.sroa.5699.0, ptr %.sroa.286.0..sroa_idx, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #14
  br label %bb.be

thread-pre-split:                                 ; preds = %bb.bc
  %.pr = load i8, ptr %.sroa.286.0..sroa_idx, align 8, !tbaa !262
  br label %bb.be

bb.be:                                            ; preds = %thread-pre-split, %bb.bd
  %i.lu = phi i8 [ %.pr, %thread-pre-split ], [ %.sroa.5699.0, %bb.bd ] ; 2 uses
  %i.lv = icmp eq i8 %i.lu, 1
  br i1 %i.lv, label %bb.bf, label %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607_crit_edge

._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607_crit_edge: ; preds = %bb.be
  %.sroa.062.0.copyload.pre = load ptr, ptr %73, align 8, !tbaa !221
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607

bb.bf:                                            ; preds = %bb.be
  %i.lw = load ptr, ptr %i.eq, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.lx = load ptr, ptr %i.ef, align 8, !tbaa !213 ; 3 uses
  %.not.i.i602 = icmp eq ptr %i.lx, null
  br i1 %.not.i.i602, label %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605_crit_edge, label %bb.bg

._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605_crit_edge: ; preds = %bb.bf
  %.pre851 = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !219
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605

bb.bg:                                            ; preds = %bb.bf
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !219 ; 2 uses
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605: ; preds = %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605_crit_edge, %bb.bg
  %i.ma = phi ptr [ %i.lz, %bb.bg ], [ %.pre851, %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605_crit_edge ]
  %i.mb = phi ptr [ %i.lz, %bb.bg ], [ null, %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605_crit_edge ]
  %i.mc = load i32, ptr %i.et, align 8, !tbaa !234
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.mg = load ptr, ptr %i.eu, align 8, !tbaa !220
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.mh, align 8, !tbaa !221
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %17, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ma, i64 48
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !222
  %i.mk = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %i.mf, i32 noundef %i.mj) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ml = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameENS_8QualTypeEj(ptr noundef nonnull align 8 dereferenceable(412) %i.lw, ptr noundef null, ptr %i.mb, i64 %i.md, ptr noundef %i.ff, i64 %.sroa.081.0, i32 noundef %i.mk) #14 ; 2 uses
  %.fca.0.extract65 = extractvalue { ptr, i8 } %i.ml, 0 ; 2 uses
  %.fca.1.extract66 = extractvalue { ptr, i8 } %i.ml, 1 ; 2 uses
  store ptr %.fca.0.extract65, ptr %73, align 8, !tbaa !221
  store i8 %.fca.1.extract66, ptr %.sroa.286.0..sroa_idx, align 8, !tbaa !235
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607: ; preds = %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607_crit_edge, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605
  %.sroa.263.0.copyload = phi i8 [ %i.lu, %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607_crit_edge ], [ %.fca.1.extract66, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605 ]
  %.sroa.062.0.copyload = phi ptr [ %.sroa.062.0.copyload.pre, %._ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607_crit_edge ], [ %.fca.0.extract65, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit605 ]
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %75, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.sroa.062.0.copyload, i8 %.sroa.263.0.copyload, i1 noundef zeroext true) #14
  %i.mm = load ptr, ptr %75, align 8, !tbaa !198  ; 6 uses
  store ptr %i.fd, ptr %75, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #14
  %.not.i.i608 = icmp eq ptr %i.mm, null          ; 2 uses
  br i1 %.not.i.i608, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit609

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit609: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mm) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %.sroa.3.0.copyload.i.i611 = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.mn = and i64 %.sroa.3.0.copyload.i.i611, -8
  %i.mo = inttoptr i64 %i.mn to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %15, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.mo, ptr noundef null) #14
  store ptr %i.mm, ptr %16, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mm) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613.critedge: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit607
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %.sroa.3.0.copyload.i.i611.c = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.mp = and i64 %.sroa.3.0.copyload.i.i611.c, -8
  %i.mq = inttoptr i64 %i.mp to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %15, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.mq, ptr noundef null) #14
  store ptr null, ptr %16, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit609
  %i.mr = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull %i.fb, i1 noundef zeroext false) #14 ; 0 uses
  %i.ms = load ptr, ptr %16, align 8, !tbaa !198  ; 2 uses
  %.not.i.i6.i614 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i6.i614, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit615, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ms) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit615

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit615: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i613, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br i1 %.not.i.i608, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit617, label %bb.bi

bb.bi:                                            ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit615
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mm) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit617

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit617: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit615, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit504

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit620: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit484
  %i.mt = load ptr, ptr %i.eq, align 8, !tbaa !233, !nonnull !156, !align !157
  %.sroa.0.0.copyload.i618 = load i64, ptr %i.dz, align 8, !tbaa !8
  %i.mu = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16makeNullWithTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.mt, i64 %.sroa.0.0.copyload.i618) ; 2 uses
  %.fca.0.extract51 = extractvalue { ptr, i8 } %i.mu, 0
  %.fca.1.extract52 = extractvalue { ptr, i8 } %i.mu, 1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %76, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.fca.0.extract51, i8 %.fca.1.extract52, i1 noundef zeroext true) #14
  %i.mv = load ptr, ptr %76, align 8, !tbaa !198  ; 5 uses
  store ptr %i.fd, ptr %76, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #14
  %.not.i.i621 = icmp eq ptr %i.mv, null          ; 2 uses
  br i1 %.not.i.i621, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit622

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit622: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit620
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mv) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %.sroa.3.0.copyload.i.i624 = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.mw = and i64 %.sroa.3.0.copyload.i.i624, -8
  %i.mx = inttoptr i64 %i.mw to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %13, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.mx, ptr noundef null) #14
  store ptr %i.mv, ptr %14, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.mv) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626.critedge: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit620
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %.sroa.3.0.copyload.i.i624.c = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.my = and i64 %.sroa.3.0.copyload.i.i624.c, -8
  %i.mz = inttoptr i64 %i.my to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %13, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.mz, ptr noundef null) #14
  store ptr null, ptr %14, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit622
  %i.na = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr nofree noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %i.fb, i1 noundef zeroext false) #14 ; 0 uses
  %i.nb = load ptr, ptr %14, align 8, !tbaa !198  ; 2 uses
  %.not.i.i6.i627 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i6.i627, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit628, label %bb.bj

bb.bj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.nb) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit628

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit628: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i626, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %.not.i.i621, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit682, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit504.thread823.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit632: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit484
  %i.nc = load ptr, ptr %i.eq, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.nd = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16getMemberPointerEPKNS_9NamedDeclE(ptr noundef nonnull align 8 dereferenceable(412) %i.nc, ptr noundef null) #14 ; 2 uses
  %.fca.0.extract38 = extractvalue { ptr, i8 } %i.nd, 0
  %.fca.1.extract39 = extractvalue { ptr, i8 } %i.nd, 1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %77, ptr noundef nonnull align 8 dereferenceable(48) %i.fd, ptr noundef nonnull %1, ptr noundef %i.ff, ptr %.fca.0.extract38, i8 %.fca.1.extract39, i1 noundef zeroext true) #14
  %i.ne = load ptr, ptr %77, align 8, !tbaa !198  ; 5 uses
  store ptr %i.fd, ptr %77, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #14
  %.not.i.i633 = icmp eq ptr %i.ne, null          ; 2 uses
  br i1 %.not.i.i633, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit634

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit634: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit632
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ne) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %.sroa.3.0.copyload.i.i636 = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.nf = and i64 %.sroa.3.0.copyload.i.i636, -8
  %i.ng = inttoptr i64 %i.nf to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %11, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.ng, ptr noundef null) #14
  store ptr %i.ne, ptr %12, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ne) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638.critedge: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit632
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %.sroa.3.0.copyload.i.i636.c = load i64, ptr %.sroa.3.0..sroa_idx.i485, align 8, !tbaa !8
  %i.nh = and i64 %.sroa.3.0.copyload.i.i636.c, -8
  %i.ni = inttoptr i64 %i.nh to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %11, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.ni, ptr noundef null) #14
  store ptr null, ptr %12, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i638.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit634
  %i.nj = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %i.fb, i1 noundef zeroext false) #14 ; 0 uses
  %i.nk = load ptr, ptr %12, align 8, !tbaa !198  ; 2 uses
  %.not.i.i6.i639 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i6.i639, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit640, label %bb.bk
end_hunk_1
begin_hunk_2_@_ZN5clang4ento10ExprEngine16VisitLogicalExprEPKNS_14BinaryOperatorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  %i.bb = shl i32 %i.ay, 1
  %i.bc = and i32 %i.bb, 12
  %i.bd = trunc i64 %.sroa.4148.0.copyload to i32
  %i.be = and i32 %i.bd, 3
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.ba
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %._crit_edge, label %.lr.ph, !llvm.loop !418

._crit_edge:                                      ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit81, %.preheader
  %.065.lcssa181 = phi ptr [ %2, %.preheader ], [ %i.aw, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit81 ] ; 4 uses
  %.sroa.4148.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %.065.lcssa181, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.065.lcssa181, i64 64
  %i.bj = call noundef i32 @_ZNK5clang4ento12ExplodedNode9NodeGroup4sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #14
  %.not = icmp eq i32 %i.bj, 1
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  br i1 %.not.i.i68, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87.critedge, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit83

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit83: ; preds = %bb.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %.sroa.3.0.copyload.i.i85 = load i64, ptr %.sroa.5151.0..sroa_idx184, align 8, !tbaa !8
  %i.bk = and i64 %.sroa.3.0.copyload.i.i85, -8
  %i.bl = inttoptr i64 %i.bk to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %9, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.bl, ptr noundef null) #14
  store ptr %i.k, ptr %10, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87.critedge: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %.sroa.3.0.copyload.i.i85.c = load i64, ptr %.sroa.5151.0..sroa_idx184, align 8, !tbaa !8
  %i.bm = and i64 %.sroa.3.0.copyload.i.i85.c, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %9, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.bn, ptr noundef null) #14
  store ptr null, ptr %10, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87.critedge, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit83
  %i.bo = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %2, i1 noundef zeroext false) #14 ; 0 uses
  %i.bp = load ptr, ptr %10, align 8, !tbaa !198  ; 2 uses
  %.not.i.i6.i88 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i6.i88, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bp) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i87, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.not.i.i68, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit122, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread.sink.split

bb.k:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %.065.lcssa181, i64 8
  %.sroa.0139.0.copyload = load ptr, ptr %i.bq, align 8, !tbaa !221 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0139.0.copyload, i64 32
  %.sroa.0.0.copyload.i92 = load i64, ptr %i.br, align 8, !tbaa !8
  %.not66 = icmp ult i64 %.sroa.0.0.copyload.i92, 8
  br i1 %.not66, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4140.0.copyload = load i64, ptr %.sroa.4148.0..sroa_idx.le, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0139.0.copyload, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !419
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !420
  %i.bv = and i64 %.sroa.4140.0.copyload, -4
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = icmp eq ptr %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.ca = zext i1 %i.bx to i64
  %.sroa.0.0.copyload.i94 = load i64, ptr %i.l, align 8, !tbaa !8 ; 2 uses
  %i.cb = and i64 %.sroa.0.0.copyload.i94, -16
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = load ptr, ptr %i.cc, align 16, !tbaa !249
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ce, align 8, !tbaa !8
  %i.cf = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !249
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 16            ; 3 uses
  switch i8 %i.cj, label %bb.m [
    i8 40, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 31, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 11, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.ck = and i8 %i.cj, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ck, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = icmp eq i8 %i.cj, 13
  br i1 %i.cl, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i: ; preds = %bb.n
  %i.cm = load i32, ptr %i.ci, align 16
  %i.cn = and i32 %i.cm, 536346624
  %i.co = icmp eq i32 %i.cn, 264765440
  br i1 %i.co, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %bb.n
  br label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit

_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.m, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i
  %.sroa.3.0.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i ], [ 2, %bb.l ], [ 2, %bb.l ], [ 2, %bb.l ], [ 2, %bb.m ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cq = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.cp, i64 noundef %i.ca, i64 %.sroa.0.0.copyload.i94) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110

bb.o:                                             ; preds = %bb.k
  %i.cr = load ptr, ptr %.sroa.0139.0.copyload, align 8, !tbaa !424
  %.sroa.0.0.copyload.i95 = load i64, ptr %i.cr, align 8, !tbaa !8
  %i.cs = and i64 %.sroa.0.0.copyload.i95, -4
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.065.lcssa181, i64 56 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !198 ; 2 uses
  %.sroa.3.0.copyload.i100 = load i64, ptr %.sroa.5151.0..sroa_idx184, align 8, !tbaa !8
  %i.cw = and i64 %.sroa.3.0.copyload.i100, -8
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.ct, ptr noundef %i.cx) #14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !201
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 240
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !212
  %i.dd = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(412) %i.dc) #14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %.fca.0.extract18 = extractvalue { ptr, i8 } %i.dd, 0 ; 2 uses
  %.fca.1.extract19 = extractvalue { ptr, i8 } %i.dd, 1 ; 2 uses
  %i.de = icmp eq i8 %.fca.1.extract19, 0
  br i1 %i.de, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !212
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.0.0.copyload.i101 = load i64, ptr %i.l, align 8, !tbaa !8
  %i.di = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.dh, i64 noundef 0, i64 %.sroa.0.0.copyload.i101) #14
  %i.dj = load ptr, ptr %i.cu, align 8, !tbaa !198 ; 5 uses
  %.not.i.i102 = icmp eq ptr %i.dj, null          ; 3 uses
  br i1 %.not.i.i102, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit103, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit103

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit103: ; preds = %bb.p, %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !233, !nonnull !156, !align !157
  %.sroa.0.0.copyload.i104 = load i64, ptr %i.l, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.0.0.copyload.i105 = load i64, ptr %i.dm, align 8, !tbaa !8
  %i.dn = call { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412) %i.dl, ptr %.fca.0.extract18, i8 %.fca.1.extract19, i64 %.sroa.0.0.copyload.i104, i64 %.sroa.0.0.copyload.i105) #14 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i8 } %i.dn, 0
  %.fca.1.extract5 = extractvalue { ptr, i8 } %i.dn, 1
  %.sroa.0.0.copyload.i106 = load i64, ptr %i.l, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.di, ptr %7, align 8
  %.sroa.2.0..sroa_idx127 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 6, ptr %.sroa.2.0..sroa_idx127, align 8
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !233, !nonnull !156, !align !157
  store ptr %i.dj, ptr %6, align 8, !tbaa !198
  br i1 %.not.i.i102, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i108, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit103
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i108

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i108: ; preds = %bb.r, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit103
  %i.dp = call { ptr, i8 } @_ZN5clang4ento11SValBuilder9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.do, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 15, ptr %.fca.0.extract4, i8 %.fca.1.extract5, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %7, i64 %.sroa.0.0.copyload.i106) #14 ; 2 uses
  %i.dq = load ptr, ptr %6, align 8, !tbaa !198   ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i9.i, label %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i108
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dq) #14
  br label %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit

_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i108, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dp, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.dp, 1 ; 2 uses
  br i1 %.not.i.i102, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110, label %bb.t

bb.t:                                             ; preds = %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110: ; preds = %bb.t, %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit, %bb.o, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  %.sroa.7.1 = phi i8 [ %.sroa.3.0.i, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit ], [ 0, %bb.o ], [ %.fca.1.extract, %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit ], [ %.fca.1.extract, %bb.t ]
  %.sroa.0135.1 = phi ptr [ %i.cq, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit ], [ %.fca.0.extract18, %bb.o ], [ %.fca.0.extract, %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit ], [ %.fca.0.extract, %bb.t ]
  %.sroa.3.0.copyload.i112 = load i64, ptr %.sroa.5151.0..sroa_idx184, align 8, !tbaa !8
  %i.dr = and i64 %.sroa.3.0.copyload.i112, -8
  %i.ds = inttoptr i64 %i.dr to ptr
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull %1, ptr noundef %i.ds, ptr %.sroa.0135.1, i8 %.sroa.7.1, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.sroa.3.0.copyload.i.i114 = load i64, ptr %.sroa.5151.0..sroa_idx184, align 8, !tbaa !8
  %i.dt = and i64 %.sroa.3.0.copyload.i.i114, -8
  %i.du = inttoptr i64 %i.dt to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %4, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.du, ptr noundef null) #14
  %i.dv = load ptr, ptr %16, align 8, !tbaa !198  ; 3 uses
  store ptr %i.dv, ptr %5, align 8, !tbaa !198
  %.not.i.i.i115 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i115, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i116, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dv) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i116

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i116: ; preds = %bb.u, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit110
  %i.dw = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, i1 noundef zeroext false) #14 ; 0 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %.not.i.i6.i117 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i6.i117, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i116
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.dx) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i116, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.dy = load ptr, ptr %16, align 8, !tbaa !198  ; 2 uses
  %.not.i.i119 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i119, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread.sink.split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread.sink.split: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit79, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  %.sink = phi ptr [ %i.k, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89 ], [ %i.dy, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118 ], [ %i.k, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit ], [ %i.k, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit79 ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sink) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread.sink.split, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit118
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit122

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit122: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit79, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit89, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  ret void
}

declare ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine16VisitGuardedExprEPKNS_4ExprES4_S4_PNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(812) %0, ptr noundef %1, ptr nofree noundef readonly %2, ptr nofree noundef readonly %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %8 = alloca %"class.clang::ento::BlockCounter", align 8 ; 4 uses
  %9 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.clang::ento::NodeBuilder", align 8 ; 6 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  store ptr %i.c, ptr %10, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !304
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.e, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !192
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit

_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198  ; 6 uses
  %.not.i.i63 = icmp eq ptr %i.k, null            ; 2 uses
  br i1 %.not.i.i63, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, label %bb.d

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread: ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  %.sroa.3.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i99 = load i64, ptr %.sroa.3.0..sroa_idx.i98, align 8, !tbaa !8 ; 2 uses
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65

bb.d:                                             ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  %.0.copyload.i.i.i5.i.i.i.i126.pre = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !425
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread, %bb.d
  %.0.copyload.i.i.i5.i.i.i.i126 = phi i64 [ %.sroa.3.0.copyload.i99, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %.0.copyload.i.i.i5.i.i.i.i126.pre, %bb.d ]
  %.in.in = phi i64 [ %.sroa.3.0.copyload.i99, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %.sroa.3.0.copyload.i, %bb.d ]
  %.sroa.3.0..sroa_idx.i100 = phi ptr [ %.sroa.3.0..sroa_idx.i98, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread ], [ %.sroa.3.0..sroa_idx.i, %bb.d ]
  %.in = and i64 %.in.in, -8
  %i.l = inttoptr i64 %.in to ptr                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.0.copyload.i.i.i.i.i.i.i125 = load i64, ptr %i.m, align 8, !noalias !425
  %i.n = trunc i64 %.0.copyload.i.i.i.i.i.i.i125 to i32
  %i.o = trunc i64 %.0.copyload.i.i.i5.i.i.i.i126 to i32
  %i.p = shl i32 %i.n, 3
  %i.q = and i32 %i.p, 48
  %i.r = shl i32 %i.o, 1
  %i.s = and i32 %i.r, 12
  %i.t = or disjoint i32 %i.s, %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.0.copyload.i.i.i6.i.i.i.i127 = load i64, ptr %i.u, align 8, !noalias !425
  %i.v = trunc i64 %.0.copyload.i.i.i6.i.i.i.i127 to i32
  %i.w = and i32 %i.v, 3
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65
  %.052.lcssa = phi ptr [ %4, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65 ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 8
  %.sroa.088.0.copyload = load ptr, ptr %i.z, align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !198 ; 5 uses
  %.not.i.i66 = icmp eq ptr %i.ab, null           ; 2 uses
  br i1 %.not.i.i66, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit67, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ab) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit67

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit67: ; preds = %._crit_edge, %bb.e
  br i1 %.not.i.i63, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit67
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  br label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105

.lr.ph:                                           ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65, %.lr.ph
  %.052128 = phi ptr [ %i.ae, %.lr.ph ], [ %4, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit65 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.052128, i64 64
  %i.ad = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #14
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !191, !nonnull !156, !noundef !156 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !425
  %i.ag = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.0.copyload.i.i.i5.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !425
  %i.ai = trunc i64 %.0.copyload.i.i.i5.i.i.i.i to i32
  %i.aj = shl i32 %i.ag, 3
  %i.ak = and i32 %i.aj, 48
  %i.al = shl i32 %i.ai, 1
  %i.am = and i32 %i.al, 12
  %i.an = or disjoint i32 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.0.copyload.i.i.i6.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !425
  %i.ap = trunc i64 %.0.copyload.i.i.i6.i.i.i.i to i32
  %i.aq = and i32 %i.ap, 3
  %i.ar = or disjoint i32 %i.an, %i.aq
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !llvm.loop !430

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit67
  %i.at = load ptr, ptr %.sroa.088.0.copyload, align 8, !tbaa !424 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.088.0.copyload, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !431 ; 2 uses
  %.not61129 = icmp eq ptr %i.at, %i.av
  br i1 %.not61129, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit

bb.g:                                             ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.058130, i64 16 ; 2 uses
  %.not61 = icmp eq ptr %i.aw, %i.av
  br i1 %.not61, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit

_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit: ; preds = %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105, %bb.g
  %.058130 = phi ptr [ %i.aw, %bb.g ], [ %i.at, %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105 ] ; 3 uses
  %.sroa.080.0.copyload = load i64, ptr %.058130, align 8, !tbaa !8 ; 2 uses
  %.sroa.5.0..058.sroa_idx = getelementptr inbounds nuw i8, ptr %.058130, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..058.sroa_idx, align 8, !tbaa !8
  %i.ax = trunc i64 %.sroa.5.0.copyload to i32
  %i.ay = shl i32 %i.ax, 2
  %i.az = and i32 %i.ay, 12
  %i.ba = trunc i64 %.sroa.080.0.copyload to i32
  %i.bb = and i32 %i.ba, 3
  %i.bc = add nuw nsw i32 %i.bb, -7
  %i.bd = add nsw i32 %i.bc, %i.az
  %spec.select.i.i = icmp ult i32 %i.bd, 3
  br i1 %spec.select.i.i, label %bb.h, label %bb.g

bb.h:                                             ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit
  %i.be = and i64 %.sroa.080.0.copyload, -4
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #13 ; 3 uses
  %i.bh = load i16, ptr %2, align 8
  %i.bi = and i16 %i.bh, 511
  %.not123 = icmp eq i16 %i.bi, 26
  br i1 %.not123, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !432
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi ptr [ %i.bk, %bb.i ], [ %2, %bb.h ]
  %i.bl = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.1) #13
  %i.bm = icmp eq ptr %i.bg, %i.bl
  br i1 %i.bm, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  %i.bo = icmp eq ptr %i.bg, %i.bn
  br i1 %i.bo, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113.thread, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113

_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113.thread: ; preds = %bb.j, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.bg, ptr noundef %i.l) #14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !201
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 240
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !212
  %i.bu = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(412) %i.bt) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.m

_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113: ; preds = %bb.g, %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit.thread105, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !213 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i70, label %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge, label %bb.l

_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge: ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113
  %.pre = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !219
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

bb.l:                                             ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !219 ; 2 uses
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit: ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge, %bb.l
  %i.ca = phi ptr [ %i.bz, %bb.l ], [ %.pre, %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge ]
  %i.cb = phi ptr [ %i.bz, %bb.l ], [ null, %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !234
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !220
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !221
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %8, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !222
  %i.cm = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.cg, i32 noundef %i.cl) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.cn = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(412) %i.bw, ptr noundef null, ptr %i.cb, i64 %i.ce, ptr noundef %i.l, i32 noundef %i.cm) #14
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113.thread, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit
  %.pn = phi { ptr, i8 } [ %i.bu, %_ZNK5clang10CFGElement5getAsINS_7CFGStmtEEESt8optionalIT_Ev.exit.thread113.thread ], [ %i.cn, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit ] ; 2 uses
  %.sroa.084.3 = extractvalue { ptr, i8 } %.pn, 0
  %.sroa.685.3 = extractvalue { ptr, i8 } %.pn, 1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %1, ptr noundef %i.l, ptr %.sroa.084.3, i8 %.sroa.685.3, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i100, align 8, !tbaa !8
  %i.co = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.cp = inttoptr i64 %i.co to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %6, ptr noundef %1, i32 noundef 6, ptr noundef %i.cp, ptr noundef null) #14
  %i.cq = load ptr, ptr %11, align 8, !tbaa !198  ; 3 uses
  store ptr %i.cq, ptr %7, align 8, !tbaa !198
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cq) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.n, %bb.m
  %i.cr = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %4, i1 noundef zeroext false) #14 ; 0 uses
  %i.cs = load ptr, ptr %7, align 8, !tbaa !198   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i6.i, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.cs) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ct = load ptr, ptr %11, align 8, !tbaa !198  ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i71, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit72, label %bb.p

bb.p:                                             ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ct) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit72

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit72: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %bb.p
  br i1 %.not.i.i66, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit76, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit72
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ab) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit76

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit76: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit72, %bb.q
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento10ExprEngine17VisitOffsetOfExprEPKNS_12OffsetOfExprEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(812) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.clang::ento::NodeBuilder", align 8 ; 6 uses
  %7 = alloca %"struct.clang::Expr::EvalResult", align 8 ; 12 uses
  %8 = alloca %"class.llvm::APSInt", align 8      ; 8 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213
  store ptr %i.c, ptr %6, align 8, !tbaa !303
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.d, align 8, !tbaa !304
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !192
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit

_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i8 0, ptr %7, align 8, !tbaa !434
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 0, ptr %i.j, align 1, !tbaa !437
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 0, ptr %i.k, align 2, !tbaa !438
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !439
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !440
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16, !nonnull !156, !align !157 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !246
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(23904) ptr %i.u(ptr noundef nonnull align 8 dereferenceable(272) %i.r) #14, !inline_history !248
  %i.w = call noundef zeroext i1 @_ZNK5clang4Expr13EvaluateAsIntERNS0_10EvalResultERKNS_10ASTContextENS0_15SideEffectsKindEb(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(23904) %i.v, i32 noundef 0, i1 noundef zeroext false) #14
  br i1 %i.w, label %bb.d, label %bb.l

bb.d:                                             ; preds = %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !444 ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !444
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.x, align 8, !tbaa !8
  store i64 %i.ac, ptr %8, align 8, !tbaa !8
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(13) %8, ptr noundef nonnull align 8 dereferenceable(13) %i.x) #14
  br label %_ZN4llvm6APSIntC2ERKS0_.exit

_ZN4llvm6APSIntC2ERKS0_.exit:                     ; preds = %bb.e, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !446, !range !339, !noundef !156
  store i8 %i.af, ptr %i.ad, align 4, !tbaa !446
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = call ptr @_ZN5clang4ento17BasicValueFactory8getValueERKN4llvm6APSIntE(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(13) %8) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !198
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.am = and i64 %.sroa.3.0.copyload.i, -8
  %i.an = inttoptr i64 %i.am to ptr
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull %1, ptr noundef %i.an, ptr %i.aj, i8 6, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !8
  %i.ao = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  call void @_ZN5clang12ProgramPoint15getProgramPointEPKNS_4StmtENS0_4KindEPKNS_10StackFrameEPKNS_15ProgramPointTagE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ProgramPoint") align 8 %4, ptr noundef nonnull %1, i32 noundef 6, ptr noundef %i.ap, ptr noundef null) #14
  %i.aq = load ptr, ptr %9, align 8, !tbaa !198   ; 3 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !198
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm6APSIntC2ERKS0_.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.g, %_ZN4llvm6APSIntC2ERKS0_.exit
  %i.ar = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %2, i1 noundef zeroext false) #14 ; 0 uses
  %i.as = load ptr, ptr %5, align 8, !tbaa !198   ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i6.i, label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.as) #14
  br label %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit

_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.at = load ptr, ptr %9, align 8, !tbaa !198   ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.at, null
  br i1 %.not.i.i14, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.at) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento11NodeBuilder12generateNodeEPKNS_4StmtEPNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagENS_12ProgramPoint4KindE.exit, %bb.i
  %i.au = load i32, ptr %i.y, align 8, !tbaa !444
  %i.av = icmp ugt i32 %i.au, 64
  br i1 %i.av, label %bb.j, label %_ZN4llvm5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.aw = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN4llvm5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #15
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit, %_ZN5clang4ento11NodeBuilderC2EPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetERKNS0_18NodeBuilderContextE.exit
  %i.ay = load i32, ptr %i.m, align 8, !tbaa !440
  %switch.i.i = icmp ult i32 %i.ay, 2
end_hunk_2
begin_hunk_3_@_ZN5clang4ento10ExprEngine31VisitIncrementDecrementOperatorEPKNS_13UnaryOperatorEPNS0_12ExplodedNodeERNS0_15ExplodedNodeSetE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 24, i1 false)
  store ptr %i.an, ptr %i.am, align 8, !tbaa !12
  store i32 0, ptr %i.ao, align 8, !tbaa !14
  store i32 4, ptr %i.ap, align 4, !tbaa !15
  store ptr %i.by, ptr %17, align 8, !tbaa !198
  %.not.i.i173 = icmp eq ptr %i.by, null
  br i1 %.not.i.i173, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit174, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.by) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit174

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit174: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172, %bb.l
  store ptr %.fca.0.extract108, ptr %18, align 8, !tbaa !221
  store i8 %.fca.1.extract109, ptr %.sroa.7115.0..sroa_idx116, align 8, !tbaa !235
  store ptr %.fca.0.extract93, ptr %19, align 8, !tbaa !221
  store i8 %.fca.1.extract94, ptr %.sroa.6244.0..sroa_idx, align 8, !tbaa !235
  call void @_ZN5clang4ento10ExprEngine9evalStoreERNS0_15ExplodedNodeSetEPKNS_4ExprES6_PNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValESE_PKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef nonnull %i.bp, ptr nofree noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %18, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %19, ptr noundef null) #14
  %i.ca = load ptr, ptr %17, align 8, !tbaa !198  ; 2 uses
  %.not.i.i175 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i175, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit176, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit174
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ca) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit176

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit176: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit174, %bb.m
  call void @_ZN5clang4ento15ExplodedNodeSet6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %16)
  %i.cb = load ptr, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.an
  br i1 %i.cc, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i177, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit176
  call void @free(ptr noundef %i.cb) #14
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i177

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i177: ; preds = %bb.n, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit176
  %i.cd = load i32, ptr %i.aq, align 4, !tbaa !194 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit178, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i177
  %i.cf = load ptr, ptr %16, align 8, !tbaa !197
  %i.cg = zext i32 %i.cd to i64                   ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741820
  %i.cl = add nuw nsw i64 %i.ck, %i.ch
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 8) #14
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit178

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit178:      ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i177, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.ar

bb.p:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit170
  %i.cm = load i32, ptr %1, align 8
  %i.cn = and i32 %i.cm, 15204352
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = select i1 %i.co, i32 5, i32 6
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !8 ; 3 uses
  %i.cq = and i64 %.sroa.0.0.copyload.i, -16
  %i.cr = inttoptr i64 %i.cq to ptr               ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 16, !tbaa !249
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !8 ; 2 uses
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !249 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 16
  switch i8 %i.cy, label %.lr.ph [
    i8 40, label %bb.q
    i8 31, label %bb.q
    i8 13, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
    i8 47, label %.split275
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.cz = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 400
  %.sroa.0.0.copyload.i180 = load i64, ptr %i.db, align 8, !tbaa !8
  %i.dc = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.da, i64 noundef 1, i64 %.sroa.0.0.copyload.i180) #14
  br label %bb.u

.lr.ph.i:                                         ; preds = %tailrecurse.i
  %.not.i = icmp eq i8 %i.eb, 47
  br i1 %.not.i, label %.split275, label %.lr.ph

.split275:                                        ; preds = %.lr.ph.i, %bb.p
  %.lcssa = phi ptr [ %i.cw, %bb.p ], [ %i.dz, %.lr.ph.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !255 ; 2 uses
  %i.df = call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.de) #14, !inline_history !261 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.df, null
  %..i.i = select i1 %.not.not.i.i, ptr %i.de, ptr %i.df ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %..i.i, i64 74
  %i.dh = load i8, ptr %i.dg, align 2
  %i.di = trunc i8 %i.dh to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %..i.i, i64 128
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dj, align 8
  %i.dk = icmp ugt i64 %.0.copyload.i.i.i.i.i.i, 7
  %i.dl = select i1 %i.di, i1 true, i1 %i.dk
  br i1 %i.dl, label %.split275._crit_edge, label %bb.u

.split275._crit_edge:                             ; preds = %.split275
  %.sroa.0.0.copyload.i184.pre = load i64, ptr %i.ad, align 8, !tbaa !8 ; 2 uses
  %.pre303 = and i64 %.sroa.0.0.copyload.i184.pre, -16
  %.pre304 = inttoptr i64 %.pre303 to ptr
  br label %bb.r

.lr.ph:                                           ; preds = %bb.p, %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i183288 = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.p ]
  %i.dm = and i64 %.sroa.0.0.copyload.i.i.i.i.i183288, -16
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !249 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i8, ptr %i.dp, align 16            ; 2 uses
  %i.dr = icmp ne i8 %i.dq, 35
  %.not17.not32.i = icmp eq ptr %i.do, null
  %.not17.not.i = or i1 %.not17.not32.i, %i.dr
  br i1 %.not17.not.i, label %.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.lr.ph
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ds, align 16, !tbaa !8
  %i.dt = and i64 %.sroa.0.0.copyload.i.i, -16
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !249
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !8 ; 2 uses
  %i.dx = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load ptr, ptr %i.dy, align 16, !tbaa !249 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i8, ptr %i.ea, align 16            ; 2 uses
  %i.ec = icmp ne i8 %i.eb, 13
  %.not.not30.i = icmp eq ptr %i.dz, null
  %.not.not.i = or i1 %.not.not30.i, %i.ec
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit

.split:                                           ; preds = %.lr.ph
  %i.ed = icmp eq i8 %i.dq, 10
  br i1 %i.ed, label %bb.r, label %bb.u

_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit: ; preds = %tailrecurse.i, %bb.p
  %.lcssa.i = phi ptr [ %i.cw, %bb.p ], [ %i.dz, %tailrecurse.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 16
  %i.ef = load i32, ptr %i.ee, align 16
  %i.eg = lshr i32 %i.ef, 19
  %i.eh = and i32 %i.eg, 1023
  %i.ei = add nsw i32 %i.eh, -453
  %spec.select.i.i = icmp ult i32 %i.ei, 20
  br i1 %spec.select.i.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.split275._crit_edge, %.split, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit
  %.pre-phi305 = phi ptr [ %.pre304, %.split275._crit_edge ], [ %i.cr, %.split ], [ %i.cr, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ]
  %.sroa.0.0.copyload.i184 = phi i64 [ %.sroa.0.0.copyload.i184.pre, %.split275._crit_edge ], [ %.sroa.0.0.copyload.i, %.split ], [ %.sroa.0.0.copyload.i, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ]
  %i.ej = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.ek = load ptr, ptr %.pre-phi305, align 8, !tbaa !249
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !tbaa !8
  %i.em = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !249
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 16            ; 3 uses
  switch i8 %i.eq, label %bb.s [
    i8 40, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 31, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 11, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  ]

bb.s:                                             ; preds = %bb.r
  %i.er = and i8 %i.eq, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.er, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = icmp eq i8 %i.eq, 13
  br i1 %i.es, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i: ; preds = %bb.t
  %i.et = load i32, ptr %i.ep, align 16
  %i.eu = and i32 %i.et, 536346624
  %i.ev = icmp eq i32 %i.eu, 264765440
  br i1 %i.ev, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %bb.t
  br label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit

_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit: ; preds = %bb.r, %bb.r, %bb.r, %bb.s, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i
  %.sroa.3.0.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i ], [ 2, %bb.r ], [ 2, %bb.r ], [ 2, %bb.r ], [ 2, %bb.s ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.ex = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ew, i64 noundef 1, i64 %.sroa.0.0.copyload.i184) #14
  br label %bb.u

bb.u:                                             ; preds = %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit, %.split, %.split275, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, %bb.q
  %.sroa.7.0 = phi i8 [ 6, %bb.q ], [ %.sroa.3.0.i, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit ], [ 1, %.split275 ], [ 1, %.split ], [ 1, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ] ; 2 uses
  %.sroa.0237.0 = phi ptr [ %i.dc, %bb.q ], [ %i.ex, %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit ], [ null, %.split275 ], [ null, %.split ], [ null, %_ZNK5clang4Type27isIntegralOrEnumerationTypeEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i187 = load i64, ptr %i.ad, align 8, !tbaa !8 ; 3 uses
  %i.ey = and i64 %.sroa.0.0.copyload.i187, -16
  %i.ez = inttoptr i64 %i.ey to ptr               ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 16, !tbaa !249
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.0.0.copyload.i.i.i.i189 = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fc = and i64 %.sroa.0.0.copyload.i.i.i.i189, -16
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load ptr, ptr %i.fd, align 16, !tbaa !249 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 16
  %i.fh = icmp eq i8 %i.fg, 13
  %.not6.i = icmp ne ptr %i.fe, null
  %.not.not.not.i = and i1 %.not6.i, %i.fh
  br i1 %.not.not.not.i, label %_ZNK5clang4Type13isBooleanTypeEv.exit, label %.critedge

_ZNK5clang4Type13isBooleanTypeEv.exit:            ; preds = %bb.u
  %i.fi = load i32, ptr %i.ff, align 16
  %i.fj = and i32 %i.fi, 536346624
  %i.fk = icmp eq i32 %i.fj, 237502464
  br i1 %i.fk, label %bb.v, label %.critedge

bb.v:                                             ; preds = %_ZNK5clang4Type13isBooleanTypeEv.exit
  %i.fl = load i32, ptr %1, align 8
  %i.fm = and i32 %i.fl, 15204352
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread, label %.critedge

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread: ; preds = %bb.v
  %i.fo = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !323, !nonnull !156, !align !157
  %i.fr = call noundef i32 @_ZNK5clang10ASTContext11getIntWidthENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.fq, i64 %.sroa.0.0.copyload.i187) #14
  %i.fs = load ptr, ptr %i.ez, align 16, !tbaa !249
  %i.ft = call noundef zeroext i1 @_ZNK5clang4Type34isUnsignedIntegerOrEnumerationTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.fs) #14
  %i.fu = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmjb(ptr noundef nonnull align 8 dereferenceable(144) %i.fp, i64 noundef 1, i32 noundef %i.fr, i1 noundef zeroext %i.ft) #14
  br label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

.critedge:                                        ; preds = %bb.u, %_ZNK5clang4Type13isBooleanTypeEv.exit, %bb.v
  br i1 %.not.i.i167, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit195.thread, label %bb.w

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit195.thread: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0237.0, ptr %8, align 8
  store i8 %.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.fv = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  store ptr %i.br, ptr %7, align 8, !tbaa !198
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

bb.w:                                             ; preds = %.critedge
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  %.sroa.0.0.copyload.i196.pre = load i64, ptr %i.ad, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.0237.0, ptr %8, align 8
  store i8 %.sroa.7.0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.fw = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  store ptr %i.br, ptr %7, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit195.thread, %bb.w
  %i.fx = phi ptr [ %i.fv, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit195.thread ], [ %i.fw, %bb.w ]
  %.sroa.0.0.copyload.i196330 = phi i64 [ %.sroa.0.0.copyload.i187, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit195.thread ], [ %.sroa.0.0.copyload.i196.pre, %bb.w ]
  %i.fy = call { ptr, i8 } @_ZN5clang4ento11SValBuilder9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.fx, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %i.cp, ptr %.fca.0.extract93, i8 %.fca.1.extract94, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %8, i64 %.sroa.0.0.copyload.i196330) #14 ; 2 uses
  %i.fz = load ptr, ptr %7, align 8, !tbaa !198   ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i9.i, label %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fz) #14
  br label %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit

_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.fca.0.extract48 = extractvalue { ptr, i8 } %i.fy, 0
  %.fca.1.extract49 = extractvalue { ptr, i8 } %i.fy, 1 ; 2 uses
  br i1 %.not.i.i167, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198, label %bb.y

bb.y:                                             ; preds = %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198: ; preds = %bb.y, %_ZN5clang4ento10ExprEngine9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE.exit
  %i.ga = icmp eq i8 %.fca.1.extract49, 1
  br i1 %i.ga, label %bb.z, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

bb.z:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198
  %i.gb = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  %i.gc = load ptr, ptr %i.y, align 8, !tbaa !213 ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i199, label %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge, label %bb.aa

._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge: ; preds = %bb.z
  %.pre = load ptr, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !219
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !219 ; 2 uses
  br label %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit

_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit: ; preds = %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge, %bb.aa
  %i.gf = phi ptr [ %i.ge, %bb.aa ], [ %.pre, %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge ]
  %i.gg = phi ptr [ %i.ge, %bb.aa ], [ null, %._ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit_crit_edge ]
  %i.gh = load i32, ptr %i.af, align 8, !tbaa !234
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.gl = load ptr, ptr %i.ag, align 8, !tbaa !220
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.0.0.copyload.i.i.i202 = load ptr, ptr %i.gm, align 8, !tbaa !221
  store ptr %.sroa.0.0.copyload.i.i.i202, ptr %6, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !222
  %i.gp = call noundef i32 @_ZNK5clang4ento12BlockCounter13getNumVisitedEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.gk, i32 noundef %i.go) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.gq = call { ptr, i8 } @_ZN5clang4ento11SValBuilder16conjureSymbolValEPKvNS_8CFGBlock14ElementRefImplILb1EEEPKNS_10StackFrameEj(ptr noundef nonnull align 8 dereferenceable(412) %i.gb, ptr noundef null, ptr %i.gg, i64 %i.gi, ptr noundef %i.g, i32 noundef %i.gp) #14 ; 2 uses
  %.fca.0.extract40 = extractvalue { ptr, i8 } %i.gq, 0 ; 5 uses
  %.fca.1.extract41 = extractvalue { ptr, i8 } %i.gq, 1 ; 5 uses
  %.sroa.0.0.copyload.i203 = load i64, ptr %i.ad, align 8, !tbaa !8 ; 2 uses
  %i.gr = and i64 %.sroa.0.0.copyload.i203, -16
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = load ptr, ptr %i.gs, align 16, !tbaa !249
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.gu, align 8, !tbaa !8
  %i.gv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = load ptr, ptr %i.gw, align 16, !tbaa !249
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 16            ; 3 uses
  switch i8 %i.gz, label %bb.ab [
    i8 40, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 31, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
    i8 11, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
  ]

bb.ab:                                            ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit
  %i.ha = and i8 %i.gz, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ha, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hb = icmp eq i8 %i.gz, 13
  br i1 %i.hb, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit:  ; preds = %bb.ac
  %i.hc = load i32, ptr %i.gy, align 16
  %i.hd = and i32 %i.hc, 536346624
  %i.he = icmp eq i32 %i.hd, 264765440
  br i1 %i.he, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread: ; preds = %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %_ZNK5clang4ento10ExprEngine16getCFGElementRefEv.exit, %bb.ab, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit
  %i.hf = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157 ; 2 uses
  store ptr %i.br, ptr %20, align 8, !tbaa !198
  br i1 %.not.i.i167, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit205, label %bb.ad

bb.ad:                                            ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  %.pre301 = load ptr, ptr %i.ae, align 8, !tbaa !233
  %.sroa.0.0.copyload.i206.pre = load i64, ptr %i.ad, align 8, !tbaa !8
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit205

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit205: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread, %bb.ad
  %.sroa.0.0.copyload.i206 = phi i64 [ %.sroa.0.0.copyload.i203, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread ], [ %.sroa.0.0.copyload.i206.pre, %bb.ad ]
  %i.hg = phi ptr [ %i.hf, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread ], [ %.pre301, %bb.ad ]
  %i.hh = call { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.hg, i64 %.sroa.0.0.copyload.i206) #14 ; 2 uses
  %.fca.0.extract27 = extractvalue { ptr, i8 } %i.hh, 0
  %.fca.1.extract28 = extractvalue { ptr, i8 } %i.hh, 1
  %i.hi = call { ptr, i8 } @_ZN5clang4ento11SValBuilder6evalEQEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_20DefinedOrUnknownSValES7_(ptr noundef nonnull align 8 dereferenceable(412) %i.hf, ptr nofree noundef nonnull align 8 dereferenceable(8) %20, ptr %.fca.0.extract93, i8 %.fca.1.extract94, ptr %.fca.0.extract27, i8 %.fca.1.extract28) #14 ; 2 uses
  %.fca.0.extract23 = extractvalue { ptr, i8 } %i.hi, 0
  %.fca.1.extract24 = extractvalue { ptr, i8 } %i.hi, 1 ; 2 uses
  %i.hj = load ptr, ptr %20, align 8, !tbaa !198  ; 2 uses
  %.not.i.i207 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i207, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit208, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit205
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hj) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit208

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit208: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit205, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.hk = icmp eq i8 %.fca.1.extract24, 1
  br i1 %i.hk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit208
  store ptr %i.br, ptr %21, align 8, !tbaa !198, !alias.scope !454
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #14, !noalias !454
  br label %_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit

bb.ag:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit208
  %i.hl = load ptr, ptr %i.bt, align 8, !tbaa !201, !noalias !454
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 104
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !457, !noalias !454
  store ptr %i.br, ptr %5, align 8, !tbaa !198, !noalias !454
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #14, !noalias !454
  call void @_ZN5clang4ento17ConstraintManager6assumeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %21, ptr noundef nonnull align 8 dereferenceable(56) %i.hn, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr %.fca.0.extract23, i8 %.fca.1.extract24, i1 noundef zeroext true) #14
  %i.ho = load ptr, ptr %5, align 8, !tbaa !198, !noalias !454 ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i209, label %_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ho) #14
  br label %_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit

_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.hp = load ptr, ptr %21, align 8, !tbaa !198  ; 2 uses
  %.not.i.i210 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i210, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit213, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread: ; preds = %_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hp) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  br label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit213: ; preds = %_ZNK5clang4ento12ProgramState6assumeENS0_20DefinedOrUnknownSValEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  %i.hq = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  store ptr %i.br, ptr %22, align 8, !tbaa !198
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  %i.hr = load ptr, ptr %i.ae, align 8, !tbaa !233, !nonnull !156, !align !157
  %.sroa.0.0.copyload.i214 = load i64, ptr %i.ad, align 8, !tbaa !8
  %i.hs = call { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.hr, i64 %.sroa.0.0.copyload.i214) #14 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i8 } %i.hs, 0
  %.fca.1.extract10 = extractvalue { ptr, i8 } %i.hs, 1
  %i.ht = call { ptr, i8 } @_ZN5clang4ento11SValBuilder6evalEQEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_20DefinedOrUnknownSValES7_(ptr noundef nonnull align 8 dereferenceable(412) %i.hq, ptr nofree noundef nonnull align 8 dereferenceable(8) %22, ptr %.fca.0.extract40, i8 %.fca.1.extract41, ptr %.fca.0.extract9, i8 %.fca.1.extract10) #14 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ht, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ht, 1 ; 2 uses
  %i.hu = load ptr, ptr %22, align 8, !tbaa !198  ; 2 uses
  %.not.i.i215 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i215, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit216, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit213
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hu) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit216

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit216: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit213, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.hv = icmp eq i8 %.fca.1.extract, 1
  br i1 %i.hv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit216
  store ptr %i.br, ptr %23, align 8, !tbaa !198, !alias.scope !458
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #14, !noalias !458
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220

bb.ak:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit216
  %i.hw = load ptr, ptr %i.bt, align 8, !tbaa !201, !noalias !458
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 104
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !457, !noalias !458
  store ptr %i.br, ptr %4, align 8, !tbaa !198, !noalias !458
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.br) #14, !noalias !458
  call void @_ZN5clang4ento17ConstraintManager6assumeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %23, ptr noundef nonnull align 8 dereferenceable(56) %i.hy, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr %.fca.0.extract, i8 %.fca.1.extract, i1 noundef zeroext false) #14
  %i.hz = load ptr, ptr %4, align 8, !tbaa !198, !noalias !458 ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i217, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hz) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220: ; preds = %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ia = load ptr, ptr %23, align 8, !tbaa !198
  store ptr %i.br, ptr %23, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.br) #14
  br label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279: ; preds = %bb.ac, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198
  %.sroa.8.1 = phi i8 [ %.fca.1.extract41, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread ], [ %.fca.1.extract41, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220 ], [ %.fca.1.extract41, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit ], [ %.fca.1.extract49, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198 ], [ 6, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread ], [ %.fca.1.extract41, %bb.ac ] ; 2 uses
  %.sroa.0236.1 = phi ptr [ %.fca.0.extract40, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread ], [ %.fca.0.extract40, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220 ], [ %.fca.0.extract40, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit ], [ %.fca.0.extract48, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198 ], [ %i.fu, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread ], [ %.fca.0.extract40, %bb.ac ] ; 2 uses
  %.sroa.0256.1 = phi ptr [ %i.br, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit211.thread ], [ %i.ia, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit220 ], [ %i.br, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit ], [ %i.br, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198 ], [ %i.br, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit198.thread ], [ %i.br, %bb.ac ] ; 4 uses
  %i.ib = load i24, ptr %1, align 8
  %i.ic = and i24 %i.ib, 1536
  %.not281 = icmp eq i24 %i.ic, 0
  br i1 %.not281, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit224, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit222

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit222: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %24, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0256.1, ptr noundef nonnull %1, ptr noundef %i.g, ptr %.fca.0.extract108, i8 %.fca.1.extract109, i1 noundef zeroext true) #14
  br label %bb.am

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit224: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread279
  %i.id = load i32, ptr %1, align 8
  %i.ie = and i32 %i.id, 15728640
  %i.if = icmp eq i32 %i.ie, 0                    ; 2 uses
  %.sroa.0.0.copyload = select i1 %i.if, ptr %.fca.0.extract93, ptr %.sroa.0236.1
  %.sroa.2.0.copyload = select i1 %i.if, i8 %.fca.1.extract94, i8 %.sroa.8.1
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0256.1, ptr noundef nonnull %1, ptr noundef %i.g, ptr %.sroa.0.0.copyload, i8 %.sroa.2.0.copyload, i1 noundef zeroext true) #14
  br label %bb.am

bb.am:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit224, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit222
  %.sink336 = phi ptr [ %25, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit224 ], [ %24, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit222 ] ; 2 uses
  %i.ig = load ptr, ptr %.sink336, align 8, !tbaa !198 ; 4 uses
  store ptr %.sroa.0256.1, ptr %.sink336, align 8, !tbaa !198
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0256.1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !191
  %i.ih = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE6removeERKS4_(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %26, i8 0, i64 24, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !12
  store i32 0, ptr %i.aj, align 8, !tbaa !14
  store i32 4, ptr %i.ak, align 4, !tbaa !15
  store ptr %i.ig, ptr %27, align 8, !tbaa !198
  %.not.i.i225 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i225, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit226, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ig) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit226

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit226: ; preds = %bb.am, %bb.an
  store ptr %.fca.0.extract108, ptr %28, align 8, !tbaa !221
  store i8 %.fca.1.extract109, ptr %.sroa.7115.0..sroa_idx118, align 8, !tbaa !235
  store ptr %.sroa.0236.1, ptr %29, align 8, !tbaa !221
  store i8 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !235
  call void @_ZN5clang4ento10ExprEngine9evalStoreERNS0_15ExplodedNodeSetEPKNS_4ExprES6_PNS0_12ExplodedNodeEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValESE_PKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(812) %0, ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef nonnull %1, ptr noundef %i.e, ptr noundef nonnull %i.bp, ptr nofree noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %28, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %29, ptr noundef null) #14
  %i.ii = load ptr, ptr %27, align 8, !tbaa !198  ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i227, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit228, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit226
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ii) #14
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit228

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit228: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit226, %bb.ao
  call void @_ZN5clang4ento15ExplodedNodeSet6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %26)
  %i.ij = load ptr, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.ai
  br i1 %i.ik, label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i229, label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit228
  call void @free(ptr noundef %i.ij) #14
  br label %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i229

_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i229: ; preds = %bb.ap, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit228
  %i.il = load i32, ptr %i.al, align 4, !tbaa !194 ; 2 uses
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit230, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i229
  %i.in = load ptr, ptr %26, align 8, !tbaa !197
  %i.io = zext i32 %i.il to i64                   ; 2 uses
  %i.ip = shl nuw nsw i64 %i.io, 3
  %i.iq = add nuw nsw i64 %i.io, 31
  %i.ir = lshr i64 %i.iq, 3
  %i.is = and i64 %i.ir, 1073741820
  %i.it = add nuw nsw i64 %i.is, %i.ip
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.in, i64 noundef %i.it, i64 noundef 8) #14
  br label %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit230

_ZN5clang4ento15ExplodedNodeSetD2Ev.exit230:      ; preds = %_ZN4llvm11SmallVectorIPN5clang4ento12ExplodedNodeELj4EED2Ev.exit.i.i229, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #14
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit230, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit178
  %.sroa.0256.3 = phi ptr [ %i.by, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit178 ], [ %i.ig, %_ZN5clang4ento15ExplodedNodeSetD2Ev.exit230 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.0291, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.iu, %i.ac
  br i1 %.not, label %._crit_edge, label %bb.i
}

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412), i64) local_unnamed_addr #3

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder14evalComplementENS0_6NonLocE(ptr noundef nonnull align 8 dereferenceable(412), ptr, i8) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #3

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder6evalEQEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_20DefinedOrUnknownSValES7_(ptr noundef nonnull align 8 dereferenceable(412), ptr nofree noundef align 8 dereferenceable(8), ptr, i8, ptr, i8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento15ExplodedNodeSet6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4ento12ExplodedNodeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %i.i, %i.g
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not29.i.i.i.i, label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %i.g, 1
  br i1 %.not31.i.i.i.i, label %bb.g, label %bb.f, !prof !461

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i.i = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.k, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !191
  store ptr %i.m, ptr %i.l, align 8, !tbaa !191
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15
  %i.p = icmp ult i32 %i.o, %i.g
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.b, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.q, i64 noundef %i.h, i64 noundef 8) #14
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.not28.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i.i.i.i, label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %.not33.i.i.i.i = icmp eq i32 %i.i, 1
  br i1 %.not33.i.i.i.i, label %bb.m, label %bb.l, !prof !461

bb.l:                                             ; preds = %bb.k
  %.idx32.i.i.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.r, i64 %.idx32.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !191
  store ptr %i.t, ptr %i.s, align 8, !tbaa !191
  br label %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i

_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %.022.i.i.i.i = phi i64 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.j, %bb.l ], [ 1, %bb.m ] ; 4 uses
  %i.u = load i32, ptr %i.f, align 8, !tbaa !14
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %.not.i.i.i3.i.i = icmp samesign eq i64 %.022.i.i.i.i, %i.v
  br i1 %.not.i.i.i3.i.i, label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !12
  %.idx35.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i, 3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx35.i.i.i.i
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.022.i.i.i.i
  %i.aa = sub nsw i64 %i.v, %.022.i.i.i.i
  %gepdiff.i.i.i.i = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.x, i64 %gepdiff.i.i.i.i, i1 false)
  br label %_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit

_ZN4llvm14SmallSetVectorIPN5clang4ento12ExplodedNodeELj4EEaSERKS5_.exit: ; preds = %bb.d, %bb.f, %bb.g, %_ZSt4copyIPKPN5clang4ento12ExplodedNodeEPS3_ET0_T_S8_S7_.exit30.i.i.i.i, %bb.n
  store i32 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %_ZN4llvm9SetVectorIPN5clang4ento12ExplodedNodeENS_11SmallVectorIS4_Lj4EEENS_8DenseSetIS4_NS_12DenseMapInfoIS4_vEEEELj4EE12insert_rangeIRKNS2_15ExplodedNodeSetEEEvOT_.exit

bb.o:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_3
