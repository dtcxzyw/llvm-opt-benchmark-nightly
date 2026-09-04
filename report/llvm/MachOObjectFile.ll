Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOObjectFile?download=true
inline.NumInlined: 6417
inline.NumDeleted: 1696
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm6object15MachOObjectFile9end_dicesEv:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = icmp ugt ptr %i.f, %i.j
  br i1 %i.k, label %.critedge.i.i, label %bb.d

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.493, i1 noundef zeroext true) #29
  unreachable

bb.d:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !67
  switch i32 %i.m, label %_ZNK4llvm6object15MachOObjectFile24getDataInCodeLoadCommandEv.exit [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i: ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = tail call i64 @llvm.fshl.i64(i64 %.sroa.6.0.copyload.i.i, i64 %.sroa.6.0.copyload.i.i, i64 32)
  %.sroa.6.12.insert.insert.i.i = tail call i64 @llvm.bswap.i64(i64 %i.n)
  br label %_ZNK4llvm6object15MachOObjectFile24getDataInCodeLoadCommandEv.exit

_ZNK4llvm6object15MachOObjectFile24getDataInCodeLoadCommandEv.exit: ; preds = %bb.d, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.12.insert.insert.i.i, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i.i ], [ %.sroa.6.0.copyload.i.i, %bb.d ] ; 2 uses
  %.sroa.3.12.extract.shift = lshr i64 %.sroa.6.0.i.i, 32
  %i.o = add i64 %.sroa.3.12.extract.shift, %.sroa.6.0.i.i
  %i.p = and i64 %i.o, 4294967295
  %i.q = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %0) #27
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  %i.t = ptrtoint ptr %i.s to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK4llvm6object15MachOObjectFile24getDataInCodeLoadCommandEv.exit
  %.sroa.07.0 = phi i64 [ %i.t, %_ZNK4llvm6object15MachOObjectFile24getDataInCodeLoadCommandEv.exit ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm6object11ExportEntryC2EPNS_5ErrorEPKNS0_15MachOObjectFileENS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(1353) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) unnamed_addr #13 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !143
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 256, ptr %i.f, align 8, !tbaa !119
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.h, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.i, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 16, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 0, ptr %i.k, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object11ExportEntry11moveToFirstEv(ptr noundef nonnull align 8 dereferenceable(1353) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm6object11ExportEntry8pushNodeEm(ptr noundef nonnull align 8 dereferenceable(1353) %0, i64 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !143
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm6object11ExportEntry19pushDownUntilBottomEv(ptr noundef nonnull align 8 dereferenceable(1353) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object11ExportEntry8pushNodeEm(ptr noundef nonnull align 8 dereferenceable(1353) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %10 = alloca %"struct.llvm::object::ExportEntry::NodeState", align 8 ; 16 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %44 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %45 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %46 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %53 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %59 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %65 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %73 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %77 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %81 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %82 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %85 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %89 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %91 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @_ZN4llvm6object11ExportEntry9NodeStateC1EPKh(ptr noundef nonnull align 8 dereferenceable(61) %10, ptr noundef %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !79   ; 6 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i ; 16 uses
  %i.k = ptrtoaddr ptr %i.j to i64                ; 3 uses
  %i.l = icmp eq ptr %i.f, %i.j
  br i1 %i.l, label %._crit_edge508, label %.lr.ph505, !prof !148

bb.b:                                             ; preds = %bb.d
  %i.m = add i32 %.028.i.i503, 7
  %i.n = icmp eq ptr %i.x, %i.j
  br i1 %i.n, label %._crit_edge508, label %.lr.ph505, !prof !149, !llvm.loop !6

.lr.ph505:                                        ; preds = %bb.a, %bb.b
  %.028.i.i503 = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i.i502 = phi i64 [ %.130.i.i, %bb.b ], [ 0, %bb.a ]
  %.031.i.i501 = phi ptr [ %i.x, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.o = load i8, ptr %.031.i.i501, align 1, !tbaa !72 ; 2 uses
  %i.p = and i8 %i.o, 127                         ; 3 uses
  %i.q = zext nneg i8 %i.p to i64
  %i.r = icmp ugt i32 %.028.i.i503, 62
  br i1 %i.r, label %bb.c, label %bb.d, !prof !150

bb.c:                                             ; preds = %.lr.ph505
  %.not44.i.i = icmp eq i32 %.028.i.i503, 63
  %.not.i.i = icmp samesign ugt i8 %i.p, 1
  %i.s = icmp ne i8 %i.p, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i.i, i1 %i.s
  br i1 %or.cond43.i.i, label %._crit_edge506, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph505
  %i.t = icmp ult i32 %.028.i.i503, 64
  %i.u = zext nneg i32 %.028.i.i503 to i64
  %i.v = shl i64 %i.q, %i.u
  %i.w = select i1 %i.t, i64 %i.v, i64 0, !prof !89
  %.130.i.i = add i64 %i.w, %.029.i.i502          ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.031.i.i501, i64 1 ; 3 uses
  %i.y = icmp slt i8 %i.o, 0
  br i1 %i.y, label %bb.b, label %bb.f, !llvm.loop !6

._crit_edge506:                                   ; preds = %bb.c
  %95 = ptrtoint ptr %.031.i.i501 to i64
  br label %._crit_edge508

._crit_edge508:                                   ; preds = %bb.b, %._crit_edge506, %bb.a
  %.str.498.sink.i.i.a = phi ptr [ @.str.497, %bb.a ], [ @.str.498, %._crit_edge506 ], [ @.str.497, %bb.b ] ; 2 uses
  %.132.ph.i.i = phi i64 [ %i.k, %bb.a ], [ %95, %._crit_edge506 ], [ %i.k, %bb.b ]
  %i.z = ptrtoint ptr %i.f to i64
  %i.aa = sub i64 %.132.ph.i.i, %i.z
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.ad = icmp ugt ptr %i.ac, %i.j
  %spec.store.select.i = select i1 %i.ad, ptr %i.j, ptr %i.ac
  store ptr %spec.store.select.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ae = load i8, ptr %.str.498.sink.i.i.a, align 1, !tbaa !72
  %.not.i = icmp eq i8 %i.ae, 0
  store ptr @.str.235, ptr %13, align 8
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge508
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.str.498.sink.i.i.a, ptr %i.af, align 8, !alias.scope !3608
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %._crit_edge508, %bb.e
  %.sroa.05.0.i.i71 = phi ptr [ %13, %bb.e ], [ @.str.235, %._crit_edge508 ]
  %.014.i.i70 = phi i8 [ 2, %bb.e ], [ 3, %._crit_edge508 ]
  %.sink = phi i8 [ 3, %bb.e ], [ 1, %._crit_edge508 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 3, ptr %i.ag, align 8, !tbaa !105
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 %.sink, ptr %i.ah, align 1, !tbaa !105
  store ptr %.sroa.05.0.i.i71, ptr %12, align 8, !alias.scope !3609
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.236, ptr %i.ai, align 8, !alias.scope !3609
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 %.014.i.i70, ptr %i.aj, align 8, !tbaa !70, !alias.scope !3609
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 3, ptr %i.ak, align 1, !tbaa !71, !alias.scope !3609
  %i.al = inttoptr i64 %1 to ptr
  store ptr %12, ptr %11, align 8, !alias.scope !3610
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !3610
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !70, !alias.scope !3610
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 15, ptr %i.ao, align 1, !tbaa !71, !alias.scope !3610
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !3611
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !3611
  store ptr @.str.353, ptr %9, align 8, !alias.scope !3612, !noalias !3611
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %11, ptr %i.ap, align 8, !alias.scope !3612, !noalias !3611
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 3, ptr %i.aq, align 8, !tbaa !70, !alias.scope !3612, !noalias !3611
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 2, ptr %i.ar, align 1, !tbaa !71, !alias.scope !3612, !noalias !3611
  %.sroa.56.0..sroa_idx.i.i2.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.56.0.copyload.i.i3.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i2.i, align 8, !noalias !3613
  store ptr %9, ptr %8, align 8, !alias.scope !3614, !noalias !3611
  %.sroa.23.0..sroa_idx.i.i.i13.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.56.0.copyload.i.i3.i, ptr %.sroa.23.0..sroa_idx.i.i.i13.i, align 8, !tbaa !72, !alias.scope !3614, !noalias !3611
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.354, ptr %i.as, align 8, !alias.scope !3614, !noalias !3611
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 2, ptr %i.at, align 8, !tbaa !70, !alias.scope !3614, !noalias !3611
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 3, ptr %i.au, align 1, !tbaa !71, !alias.scope !3614, !noalias !3611
  %i.av = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !3615 ; 2 uses
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(34) %8, i32 noundef 3) #27, !noalias !3615
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !3611
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !3611
  %i.aw = load ptr, ptr %0, align 8, !tbaa !143
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 1, ptr %i.ay, align 8, !tbaa !145
  br label %.critedge65

bb.f:                                             ; preds = %bb.d
  %i.az = ptrtoint ptr %i.x to i64
  %i.ba = ptrtoint ptr %i.f to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc ; 2 uses
  %i.be = icmp ugt ptr %i.bd, %i.j
  %spec.store.select.i487 = select i1 %i.be, ptr %i.j, ptr %i.bd ; 8 uses
  store ptr %spec.store.select.i487, ptr %i.e, align 8
  %i.bf = icmp ne i64 %.130.i.i, 0                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 60
  %i.bh = zext i1 %i.bf to i8
  store i8 %i.bh, ptr %i.bg, align 4, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.store.select.i487, i64 %.130.i.i ; 4 uses
  %i.bj = icmp ugt ptr %i.bi, %i.j
  br i1 %i.bj, label %_ZN4llvm5ErrorD2Ev.exit179, label %bb.g

_ZN4llvm5ErrorD2Ev.exit179:                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %i.bk = inttoptr i64 %.130.i.i to ptr
  store ptr @.str.237, ptr %17, align 8, !alias.scope !3616
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %i.bk, ptr %i.bl, align 8, !alias.scope !3616
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 3, ptr %i.bm, align 8, !tbaa !70, !alias.scope !3616
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 15, ptr %i.bn, align 1, !tbaa !71, !alias.scope !3616
  store ptr %17, ptr %16, align 8, !alias.scope !3617
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.236, ptr %i.bo, align 8, !alias.scope !3617
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 2, ptr %i.bp, align 8, !tbaa !70, !alias.scope !3617
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 3, ptr %i.bq, align 1, !tbaa !71, !alias.scope !3617
  %i.br = inttoptr i64 %1 to ptr
  store ptr %16, ptr %15, align 8, !alias.scope !3618
  %i.bs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !3618
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.bt, align 8, !tbaa !70, !alias.scope !3618
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 15, ptr %i.bu, align 1, !tbaa !71, !alias.scope !3618
  store ptr %15, ptr %14, align 8, !alias.scope !3619
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.238, ptr %i.bv, align 8, !alias.scope !3619
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.bw, align 8, !tbaa !70, !alias.scope !3619
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 3, ptr %i.bx, align 1, !tbaa !71, !alias.scope !3619
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !3620
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !3620
  store ptr @.str.353, ptr %7, align 8, !alias.scope !3621, !noalias !3620
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %14, ptr %i.by, align 8, !alias.scope !3621, !noalias !3620
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 3, ptr %i.bz, align 8, !tbaa !70, !alias.scope !3621, !noalias !3620
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 2, ptr %i.ca, align 1, !tbaa !71, !alias.scope !3621, !noalias !3620
  %.sroa.56.0..sroa_idx.i.i2.i176 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.56.0.copyload.i.i3.i177 = load i64, ptr %.sroa.56.0..sroa_idx.i.i2.i176, align 8, !noalias !3622
  store ptr %7, ptr %6, align 8, !alias.scope !3623, !noalias !3620
  %.sroa.23.0..sroa_idx.i.i.i13.i166 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.56.0.copyload.i.i3.i177, ptr %.sroa.23.0..sroa_idx.i.i.i13.i166, align 8, !tbaa !72, !alias.scope !3623, !noalias !3620
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.354, ptr %i.cb, align 8, !alias.scope !3623, !noalias !3620
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 2, ptr %i.cc, align 8, !tbaa !70, !alias.scope !3623, !noalias !3620
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 3, ptr %i.cd, align 1, !tbaa !71, !alias.scope !3623, !noalias !3620
  %i.ce = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !3624 ; 2 uses
  call void @_ZN4llvm6object18GenericBinaryErrorC1ERKNS_5TwineENS0_12object_errorE(ptr noundef nonnull align 8 dereferenceable(56) %i.ce, ptr noundef nonnull align 8 dereferenceable(34) %6, i32 noundef 3) #27, !noalias !3624
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27, !noalias !3620
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !3620
  %i.cf = load ptr, ptr %0, align 8, !tbaa !143
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.cg, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i8 1, ptr %i.ch, align 8, !tbaa !145
  br label %.critedge65

bb.g:                                             ; preds = %bb.f
  br i1 %i.bf, label %bb.h, label %.critedge64

bb.h:                                             ; preds = %bb.g
  %i.ci = ptrtoaddr ptr %spec.store.select.i487 to i64
  %i.cj = sub i64 %i.k, %i.ci
  %scevgep.i.i180 = getelementptr i8, ptr %spec.store.select.i487, i64 %i.cj ; 2 uses
  %i.ck = icmp eq ptr %spec.store.select.i487, %i.j
  br i1 %i.ck, label %.thread.sink.split.i.i191, label %.lr.ph515, !prof !148

bb.i:                                             ; preds = %bb.k
  %i.cl = add i32 %.028.i.i183513, 7
  %i.cm = icmp eq ptr %i.cw, %i.j
  br i1 %i.cm, label %.thread.sink.split.i.i191, label %.lr.ph515, !prof !149, !llvm.loop !6

.lr.ph515:                                        ; preds = %bb.h, %bb.i
  %.028.i.i183513 = phi i32 [ %i.cl, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %.029.i.i182512 = phi i64 [ %.130.i.i184, %bb.i ], [ 0, %bb.h ]
  %.031.i.i181511 = phi ptr [ %i.cw, %bb.i ], [ %spec.store.select.i487, %bb.h ] ; 3 uses
  %i.cn = load i8, ptr %.031.i.i181511, align 1, !tbaa !72 ; 2 uses
  %i.co = and i8 %i.cn, 127                       ; 3 uses
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = icmp ugt i32 %.028.i.i183513, 62
  br i1 %i.cq, label %bb.j, label %bb.k, !prof !150

bb.j:                                             ; preds = %.lr.ph515
  %.not44.i.i188 = icmp eq i32 %.028.i.i183513, 63
  %.not.i.i189 = icmp samesign ugt i8 %i.co, 1
  %i.cr = icmp ne i8 %i.co, 0
  %or.cond43.i.i190 = select i1 %.not44.i.i188, i1 %.not.i.i189, i1 %i.cr
  br i1 %or.cond43.i.i190, label %.thread.sink.split.i.i191, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph515
  %i.cs = icmp ult i32 %.028.i.i183513, 64
  %i.ct = zext nneg i32 %.028.i.i183513 to i64
  %i.cu = shl i64 %i.cp, %i.ct
  %i.cv = select i1 %i.cs, i64 %i.cu, i64 0, !prof !89
  %.130.i.i184 = add i64 %i.cv, %.029.i.i182512   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.031.i.i181511, i64 1 ; 3 uses
  %i.cx = icmp slt i8 %i.cn, 0
  br i1 %i.cx, label %bb.i, label %_ZN4llvm6object11ExportEntry11readULEB128ERPKhPPKc.exit195, !llvm.loop !6

.thread.sink.split.i.i191:                        ; preds = %bb.i, %bb.j, %bb.h
  %.str.498.sink.i.i192 = phi ptr [ @.str.497, %bb.h ], [ @.str.497, %bb.i ], [ @.str.498, %bb.j ] ; 2 uses
  %.132.ph.i.i193 = phi ptr [ %scevgep.i.i180, %bb.h ], [ %scevgep.i.i180, %bb.i ], [ %.031.i.i181511, %bb.j ]
  store ptr %.str.498.sink.i.i192, ptr %i.a, align 8, !tbaa !79
  br label %_ZN4llvm6object11ExportEntry11readULEB128ERPKhPPKc.exit195

_ZN4llvm6object11ExportEntry11readULEB128ERPKhPPKc.exit195: ; preds = %bb.k, %.thread.sink.split.i.i191
  %i.cy = phi ptr [ %.str.498.sink.i.i192, %.thread.sink.split.i.i191 ], [ null, %bb.k ] ; 3 uses
  %.132.i.i185 = phi ptr [ %.132.ph.i.i193, %.thread.sink.split.i.i191 ], [ %i.cw, %bb.k ]
  %.3.i.i186 = phi i64 [ 0, %.thread.sink.split.i.i191 ], [ %.130.i.i184, %bb.k ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm6object14MachOBindEntry8moveNextEv:bb.a
  %57 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %58 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %59 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %63 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %64 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %65 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %67 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %68 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %70 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %71 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %72 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %73 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %74 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %75 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %76 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %77 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %78 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %79 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %80 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %81 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %82 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %83 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %84 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %85 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %86 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %87 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %88 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %89 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %90 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %91 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %92 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %93 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %94 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %95 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %96 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %97 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %98 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %99 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %100 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %101 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %102 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %103 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %104 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %105 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %106 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %107 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %108 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %109 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %110 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %111 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %112 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %113 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %114 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %115 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %116 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %117 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %118 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %119 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %120 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %121 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %122 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %123 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %124 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %125 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %126 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %127 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %128 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %129 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %130 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %131 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %132 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %133 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %134 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %135 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %136 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %137 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %138 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %139 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %140 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %141 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %142 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %143 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %144 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %145 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %146 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %147 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %148 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %149 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %150 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %151 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %152 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %153 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %154 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %155 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %156 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %157 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %158 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %159 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %160 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %161 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %162 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %163 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %164 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %165 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %166 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %167 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %168 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %169 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %170 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %171 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %172 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %173 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %174 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %175 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %176 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %177 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %178 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %179 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %180 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %181 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %182 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %183 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %184 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %185 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %186 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %187 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %188 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %189 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %190 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %191 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %192 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %193 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %194 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %195 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %196 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %197 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %198 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %199 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %200 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %201 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %202 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %203 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %204 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %205 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %206 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %207 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %208 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %209 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %210 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %211 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %212 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %213 = alloca %"class.llvm::Error", align 8     ; 4 uses
  %214 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %215 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %216 = alloca %"class.llvm::Twine", align 8     ; 4 uses
  %217 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %218 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %219 = alloca %"class.llvm::Twine", align 8     ; 6 uses
  %220 = alloca %"class.llvm::Twine", align 8     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !4349
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !250
  %i.f = add i64 %i.e, %i.c                       ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !250
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 38 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !257  ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.preheader305, label %bb.b

.preheader305:                                    ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 44 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 60 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !146  ; 14 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 35 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !147  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 36 uses
  %.promoted503 = load ptr, ptr %i.i, align 8     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 5 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 5 uses
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 7 uses
  %i.af = ptrtoaddr ptr %i.o to i64
  %i.ag = icmp eq ptr %.promoted503, %i.o
  br i1 %i.ag, label %._crit_edge992, label %.lr.ph991

.lr.ph991:                                        ; preds = %.preheader305
  %i.ah = add i64 %i.n, %i.l
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = add i64 %i.h, -1
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !257
  br label %.loopexit306

._crit_edge992:                                   ; preds = %bb.cl, %.preheader305
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.loopexit306

bb.c:                                             ; preds = %.lr.ph991, %bb.cl
  %.promoted504989 = phi ptr [ %.promoted503, %.lr.ph991 ], [ %.promoted505, %bb.cl ] ; 38 uses
  %i.aj = phi i64 [ %i.f, %.lr.ph991 ], [ %i.aic, %bb.cl ] ; 11 uses
  %.promoted504615990 = ptrtoaddr ptr %.promoted504989 to i64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.promoted504989, i64 1 ; 41 uses
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !249
  %i.al = load i8, ptr %.promoted504989, align 1, !tbaa !72 ; 4 uses
  %i.am = and i8 %i.al, 15                        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.an = lshr i8 %i.al, 4
  switch i8 %i.an, label %_ZN4llvm5ErrorD2Ev.exit287 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.g
    i8 3, label %bb.o
    i8 4, label %bb.t
    i8 5, label %bb.v
    i8 6, label %.preheader
    i8 7, label %bb.ab
    i8 8, label %bb.ao
    i8 9, label %bb.bc
    i8 10, label %bb.bh
    i8 11, label %bb.bu
    i8 12, label %bb.bz
  ]

.preheader:                                       ; preds = %bb.c
  %i.ao = icmp eq ptr %i.ak, %i.ae
  br i1 %i.ao, label %.preheader._crit_edge, label %.lr.ph972, !prof !148

bb.d:                                             ; preds = %bb.c
  %i.ap = load i32, ptr %i.w, align 4, !tbaa !255
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = icmp ult ptr %i.ak, %i.o
  %or.cond508 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond508, label %iter.check, label %.critedge506

iter.check:                                       ; preds = %bb.d
  %i.as = getelementptr i8, ptr %.promoted504989, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.l
  %i.at = sub i64 0, %.promoted504615990
  %scevgep616 = getelementptr i8, ptr %scevgep, i64 %i.at
  %i.au = xor i64 %.promoted504615990, -1
  %i.av = add i64 %i.ah, %i.au                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.av, 4
  br i1 %min.iters.check, label %.lr.ph500.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check993 = icmp ult i64 %i.av, 32
  br i1 %min.iters.check993, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %i.av, 28
  %n.vec = and i64 %i.av, -32                     ; 4 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi994 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.ak, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !72
  %wide.load995 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !72
  %i.az = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.ba = icmp ne <16 x i8> %wide.load995, zeroinitializer
  %i.bb = or <16 x i1> %vec.phi, %i.az            ; 2 uses
  %i.bc = or <16 x i1> %vec.phi994, %i.ba         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !4275

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.bc, %i.bb
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.be = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.bf = icmp ne i16 %i.be, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph500.preheader, label %vec.epilog.ph, !prof !4350

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.bf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec996 = and i64 %i.av, -4                   ; 3 uses
  %i.bg = getelementptr i8, ptr %i.ak, i64 %n.vec996
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index997 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1001, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi998 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %next.gep999 = getelementptr i8, ptr %i.ak, i64 %index997
  %wide.load1000 = load <4 x i8>, ptr %next.gep999, align 1, !tbaa !72
  %wide.load1000.fr = freeze <4 x i8> %wide.load1000
  %i.bh = icmp ne <4 x i8> %wide.load1000.fr, zeroinitializer
  %i.bi = or <4 x i1> %vec.phi998, %i.bh          ; 2 uses
  %index.next1001 = add nuw i64 %index997, 4      ; 2 uses
  %i.bj = icmp eq i64 %index.next1001, %n.vec996
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = bitcast <4 x i1> %i.bi to i4
  %i.bl = icmp ne i4 %i.bk, 0                     ; 2 uses
  %cmp.n1002 = icmp eq i64 %i.av, %n.vec996
  br i1 %cmp.n1002, label %._crit_edge, label %.lr.ph500.preheader

.lr.ph500.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.073499.ph = phi ptr [ %i.ak, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.074498.ph = phi i1 [ false, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  br label %.lr.ph500

._crit_edge:                                      ; preds = %.lr.ph500, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.bl, %vec.epilog.middle.block ], [ %i.bf, %middle.block ], [ %spec.select, %.lr.ph500 ]
  br i1 %spec.select.lcssa, label %bb.cl, label %.critedge506

.lr.ph500:                                        ; preds = %.lr.ph500.preheader, %.lr.ph500
  %.073499 = phi ptr [ %i.bn, %.lr.ph500 ], [ %.073499.ph, %.lr.ph500.preheader ] ; 2 uses
  %.074498 = phi i1 [ %spec.select, %.lr.ph500 ], [ %.074498.ph, %.lr.ph500.preheader ]
  %i.bm = load i8, ptr %.073499, align 1, !tbaa !72
  %.not103 = icmp ne i8 %i.bm, 0
  %spec.select = select i1 %.not103, i1 true, i1 %.074498 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.073499, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.bn, %scevgep616
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph500, !llvm.loop !4277

.critedge506:                                     ; preds = %._crit_edge, %bb.d
  store ptr %i.o, ptr %i.i, align 8, !tbaa !249
  store i8 1, ptr %i.z, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit306

bb.e:                                             ; preds = %bb.c
  %i.bo = load i32, ptr %i.w, align 4, !tbaa !255
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.f

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.br, align 1, !tbaa !71
  store ptr @.str.280, ptr %3, align 8, !tbaa !72
  store i8 3, ptr %i.bq, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.bs = ptrtoint ptr %.promoted504989 to i64
  %i.bt = ptrtoint ptr %i.k to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = inttoptr i64 %i.bu to ptr
  store ptr %i.bv, ptr %4, align 8, !alias.scope !4351
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.bw, align 8, !alias.scope !4351
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 15, ptr %i.bx, align 8, !tbaa !70, !alias.scope !4351
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.by, align 1, !tbaa !71, !alias.scope !4351
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %1, ptr noundef nonnull align 8 dereferenceable(34) %2)
  %i.bz = load ptr, ptr %0, align 8, !tbaa !247
  %i.ca = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !147
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store ptr %i.cd, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.f:                                             ; preds = %bb.e
  %i.ce = zext nneg i8 %i.am to i32               ; 3 uses
  store i32 %i.ce, ptr %i.x, align 4, !tbaa !252
  store i8 1, ptr %i.y, align 8, !tbaa !4352
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !248
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 112
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !34
  %i.ci = icmp ult i32 %i.ch, %i.ce
  br i1 %i.ci, label %_ZN4llvm5ErrorD2Ev.exit106, label %bb.cl

_ZN4llvm5ErrorD2Ev.exit106:                       ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.ck, align 1, !tbaa !71
  store ptr @.str.281, ptr %11, align 8, !tbaa !72
  store i8 3, ptr %i.cj, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 10, ptr %i.cl, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.cm, align 1, !tbaa !71
  store i32 %i.ce, ptr %12, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %10, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.co, align 1, !tbaa !71
  store ptr @.str.243, ptr %13, align 8, !tbaa !72
  store i8 3, ptr %i.cn, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(34) %10, ptr noundef nonnull align 8 dereferenceable(34) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !248
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 10, ptr %i.cs, align 8, !tbaa !70
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.ct, align 1, !tbaa !71
  store i32 %i.cr, ptr %14, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %15, i64 32
end_hunk_1
begin_hunk_2_@_ZN4llvm6object14MachOBindEntry8moveNextEv:bb.a
  store i8 3, ptr %i.ho, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.hq = getelementptr inbounds nuw i8, ptr %50, i64 32
  store i8 10, ptr %i.hq, align 8, !tbaa !70
  %i.hr = getelementptr inbounds nuw i8, ptr %50, i64 33
  store i8 1, ptr %i.hr, align 1, !tbaa !71
  store i32 %i.hm, ptr %50, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %48, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr noundef nonnull align 8 dereferenceable(34) %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  %i.hs = getelementptr inbounds nuw i8, ptr %51, i64 32
  %i.ht = getelementptr inbounds nuw i8, ptr %51, i64 33
  store i8 1, ptr %i.ht, align 1, !tbaa !71
  store ptr @.str.268, ptr %51, align 8, !tbaa !72
  store i8 3, ptr %i.hs, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %47, ptr noundef nonnull align 8 dereferenceable(34) %48, ptr noundef nonnull align 8 dereferenceable(34) %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.hu = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.hv = ptrtoint ptr %.promoted504989 to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = inttoptr i64 %i.hx to ptr
  store ptr %i.hy, ptr %52, align 8, !alias.scope !4358
  %i.hz = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr null, ptr %i.hz, align 8, !alias.scope !4358
  %i.ia = getelementptr inbounds nuw i8, ptr %52, i64 32
  store i8 15, ptr %i.ia, align 8, !tbaa !70, !alias.scope !4358
  %i.ib = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.ib, align 1, !tbaa !71, !alias.scope !4358
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %46, ptr noundef nonnull align 8 dereferenceable(34) %47, ptr noundef nonnull align 8 dereferenceable(34) %52)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %45, ptr noundef nonnull align 8 dereferenceable(34) %46)
  %i.ic = load ptr, ptr %0, align 8, !tbaa !247
  %i.id = load ptr, ptr %45, align 8, !tbaa !28
  store ptr %i.id, ptr %i.ic, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  %i.ie = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.if = load i64, ptr %i.m, align 8, !tbaa !147
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  store ptr %i.ig, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %i.x, align 4, !tbaa !252
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  store i8 1, ptr %i.y, align 8, !tbaa !4352
  br label %bb.cl

bb.t:                                             ; preds = %bb.c
  %i.ih = zext nneg i8 %i.am to i32
  store i32 %i.ih, ptr %i.u, align 8, !tbaa !253
  %i.ii = load i8, ptr %i.ak, align 1, !tbaa !72
  %.not99496 = icmp ne i8 %i.ii, 0
  %i.ij = icmp ult ptr %i.ak, %i.o
  %or.cond300497 = and i1 %i.ij, %.not99496
  br i1 %or.cond300497, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.t, %.lr.ph
  %i.ik = phi ptr [ %i.il, %.lr.ph ], [ %i.ak, %bb.t ]
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 5 uses
  store ptr %i.il, ptr %i.i, align 8, !tbaa !249
  %i.im = load i8, ptr %i.il, align 1, !tbaa !72
  %.not99 = icmp ne i8 %i.im, 0
  %i.in = icmp ult ptr %i.il, %i.o
  %or.cond300 = and i1 %i.in, %.not99
  br i1 %or.cond300, label %.lr.ph, label %.critedge, !llvm.loop !4292

.critedge:                                        ; preds = %.lr.ph, %bb.t
  %.lcssa318 = phi ptr [ %i.ak, %bb.t ], [ %i.il, %.lr.ph ] ; 3 uses
  %i.io = icmp eq ptr %.lcssa318, %i.o
  br i1 %i.io, label %_ZN4llvm5ErrorD2Ev.exit120, label %bb.u

_ZN4llvm5ErrorD2Ev.exit120:                       ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #27
  %i.ip = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.iq = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 1, ptr %i.iq, align 1, !tbaa !71
  store ptr @.str.287, ptr %55, align 8, !tbaa !72
  store i8 3, ptr %i.ip, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27
  %i.ir = ptrtoint ptr %.promoted504989 to i64
  %i.is = ptrtoint ptr %i.k to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = inttoptr i64 %i.it to ptr
  store ptr %i.iu, ptr %56, align 8, !alias.scope !4359
  %i.iv = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr null, ptr %i.iv, align 8, !alias.scope !4359
  %i.iw = getelementptr inbounds nuw i8, ptr %56, i64 32
  store i8 15, ptr %i.iw, align 8, !tbaa !70, !alias.scope !4359
  %i.ix = getelementptr inbounds nuw i8, ptr %56, i64 33
  store i8 1, ptr %i.ix, align 1, !tbaa !71, !alias.scope !4359
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %54, ptr noundef nonnull align 8 dereferenceable(34) %55, ptr noundef nonnull align 8 dereferenceable(34) %56)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %53, ptr noundef nonnull align 8 dereferenceable(34) %54)
  %i.iy = load ptr, ptr %0, align 8, !tbaa !247
  %i.iz = load ptr, ptr %53, align 8, !tbaa !28
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  %i.ja = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.jb = load i64, ptr %i.m, align 8, !tbaa !147
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  store ptr %i.jc, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.u:                                             ; preds = %.critedge
  %i.jd = ptrtoint ptr %.lcssa318 to i64
  %i.je = ptrtoint ptr %i.ak to i64
  %i.jf = sub i64 %i.jd, %i.je
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !79
  store i64 %i.jf, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !78
  %i.jg = getelementptr inbounds nuw i8, ptr %.lcssa318, i64 1 ; 2 uses
  store ptr %i.jg, ptr %i.i, align 8, !tbaa !249
  %i.jh = load i32, ptr %i.w, align 4, !tbaa !255
  %i.ji = icmp ne i32 %i.jh, 2
  %.not100 = icmp samesign ult i8 %i.am, 8
  %or.cond = select i1 %i.ji, i1 true, i1 %.not100
  br i1 %or.cond, label %bb.cl, label %.critedge105

bb.v:                                             ; preds = %bb.c
  store i8 %i.am, ptr %i.t, align 8, !tbaa !258
  %i.jj = icmp samesign ugt i8 %i.am, 3
  br i1 %i.jj, label %_ZN4llvm5ErrorD2Ev.exit123, label %bb.cl

_ZN4llvm5ErrorD2Ev.exit123:                       ; preds = %bb.v
  %i.jk = zext nneg i8 %i.am to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  %i.jl = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %61, i64 33
  store i8 1, ptr %i.jm, align 1, !tbaa !71
  store ptr @.str.288, ptr %61, align 8, !tbaa !72
  store i8 3, ptr %i.jl, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.jn = getelementptr inbounds nuw i8, ptr %62, i64 32
  store i8 10, ptr %i.jn, align 8, !tbaa !70
  %i.jo = getelementptr inbounds nuw i8, ptr %62, i64 33
  store i8 1, ptr %i.jo, align 1, !tbaa !71
  store i32 %i.jk, ptr %62, align 8, !tbaa !72
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %60, ptr noundef nonnull align 8 dereferenceable(34) %61, ptr noundef nonnull align 8 dereferenceable(34) %62)
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #27
  %i.jp = getelementptr inbounds nuw i8, ptr %63, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %63, i64 33
  store i8 1, ptr %i.jq, align 1, !tbaa !71
  store ptr @.str.268, ptr %63, align 8, !tbaa !72
  store i8 3, ptr %i.jp, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %59, ptr noundef nonnull align 8 dereferenceable(34) %60, ptr noundef nonnull align 8 dereferenceable(34) %63)
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #27
  %i.jr = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.js = ptrtoint ptr %.promoted504989 to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %64, align 8, !alias.scope !4360
  %i.jw = getelementptr inbounds nuw i8, ptr %64, i64 16
  store ptr null, ptr %i.jw, align 8, !alias.scope !4360
  %i.jx = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i8 15, ptr %i.jx, align 8, !tbaa !70, !alias.scope !4360
  %i.jy = getelementptr inbounds nuw i8, ptr %64, i64 33
  store i8 1, ptr %i.jy, align 1, !tbaa !71, !alias.scope !4360
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %58, ptr noundef nonnull align 8 dereferenceable(34) %59, ptr noundef nonnull align 8 dereferenceable(34) %64)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %57, ptr noundef nonnull align 8 dereferenceable(34) %58)
  %i.jz = load ptr, ptr %0, align 8, !tbaa !247
  %i.ka = load ptr, ptr %57, align 8, !tbaa !28
  store ptr %i.ka, ptr %i.jz, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  %i.kb = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.kc = load i64, ptr %i.m, align 8, !tbaa !147
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kc
  store ptr %i.kd, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.w:                                             ; preds = %bb.y
  %i.ke = icmp eq ptr %i.kr, %i.ae
  br i1 %i.ke, label %.preheader._crit_edge, label %.lr.ph972, !prof !149, !llvm.loop !13

