inline.NumInlined: 18194
inline.NumDeleted: 8311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCseeLknQCOKOd_13polars_python:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !253879

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 544, !dbg !253885
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !253890 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !253878, !nonnull !14, !noundef !14 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !253879 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !253879
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !253879, !llvm.loop !253892

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !253879
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !253879

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !253878
  store i64 1, ptr %0, align 8, !dbg !253893
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !253893
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !253893
  br label %bb.c, !dbg !253894

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !253885
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544, !dbg !253885
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544, !dbg !253885
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544, !dbg !253885
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544, !dbg !253885
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544, !dbg !253885
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544, !dbg !253885
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !253878, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544, !dbg !253885
  %i.u = add i64 %.sroa.011.016, -8, !dbg !253890 ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !253878, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !253879
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !253879
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1J_E10init_frontCseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 !dbg !253895 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !253896, !range !268, !noundef !14
  %i.b = trunc nuw i64 %i.a to i1, !dbg !253898   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !253898

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !253896 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !253896, !noundef !14
  %.not = icmp eq ptr %i.d, null, !dbg !253896
  br i1 %.not, label %bb.d, label %bb.c, !dbg !253898

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !253899
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !253899
  ret ptr %.sroa.0.0, !dbg !253900

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !253901 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !253901
  %i.h = load i64, ptr %i.g, align 8, !dbg !253901, !noundef !14 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !dbg !253904, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !253905
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !253905

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !253905       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !253905
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !253905

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 544, !dbg !253911
  %i.k = add i64 %.sroa.011.016.prol, -1, !dbg !253916 ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !253904, !nonnull !14, !noundef !14 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !253905 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !253905
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !253905, !llvm.loop !253918

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !253905
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !253905

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !253904
  store i64 1, ptr %0, align 8, !dbg !253919
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !253919
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !253919
  br label %bb.c, !dbg !253920

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 544, !dbg !253911
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544, !dbg !253911
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544, !dbg !253911
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544, !dbg !253911
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544, !dbg !253911
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544, !dbg !253911
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544, !dbg !253911
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !253904, !nonnull !14, !noundef !14
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544, !dbg !253911
  %i.u = add i64 %.sroa.011.016, -8, !dbg !253916 ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !253904, !nonnull !14, !noundef !14 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !253905
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !253905
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr6string1__6___ctor() unnamed_addr #8 section ".text.startup" personality ptr @rust_eh_personality !dbg !253921 {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr6string1__11___INVENTORY, align 8, !dbg !253927, !nonnull !14, !noundef !14
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr6string1__11___INVENTORY, i64 8), align 8, !dbg !253927, !nonnull !14, !align !2408, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !253928
  %i.d = load ptr, ptr %i.c, align 8, !dbg !253928, !invariant.load !14, !nonnull !14
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr6string1__11___INVENTORY)
          to label %bb.c unwind label %bb.b, !dbg !253928

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #24, !dbg !253929
  unreachable, !dbg !253929

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !253930
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__6___ctor() unnamed_addr #8 section ".text.startup" personality ptr @rust_eh_personality !dbg !253931 {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORY, align 8, !dbg !253934, !nonnull !14, !noundef !14
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORY, i64 8), align 8, !dbg !253934, !nonnull !14, !align !2408, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !253935
  %i.d = load ptr, ptr %i.c, align 8, !dbg !253935, !invariant.load !14, !nonnull !14
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORY)
          to label %bb.c unwind label %bb.b, !dbg !253935

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #24, !dbg !253936
  unreachable, !dbg !253936

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !253937
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr8datetime1__6___ctor() unnamed_addr #8 section ".text.startup" personality ptr @rust_eh_personality !dbg !253938 {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr8datetime1__11___INVENTORY, align 8, !dbg !253941, !nonnull !14, !noundef !14
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr8datetime1__11___INVENTORY, i64 8), align 8, !dbg !253941, !nonnull !14, !align !2408, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !253942
  %i.d = load ptr, ptr %i.c, align 8, !dbg !253942, !invariant.load !14, !nonnull !14
  invoke void %i.d(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 @_RNvNvNtNtCseeLknQCOKOd_13polars_python4expr8datetime1__11___INVENTORY)
          to label %bb.c unwind label %bb.b, !dbg !253942

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #24, !dbg !253943
  unreachable, !dbg !253943

