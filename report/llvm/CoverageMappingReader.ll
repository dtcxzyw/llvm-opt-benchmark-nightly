Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoverageMappingReader?download=true
inline.NumInlined: 9101
inline.NumDeleted: 3320
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4llvm8coverage23CoverageMappingIterator9incrementEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d) #18
  %i.h = load ptr, ptr %4, align 8, !tbaa !26     ; 10 uses
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %_ZN4llvm5ErrorD2Ev.exit1, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24, !noalias !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !29
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #18, !noalias !29, !inline_history !32
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33, !noalias !29 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33, !noalias !29 ; 2 uses
  %.not3839.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not3839.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %.sroa.0.i.i.i.i.i.32.i.i.i.i.i.32.i.i.i.i.i.32.i.i.i.i.32.i.i.i.i.32.i.i.i.32.i.i.i.32.i.i.32.i.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i, i64 32
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN4llvm5ErrorD2Ev.exit9.i.i
  %i.q = phi ptr [ %i.ac, %_ZN4llvm5ErrorD2Ev.exit9.i.i ], [ null, %.lr.ph.i.i.preheader ]
  %.sroa.028.040.i.i = phi ptr [ %i.an, %_ZN4llvm5ErrorD2Ev.exit9.i.i ], [ %i.n, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18, !noalias !29
  store ptr %i.q, ptr %2, align 8, !tbaa !26, !noalias !29
  %i.r = load i64, ptr %.sroa.028.040.i.i, align 8, !tbaa !35, !noalias !29
  %i.s = inttoptr i64 %i.r to ptr                 ; 6 uses
  store ptr null, ptr %.sroa.028.040.i.i, align 8, !tbaa !35, !noalias !29
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24, !noalias !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !noalias !39
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @_ZN4llvm8coverage16CoverageMapError2IDE) #18, !noalias !39, !inline_history !40
  br i1 %i.w, label %bb.e, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit4.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr i8, ptr %i.s, i64 8
  %.val1.val.i.i.i = load i32, ptr %i.x, align 8, !tbaa !41, !noalias !39 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.y = icmp eq i32 %.val1.val.i.i.i, 1
  br i1 %i.y, label %bb.f, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i.i, i8 0, i64 24, i1 false), !noalias !50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i.i.i.32.i.i.i.i.i.32.i.i.i.i.i.32.i.i.i.i.32.i.i.i.i.32.i.i.i.32.i.i.i.32.i.i.32.i.i.32.i.32.i.32..sroa_idx, i8 0, i64 48, i1 false), !noalias !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i.i.i, i64 80, i1 false), !tbaa.struct !51, !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.8.val.sink.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %.val1.val.i.i.i, %bb.e ]
  store i32 %.8.val.sink.i.i.i.i.i, ptr %i.a, align 8, !tbaa !58, !noalias !50
  store ptr null, ptr %3, align 8, !tbaa !26, !alias.scope !59, !noalias !29
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !24, !noalias !39
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !39
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #18, !noalias !39, !inline_history !60
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit4.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.s, ptr %3, align 8, !tbaa !26, !alias.scope !61, !noalias !29
  br label %_ZN4llvm5ErrorD2Ev.exit7.i.i

_ZN4llvm5ErrorD2Ev.exit7.i.i:                     ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit4.i.i.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3), !noalias !29
  %i.ac = load ptr, ptr %1, align 8, !tbaa !26, !noalias !29
  store ptr null, ptr %1, align 8, !tbaa !26, !noalias !29
  %i.ad = load ptr, ptr %3, align 8, !tbaa !26, !noalias !29 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !24, !noalias !29
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !29
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #18, !noalias !29, !inline_history !64
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit7.i.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !26, !noalias !29 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvm5ErrorD2Ev.exit9.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !24, !noalias !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !29
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #18, !noalias !29, !inline_history !64
  br label %_ZN4llvm5ErrorD2Ev.exit9.i.i

_ZN4llvm5ErrorD2Ev.exit9.i.i:                     ; preds = %bb.h, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18, !noalias !29
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.040.i.i, i64 8 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.an, %i.p
  br i1 %.not38.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !24, !noalias !65
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !65
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @_ZN4llvm8coverage16CoverageMapError2IDE) #18, !noalias !65, !inline_history !40 ; 0 uses
  %i.as = getelementptr i8, ptr %i.h, i64 8
  %.val1.val.i13.i.i = load i32, ptr %i.as, align 8, !tbaa !41, !noalias !65 ; 2 uses
  %i.at = icmp eq i32 %.val1.val.i13.i.i, 1
  br i1 %i.at, label %bb.j, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i14.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i10.i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i10.i.i, i8 0, i64 24, i1 false), !noalias !68
  %.sroa.0.i.i.i10.i.i.32.i.i.i10.i.i.32.i.i.i10.i.i.32.i.i.i10.i.32.i.i.i10.i.32.i.i.i10.32.i.i.i10.32.i.i.32.i.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i10.i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i.i10.i.i.32.i.i.i10.i.i.32.i.i.i10.i.i.32.i.i.i10.i.32.i.i.i10.i.32.i.i.i10.32.i.i.i10.32.i.i.32.i.i.32.i.32.i.32..sroa_idx, i8 0, i64 48, i1 false), !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i10.i.i, i64 80, i1 false), !tbaa.struct !51, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i10.i.i)
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i14.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i14.i.i: ; preds = %bb.j, %bb.i
  %.8.val.sink.i.i.i15.i.i = phi i32 [ 0, %bb.j ], [ %.val1.val.i13.i.i, %bb.i ]
  store i32 %.8.val.sink.i.i.i15.i.i, ptr %i.a, align 8, !tbaa !58, !noalias !68
  br label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i.i, %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i14.i.i
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !24, !noalias !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !29
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #18, !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pr = load ptr, ptr %4, align 8, !tbaa !26     ; 3 uses
  %i.ax = icmp eq ptr %.pr, null
  br i1 %i.ax, label %_ZN4llvm5ErrorD2Ev.exit1, label %bb.k

