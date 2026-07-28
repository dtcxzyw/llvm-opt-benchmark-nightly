inline.NumInlined: 1790
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvh3sys2fs18remove_directoriesERKNS_5TwineEb:bb.a

_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i: ; preds = %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.lr.ph.i, %bb.j
  %i.aa = phi ptr [ %i.as, %bb.j ], [ %i.c, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.lr.ph.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !47
  %.not41.i = icmp eq i64 %i.ac, 0
  br i1 %.not41.i, label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr.33") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.ad)
  %i.ae = load i8, ptr %i.e, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %_ZNK4llvh7ErrorOrINS_3sys2fs17basic_file_statusEE8getErrorEv.exit.i, label %bb.f

_ZNK4llvh7ErrorOrINS_3sys2fs17basic_file_statusEE8getErrorEv.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load i32, ptr %4, align 8
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.31.0.copyload.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i, align 8
  br label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !151
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL23remove_directories_implINS1_15directory_entryEEESt10error_codeRKT_b(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i1 noundef zeroext false) ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { i32, ptr } %i.ai, 1      ; 2 uses
  store i32 %i.aj, ptr %2, align 8, !tbaa !3
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !149
  %.not42.i = icmp eq i32 %i.aj, 0
  br i1 %.not42.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i8 4, ptr %i.g, align 8, !tbaa !40
  store i8 1, ptr %i.h, align 1, !tbaa !43
  store ptr %i.ad, ptr %5, align 8, !tbaa !12
  %i.al = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %5, i1 noundef zeroext true) ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 0      ; 3 uses
  %i.an = extractvalue { i32, ptr } %i.al, 1      ; 2 uses
  store i32 %i.am, ptr %2, align 8, !tbaa !3
  store ptr %i.an, ptr %i.a, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %3, align 8, !tbaa !213
  %i.ap = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %i.ao) ; 2 uses
  %i.aq = extractvalue { i32, ptr } %i.ap, 0      ; 3 uses
  %i.ar = extractvalue { i32, ptr } %i.ap, 1      ; 2 uses
  store i32 %i.aq, ptr %2, align 8, !tbaa !3
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !149
  %.not43.i = icmp eq i32 %i.aq, 0
  br i1 %.not43.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.as = load ptr, ptr %3, align 8, !tbaa !213   ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i, label %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i, !llvm.loop !218