bb.c:                                             ; preds = %bb.a
  ret void, !dbg !253944
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORY9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !253945 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !253948
  call void @_RNvMs_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB6_6PyExpr20___pymethod___add____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !253950
  %i.b = load i64, ptr %i.a, align 8, !dbg !253955, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !253957
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !253958
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !253958 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !253957

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !253959
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !253960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !253959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !253967
  br label %bb.e, !dbg !253968

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !253967
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !253969
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !253969

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !253971
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !253974
  br label %bb.e, !dbg !253996

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !253997
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !253997
  store i64 %.sink, ptr %0, align 8, !dbg !253997
  ret void, !dbg !253968
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORYs0_9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !253998 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !253999
  call void @_RNvMs3_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB7_6PyExpr20___pymethod___mul____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !254001
  %i.b = load i64, ptr %i.a, align 8, !dbg !254005, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !254007
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !254008
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !254008 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !254007

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !254009
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !254009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254017
  br label %bb.e, !dbg !254018

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254017
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !254019
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !254019

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254021
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254024
  br label %bb.e, !dbg !254038

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254039
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !254039
  store i64 %.sink, ptr %0, align 8, !dbg !254039
  ret void, !dbg !254018
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORYs1_9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !254040 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254041
  call void @_RNvMs7_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB7_6PyExpr20___pymethod___mod____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !254043
  %i.b = load i64, ptr %i.a, align 8, !dbg !254047, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !254049
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !254050
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !254050 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !254049

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !254051
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !254051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254059
  br label %bb.e, !dbg !254060

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254059
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !254061
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !254061

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254063
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254066
  br label %bb.e, !dbg !254080

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254081
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !254081
  store i64 %.sink, ptr %0, align 8, !dbg !254081
  ret void, !dbg !254060
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORYs2_9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !254082 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254083
  call void @_RNvMs5_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB7_6PyExpr24___pymethod___truediv____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !254085
  %i.b = load i64, ptr %i.a, align 8, !dbg !254089, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !254091
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !254092
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !254092 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !254091

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !254093
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254094
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !254093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254101
  br label %bb.e, !dbg !254102

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254101
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !254103
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !254103

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254105
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254108
  br label %bb.e, !dbg !254122

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254123
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !254123
  store i64 %.sink, ptr %0, align 8, !dbg !254123
  ret void, !dbg !254102
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORYs3_9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !254124 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254125
  call void @_RNvMs9_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB7_6PyExpr25___pymethod___floordiv____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !254127
  %i.b = load i64, ptr %i.a, align 8, !dbg !254131, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !254133
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !254134
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !254134 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !254133

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !254135
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !254135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254143
  br label %bb.e, !dbg !254144

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254143
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !254145
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !254145

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254147
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254150
  br label %bb.e, !dbg !254164

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254165
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !254165
  store i64 %.sink, ptr %0, align 8, !dbg !254165
  ret void, !dbg !254144
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvNvNtNtCseeLknQCOKOd_13polars_python4expr7general1__11___INVENTORYs_9slot_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !254166 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254167
  call void @_RNvMs1_NtNtCseeLknQCOKOd_13polars_python4expr7generalNtB7_6PyExpr20___pymethod___sub____(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noundef %1, ptr noundef %2), !dbg !254169
  %i.b = load i64, ptr %i.a, align 8, !dbg !254173, !range !268, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !254175
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !254176
  %.sroa.05.0.copyload = load ptr, ptr %i.d, align 8, !dbg !254176 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !254175

bb.b:                                             ; preds = %bb.a
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !254177
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.28.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.56.0..sroa_idx, i64 56, i1 false), !dbg !254177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254185
  br label %bb.e, !dbg !254186

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254185
  %i.e = icmp eq ptr %.sroa.05.0.copyload, @_Py_NotImplementedStruct, !dbg !254187
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !254187