bb.k:                                             ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i
  %i.ay = load ptr, ptr %.pr, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %.pr) #18, !inline_history !71
  br label %_ZN4llvm5ErrorD2Ev.exit1

_ZN4llvm5ErrorD2Ev.exit1:                         ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i22.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage17RawCoverageReader11readULEB128ERm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !73 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !73
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !78, !noalias !73
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !81, !noalias !73
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.d, align 8, !tbaa !24, !noalias !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 4, ptr %i.g, align 8, !tbaa !41, !noalias !73
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.h, ptr noundef nonnull align 8 dereferenceable(34) %4) #18, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !73
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !82     ; 6 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = sub i64 0, %i.j
  %scevgep.i = getelementptr i8, ptr %i.i, i64 %i.k
  %i.l = icmp eq ptr %i.i, null
  br i1 %i.l, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.lr.ph, !prof !83

bb.d:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv8, 7
  br label %.lr.ph, !llvm.loop !84

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.029.i10 = phi i64 [ %.130.i, %bb.d ], [ 0, %bb.c ]
  %.031.i9 = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %indvars.iv8 = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.c ] ; 5 uses
  %i.m = load i8, ptr %.031.i9, align 1, !tbaa !86 ; 2 uses
  %i.n = and i8 %i.m, 127                         ; 3 uses
  %i.o = zext nneg i8 %i.n to i64
  %i.p = icmp samesign ugt i64 %indvars.iv8, 62
  br i1 %i.p, label %bb.e, label %bb.f, !prof !87

bb.e:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i64 %indvars.iv8, 63
  %.not.i = icmp samesign ugt i8 %i.n, 1
  %i.q = icmp ne i8 %i.n, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.q
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.r = icmp samesign ult i64 %indvars.iv8, 64
  %i.s = shl i64 %i.o, %indvars.iv8
  %i.t = select i1 %i.r, i64 %i.s, i64 0, !prof !88
  %.130.i = add i64 %i.t, %.029.i10               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.031.i9, i64 1 ; 2 uses
  %i.v = icmp slt i8 %i.m, 0
  br i1 %i.v, label %bb.d, label %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge14, !llvm.loop !84