.preheader._crit_edge:                            ; preds = %.preheader, %bb.w
  %221 = ptrtoaddr ptr %i.ae to i64
  br label %bb.z

.lr.ph972:                                        ; preds = %.preheader, %bb.w
  %.044.i.i971 = phi i32 [ %i.kq, %bb.w ], [ 0, %.preheader ] ; 5 uses
  %.045.i.i970 = phi i64 [ %.146.i.i, %bb.w ], [ 0, %.preheader ] ; 2 uses
  %.050.i.i969 = phi ptr [ %i.kr, %bb.w ], [ %i.ak, %.preheader ] ; 3 uses
  %i.kf = load i8, ptr %.050.i.i969, align 1, !tbaa !72 ; 4 uses
  %i.kg = and i8 %i.kf, 127
  %i.kh = zext nneg i8 %i.kg to i64               ; 2 uses
  %i.ki = icmp ugt i32 %.044.i.i971, 62
  br i1 %i.ki, label %bb.x, label %bb.y, !prof !150

bb.x:                                             ; preds = %.lr.ph972
  %i.kj = icmp eq i32 %.044.i.i971, 63
  br i1 %i.kj, label %switch.early.test.i.i, label %.critedge66.i.i

switch.early.test.i.i:                            ; preds = %bb.x
  switch i8 %i.kf, label %222 [
    i8 -1, label %bb.y
    i8 -128, label %bb.y
    i8 127, label %bb.y
    i8 0, label %bb.y
  ]