bb.d:                                             ; preds = %bb.c
  call void @_Py_DecRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254189
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NotImplementedStruct) #25, !dbg !254192
  br label %bb.e, !dbg !254206

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.05.0.copyload.sink = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ @_Py_NotImplementedStruct, %bb.d ], [ %.sroa.05.0.copyload, %bb.c ]
  %.sink = phi i64 [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254207
  store ptr %.sroa.05.0.copyload.sink, ptr %i.f, align 8, !dbg !254207
  store i64 %.sink, ptr %0, align 8, !dbg !254207
  ret void, !dbg !254186
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer12serialize_u8CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i8 noundef %2) unnamed_addr #0 !dbg !4364 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254208), !dbg !254211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254212), !dbg !254211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254214, !noalias !254216
  store i8 %2, ptr %i.a, align 1, !dbg !254214, !noalias !254216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254217), !dbg !254220
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254221), !dbg !254220
  %i.b = load ptr, ptr %1, align 8, !dbg !254223, !alias.scope !254225, !noalias !254226, !nonnull !14, !align !2408, !noundef !14
  %i.c = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io5Write9write_allCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !dbg !254228, !noalias !254229 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !254230 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !254231
  %i.e = load i64, ptr %i.d, align 8, !dbg !254233, !alias.scope !254225, !noalias !254226, !noundef !14 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !254234

bb.b:                                             ; preds = %bb.a
  %.sroa.220.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254235
  store i64 %i.e, ptr %.sroa.220.0..sroa_idx.i.i, align 8, !dbg !254235, !alias.scope !254237, !noalias !254238
  %.sroa.321.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254235
  store ptr %i.c, ptr %.sroa.321.0..sroa_idx.i.i, align 8, !dbg !254235, !alias.scope !254237, !noalias !254238
  br label %_RINvXs1_NtNtCs596qD5lrKA2_7bincode3enc5implshNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit, !dbg !254239

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, 1, !dbg !254240
  store i64 %i.f, ptr %i.d, align 8, !dbg !254240, !alias.scope !254225, !noalias !254226
  br label %_RINvXs1_NtNtCs596qD5lrKA2_7bincode3enc5implshNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit, !dbg !254239

_RINvXs1_NtNtCs596qD5lrKA2_7bincode3enc5implshNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ 9, %bb.c ], [ 5, %bb.b ], !dbg !254233
  store i64 %.sink.i, ptr %0, align 8, !dbg !254233, !alias.scope !254237, !noalias !254238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254241, !noalias !254216
  ret void, !dbg !254242
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_f64CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, double noundef %2) unnamed_addr #0 !dbg !7681 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254243), !dbg !254246
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254247), !dbg !254246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254249, !noalias !254251
  store double %2, ptr %i.a, align 8, !dbg !254252, !noalias !254251
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254256), !dbg !254259
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254260), !dbg !254259
  %i.b = load ptr, ptr %1, align 8, !dbg !254262, !alias.scope !254264, !noalias !254265, !nonnull !14, !align !2408, !noundef !14
  %i.c = call noundef ptr @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io5Write9write_allCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !dbg !254267, !noalias !254268 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !254269 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !254270
  %i.e = load i64, ptr %i.d, align 8, !dbg !254272, !alias.scope !254264, !noalias !254265, !noundef !14 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !254273

bb.b:                                             ; preds = %bb.a
  %.sroa.220.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254274
  store i64 %i.e, ptr %.sroa.220.0..sroa_idx.i.i, align 8, !dbg !254274, !alias.scope !254276, !noalias !254277
  %.sroa.321.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !254274
  store ptr %i.c, ptr %.sroa.321.0..sroa_idx.i.i, align 8, !dbg !254274, !alias.scope !254276, !noalias !254277
  br label %_RINvXsq_NtNtCs596qD5lrKA2_7bincode3enc5implsdNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit, !dbg !254278

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, 8, !dbg !254279
  store i64 %i.f, ptr %i.d, align 8, !dbg !254279, !alias.scope !254264, !noalias !254265
  br label %_RINvXsq_NtNtCs596qD5lrKA2_7bincode3enc5implsdNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit, !dbg !254278