._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge14: ; preds = %bb.f
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !84

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.e, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge14, %bb.c
  %.132.i = phi ptr [ %i.u, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge14 ], [ %scevgep.i, %bb.c ], [ %.031.i9, %bb.e ]
  %.3.i = phi i64 [ %.130.i, %._ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit_crit_edge14 ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.w = ptrtoint ptr %.132.i to i64
  %i.x = ptrtoint ptr %i.i to i64
  %i.y = sub i64 %i.w, %i.x
  store i64 %.3.i, ptr %2, align 8, !tbaa !54
  %i.z = and i64 %i.y, 4294967295                 ; 3 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %_ZN4llvm5ErrorD2Ev.exit

bb.g:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.ac = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !89 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !89
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !81, !noalias !89
  store ptr @.str, ptr %3, align 8, !tbaa !86, !noalias !89
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.ae, align 8, !tbaa !78, !noalias !89
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.ac, align 8, !tbaa !24, !noalias !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 5, ptr %i.af, align 8, !tbaa !41, !noalias !89
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ag, ptr noundef nonnull align 8 dereferenceable(34) %3) #18, !noalias !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !89
  br label %bb.h

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.z
  %i.ai = sub nuw i64 %i.aa, %i.z
  store ptr %i.ah, ptr %1, align 8, !tbaa !53
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  %.sink = phi ptr [ %i.ac, %bb.g ], [ null, %_ZN4llvm5ErrorD2Ev.exit ], [ %i.d, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorEEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat {
_ZNSt10unique_ptrIN4llvm8coverage16CoverageMapErrorESt14default_deleteIS2_EED2Ev.exit:
  %2 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !94 ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !58, !noalias !94
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18, !noalias !94
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.c, align 8, !tbaa !78, !noalias !94
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !81, !noalias !94
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !94
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !41, !noalias !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.f, ptr noundef nonnull align 8 dereferenceable(34) %2) #18, !noalias !94
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18, !noalias !94
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm13decodeULEB128EPKhPjS1_PPKc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.c   ; 2 uses
  %i.d = icmp eq ptr %0, %2
  br i1 %i.d, label %._crit_edge, label %.lr.ph, !prof !83

bb.b:                                             ; preds = %bb.e
  %i.e = add nuw nsw i32 %.02856, 7
  %i.f = icmp eq ptr %i.p, %2
  br i1 %i.f, label %._crit_edge, label %.lr.ph, !prof !97, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %.thread, label %.thread.sink.split

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02856 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.02955 = phi i64 [ %.130, %bb.b ], [ 0, %bb.a ]
  %.03154 = phi ptr [ %i.p, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %i.g = load i8, ptr %.03154, align 1, !tbaa !86 ; 2 uses
  %i.h = and i8 %i.g, 127                         ; 3 uses
  %i.i = zext nneg i8 %i.h to i64
  %i.j = icmp samesign ugt i32 %.02856, 62
  br i1 %i.j, label %bb.c, label %bb.e, !prof !87

bb.c:                                             ; preds = %.lr.ph
  %.not44 = icmp eq i32 %.02856, 63
  %.not = icmp samesign ugt i8 %i.h, 1
  %i.k = icmp ne i8 %i.h, 0
  %or.cond43 = select i1 %.not44, i1 %.not, i1 %i.k
  br i1 %or.cond43, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %.thread, label %.thread.sink.split

bb.e:                                             ; preds = %bb.c, %.lr.ph
  %i.l = icmp samesign ult i32 %.02856, 64
  %i.m = zext nneg i32 %.02856 to i64
  %i.n = shl i64 %i.i, %i.m
  %i.o = select i1 %i.l, i64 %i.n, i64 0, !prof !88
  %.130 = add i64 %i.o, %.02955                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03154, i64 1 ; 3 uses
  %i.q = icmp slt i8 %i.g, 0
  br i1 %i.q, label %bb.b, label %.thread, !llvm.loop !84

.thread.sink.split:                               ; preds = %bb.d, %._crit_edge
  %.str.15.sink = phi ptr [ @.str.14, %._crit_edge ], [ @.str.15, %bb.d ]
  %.132.ph = phi ptr [ %scevgep, %._crit_edge ], [ %.03154, %bb.d ]
  store ptr %.str.15.sink, ptr %3, align 8, !tbaa !53
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread.sink.split, %bb.d, %._crit_edge
  %.132 = phi ptr [ %scevgep, %._crit_edge ], [ %.03154, %bb.d ], [ %.132.ph, %.thread.sink.split ], [ %i.p, %bb.e ]
  %.3 = phi i64 [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %.thread.sink.split ], [ %.130, %bb.e ]
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.r = ptrtoint ptr %.132 to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %1, align 4, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  ret i64 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA31_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(31) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !99 ; 4 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !58, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !99
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !81, !noalias !99
  %i.d = load i8, ptr %2, align 1, !tbaa !86, !noalias !99
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm8coverage16CoverageMapErrorESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %3, align 8, !tbaa !86, !noalias !99
  br label %_ZNSt10unique_ptrIN4llvm8coverage16CoverageMapErrorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm8coverage16CoverageMapErrorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i8 [ 3, %bb.b ], [ 1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 %storemerge.i.i, ptr %i.e, align 8, !tbaa !78, !noalias !99
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.a, align 8, !tbaa !24, !noalias !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.b, ptr %i.f, align 8, !tbaa !41, !noalias !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.g, ptr noundef nonnull align 8 dereferenceable(34) %3) #18, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !99
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage17RawCoverageReader10readIntMaxERmm(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @_ZN4llvm8coverage17RawCoverageReader11readULEB128ERm(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %.not8 = icmp eq ptr %i.a, null
  br i1 %.not8, label %bb.a, label %_ZN4llvm5ErrorD2Ev.exit6

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.b = load i64, ptr %2, align 8, !tbaa !54
  %.not = icmp ult i64 %i.b, %3
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !105 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !105
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.d, align 1, !tbaa !81, !noalias !105
  store ptr @.str.1, ptr %4, align 8, !tbaa !86, !noalias !105
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 3, ptr %i.e, align 8, !tbaa !78, !noalias !105
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.c, align 8, !tbaa !24, !noalias !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 5, ptr %i.f, align 8, !tbaa !41, !noalias !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.g, ptr noundef nonnull align 8 dereferenceable(34) %4) #18, !noalias !105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !105
  store ptr %i.c, ptr %0, align 8, !tbaa !26, !alias.scope !102
  br label %_ZN4llvm5ErrorD2Ev.exit6

_ZN4llvm5ErrorD2Ev.exit6:                         ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage17RawCoverageReader8readSizeERm(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @_ZN4llvm8coverage17RawCoverageReader11readULEB128ERm(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !26
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.a, label %_ZN4llvm5ErrorD2Ev.exit5

bb.a:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.b = load i64, ptr %2, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.f = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !111 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !111
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !81, !noalias !111
  store ptr @.str.2, ptr %3, align 8, !tbaa !86, !noalias !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.h, align 8, !tbaa !78, !noalias !111
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.f, align 8, !tbaa !24, !noalias !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 5, ptr %i.i, align 8, !tbaa !41, !noalias !111
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.j, ptr noundef nonnull align 8 dereferenceable(34) %3) #18, !noalias !111
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !111
  store ptr %i.f, ptr %0, align 8, !tbaa !26, !alias.scope !108
  br label %_ZN4llvm5ErrorD2Ev.exit5

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %bb.a, %_ZN4llvm5ErrorD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage17RawCoverageReader10readStringERNS_9StringRefE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @_ZN4llvm8coverage17RawCoverageReader11readULEB128ERm(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %0, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !114 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72, !noalias !114
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit9

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.g = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !120
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !81, !noalias !120
  store ptr @.str.2, ptr %3, align 8, !tbaa !86, !noalias !120
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.i, align 8, !tbaa !78, !noalias !120
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.g, align 8, !tbaa !24, !noalias !120
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 5, ptr %i.j, align 8, !tbaa !41, !noalias !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.k, ptr noundef nonnull align 8 dereferenceable(34) %3) #18, !noalias !120
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !120
  store ptr %i.g, ptr %0, align 8, !tbaa !26, !alias.scope !123
  br label %.critedge

_ZN4llvm5ErrorD2Ev.exit9:                         ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !82     ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !53
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.c, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !54
  %i.m = load i64, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %.sroa.speculated4.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.c) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.speculated4.i
  %i.o = sub i64 %i.m, %.sroa.speculated4.i
  store ptr %i.n, ptr %1, align 8, !tbaa !53
  store i64 %i.o, ptr %i.d, align 8, !tbaa !54
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %_ZN4llvm5ErrorD2Ev.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage26RawCoverageFilenamesReader4readENS0_13CovMapVersionE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm8coverage20BinaryCoverageReader30createCoverageReaderFromBufferENS_9StringRefEOSt10unique_ptrINS_12MemoryBufferESt14default_deleteIS4_EES8_S3_INS_15InstrProfSymtabES5_IS9_EEhNS_10endiannessES2_:bb.a
_ZN4llvm5ErrorD2Ev.exit137:                       ; preds = %_ZL23readCoverageMappingDataImLN4llvm10endiannessE1EENS0_5ErrorERNS0_15InstrProfSymtabENS0_9StringRefES5_RSt6vectorINS0_8coverage20BinaryCoverageReader20ProfileMappingRecordESaIS9_EES5_RS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.ag

_ZN4llvm5ErrorD2Ev.exit138:                       ; preds = %_ZL23readCoverageMappingDataImLN4llvm10endiannessE0EENS0_5ErrorERNS0_15InstrProfSymtabENS0_9StringRefES5_RSt6vectorINS0_8coverage20BinaryCoverageReader20ProfileMappingRecordESaIS9_EES5_RS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit135, %_ZN4llvm5ErrorD2Ev.exit136, %_ZN4llvm5ErrorD2Ev.exit137, %_ZN4llvm5ErrorD2Ev.exit138
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 8
  %i.ib = and i8 %i.ia, -2
  store i8 %i.ib, ptr %i.hz, align 8
  %i.ic = ptrtoint ptr %i.j to i64
  store i64 %i.ic, ptr %0, align 8, !tbaa !779
  br label %_ZNSt10unique_ptrIN4llvm8coverage20BinaryCoverageReaderESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4llvm8coverage20BinaryCoverageReaderEEclEPS2_.exit.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit64, %_ZN4llvm5ErrorD2Ev.exit87, %_ZN4llvm5ErrorD2Ev.exit110, %_ZN4llvm5ErrorD2Ev.exit133, %_ZN4llvm5ErrorD2Ev.exit134
  %i.id = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(160) %i.j) #18, !inline_history !781
  br label %_ZNSt10unique_ptrIN4llvm8coverage20BinaryCoverageReaderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm8coverage20BinaryCoverageReaderESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm8coverage20BinaryCoverageReaderEEclEPS2_.exit.i, %bb.ag, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4llvm15InstrProfSymtabESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !571    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit

_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN4llvm15InstrProfSymtabD2Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(369) %i.a) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 376) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4llvm15InstrProfSymtabEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage20BinaryCoverageReader6createENS_15MemoryBufferRefENS_9StringRefERNS_15SmallVectorImplISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EEEES3_PNS4_INS_8ArrayRefIhEEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.112") align 8 captures(none) %0, ptr nofree noundef readonly byval(%"class.llvm::MemoryBufferRef") align 8 captures(none) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %5, i64 %6, ptr noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"class.llvm::Expected.188", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Expected.188", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Expected.188", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %14 = alloca %class.anon.169, align 1           ; 3 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.llvm::Expected.216", align 8 ; 7 uses
  %18 = alloca %"class.llvm::Triple", align 8     ; 6 uses
  %19 = alloca %"class.llvm::Expected.227", align 8 ; 11 uses
  %20 = alloca %"class.llvm::Expected.227", align 8 ; 7 uses
  %21 = alloca %"class.llvm::Expected.237", align 8 ; 10 uses
  %22 = alloca %"class.std::unique_ptr.104", align 8 ; 6 uses
  %23 = alloca %"class.std::unique_ptr.104", align 8 ; 4 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %25 = alloca %"class.llvm::Expected.237", align 8 ; 9 uses
  %26 = alloca %"class.std::unique_ptr.104", align 8 ; 9 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %28 = alloca %"class.std::unique_ptr.246", align 8 ; 15 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %30 = alloca %"class.std::unique_ptr.91", align 8 ; 6 uses
  %31 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %32 = alloca %"class.llvm::Expected.843", align 16 ; 11 uses
  %33 = alloca %"class.std::unique_ptr.151", align 8 ; 4 uses
  %34 = alloca %"class.std::unique_ptr.151", align 8 ; 4 uses
  %35 = alloca %"class.llvm::fallible_iterator", align 8 ; 8 uses
  %36 = alloca %"class.llvm::fallible_iterator", align 8 ; 6 uses
  %37 = alloca %"class.llvm::object::MachOUniversalBinary::ObjectForArch", align 8 ; 4 uses
  %38 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %39 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %40 = alloca %class.anon.169, align 1           ; 3 uses
  %41 = alloca %"class.llvm::object::MachOUniversalBinary::object_iterator", align 8 ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %43 = alloca %"class.llvm::object::MachOUniversalBinary::ObjectForArch", align 8 ; 8 uses
  %44 = alloca %"class.llvm::object::MachOUniversalBinary::object_iterator", align 8 ; 4 uses
  %45 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %46 = alloca %"class.llvm::object::MachOUniversalBinary::object_iterator", align 8 ; 14 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %53 = alloca %"class.std::unique_ptr.91", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %54 = alloca %"class.std::unique_ptr.104", align 8 ; 5 uses
  %55 = alloca %"class.std::unique_ptr.104", align 8 ; 5 uses
  %56 = alloca %"class.std::unique_ptr.91", align 8 ; 5 uses
  %57 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %58 = alloca %"class.std::vector.114", align 16 ; 16 uses
  %59 = alloca %"class.llvm::Expected.80", align 8 ; 32 uses
  %60 = alloca %"class.llvm::Expected.120", align 8 ; 7 uses
  %61 = alloca %"class.llvm::iterator_range", align 8 ; 7 uses
  %62 = alloca %"class.llvm::object::MachOUniversalBinary::object_iterator", align 8 ; 11 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %64 = alloca %"class.llvm::Expected.131", align 8 ; 8 uses
  %65 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 2 uses
  %66 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %67 = alloca %"class.llvm::fallible_iterator", align 16 ; 11 uses
  %68 = alloca %"class.llvm::Expected.161", align 8 ; 8 uses
  %69 = alloca %"class.llvm::Expected.112", align 8 ; 9 uses
  %70 = alloca %"class.std::vector.142", align 8  ; 5 uses
  %71 = alloca %"class.llvm::Expected.80", align 8 ; 27 uses
  %.fr26.i = freeze i64 %3                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !53 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !54 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.2.0.copyload.i, 8
  br i1 %i.k, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !54
  %.not = icmp eq i64 %i.l, 7887614270214925420
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  %i.m = icmp ult i64 %.sroa.2.0.copyload.i, 16
  br i1 %i.m, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.d

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.c
  %i.n = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !785 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18, !noalias !785
  %i.o = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !81, !noalias !785
  store ptr @.str.19, ptr %52, align 8, !tbaa !86, !noalias !785
  %i.p = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 3, ptr %i.p, align 8, !tbaa !78, !noalias !785
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.n, align 8, !tbaa !24, !noalias !785
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 5, ptr %i.q, align 8, !tbaa !41, !noalias !785
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.r, ptr noundef nonnull align 8 dereferenceable(34) %52) #18, !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18, !noalias !785
  %i.s = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !782
  %i.u = or i8 %i.t, 1                            ; 2 uses
  store i8 %i.u, ptr %i.s, align 8, !alias.scope !782
  store ptr %i.n, ptr %59, align 8, !tbaa !35, !alias.scope !790
  br label %_ZL17loadTestingFormatN4llvm9StringRefES0_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !54, !noalias !782 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 3 uses
  %i.y = add i64 %.sroa.2.0.copyload.i, -16       ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN4llvm5ErrorD2Ev.exit55.i, label %bb.e