.critedge.i:                                      ; preds = %bb.i, %bb.h, %bb.g, %_ZNK4llvh7ErrorOrINS_3sys2fs17basic_file_statusEE8getErrorEv.exit.i
  %.sroa.027.0.i = phi i32 [ %.sroa.0.0.copyload.i.i, %_ZNK4llvh7ErrorOrINS_3sys2fs17basic_file_statusEE8getErrorEv.exit.i ], [ %i.am, %bb.h ], [ %i.aj, %bb.g ], [ %i.aq, %bb.i ]
  %.sroa.635.0.i = phi ptr [ %.sroa.31.0.copyload.i.i, %_ZNK4llvh7ErrorOrINS_3sys2fs17basic_file_statusEE8getErrorEv.exit.i ], [ %i.an, %bb.h ], [ %i.ak, %bb.g ], [ %i.ar, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i

_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i:   ; preds = %bb.j, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i, %bb.d, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us.i, %.critedge.i, %bb.a
  %.sroa.027.1.i = phi i32 [ %.sroa.027.0.i, %.critedge.i ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us.i ], [ 0, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i ], [ 0, %bb.j ] ; 2 uses
  %.sroa.635.1.i = phi ptr [ %.sroa.635.0.i, %.critedge.i ], [ %i.b, %bb.a ], [ %i.b, %bb.d ], [ %i.b, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.us.i ], [ %i.b, %_ZNK4llvh3sys2fs18directory_iteratorneERKS2_.exit.i ], [ %i.b, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !219 ; 8 uses
  %.not.i.i.i22.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i22.i, label %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aw, align 8, !tbaa !220
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !222
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !223
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #30, !inline_history !225
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #30, !inline_history !225
  br label %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit

bb.m:                                             ; preds = %bb.k
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !12
  %.not.i.i.i.i23.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i23.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24.i

bb.o:                                             ; preds = %bb.m
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i25.i = phi i32 [ %i.az, %bb.n ], [ %i.bj, %bb.o ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i25.i, 1
  br i1 %i.bk, label %bb.p, label %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit, !prof !63

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #30
  br label %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit

_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit: ; preds = %_ZN4llvh3sys2fs18directory_iteratorD2Ev.exit.i, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i24.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not18 = icmp eq i32 %.sroa.027.1.i, 0
  %or.cond = or i1 %1, %.not18
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit
  %i.bl = call { i32, ptr } @_ZN4llvh3sys2fs6removeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %0, i1 noundef zeroext true) ; 2 uses
  %i.bm = extractvalue { i32, ptr } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { i32, ptr } %i.bl, 1
  %.not = icmp eq i32 %i.bm, 0
  %or.cond4 = or i1 %1, %.not
  %spec.select = select i1 %or.cond4, ptr %i.b, ptr %i.bn
  %spec.select17 = select i1 %1, i32 0, i32 %i.bm
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit
  %.sroa.6.0 = phi ptr [ %spec.select, %bb.q ], [ %.sroa.635.1.i, %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit ]
  %.sroa.016.0 = phi i32 [ %spec.select17, %bb.q ], [ %.sroa.027.1.i, %_ZN4llvh3sys2fsL23remove_directories_implINS_5TwineEEESt10error_codeRKT_b.exit ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs9real_pathERKNS_5TwineERNS_15SmallVectorImplIcEEb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) initializes((8, 12)) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvh::SmallString.11", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvh::SmallString.11", align 8 ; 16 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %i.b = alloca [4096 x i8], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 0, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !40
  %spec.select.i.i = icmp ult i8 %i.e, 2
  br i1 %spec.select.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %i.g = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.f, 1
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.h, ptr %9, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  store i32 0, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 128, ptr %i.j, align 4, !tbaa !39
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  %i.k = load ptr, ptr %9, align 8, !tbaa !36     ; 2 uses
  %i.l = load i32, ptr %i.i, align 8, !tbaa !38   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %_ZN4llvh3sys2fsL15expandTildeExprERNS_15SmallVectorImplIcEE.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %bb.d
  %lhsc.i = load i8, ptr %i.k, align 1
  %i.o = icmp eq i8 %lhsc.i, 126
  br i1 %i.o, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i, label %_ZN4llvh3sys2fsL15expandTildeExprERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  %i.q = add nsw i64 %i.m, -1                     ; 8 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i, %bb.f
  %.pn147.i = phi i64 [ %i.w, %bb.f ], [ %i.q, %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i ] ; 2 uses
  %.sroa.0107.0146.i = phi ptr [ %i.v, %bb.f ], [ %i.p, %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i ] ; 2 uses
  %i.s = load i8, ptr %.sroa.0107.0146.i, align 1, !tbaa !12
  %i.t = icmp eq i8 %i.s, 47
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = sub i64 %i.q, %.pn147.i
  %12 = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.u)
  br label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0107.0146.i, i64 1
  %i.w = add nsw i64 %.pn147.i, -1                ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i, label %.lr.ph.i, !llvm.loop !226

_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i: ; preds = %bb.f, %bb.e, %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i
  %.0.i20.i = phi i64 [ %12, %bb.e ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit.thread140.i ], [ %i.q, %bb.f ] ; 6 uses
  %i.y = add i64 %.0.i20.i, 1                     ; 2 uses
  %.sroa.speculated63.i = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.y) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.speculated63.i
  %i.aa = sub i64 %i.q, %.sroa.speculated63.i     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 128, ptr %i.ad, align 4, !tbaa !39
  %i.ae = icmp eq i64 %.0.i20.i, 0
  br i1 %i.ae, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i
  %i.af = call ptr @getenv(ptr noundef nonnull @.str.10) #30 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.af, null
  br i1 %.not.i30.i, label %bb.h, label %.thread.i.i

bb.h:                                             ; preds = %bb.g
  %i.ag = call i32 @getuid() #30
  %i.ah = call ptr @getpwuid(i32 noundef %i.ag) #30 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ah, null
  br i1 %.not16.i.i, label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 2 uses
  %.not18.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.not.i.i, label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit.thread.i, label %..thread.i_crit_edge.i

..thread.i_crit_edge.i:                           ; preds = %bb.i
  %.pre.i = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.ak = zext i32 %.pre.i to i64
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i_crit_edge.i, %bb.g
  %i.al = phi i64 [ %i.ak, %..thread.i_crit_edge.i ], [ 128, %bb.g ]
  %.121.i.i = phi ptr [ %i.aj, %..thread.i_crit_edge.i ], [ %i.af, %bb.g ] ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !38
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.121.i.i) #29 ; 5 uses
  %i.an = icmp ugt i64 %i.am, %i.al
  br i1 %i.an, label %.thread30.i.i, label %bb.j

.thread30.i.i:                                    ; preds = %.thread.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.ab, i64 noundef %i.am, i64 noundef 1) #30
  %.pre7.pre.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !38
  %i.ao = zext i32 %.pre7.pre.i.i.i to i64
  br label %bb.k

bb.j:                                             ; preds = %.thread.i.i
  %.not.i.i.i.i = icmp samesign eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread30.i.i
  %.pre7.i33.i.i = phi i64 [ %i.ao, %.thread30.i.i ], [ 0, %bb.j ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.pre7.i33.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %.121.i.i, i64 %i.am, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi i32 [ 0, %bb.j ], [ %.pre.i.i.i, %bb.k ]
  %i.as = trunc i64 %i.am to i32
  %i.at = add i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.ac, align 8, !tbaa !38
  %i.au = load ptr, ptr %3, align 8, !tbaa !36
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12
  %i.aw = load ptr, ptr %9, align 8, !tbaa !36
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !12
  %i.ax = load ptr, ptr %9, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !38
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = call noundef ptr @_ZN4llvh15SmallVectorImplIcE6insertIPcvEES3_S3_T_S4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ba, ptr noundef %i.bd) ; 0 uses
  br label %_ZN4llvh3sys4path14home_directoryERNS_15SmallVectorImplIcEE.exit.thread.i