_RINvXsq_NtNtCs596qD5lrKA2_7bincode3enc5implsdNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i64 [ 9, %bb.c ], [ 5, %bb.b ], !dbg !254272
  store i64 %.sink.i, ptr %0, align 8, !dbg !254272, !alias.scope !254276, !noalias !254277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254280, !noalias !254251
  ret void, !dbg !254281
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_strCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !dbg !4245 {
bb.a:
  tail call fastcc void @_RINvXsu_NtNtCs596qD5lrKA2_7bincode3enc5implsShNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(16) %1), !dbg !254282
  ret void, !dbg !254284
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_u16CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i16 noundef %2) unnamed_addr #0 !dbg !4433 {
bb.a:
  tail call void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u16INtNtNtB6_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, i16 noundef %2), !dbg !254285
  ret void, !dbg !254287
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_u64CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 !dbg !9883 {
bb.a:
  tail call void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u64INtNtNtB6_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, i64 noundef %2), !dbg !254288
  ret void, !dbg !254290
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer15serialize_bytesCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 !dbg !254291 {
bb.a:
  tail call fastcc void @_RINvXsu_NtNtCs596qD5lrKA2_7bincode3enc5implsShNtB8_6Encode6encodeINtNtB8_7encoder11EncoderImplINtNtNtBa_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtBa_6config13ConfigurationEECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(16) %1), !dbg !254292
  ret void, !dbg !254293
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer22serialize_unit_variantCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef %6) unnamed_addr #0 !dbg !254294 {
bb.a:
  tail call void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u32INtNtNtB6_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, i32 noundef %4), !dbg !254295
  ret void, !dbg !254297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer23serialize_tuple_variantCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 !dbg !254298 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254299
  call void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u32INtNtNtB6_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, i32 noundef %4), !dbg !254300
  %i.b = load i64, ptr %i.a, align 8, !dbg !254302, !range !4009, !noundef !14
  %.not = icmp eq i64 %i.b, 9, !dbg !254302
  br i1 %.not, label %bb.c, label %bb.b, !dbg !254304

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !254305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254306
  br label %bb.d, !dbg !254307

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254306
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254308
  store ptr %1, ptr %i.c, align 8, !dbg !254308
  store i64 9, ptr %0, align 8, !dbg !254308
  br label %bb.d, !dbg !254307

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !254307
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer24serialize_struct_variantCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(16) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull readonly captures(none) %5, i64 noundef %6, i64 noundef %7) unnamed_addr #0 !dbg !254309 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254310
  call void @_RINvNtNtCs596qD5lrKA2_7bincode6varint15encode_unsigned17varint_encode_u32INtNtNtB6_8features8impl_std8IoWriterINtNtNtCs9VoZUfg37wD_6flate24zlib5write11ZlibEncoderQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false, i32 noundef %4), !dbg !254311
  %i.b = load i64, ptr %i.a, align 8, !dbg !254313, !range !4009, !noundef !14
  %.not = icmp eq i64 %i.b, 9, !dbg !254313
  br i1 %.not, label %bb.c, label %bb.b, !dbg !254315

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !254316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254317
  br label %bb.d, !dbg !254318

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254317
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !254319
  store ptr %1, ptr %i.c, align 8, !dbg !254319
  store i64 9, ptr %0, align 8, !dbg !254319
  br label %bb.d, !dbg !254318

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void, !dbg !254318
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer12serialize_u8CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i8 noundef %2) unnamed_addr #0 !dbg !10272 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254320), !dbg !254323
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254324), !dbg !254323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254326, !noalias !254328
  store i8 %2, ptr %i.a, align 1, !dbg !254326, !noalias !254328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254329), !dbg !254332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254333), !dbg !254332
  %i.b = load ptr, ptr %1, align 8, !dbg !254335, !alias.scope !254337, !noalias !254338, !nonnull !14, !align !2408, !noundef !14
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !254340, !noalias !254328, !nonnull !14, !align !2408, !noundef !14
  call void @_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !254341, !noalias !254328
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !254344 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !254345, !alias.scope !254337, !noalias !254338, !noundef !14
  %i.e = add i64 %i.d, 1, !dbg !254345
  store i64 %i.e, ptr %i.c, align 8, !dbg !254345, !alias.scope !254337, !noalias !254338
  store i64 9, ptr %0, align 8, !dbg !254346, !alias.scope !254347, !noalias !254348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !254349, !noalias !254328
  ret void, !dbg !254350
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCs596qD5lrKA2_7bincode8features5serde3serINtB2_12SerdeEncoderINtNtNtB8_3enc7encoder11EncoderImplINtNtB6_8impl_std8IoWriterQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtB8_6config13ConfigurationEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer13serialize_f64CseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, double noundef %2) unnamed_addr #0 !dbg !13281 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254351), !dbg !254354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254355), !dbg !254354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !254357, !noalias !254359
end_hunk_0