_ZN4llvm5ErrorD2Ev.exit55.i:                      ; preds = %bb.d
  %i.aa = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !793 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #18, !noalias !793
  %i.ab = getelementptr inbounds nuw i8, ptr %51, i64 32
  store i8 1, ptr %i.ab, align 8, !tbaa !78, !noalias !793
  %i.ac = getelementptr inbounds nuw i8, ptr %51, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !81, !noalias !793
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.aa, align 8, !tbaa !24, !noalias !793
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 4, ptr %i.ad, align 8, !tbaa !41, !noalias !793
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ae, ptr noundef nonnull align 8 dereferenceable(34) %51) #18, !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #18, !noalias !793
  %i.af = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !alias.scope !782
  %i.ah = or i8 %i.ag, 1                          ; 2 uses
  store i8 %i.ah, ptr %i.af, align 8, !alias.scope !782
  store ptr %i.aa, ptr %59, align 8, !tbaa !35, !alias.scope !798
  br label %_ZL17loadTestingFormatN4llvm9StringRefES0_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !782
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %.031.i.i = phi ptr [ %i.x, %bb.e ], [ %i.aq, %bb.h ] ; 3 uses
  %.029.i.i = phi i64 [ 0, %bb.e ], [ %.130.i.i, %bb.h ]
  %i.ai = load i8, ptr %.031.i.i, align 1, !tbaa !86, !noalias !782 ; 2 uses
  %i.aj = and i8 %i.ai, 127                       ; 3 uses
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = icmp samesign ugt i64 %indvars.iv.i, 62
  br i1 %i.al, label %bb.g, label %bb.h, !prof !87