.critedge66.i.i:                                  ; preds = %bb.x
  %i.kk = icmp slt i64 %.045.i.i970, 0
  %i.kl = select i1 %i.kk, i64 127, i64 0
  %.not58.i.i = icmp eq i64 %i.kl, %i.kh
  br i1 %.not58.i.i, label %bb.y, label %222

222:                                              ; preds = %.critedge66.i.i, %switch.early.test.i.i
  %223 = ptrtoint ptr %.050.i.i969 to i64
  br label %bb.z

bb.y:                                             ; preds = %.critedge66.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %.lr.ph972
  %i.km = icmp ult i32 %.044.i.i971, 64
  %i.kn = zext nneg i32 %.044.i.i971 to i64
  %i.ko = shl i64 %i.kh, %i.kn
  %i.kp = select i1 %i.km, i64 %i.ko, i64 0, !prof !89
  %.146.i.i = or i64 %i.kp, %.045.i.i970          ; 2 uses
  %i.kq = add i32 %.044.i.i971, 7                 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.050.i.i969, i64 1 ; 3 uses
  %i.ks = icmp slt i8 %i.kf, 0
  br i1 %i.ks, label %bb.w, label %_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc.exit, !llvm.loop !13

_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc.exit: ; preds = %bb.y
  %i.kt = icmp ugt i32 %i.kq, 63
  %.not61.i.i = icmp samesign ult i8 %i.kf, 64
  %or.cond.i.i = select i1 %i.kt, i1 true, i1 %.not61.i.i
  %i.ku = zext nneg i32 %i.kq to i64
  %i.kv = shl nsw i64 -1, %i.ku
  %i.kw = select i1 %or.cond.i.i, i64 0, i64 %i.kv
  %.3.i.i124 = or i64 %.146.i.i, %i.kw
  %i.kx = ptrtoint ptr %i.kr to i64
  %i.ky = ptrtoint ptr %i.ak to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = and i64 %i.kz, 4294967295
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.la ; 2 uses
  %i.lc = icmp ugt ptr %i.lb, %i.ae
  %spec.store.select.i125 = select i1 %i.lc, ptr %i.ae, ptr %i.lb ; 2 uses
  store ptr %spec.store.select.i125, ptr %i.i, align 8
  store i64 %.3.i.i124, ptr %i.s, align 8, !tbaa !259
  br label %bb.cl