bb.m:                                             ; preds = %_ZNK4llvh9StringRef7find_ifENS_12function_refIFbcEEEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !71, !alias.scope !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !227
  store i64 %.0.i20.i, ptr %i.a, align 8, !tbaa !10, !noalias !227
  %i.bg = icmp ugt i64 %.0.i20.i, 15
  br i1 %i.bg, label %._crit_edge.i.i.i.thread.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.thread.i:                       ; preds = %bb.m
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.bh, ptr %4, align 8, !tbaa !44, !alias.scope !227
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !227
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !12, !alias.scope !227
  br label %bb.o

._crit_edge.i.i.i.i:                              ; preds = %bb.m
  %cond.i = icmp eq i64 %.0.i20.i, 1
  br i1 %cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bj = load i8, ptr %i.p, align 1, !tbaa !12
  store i8 %i.bj, ptr %i.bf, align 8, !tbaa !12
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.thread.i
  %i.bk = phi ptr [ %i.bh, %._crit_edge.i.i.i.thread.i ], [ %i.bf, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.p, i64 %.0.i20.i, i1 false)
  %.pre168.i = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !227
  %.pre169.i = load ptr, ptr %4, align 8, !tbaa !44, !alias.scope !227
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i:          ; preds = %bb.o, %bb.n
  %i.bl = phi ptr [ %i.bf, %bb.n ], [ %.pre169.i, %bb.o ]
  %i.bm = phi i64 [ 1, %bb.n ], [ %.pre168.i, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !47, !alias.scope !227
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 0, ptr %i.bo, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !227
  %i.bp = load ptr, ptr %4, align 8, !tbaa !44
  %i.bq = call ptr @getpwnam(ptr noundef %i.bp)   ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.i
  store i32 0, ptr %i.ac, align 8, !tbaa !38
  %i.br = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp ugt i64 %i.aa, %i.bs
  br i1 %i.bt, label %.thread.i.i.i, label %bb.q

.thread.i.i.i:                                    ; preds = %bb.p
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 1) #30
  %.pre7.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !38
  %i.bu = zext i32 %.pre7.pre.i.i.i.i.i to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.i.i.not.i = icmp ugt i64 %i.q, %i.y
  br i1 %.not.i.i.i.i.i.not.i, label %bb.r, label %_ZN4llvh11SmallStringILj128EEaSENS_9StringRefE.exit.i

bb.r:                                             ; preds = %bb.q, %.thread.i.i.i
  %.pre7.i.i4.i.i.i = phi i64 [ %i.bu, %.thread.i.i.i ], [ 0, %bb.q ]
  %i.bv = load ptr, ptr %3, align 8, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.pre7.i.i4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.z, i64 %i.aa, i1 false)
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !38
  br label %_ZN4llvh11SmallStringILj128EEaSENS_9StringRefE.exit.i

_ZN4llvh11SmallStringILj128EEaSENS_9StringRefE.exit.i: ; preds = %bb.r, %bb.q
  %i.bx = phi i32 [ 0, %bb.q ], [ %.pre.i.i.i.i.i, %bb.r ]
  %i.by = trunc i64 %i.aa to i32
  %i.bz = add i32 %i.bx, %i.by
  store i32 %i.bz, ptr %i.ac, align 8, !tbaa !38
  store i32 0, ptr %i.i, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61 ; 2 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #29 ; 5 uses
  %i.cd = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp ugt i64 %i.cc, %i.ce
  br i1 %i.cf, label %.thread.i, label %bb.s

.thread.i:                                        ; preds = %_ZN4llvh11SmallStringILj128EEaSENS_9StringRefE.exit.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %i.h, i64 noundef %i.cc, i64 noundef 1) #30
  %.pre7.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !38
  %i.cg = zext i32 %.pre7.pre.i.i to i64
  br label %bb.t

bb.s:                                             ; preds = %_ZN4llvh11SmallStringILj128EEaSENS_9StringRefE.exit.i
  %.not.i.i.i = icmp samesign eq i64 %i.cc, 0
  br i1 %.not.i.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread.i
  %.pre7.i164.i = phi i64 [ %i.cg, %.thread.i ], [ 0, %bb.s ]
  %i.ch = load ptr, ptr %9, align 8, !tbaa !36
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.pre7.i164.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr nonnull align 1 %i.cb, i64 %i.cc, i1 false)
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !38
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit.i: ; preds = %bb.t, %bb.s
  %i.cj = phi i32 [ 0, %bb.s ], [ %.pre.i.i, %bb.t ]
  %i.ck = trunc i64 %i.cc to i32
  %i.cl = add i32 %i.cj, %i.ck
  store i32 %i.cl, ptr %i.i, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 6, ptr %i.cm, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.cn, align 1, !tbaa !43
  store ptr %3, ptr %5, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 257, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
end_hunk_0