bb.g:                                             ; preds = %bb.f
  %.not44.i.i = icmp eq i64 %indvars.iv.i, 63
  %.not.i.i = icmp samesign ugt i8 %i.aj, 1
  %i.am = icmp ne i8 %i.aj, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i, i1 %i.am
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = icmp samesign ult i64 %indvars.iv.i, 64
  %i.ao = shl i64 %i.ak, %indvars.iv.i
  %i.ap = select i1 %i.an, i64 %i.ao, i64 0, !prof !88
  %.130.i.i = add i64 %i.ap, %.029.i.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1 ; 2 uses
  %i.ar = icmp slt i8 %i.ai, 0
  br i1 %i.ar, label %bb.f, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !84

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.h, %bb.g
  %.132.i.i = phi ptr [ %i.aq, %bb.h ], [ %.031.i.i, %bb.g ]
  %.3.i.i = phi i64 [ %.130.i.i, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.as = ptrtoint ptr %.132.i.i to i64
  %i.at = ptrtoint ptr %i.x to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = and i64 %i.au, 4294967295               ; 4 uses
  %i.aw = icmp ult i64 %i.y, %i.av
  br i1 %i.aw, label %_ZN4llvm5ErrorD2Ev.exit56.i, label %bb.i

_ZN4llvm5ErrorD2Ev.exit56.i:                      ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %i.ax = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !801 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #18, !noalias !801
  %i.ay = getelementptr inbounds nuw i8, ptr %50, i64 33
  store i8 1, ptr %i.ay, align 1, !tbaa !81, !noalias !801
  store ptr @.str.20, ptr %50, align 8, !tbaa !86, !noalias !801
  %i.az = getelementptr inbounds nuw i8, ptr %50, i64 32
  store i8 3, ptr %i.az, align 8, !tbaa !78, !noalias !801
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.ax, align 8, !tbaa !24, !noalias !801
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 5, ptr %i.ba, align 8, !tbaa !41, !noalias !801
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.bb, ptr noundef nonnull align 8 dereferenceable(34) %50) #18, !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #18, !noalias !801
  %i.bc = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !alias.scope !782
  %i.be = or i8 %i.bd, 1                          ; 2 uses
  store i8 %i.be, ptr %i.bc, align 8, !alias.scope !782
  store ptr %i.ax, ptr %59, align 8, !tbaa !35, !alias.scope !806
  br label %bb.y