bb.z:                                             ; preds = %222, %.preheader._crit_edge
  %.ph = phi ptr [ @.str.499, %.preheader._crit_edge ], [ @.str.500, %222 ] ; 2 uses
  %.sink.i.i.ph = phi i64 [ %221, %.preheader._crit_edge ], [ %223, %222 ]
  %i.ld = ptrtoint ptr %i.ak to i64
  %i.le = sub i64 %.sink.i.i.ph, %i.ld
  %i.lf = and i64 %i.le, 4294967295
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.lf ; 2 uses
  %i.lh = icmp ugt ptr %i.lg, %i.ae
  %spec.store.select.i125648 = select i1 %i.lh, ptr %i.ae, ptr %i.lg
  store ptr %spec.store.select.i125648, ptr %i.i, align 8
  store i64 0, ptr %i.s, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  %i.li = getelementptr inbounds nuw i8, ptr %69, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %69, i64 33
  store i8 1, ptr %i.lj, align 1, !tbaa !71
  store ptr @.str.289, ptr %69, align 8, !tbaa !72
  store i8 3, ptr %i.li, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  %i.lk = getelementptr inbounds nuw i8, ptr %70, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %70, i64 33
  store i8 1, ptr %i.ll, align 1, !tbaa !71
  %i.lm = load i8, ptr %.ph, align 1, !tbaa !72
  %.not.i127 = icmp eq i8 %i.lm, 0
  br i1 %.not.i127, label %_ZN4llvm5ErrorD2Ev.exit131, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %.ph, ptr %70, align 8, !tbaa !72
  br label %_ZN4llvm5ErrorD2Ev.exit131

