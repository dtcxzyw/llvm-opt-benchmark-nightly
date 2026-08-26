Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFObjectFile?download=true
inline.NumInlined: 2994
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm6object14COFFObjectFile18export_directoriesEv:bb.a
  store ptr %1, ptr %.sroa.610.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile11base_relocsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::iterator_range.52") align 8 captures(none) initializes((0, 12), (16, 28)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !284
  store ptr %i.b, ptr %0, align 8, !tbaa !409, !alias.scope !468
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !84, !alias.scope !468
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !409, !alias.scope !468
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !84, !alias.scope !468
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile9getStringEj(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, i32 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.d = icmp ult i32 %i.c, 5
  br i1 %i.d, label %._crit_edge.i.i.i, label %bb.b

._crit_edge.i.i.i:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !471
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !72, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !471
  store i64 18, ptr %i.a, align 8, !tbaa !53, !noalias !471
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26, !noalias !471 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !74, !noalias !471
  %i.h = load i64, ptr %i.a, align 8, !tbaa !53, !noalias !471 ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !36, !noalias !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.g, ptr noundef nonnull align 1 dereferenceable(18) @.str.35, i64 18, i1 false), !noalias !471
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !76, !noalias !471
  %i.j = load ptr, ptr %3, align 8, !tbaa !74, !noalias !471
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !36, !noalias !471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !471
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 3, ptr nonnull %i.e) #26
  %i.l = load ptr, ptr %3, align 8, !tbaa !74, !noalias !471 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.n = load i64, ptr %i.f, align 8, !tbaa !36, !noalias !471
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #27
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !471
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.s = load ptr, ptr %4, align 8, !tbaa !80, !noalias !474
  store ptr %i.s, ptr %0, align 8, !tbaa !60, !alias.scope !474
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i32 %2, %i.c
  br i1 %.not, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit4

_ZN4llvm5ErrorD2Ev.exit4:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #26
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, i32 4, ptr nonnull %i.t) #26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = or i8 %i.v, 1
  store i8 %i.w, ptr %i.u, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.x = load ptr, ptr %5, align 8, !tbaa !80, !noalias !477
  store ptr %i.x, ptr %0, align 8, !tbaa !60, !alias.scope !477
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = zext i32 %2 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #26
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.ac, %bb.d ], [ 0, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 8
  store ptr %i.ab, ptr %0, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZN4llvm5ErrorD2Ev.exit4, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile13getSymbolNameEPKNS0_19coff_symbol_genericE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.0.copyload.i.i.i = load i32, ptr %2, align 1
  %i.a = icmp eq i32 %.0.copyload.i.i.i, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload.i.i.i6 = load i32, ptr %i.b, align 1
  tail call void @_ZNK4llvm6object14COFFObjectFile9getStringEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, i32 noundef %.0.copyload.i.i.i6)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.d = load i8, ptr %i.c, align 1, !tbaa !36
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.d

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.c
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, -2
  store i8 %i.i, ptr %i.g, align 8
  store ptr %2, ptr %0, align 8, !tbaa !52
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !53
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, -2
  store i8 %i.l, ptr %i.j, align 8
  store ptr %2, ptr %0, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4llvm9StringRefC2EPKc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile16getSymbolAuxDataENS0_13COFFSymbolRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr %1, ptr %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not.i = icmp eq ptr %i.b, null
  %..i = select i1 %.not.i, i64 20, i64 18        ; 2 uses
  %.not.i3 = icmp eq ptr %1, null                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 19
  %.in.i = select i1 %.not.i3, ptr %i.d, ptr %i.c
  %i.e = load i8, ptr %.in.i, align 1, !tbaa !36  ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  %i.f = select i1 %.not.i3, ptr %2, ptr %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %..i
  %.0 = select i1 %.not, ptr null, ptr %i.g
  %i.h = zext i8 %i.e to i64
  %i.i = mul nuw nsw i64 %..i, %i.h
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.i, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm6object14COFFObjectFile14getSymbolIndexENS0_13COFFSymbolRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr %1, ptr %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  %i.a = select i1 %.not.i, ptr %2, ptr %1
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i2 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8
  %.0.v.i = select i1 %.not.i2, ptr %i.f, ptr %i.d
  %.0.i = ptrtoint ptr %.0.v.i to i64
  %i.g = sub i64 %i.b, %.0.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65
  %.not.i3 = icmp eq ptr %i.i, null
  %..i = select i1 %.not.i3, i64 20, i64 18
  %i.j = udiv i64 %i.g, %..i
  %i.k = trunc i64 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZNK4llvm6object14COFFObjectFile5toRelENS0_11DataRefImplE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(232) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4llvm6object14COFFObjectFile18moveRelocationNextERNS0_11DataRefImplE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !36
  %i.b = add nuw i64 %i.a, 10
  store i64 %i.b, ptr %1, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @_ZNK4llvm6object14COFFObjectFile19getRelocationOffsetENS0_11DataRefImplE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = zext i32 %.0.copyload.i.i.i to i64
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZNK4llvm6object14COFFObjectFile19getRelocationSymbolENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(232) %0, i64 %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.b, align 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not1.i = icmp eq ptr %i.f, null
  %or.cond.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %or.cond.i, label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.i, align 1
  %i.j = icmp eq i16 %.0.copyload.i.i.i.i.i.i, -1
  br i1 %i.j, label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  br label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66, !nonnull !67, !noundef !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  br label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit

_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.in = phi ptr [ %i.k, %bb.d ], [ %i.n, %bb.e ]
  %.0.i = load i32, ptr %.0.i.in, align 1
  %.not = icmp ult i32 %.0.copyload.i.i.i, %.0.i
  br i1 %.not, label %bb.f, label %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread

_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call { i64, ptr } %i.q(ptr noundef nonnull align 8 dereferenceable(232) %0) #26
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit
  %i.s = zext i32 %.0.copyload.i.i.i to i64       ; 2 uses
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %i.s
  %i.u = getelementptr inbounds nuw [18 x i8], ptr %i.d, i64 %i.s
  %storemerge.in = select i1 %.not.i, ptr %i.t, ptr %i.u
  %storemerge = ptrtoint ptr %storemerge.in to i64
  %i.v = insertvalue { i64, ptr } poison, i64 %storemerge, 0
  %i.w = insertvalue { i64, ptr } %i.v, ptr %0, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.w, %bb.f ], [ %i.r, %_ZNK4llvm6object14COFFObjectFile18getNumberOfSymbolsEv.exit.thread ]
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 0, 65536) i64 @_ZNK4llvm6object14COFFObjectFile17getRelocationTypeENS0_11DataRefImplE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.0.copyload.i.i.i = load i16, ptr %i.b, align 1
  %i.c = zext i16 %.0.copyload.i.i.i to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, ptr } @_ZNK4llvm6object14COFFObjectFile13getCOFFSymbolERKNS0_9SymbolRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.b, null                ; 2 uses
  %i.c = inttoptr i64 %.sroa.0.0.copyload.i to ptr ; 2 uses
  %.sroa.3.0.i = select i1 %.not.i, ptr %i.c, ptr null
  %.sroa.0.0.i = select i1 %.not.i, ptr null, ptr %i.c
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK4llvm6object14COFFObjectFile17getCOFFRelocationERKNS0_13RelocationRefE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !36
  %i.a = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14COFFObjectFile14getRelocationsEPKNS0_12coff_sectionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %class.anon.156, align 1            ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call fastcc noundef ptr @_ZL13getFirstRelocPKN4llvm6object12coff_sectionENS_15MemoryBufferRefEPKh(ptr noundef %1, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %i.a, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.d, align 1
  %i.e = and i32 %.0.copyload.i.i.i.i.i, 16777216
  %.not.i.i = icmp ne i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.0.copyload.i.i.i1.i.i = load i16, ptr %i.f, align 1 ; 2 uses
  %i.g = icmp eq i16 %.0.copyload.i.i.i1.i.i, -1
  %i.h = select i1 %.not.i.i, i1 %i.g, i1 false
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.25.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !53
  %.sroa.04.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload.i.i.i.i = load i32, ptr %i.i, align 1
  %i.j = zext i32 %.0.copyload.i.i.i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %i.j ; 3 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -11 to ptr)
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %i.m, 10
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp ugt i64 %i.n, %i.p
  %or.cond = select i1 %i.l, i1 true, i1 %i.q
  br i1 %or.cond, label %_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i, label %_ZN4llvm5ErrorD2Ev.exit8.i

_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i: ; preds = %bb.b
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #26, !noalias !480
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, i32 4, ptr nonnull %i.r) #26
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !80 ; 2 uses
  %.not.i6.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i6.i, label %_ZN4llvm5ErrorD2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm6object6Binary11checkOffsetENS_15MemoryBufferRefEmm.exit.i.i
  store ptr null, ptr %5, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.pr.i.i, ptr %3, align 8, !tbaa !80
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.s = load ptr, ptr %3, align 8, !tbaa !80     ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #26, !inline_history !137
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.x = load ptr, ptr %5, align 8, !tbaa !80     ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm5ErrorD2Ev.exit7.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