bb.i:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av ; 3 uses
  %i.bg = sub nuw i64 %i.y, %i.av                 ; 2 uses
  %i.bh = icmp eq i64 %i.y, %i.av
  br i1 %i.bh, label %_ZN4llvm5ErrorD2Ev.exit60.i, label %.preheader

_ZN4llvm5ErrorD2Ev.exit60.i:                      ; preds = %bb.i
  %i.bi = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !809 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #18, !noalias !809
  %i.bj = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 1, ptr %i.bj, align 8, !tbaa !78, !noalias !809
  %i.bk = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 1, ptr %i.bk, align 1, !tbaa !81, !noalias !809
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.bi, align 8, !tbaa !24, !noalias !809
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 4, ptr %i.bl, align 8, !tbaa !41, !noalias !809
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.bm, ptr noundef nonnull align 8 dereferenceable(34) %49) #18, !noalias !809
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18, !noalias !809
  %i.bn = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 8, !alias.scope !782
  %i.bp = or i8 %i.bo, 1                          ; 2 uses
  store i8 %i.bp, ptr %i.bn, align 8, !alias.scope !782
  store ptr %i.bi, ptr %59, align 8, !tbaa !35, !alias.scope !814
  br label %bb.y

.preheader:                                       ; preds = %bb.i, %bb.k
  %indvars.iv185.i = phi i64 [ %indvars.iv.next186.i, %bb.k ], [ 0, %bb.i ] ; 5 uses
  %.031.i62.i = phi ptr [ %i.by, %bb.k ], [ %i.bf, %bb.i ] ; 3 uses
  %.029.i63.i = phi i64 [ %.130.i65.i, %bb.k ], [ 0, %bb.i ]
  %i.bq = load i8, ptr %.031.i62.i, align 1, !tbaa !86, !noalias !782 ; 2 uses
  %i.br = and i8 %i.bq, 127                       ; 3 uses
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = icmp samesign ugt i64 %indvars.iv185.i, 62
  br i1 %i.bt, label %bb.j, label %bb.k, !prof !87