_ZN4llvm5ErrorD2Ev.exit131:                       ; preds = %bb.aa, %bb.z
  %storemerge.i128 = phi i8 [ 3, %bb.aa ], [ 1, %bb.z ]
  store i8 %storemerge.i128, ptr %i.lk, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %68, ptr noundef nonnull align 8 dereferenceable(34) %69, ptr noundef nonnull align 8 dereferenceable(34) %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  %i.ln = getelementptr inbounds nuw i8, ptr %71, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %71, i64 33
  store i8 1, ptr %i.lo, align 1, !tbaa !71
  store ptr @.str.268, ptr %71, align 8, !tbaa !72
  store i8 3, ptr %i.ln, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %67, ptr noundef nonnull align 8 dereferenceable(34) %68, ptr noundef nonnull align 8 dereferenceable(34) %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  %i.lp = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.lq = ptrtoint ptr %.promoted504989 to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = inttoptr i64 %i.ls to ptr
  store ptr %i.lt, ptr %72, align 8, !alias.scope !4361
  %i.lu = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr null, ptr %i.lu, align 8, !alias.scope !4361
  %i.lv = getelementptr inbounds nuw i8, ptr %72, i64 32
  store i8 15, ptr %i.lv, align 8, !tbaa !70, !alias.scope !4361
  %i.lw = getelementptr inbounds nuw i8, ptr %72, i64 33
  store i8 1, ptr %i.lw, align 1, !tbaa !71, !alias.scope !4361
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %66, ptr noundef nonnull align 8 dereferenceable(34) %67, ptr noundef nonnull align 8 dereferenceable(34) %72)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %65, ptr noundef nonnull align 8 dereferenceable(34) %66)
  %i.lx = load ptr, ptr %0, align 8, !tbaa !247
  %i.ly = load ptr, ptr %65, align 8, !tbaa !28
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  %i.lz = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.ma = load i64, ptr %i.m, align 8, !tbaa !147
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.ma
  store ptr %i.mb, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.ab:                                            ; preds = %bb.c
  %i.mc = zext nneg i8 %i.am to i32               ; 3 uses
  store i32 %i.mc, ptr %i.q, align 8, !tbaa !251
  %i.md = ptrtoaddr ptr %i.ak to i64
  %i.me = sub i64 %i.ad, %i.md
  %scevgep.i.i132 = getelementptr i8, ptr %i.ak, i64 %i.me ; 2 uses
  %i.mf = icmp eq ptr %i.ak, %i.ac
  br i1 %i.mf, label %.thread.sink.split.i.i143, label %.lr.ph963, !prof !148