bb.j:                                             ; preds = %.preheader
  %.not44.i68.i = icmp eq i64 %indvars.iv185.i, 63
  %.not.i69.i = icmp samesign ugt i8 %i.br, 1
  %i.bu = icmp ne i8 %i.br, 0
  %or.cond43.i70.i = select i1 %.not44.i68.i, i1 %.not.i69.i, i1 %i.bu
  br i1 %or.cond43.i70.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit71.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %i.bv = icmp samesign ult i64 %indvars.iv185.i, 64
  %i.bw = shl i64 %i.bs, %indvars.iv185.i
  %i.bx = select i1 %i.bv, i64 %i.bw, i64 0, !prof !88
  %.130.i65.i = add i64 %i.bx, %.029.i63.i        ; 2 uses
  %indvars.iv.next186.i = add nuw nsw i64 %indvars.iv185.i, 7
  %i.by = getelementptr inbounds nuw i8, ptr %.031.i62.i, i64 1 ; 2 uses
  %i.bz = icmp slt i8 %i.bq, 0
  br i1 %i.bz, label %.preheader, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit71.i, !llvm.loop !84

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit71.i:    ; preds = %bb.k, %bb.j
  %.132.i66.i = phi ptr [ %i.by, %bb.k ], [ %.031.i62.i, %bb.j ]
  %.3.i67.i = phi i64 [ %.130.i65.i, %bb.k ], [ 0, %bb.j ]
  %i.ca = ptrtoint ptr %.132.i66.i to i64
  %i.cb = ptrtoint ptr %i.bf to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !98, !noalias !782
  %i.ce = and i64 %i.cc, 4294967295               ; 3 uses
  %i.cf = icmp ult i64 %i.bg, %i.ce
  br i1 %i.cf, label %_ZN4llvm5ErrorD2Ev.exit72.i, label %bb.l

_ZN4llvm5ErrorD2Ev.exit72.i:                      ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit71.i
  %i.cg = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19, !noalias !817 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #18, !noalias !817
  %i.ch = getelementptr inbounds nuw i8, ptr %48, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !81, !noalias !817
  store ptr @.str, ptr %48, align 8, !tbaa !86, !noalias !817
  %i.ci = getelementptr inbounds nuw i8, ptr %48, i64 32
  store i8 3, ptr %i.ci, align 8, !tbaa !78, !noalias !817
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.cg, align 8, !tbaa !24, !noalias !817
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 5, ptr %i.cj, align 8, !tbaa !41, !noalias !817
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ck, ptr noundef nonnull align 8 dereferenceable(34) %48) #18, !noalias !817
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #18, !noalias !817
  %i.cl = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !782
  %i.cn = or i8 %i.cm, 1                          ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !782
  store ptr %i.cg, ptr %59, align 8, !tbaa !35, !alias.scope !822
  br label %bb.y

bb.l:                                             ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit71.i
  %i.co = sub nuw i64 %i.bg, %i.ce                ; 2 uses
  %i.cp = icmp ult i64 %i.co, %.3.i.i
  br i1 %i.cp, label %_ZN4llvm5ErrorD2Ev.exit76.i, label %_ZN4llvm5ErrorD2Ev.exit81.i

_ZN4llvm5ErrorD2Ev.exit76.i:                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !782
  store i32 5, ptr %i.c, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA36_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(36) @.str.21)
  %i.cq = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 8, !alias.scope !782
  %i.cs = or i8 %i.cr, 1                          ; 2 uses
  store i8 %i.cs, ptr %i.cq, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !782
  br label %bb.y

_ZN4llvm5ErrorD2Ev.exit81.i:                      ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ce ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18, !noalias !782
  call void @_ZSt11make_uniqueIN4llvm15InstrProfSymtabEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.91") align 8 %53), !noalias !782
  %i.cu = load ptr, ptr %53, align 8, !tbaa !571, !noalias !782 ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !53, !noalias !825
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.3.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !54, !noalias !825
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %.3.i67.i, ptr %i.cv, align 8, !tbaa !521, !noalias !825
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.3.i.i ; 3 uses
  %i.cx = sub nuw i64 %i.co, %.3.i.i              ; 3 uses
  switch i64 %i.w, label %_ZN4llvm5ErrorD2Ev.exit92.i [
    i64 1, label %bb.m
    i64 7022344803055789428, label %bb.o
  ]

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit81.i
  store i32 0, ptr %i.b, align 4, !tbaa !98, !noalias !782
  %i.cy = call noundef i64 @_ZN4llvm13decodeULEB128EPKhPjS1_PPKc(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null), !noalias !782 ; 2 uses
  %i.cz = load i32, ptr %i.b, align 4, !tbaa !98, !noalias !782
  %i.da = zext i32 %i.cz to i64                   ; 3 uses
  %i.db = icmp ult i64 %i.cx, %i.da
  br i1 %i.db, label %_ZN4llvm5ErrorD2Ev.exit86.i, label %bb.n

_ZN4llvm5ErrorD2Ev.exit86.i:                      ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !782
  store i32 5, ptr %i.d, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA31_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 1 dereferenceable(31) @.str)
  %i.dc = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 8, !alias.scope !782
  %i.de = or i8 %i.dd, 1                          ; 2 uses
  store i8 %i.de, ptr %i.dc, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !782
  br label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.da
  %i.dg = sub nuw i64 %i.cx, %i.da
  %i.dh = icmp ult i64 %i.cy, 16
  br i1 %i.dh, label %_ZN4llvm5ErrorD2Ev.exit91.i, label %bb.o

_ZN4llvm5ErrorD2Ev.exit91.i:                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18, !noalias !782
  store i32 5, ptr %i.e, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA42_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(42) @.str.22)
  %i.di = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 8, !alias.scope !782
  %i.dk = or i8 %i.dj, 1                          ; 2 uses
  store i8 %i.dk, ptr %i.di, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18, !noalias !782
  br label %bb.x

_ZN4llvm5ErrorD2Ev.exit92.i:                      ; preds = %_ZN4llvm5ErrorD2Ev.exit81.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18, !noalias !782
  store i32 3, ptr %i.f, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorEEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  %i.dl = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8, !alias.scope !782
  %i.dn = or i8 %i.dm, 1                          ; 2 uses
  store i8 %i.dn, ptr %i.dl, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18, !noalias !782
  br label %bb.x

bb.o:                                             ; preds = %bb.n, %_ZN4llvm5ErrorD2Ev.exit81.i
  %.sroa.0142.0.i = phi ptr [ %i.df, %bb.n ], [ %i.cw, %_ZN4llvm5ErrorD2Ev.exit81.i ] ; 3 uses
  %.sroa.29.0.i = phi i64 [ %i.dg, %bb.n ], [ %i.cx, %_ZN4llvm5ErrorD2Ev.exit81.i ] ; 3 uses
  %.046.i = phi i64 [ %i.cy, %bb.n ], [ undef, %_ZN4llvm5ErrorD2Ev.exit81.i ] ; 2 uses
  %i.do = ptrtoint ptr %.sroa.0142.0.i to i64     ; 2 uses
  %i.dp = add i64 %i.do, 7
  %i.dq = and i64 %i.dp, -8
  %i.dr = sub i64 %i.dq, %i.do                    ; 3 uses
  %i.ds = icmp ult i64 %.sroa.29.0.i, %i.dr
  br i1 %i.ds, label %_ZN4llvm5ErrorD2Ev.exit93.i, label %bb.p

_ZN4llvm5ErrorD2Ev.exit93.i:                      ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18, !noalias !782
  store i32 5, ptr %i.g, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA21_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 1 dereferenceable(21) @.str.23)
  %i.dt = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !alias.scope !782
  %i.dv = or i8 %i.du, 1                          ; 2 uses
  store i8 %i.dv, ptr %i.dt, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18, !noalias !782
  br label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.i, i64 %i.dr ; 5 uses
  %i.dx = sub nuw i64 %.sroa.29.0.i, %i.dr        ; 6 uses
  %i.dy = icmp ult i64 %i.dx, 16
  br i1 %i.dy, label %_ZN4llvm5ErrorD2Ev.exit98.i, label %bb.q

_ZN4llvm5ErrorD2Ev.exit98.i:                      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18, !noalias !782
  store i32 5, ptr %i.h, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA57_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(57) @.str.24)
  %i.dz = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !alias.scope !782
  %i.eb = or i8 %i.ea, 1                          ; 2 uses
  store i8 %i.eb, ptr %i.dz, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18, !noalias !782
  br label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !589, !noalias !782 ; 2 uses
  %i.ee = icmp eq i64 %i.w, 7022344803055789428
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ef = icmp slt i32 %i.ed, 3
  br i1 %i.ef, label %.thread207.i.a, label %.thread203.i

.thread207.i.a:                                   ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0142.0.i, i64 %.sroa.29.0.i
  br label %bb.w

.thread203.i:                                     ; preds = %bb.r
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ei = load i32, ptr %i.eh, align 1, !tbaa !828, !noalias !782
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nuw nsw i64 %i.ej, 16
  %.sroa.speculated.i104205.i.a = call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.ek) ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.speculated.i104205.i.a
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.sroa.speculated.i104.i = call i64 @llvm.umin.i64(i64 %i.dx, i64 %.046.i) ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.speculated.i104.i ; 2 uses
  %i.en = icmp slt i32 %i.ed, 3
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not.i = icmp ugt i64 %i.dx, %.046.i
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit111.i, label %bb.w

_ZN4llvm5ErrorD2Ev.exit111.i:                     ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18, !noalias !782
  store i32 5, ptr %i.i, align 4, !tbaa !58, !noalias !782
  call void @_ZN4llvm10make_errorINS_8coverage16CoverageMapErrorEJNS1_17coveragemap_errorERA18_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %59, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 1 dereferenceable(18) @.str.25)
  %i.eo = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 8, !alias.scope !782
  %i.eq = or i8 %i.ep, 1                          ; 2 uses
  store i8 %i.eq, ptr %i.eo, align 8, !alias.scope !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18, !noalias !782
  br label %bb.x

end_hunk_1