bb.ac:                                            ; preds = %bb.ae
  %i.mg = add i32 %.028.i.i135961, 7
  %i.mh = icmp eq ptr %i.mr, %i.ac
  br i1 %i.mh, label %.thread.sink.split.i.i143, label %.lr.ph963, !prof !149, !llvm.loop !6

.lr.ph963:                                        ; preds = %bb.ab, %bb.ac
  %.028.i.i135961 = phi i32 [ %i.mg, %bb.ac ], [ 0, %bb.ab ] ; 5 uses
  %.029.i.i134960 = phi i64 [ %.130.i.i136, %bb.ac ], [ 0, %bb.ab ]
  %.031.i.i133959 = phi ptr [ %i.mr, %bb.ac ], [ %i.ak, %bb.ab ] ; 3 uses
  %i.mi = load i8, ptr %.031.i.i133959, align 1, !tbaa !72 ; 2 uses
  %i.mj = and i8 %i.mi, 127                       ; 3 uses
  %i.mk = zext nneg i8 %i.mj to i64
  %i.ml = icmp ugt i32 %.028.i.i135961, 62
  br i1 %i.ml, label %bb.ad, label %bb.ae, !prof !150

bb.ad:                                            ; preds = %.lr.ph963
  %.not44.i.i140 = icmp eq i32 %.028.i.i135961, 63
  %.not.i.i141 = icmp samesign ugt i8 %i.mj, 1
  %i.mm = icmp ne i8 %i.mj, 0
  %or.cond43.i.i142 = select i1 %.not44.i.i140, i1 %.not.i.i141, i1 %i.mm
  br i1 %or.cond43.i.i142, label %.thread.sink.split.i.i143, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph963
  %i.mn = icmp ult i32 %.028.i.i135961, 64
  %i.mo = zext nneg i32 %.028.i.i135961 to i64
  %i.mp = shl i64 %i.mk, %i.mo
  %i.mq = select i1 %i.mn, i64 %i.mp, i64 0, !prof !89
  %.130.i.i136 = add i64 %i.mq, %.029.i.i134960   ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.031.i.i133959, i64 1 ; 3 uses
  %i.ms = icmp slt i8 %i.mi, 0
  br i1 %i.ms, label %bb.ac, label %_ZN4llvm6object14MachOBindEntry11readULEB128EPPKc.exit148, !llvm.loop !6

.thread.sink.split.i.i143:                        ; preds = %bb.ac, %bb.ad, %bb.ab
  %.str.498.sink.i.i144 = phi ptr [ @.str.497, %bb.ab ], [ @.str.497, %bb.ac ], [ @.str.498, %bb.ad ] ; 2 uses
  %.132.ph.i.i145 = phi ptr [ %scevgep.i.i132, %bb.ab ], [ %scevgep.i.i132, %bb.ac ], [ %.031.i.i133959, %bb.ad ]
  store ptr %.str.498.sink.i.i144, ptr %i.a, align 8, !tbaa !79
  br label %_ZN4llvm6object14MachOBindEntry11readULEB128EPPKc.exit148

_ZN4llvm6object14MachOBindEntry11readULEB128EPPKc.exit148: ; preds = %bb.ae, %.thread.sink.split.i.i143
  %i.mt = phi ptr [ %.str.498.sink.i.i144, %.thread.sink.split.i.i143 ], [ null, %bb.ae ] ; 3 uses
  %.132.i.i137 = phi ptr [ %.132.ph.i.i145, %.thread.sink.split.i.i143 ], [ %i.mr, %bb.ae ]
  %.3.i.i138 = phi i64 [ 0, %.thread.sink.split.i.i143 ], [ %.130.i.i136, %bb.ae ] ; 5 uses
  %i.mu = ptrtoint ptr %.132.i.i137 to i64
  %i.mv = ptrtoint ptr %i.ak to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = and i64 %i.mw, 4294967295
  %i.my = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.mx ; 2 uses
  %i.mz = icmp ugt ptr %i.my, %i.ac
  %spec.store.select.i139 = select i1 %i.mz, ptr %i.ac, ptr %i.my ; 2 uses
  store ptr %spec.store.select.i139, ptr %i.i, align 8
  store i64 %.3.i.i138, ptr %i.d, align 8, !tbaa !250
  %.not96 = icmp eq ptr %i.mt, null
  br i1 %.not96, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm6object14MachOBindEntry11readULEB128EPPKc.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  %i.na = getelementptr inbounds nuw i8, ptr %77, i64 32
  %i.nb = getelementptr inbounds nuw i8, ptr %77, i64 33
  store i8 1, ptr %i.nb, align 1, !tbaa !71
  store ptr @.str.290, ptr %77, align 8, !tbaa !72
  store i8 3, ptr %i.na, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  %i.nc = getelementptr inbounds nuw i8, ptr %78, i64 32 ; 2 uses
  store i8 1, ptr %i.nc, align 8, !tbaa !70
  %i.nd = getelementptr inbounds nuw i8, ptr %78, i64 33
  store i8 1, ptr %i.nd, align 1, !tbaa !71
  %i.ne = load i8, ptr %i.mt, align 1, !tbaa !72
  %.not.i150 = icmp eq i8 %i.ne, 0
  br i1 %.not.i150, label %_ZN4llvm5ErrorD2Ev.exit154, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.mt, ptr %78, align 8, !tbaa !72
  br label %_ZN4llvm5ErrorD2Ev.exit154

_ZN4llvm5ErrorD2Ev.exit154:                       ; preds = %bb.ag, %bb.af
  %storemerge.i151 = phi i8 [ 3, %bb.ag ], [ 1, %bb.af ]
  store i8 %storemerge.i151, ptr %i.nc, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %76, ptr noundef nonnull align 8 dereferenceable(34) %77, ptr noundef nonnull align 8 dereferenceable(34) %78)
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  %i.nf = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.ng = getelementptr inbounds nuw i8, ptr %79, i64 33
  store i8 1, ptr %i.ng, align 1, !tbaa !71
  store ptr @.str.268, ptr %79, align 8, !tbaa !72
  store i8 3, ptr %i.nf, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %75, ptr noundef nonnull align 8 dereferenceable(34) %76, ptr noundef nonnull align 8 dereferenceable(34) %79)
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  %i.nh = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.ni = ptrtoint ptr %.promoted504989 to i64
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = inttoptr i64 %i.nk to ptr
  store ptr %i.nl, ptr %80, align 8, !alias.scope !4362
  %i.nm = getelementptr inbounds nuw i8, ptr %80, i64 16
  store ptr null, ptr %i.nm, align 8, !alias.scope !4362
  %i.nn = getelementptr inbounds nuw i8, ptr %80, i64 32
  store i8 15, ptr %i.nn, align 8, !tbaa !70, !alias.scope !4362
  %i.no = getelementptr inbounds nuw i8, ptr %80, i64 33
  store i8 1, ptr %i.no, align 1, !tbaa !71, !alias.scope !4362
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %74, ptr noundef nonnull align 8 dereferenceable(34) %75, ptr noundef nonnull align 8 dereferenceable(34) %80)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %73, ptr noundef nonnull align 8 dereferenceable(34) %74)
  %i.np = load ptr, ptr %0, align 8, !tbaa !247
  %i.nq = load ptr, ptr %73, align 8, !tbaa !28
  store ptr %i.nq, ptr %i.np, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #27
  %i.nr = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.ns = load i64, ptr %i.m, align 8, !tbaa !147
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.ns
end_hunk_2
begin_hunk_3_@_ZN4llvm6object14MachOBindEntry8moveNextEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %208) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %206) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #27
  %i.ahc = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.ahd = load i64, ptr %i.m, align 8, !tbaa !147
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahc, i64 %i.ahd
  store ptr %i.ahe, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

_ZN4llvm5ErrorD2Ev.exit287:                       ; preds = %bb.c
  %i.ahf = and i8 %i.al, -16
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %214) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %215) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %216) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %217) #27
  %i.ahg = getelementptr inbounds nuw i8, ptr %217, i64 32
  %i.ahh = getelementptr inbounds nuw i8, ptr %217, i64 33
  store i8 1, ptr %i.ahh, align 1, !tbaa !71
  store ptr @.str.310, ptr %217, align 8, !tbaa !72
  store i8 3, ptr %i.ahg, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %218) #27
  %i.ahi = zext i8 %i.ahf to i64
  %i.ahj = inttoptr i64 %i.ahi to ptr
  store ptr %i.ahj, ptr %218, align 8, !alias.scope !4385
  %i.ahk = getelementptr inbounds nuw i8, ptr %218, i64 16
  store ptr null, ptr %i.ahk, align 8, !alias.scope !4385
  %i.ahl = getelementptr inbounds nuw i8, ptr %218, i64 32
  store i8 15, ptr %i.ahl, align 8, !tbaa !70, !alias.scope !4385
  %i.ahm = getelementptr inbounds nuw i8, ptr %218, i64 33
  store i8 1, ptr %i.ahm, align 1, !tbaa !71, !alias.scope !4385
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %216, ptr noundef nonnull align 8 dereferenceable(34) %217, ptr noundef nonnull align 8 dereferenceable(34) %218)
  call void @llvm.lifetime.start.p0(ptr nonnull %219) #27
  %i.ahn = getelementptr inbounds nuw i8, ptr %219, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %219, i64 33
  store i8 1, ptr %i.aho, align 1, !tbaa !71
  store ptr @.str.268, ptr %219, align 8, !tbaa !72
  store i8 3, ptr %i.ahn, align 8, !tbaa !70
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %215, ptr noundef nonnull align 8 dereferenceable(34) %216, ptr noundef nonnull align 8 dereferenceable(34) %219)
  call void @llvm.lifetime.start.p0(ptr nonnull %220) #27
  %i.ahp = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.ahq = ptrtoint ptr %.promoted504989 to i64
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = sub i64 %i.ahq, %i.ahr
  %i.aht = inttoptr i64 %i.ahs to ptr
  store ptr %i.aht, ptr %220, align 8, !alias.scope !4386
  %i.ahu = getelementptr inbounds nuw i8, ptr %220, i64 16
  store ptr null, ptr %i.ahu, align 8, !alias.scope !4386
  %i.ahv = getelementptr inbounds nuw i8, ptr %220, i64 32
  store i8 15, ptr %i.ahv, align 8, !tbaa !70, !alias.scope !4386
  %i.ahw = getelementptr inbounds nuw i8, ptr %220, i64 33
  store i8 1, ptr %i.ahw, align 1, !tbaa !71, !alias.scope !4386
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %214, ptr noundef nonnull align 8 dereferenceable(34) %215, ptr noundef nonnull align 8 dereferenceable(34) %220)
  call fastcc void @_ZL14malformedErrorRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %213, ptr noundef nonnull align 8 dereferenceable(34) %214)
  %i.ahx = load ptr, ptr %0, align 8, !tbaa !247
  %i.ahy = load ptr, ptr %213, align 8, !tbaa !28
  store ptr %i.ahy, ptr %i.ahx, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %220) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %219) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %218) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %217) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %216) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %215) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %214) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %213) #27
  %i.ahz = load ptr, ptr %i.j, align 8, !tbaa !146
  %i.aia = load i64, ptr %i.m, align 8, !tbaa !147
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %i.aia
  store ptr %i.aib, ptr %i.i, align 8, !tbaa !249
  store i64 0, ptr %i.g, align 8, !tbaa !257
  store i8 1, ptr %i.z, align 8, !tbaa !256
  br label %.critedge105

bb.cl:                                            ; preds = %_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc.exit, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit198, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit, %bb.u, %._crit_edge, %bb.s, %bb.f, %bb.n, %bb.v
  %i.aic = phi i64 [ %i.aj, %bb.u ], [ %i.aj, %._crit_edge ], [ %i.aj, %bb.f ], [ %i.aj, %bb.n ], [ %i.aj, %bb.s ], [ %i.qh, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit198 ], [ %i.aj, %bb.v ], [ %i.aj, %_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc.exit ], [ %.3.i.i138, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit ]
  %.promoted505 = phi ptr [ %i.jg, %bb.u ], [ %i.ak, %._crit_edge ], [ %i.ak, %bb.f ], [ %spec.store.select.i, %bb.n ], [ %i.ak, %bb.s ], [ %spec.store.select.i169, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit198 ], [ %i.ak, %bb.v ], [ %spec.store.select.i125, %_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc.exit ], [ %spec.store.select.i139, %_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.aid = icmp eq ptr %.promoted505, %i.o
  br i1 %i.aid, label %._crit_edge992, label %bb.c

.critedge105:                                     ; preds = %bb.u, %_ZN4llvmeqENS_9StringRefES0_.exit, %bb.bw, %_ZN4llvm5ErrorD2Ev.exit284, %_ZN4llvm5ErrorD2Ev.exit276, %_ZN4llvm5ErrorD2Ev.exit271, %_ZN4llvm5ErrorD2Ev.exit265, %_ZN4llvm5ErrorD2Ev.exit259, %_ZN4llvm5ErrorD2Ev.exit251, %bb.bg, %_ZN4llvm5ErrorD2Ev.exit257, %_ZN4llvm5ErrorD2Ev.exit249, %_ZN4llvm5ErrorD2Ev.exit244, %_ZN4llvm5ErrorD2Ev.exit230, %bb.bt, %_ZN4llvm5ErrorD2Ev.exit242, %_ZN4llvm5ErrorD2Ev.exit236, %_ZN4llvm5ErrorD2Ev.exit228, %_ZN4llvm5ErrorD2Ev.exit223, %_ZN4llvm5ErrorD2Ev.exit217, %_ZN4llvm5ErrorD2Ev.exit215, %_ZN4llvm5ErrorD2Ev.exit213, %_ZN4llvm5ErrorD2Ev.exit210, %_ZN4llvm5ErrorD2Ev.exit204, %_ZN4llvm5ErrorD2Ev.exit184, %_ZN4llvm5ErrorD2Ev.exit161, %_ZN4llvm5ErrorD2Ev.exit154, %_ZN4llvm5ErrorD2Ev.exit131, %_ZN4llvm5ErrorD2Ev.exit123, %_ZN4llvm5ErrorD2Ev.exit278, %_ZN4llvm5ErrorD2Ev.exit120, %_ZN4llvm5ErrorD2Ev.exit118, %_ZN4llvm5ErrorD2Ev.exit115, %_ZN4llvm5ErrorD2Ev.exit113, %_ZN4llvm5ErrorD2Ev.exit109, %_ZN4llvm5ErrorD2Ev.exit107, %_ZN4llvm5ErrorD2Ev.exit106, %_ZN4llvm5ErrorD2Ev.exit, %bb.ci, %_ZN4llvm5ErrorD2Ev.exit287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %.loopexit306

.loopexit306:                                     ; preds = %.critedge506, %._crit_edge992, %.critedge105, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm6object14MachOBindEntry9moveToEndEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(121) initializes((32, 40), (96, 104), (120, 121)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !147
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !249
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.g, align 8, !tbaa !257
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.h, align 8, !tbaa !256
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN4llvm6object14MachOBindEntry11readULEB128EPPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(121) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %i.h = ptrtoaddr ptr %i.b to i64
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.i, %i.h
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  %i.k = icmp eq ptr %i.b, %i.g
  br i1 %i.k, label %._crit_edge, label %.lr.ph, !prof !148

bb.b:                                             ; preds = %bb.e
  %i.l = add i32 %.028.i13, 7
  %i.m = icmp eq ptr %i.w, %i.g
  br i1 %i.m, label %._crit_edge, label %.lr.ph, !prof !149, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not37.i = icmp eq ptr %1, null
  br i1 %.not37.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.thread.sink.split.i

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.028.i13 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.029.i12 = phi i64 [ %.130.i, %bb.b ], [ 0, %bb.a ]
  %.031.i11 = phi ptr [ %i.w, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = load i8, ptr %.031.i11, align 1, !tbaa !72 ; 2 uses
  %i.o = and i8 %i.n, 127                         ; 3 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = icmp ugt i32 %.028.i13, 62
  br i1 %i.q, label %bb.c, label %bb.e, !prof !150

bb.c:                                             ; preds = %.lr.ph
  %.not44.i = icmp eq i32 %.028.i13, 63
  %.not.i = icmp samesign ugt i8 %i.o, 1
  %i.r = icmp ne i8 %i.o, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i, i1 %i.r
  br i1 %or.cond43.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not36.i = icmp eq ptr %1, null
  br i1 %.not36.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %.thread.sink.split.i

bb.e:                                             ; preds = %bb.c, %.lr.ph
  %i.s = icmp ult i32 %.028.i13, 64
  %i.t = zext nneg i32 %.028.i13 to i64
  %i.u = shl i64 %i.p, %i.t
  %i.v = select i1 %i.s, i64 %i.u, i64 0, !prof !89
  %.130.i = add i64 %i.v, %.029.i12               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.031.i11, i64 1 ; 3 uses
  %i.x = icmp slt i8 %i.n, 0
  br i1 %i.x, label %bb.b, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !6

.thread.sink.split.i:                             ; preds = %bb.d, %._crit_edge
  %.str.498.sink.i = phi ptr [ @.str.497, %._crit_edge ], [ @.str.498, %bb.d ]
  %.132.ph.i = phi ptr [ %scevgep.i, %._crit_edge ], [ %.031.i11, %bb.d ]
  store ptr %.str.498.sink.i, ptr %1, align 8, !tbaa !79
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !249
  %.pre6 = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.e, %._crit_edge, %bb.d, %.thread.sink.split.i
  %i.y = phi ptr [ %i.d, %._crit_edge ], [ %i.d, %bb.d ], [ %.pre6, %.thread.sink.split.i ], [ %i.d, %bb.e ]
  %i.z = phi ptr [ %i.b, %._crit_edge ], [ %i.b, %bb.d ], [ %.pre, %.thread.sink.split.i ], [ %i.b, %bb.e ]
  %.132.i = phi ptr [ %scevgep.i, %._crit_edge ], [ %.031.i11, %bb.d ], [ %.132.ph.i, %.thread.sink.split.i ], [ %i.w, %bb.e ]
  %.3.i = phi i64 [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %.thread.sink.split.i ], [ %.130.i, %bb.e ]
  %i.aa = ptrtoint ptr %.132.i to i64
  %i.ab = ptrtoint ptr %i.b to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 2 uses
  %i.ag = icmp ugt ptr %i.ae, %i.af
  %spec.store.select = select i1 %i.ag, ptr %i.af, ptr %i.ae
  store ptr %spec.store.select, ptr %i.a, align 8
  ret i64 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZN4llvm6object14MachOBindEntry11readSLEB128EPPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(121) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !147  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %2 = ptrtoaddr ptr %i.g to i64                  ; 2 uses
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph, !prof !148

bb.b:                                             ; preds = %bb.g
  %i.i = icmp eq ptr %i.v, %i.g
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !prof !149, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not63.i = icmp eq ptr %1, null
  br i1 %.not63.i, label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store ptr @.str.499, ptr %1, align 8, !tbaa !79
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.044.i25 = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %.045.i24 = phi i64 [ %.146.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.050.i23 = phi ptr [ %i.v, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i8, ptr %.050.i23, align 1, !tbaa !72 ; 4 uses
  %i.k = and i8 %i.j, 127
  %i.l = zext nneg i8 %i.k to i64                 ; 2 uses
  %i.m = icmp ugt i32 %.044.i25, 62
  br i1 %i.m, label %bb.d, label %bb.g, !prof !150

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq i32 %.044.i25, 63
  br i1 %i.n, label %switch.early.test.i, label %.critedge66.i

switch.early.test.i:                              ; preds = %bb.d
  switch i8 %i.j, label %bb.e [
    i8 -1, label %bb.g
    i8 -128, label %bb.g
    i8 127, label %bb.g
    i8 0, label %bb.g
  ]

.critedge66.i:                                    ; preds = %bb.d
  %i.o = icmp slt i64 %.045.i24, 0
  %i.p = select i1 %i.o, i64 127, i64 0
  %.not58.i = icmp eq i64 %i.p, %i.l
  br i1 %.not58.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.critedge66.i, %switch.early.test.i
  %.not59.i = icmp eq ptr %1, null
  br i1 %.not59.i, label %3, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.500, ptr %1, align 8, !tbaa !79
  br label %3

3:                                                ; preds = %bb.f, %bb.e
  %4 = ptrtoint ptr %.050.i23 to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit

bb.g:                                             ; preds = %.critedge66.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.q = icmp ult i32 %.044.i25, 64
  %i.r = zext nneg i32 %.044.i25 to i64
  %i.s = shl i64 %i.l, %i.r
  %i.t = select i1 %i.q, i64 %i.s, i64 0, !prof !89
  %.146.i = or i64 %i.t, %.045.i24                ; 2 uses
  %i.u = add i32 %.044.i25, 7                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.050.i23, i64 1 ; 3 uses
  %i.w = icmp slt i8 %i.j, 0
  br i1 %i.w, label %bb.b, label %bb.h, !llvm.loop !13

bb.h:                                             ; preds = %bb.g
  %i.x = icmp ugt i32 %i.u, 63
  %.not61.i = icmp samesign ult i8 %i.j, 64
  %or.cond.i = select i1 %i.x, i1 true, i1 %.not61.i
  %i.y = zext nneg i32 %i.u to i64
  %i.z = shl nsw i64 -1, %i.y
  %i.aa = select i1 %or.cond.i, i64 0, i64 %i.z
  %.3.i = or i64 %.146.i, %i.aa
  %5 = ptrtoint ptr %i.v to i64
  br label %_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit

_ZN4llvm13decodeSLEB128EPKhPjS1_PPKc.exit:        ; preds = %._crit_edge, %bb.c, %3, %bb.h
  %.sink.i = phi i64 [ %4, %3 ], [ %5, %bb.h ], [ %2, %bb.c ], [ %2, %._crit_edge ]
  %.249.ph.i = phi i64 [ 0, %3 ], [ %.3.i, %bb.h ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  %i.ab = ptrtoint ptr %i.b to i64
  %i.ac = sub i64 %.sink.i, %i.ab
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !249
  %i.ae = and i64 %i.ac, 4294967295
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 2 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  %spec.store.select = select i1 %i.ai, ptr %i.ah, ptr %i.af
  store ptr %spec.store.select, ptr %i.a, align 8
  ret i64 %.249.ph.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm6object15MachOObjectFile27BindEntryCheckSegAndOffsetsEimhmm(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, i64 noundef %2, i8 noundef zeroext %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = icmp eq i32 %1, -1
  br i1 %i.c, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !244
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %.preheader.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit

.preheader.i:                                     ; preds = %bb.b
  %.not71.i = icmp eq i64 %4, 0
  br i1 %.not71.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.preheader.i
  %i.f = zext i8 %3 to i64                        ; 2 uses
  %i.g = add i64 %5, %i.f
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i = mul nuw nsw i64 %i.k, 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i
  %.not4763.i = icmp eq i32 %i.j, 0
  br i1 %.not4763.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.g
  %i.m = add nuw i64 %.03866.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.m, %4
  br i1 %exitcond.not.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %.lr.ph.i, !llvm.loop !12

.lr.ph.i:                                         ; preds = %.lr.ph67.i, %bb.c
  %.03866.i = phi i64 [ %i.m, %bb.c ], [ 0, %.lr.ph67.i ] ; 2 uses
  %i.n = mul i64 %.03866.i, %i.g
  %i.o = add i64 %i.n, %2                         ; 3 uses
  %i.p = add i64 %i.o, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.064.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.y, %bb.h ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.064.i, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !172
  %.not48.i = icmp eq i32 %i.r, %1
  br i1 %.not48.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.064.i, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !173  ; 2 uses
  %.not49.i = icmp ugt i64 %i.t, %i.o
  br i1 %.not49.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.064.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !174
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = icmp ult i64 %i.o, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not50.i = icmp ugt i64 %i.p, %i.w
  br i1 %.not50.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %bb.c

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.064.i, i64 72 ; 2 uses
  %.not47.i = icmp eq ptr %i.y, %i.l
  br i1 %.not47.i, label %_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit, label %bb.d

_ZN4llvm6object17BindRebaseSegInfo18checkSegAndOffsetsEimhmm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.a, %bb.b, %.preheader.i, %.lr.ph67.i
  %.6.i = phi ptr [ @.str.312, %bb.b ], [ @.str.311, %bb.a ], [ @.str.314, %.lr.ph67.i ], [ null, %.preheader.i ], [ @.str.314, %bb.h ], [ @.str.313, %bb.g ], [ null, %bb.c ]
  ret ptr %.6.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm6object14MachOBindEntry12segmentIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !251
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4llvm6object14MachOBindEntry13segmentOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !250
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14MachOBindEntry8typeNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258
  %switch.tableidx = add i8 %i.b, -1              ; 3 uses
  %i.c = icmp ult i8 %switch.tableidx, 3
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm6object14MachOBindEntry8typeNameEv, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvm6object14MachOBindEntry8typeNameEv.25, i64 %i.e
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.5.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 7, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.260, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14MachOBindEntry10symbolNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !78
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4llvm6object14MachOBindEntry6addendEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !259
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm6object14MachOBindEntry5flagsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !253
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK4llvm6object14MachOBindEntry7ordinalEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !252
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK4llvm6object14MachOBindEntry11segmentNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !251
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !170  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.j, 72
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.not15.i.i = icmp eq i32 %i.i, 0
  br i1 %.not15.i.i, label %_ZNK4llvm6object15MachOObjectFile21BindRebaseSegmentNameEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.01016.i.i = phi ptr [ %i.o, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01016.i.i, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !172
  %.not11.i.i = icmp eq i32 %i.m, %i.d
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.01016.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.01016.i.i, i64 40
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !78
  br label %_ZNK4llvm6object15MachOObjectFile21BindRebaseSegmentNameEi.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01016.i.i, i64 72 ; 2 uses
end_hunk_3
